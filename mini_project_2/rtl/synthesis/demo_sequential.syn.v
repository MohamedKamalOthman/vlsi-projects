/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sun Dec 18 18:19:25 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3929867832 */

module registerNbits__0_32 (
    clk,
    reset,
    en,
    inp,
    out
);
  input clk;
  input reset;
  input en;
  input [31:0] inp;
  output [31:0] out;

  wire n_0_0;

  CLKGATE_X1 clk_gate_out_reg (
      .CK (clk),
      .E  (n_1),
      .GCK(n_0)
  );
  DFF_X1 \out_reg[31] (
      .D (n_33),
      .CK(n_0),
      .Q (out[31]),
      .QN()
  );
  DFF_X1 \out_reg[30] (
      .D (n_32),
      .CK(n_0),
      .Q (out[30]),
      .QN()
  );
  DFF_X1 \out_reg[29] (
      .D (n_31),
      .CK(n_0),
      .Q (out[29]),
      .QN()
  );
  DFF_X1 \out_reg[28] (
      .D (n_30),
      .CK(n_0),
      .Q (out[28]),
      .QN()
  );
  DFF_X1 \out_reg[27] (
      .D (n_29),
      .CK(n_0),
      .Q (out[27]),
      .QN()
  );
  DFF_X1 \out_reg[26] (
      .D (n_28),
      .CK(n_0),
      .Q (out[26]),
      .QN()
  );
  DFF_X1 \out_reg[25] (
      .D (n_27),
      .CK(n_0),
      .Q (out[25]),
      .QN()
  );
  DFF_X1 \out_reg[24] (
      .D (n_26),
      .CK(n_0),
      .Q (out[24]),
      .QN()
  );
  DFF_X1 \out_reg[23] (
      .D (n_25),
      .CK(n_0),
      .Q (out[23]),
      .QN()
  );
  DFF_X1 \out_reg[22] (
      .D (n_24),
      .CK(n_0),
      .Q (out[22]),
      .QN()
  );
  DFF_X1 \out_reg[21] (
      .D (n_23),
      .CK(n_0),
      .Q (out[21]),
      .QN()
  );
  DFF_X1 \out_reg[20] (
      .D (n_22),
      .CK(n_0),
      .Q (out[20]),
      .QN()
  );
  DFF_X1 \out_reg[19] (
      .D (n_21),
      .CK(n_0),
      .Q (out[19]),
      .QN()
  );
  DFF_X1 \out_reg[18] (
      .D (n_20),
      .CK(n_0),
      .Q (out[18]),
      .QN()
  );
  DFF_X1 \out_reg[17] (
      .D (n_19),
      .CK(n_0),
      .Q (out[17]),
      .QN()
  );
  DFF_X1 \out_reg[16] (
      .D (n_18),
      .CK(n_0),
      .Q (out[16]),
      .QN()
  );
  DFF_X1 \out_reg[15] (
      .D (n_17),
      .CK(n_0),
      .Q (out[15]),
      .QN()
  );
  DFF_X1 \out_reg[14] (
      .D (n_16),
      .CK(n_0),
      .Q (out[14]),
      .QN()
  );
  DFF_X1 \out_reg[13] (
      .D (n_15),
      .CK(n_0),
      .Q (out[13]),
      .QN()
  );
  DFF_X1 \out_reg[12] (
      .D (n_14),
      .CK(n_0),
      .Q (out[12]),
      .QN()
  );
  DFF_X1 \out_reg[11] (
      .D (n_13),
      .CK(n_0),
      .Q (out[11]),
      .QN()
  );
  DFF_X1 \out_reg[10] (
      .D (n_12),
      .CK(n_0),
      .Q (out[10]),
      .QN()
  );
  DFF_X1 \out_reg[9] (
      .D (n_11),
      .CK(n_0),
      .Q (out[9]),
      .QN()
  );
  DFF_X1 \out_reg[8] (
      .D (n_10),
      .CK(n_0),
      .Q (out[8]),
      .QN()
  );
  DFF_X1 \out_reg[7] (
      .D (n_9),
      .CK(n_0),
      .Q (out[7]),
      .QN()
  );
  DFF_X1 \out_reg[6] (
      .D (n_8),
      .CK(n_0),
      .Q (out[6]),
      .QN()
  );
  DFF_X1 \out_reg[5] (
      .D (n_7),
      .CK(n_0),
      .Q (out[5]),
      .QN()
  );
  DFF_X1 \out_reg[4] (
      .D (n_6),
      .CK(n_0),
      .Q (out[4]),
      .QN()
  );
  DFF_X1 \out_reg[3] (
      .D (n_5),
      .CK(n_0),
      .Q (out[3]),
      .QN()
  );
  DFF_X1 \out_reg[2] (
      .D (n_4),
      .CK(n_0),
      .Q (out[2]),
      .QN()
  );
  DFF_X1 \out_reg[1] (
      .D (n_3),
      .CK(n_0),
      .Q (out[1]),
      .QN()
  );
  DFF_X1 \out_reg[0] (
      .D (n_2),
      .CK(n_0),
      .Q (out[0]),
      .QN()
  );
  OR2_X1 i_0_0 (
      .A1(en),
      .A2(reset),
      .ZN(n_1)
  );
  INV_X1 i_0_1 (
      .A (reset),
      .ZN(n_0_0)
  );
  AND2_X1 i_0_2 (
      .A1(n_0_0),
      .A2(inp[0]),
      .ZN(n_2)
  );
  AND2_X1 i_0_3 (
      .A1(n_0_0),
      .A2(inp[1]),
      .ZN(n_3)
  );
  AND2_X1 i_0_4 (
      .A1(n_0_0),
      .A2(inp[2]),
      .ZN(n_4)
  );
  AND2_X1 i_0_5 (
      .A1(n_0_0),
      .A2(inp[3]),
      .ZN(n_5)
  );
  AND2_X1 i_0_6 (
      .A1(n_0_0),
      .A2(inp[4]),
      .ZN(n_6)
  );
  AND2_X1 i_0_7 (
      .A1(n_0_0),
      .A2(inp[5]),
      .ZN(n_7)
  );
  AND2_X1 i_0_8 (
      .A1(n_0_0),
      .A2(inp[6]),
      .ZN(n_8)
  );
  AND2_X1 i_0_9 (
      .A1(n_0_0),
      .A2(inp[7]),
      .ZN(n_9)
  );
  AND2_X1 i_0_10 (
      .A1(n_0_0),
      .A2(inp[8]),
      .ZN(n_10)
  );
  AND2_X1 i_0_11 (
      .A1(n_0_0),
      .A2(inp[9]),
      .ZN(n_11)
  );
  AND2_X1 i_0_12 (
      .A1(n_0_0),
      .A2(inp[10]),
      .ZN(n_12)
  );
  AND2_X1 i_0_13 (
      .A1(n_0_0),
      .A2(inp[11]),
      .ZN(n_13)
  );
  AND2_X1 i_0_14 (
      .A1(n_0_0),
      .A2(inp[12]),
      .ZN(n_14)
  );
  AND2_X1 i_0_15 (
      .A1(n_0_0),
      .A2(inp[13]),
      .ZN(n_15)
  );
  AND2_X1 i_0_16 (
      .A1(n_0_0),
      .A2(inp[14]),
      .ZN(n_16)
  );
  AND2_X1 i_0_17 (
      .A1(n_0_0),
      .A2(inp[15]),
      .ZN(n_17)
  );
  AND2_X1 i_0_18 (
      .A1(n_0_0),
      .A2(inp[16]),
      .ZN(n_18)
  );
  AND2_X1 i_0_19 (
      .A1(n_0_0),
      .A2(inp[17]),
      .ZN(n_19)
  );
  AND2_X1 i_0_20 (
      .A1(n_0_0),
      .A2(inp[18]),
      .ZN(n_20)
  );
  AND2_X1 i_0_21 (
      .A1(n_0_0),
      .A2(inp[19]),
      .ZN(n_21)
  );
  AND2_X1 i_0_22 (
      .A1(n_0_0),
      .A2(inp[20]),
      .ZN(n_22)
  );
  AND2_X1 i_0_23 (
      .A1(n_0_0),
      .A2(inp[21]),
      .ZN(n_23)
  );
  AND2_X1 i_0_24 (
      .A1(n_0_0),
      .A2(inp[22]),
      .ZN(n_24)
  );
  AND2_X1 i_0_25 (
      .A1(n_0_0),
      .A2(inp[23]),
      .ZN(n_25)
  );
  AND2_X1 i_0_26 (
      .A1(n_0_0),
      .A2(inp[24]),
      .ZN(n_26)
  );
  AND2_X1 i_0_27 (
      .A1(n_0_0),
      .A2(inp[25]),
      .ZN(n_27)
  );
  AND2_X1 i_0_28 (
      .A1(n_0_0),
      .A2(inp[26]),
      .ZN(n_28)
  );
  AND2_X1 i_0_29 (
      .A1(n_0_0),
      .A2(inp[27]),
      .ZN(n_29)
  );
  AND2_X1 i_0_30 (
      .A1(n_0_0),
      .A2(inp[28]),
      .ZN(n_30)
  );
  AND2_X1 i_0_31 (
      .A1(n_0_0),
      .A2(inp[29]),
      .ZN(n_31)
  );
  AND2_X1 i_0_32 (
      .A1(n_0_0),
      .A2(inp[30]),
      .ZN(n_32)
  );
  AND2_X1 i_0_33 (
      .A1(n_0_0),
      .A2(inp[31]),
      .ZN(n_33)
  );
endmodule

module registerNbits (
    clk,
    reset,
    en,
    inp,
    out
);
  input clk;
  input reset;
  input en;
  input [31:0] inp;
  output [31:0] out;

  wire n_0_0;

  CLKGATE_X1 clk_gate_out_reg (
      .CK (clk),
      .E  (n_1),
      .GCK(n_0)
  );
  DFF_X1 \out_reg[31] (
      .D (n_33),
      .CK(n_0),
      .Q (out[31]),
      .QN()
  );
  DFF_X1 \out_reg[30] (
      .D (n_32),
      .CK(n_0),
      .Q (out[30]),
      .QN()
  );
  DFF_X1 \out_reg[29] (
      .D (n_31),
      .CK(n_0),
      .Q (out[29]),
      .QN()
  );
  DFF_X1 \out_reg[28] (
      .D (n_30),
      .CK(n_0),
      .Q (out[28]),
      .QN()
  );
  DFF_X1 \out_reg[27] (
      .D (n_29),
      .CK(n_0),
      .Q (out[27]),
      .QN()
  );
  DFF_X1 \out_reg[26] (
      .D (n_28),
      .CK(n_0),
      .Q (out[26]),
      .QN()
  );
  DFF_X1 \out_reg[25] (
      .D (n_27),
      .CK(n_0),
      .Q (out[25]),
      .QN()
  );
  DFF_X1 \out_reg[24] (
      .D (n_26),
      .CK(n_0),
      .Q (out[24]),
      .QN()
  );
  DFF_X1 \out_reg[23] (
      .D (n_25),
      .CK(n_0),
      .Q (out[23]),
      .QN()
  );
  DFF_X1 \out_reg[22] (
      .D (n_24),
      .CK(n_0),
      .Q (out[22]),
      .QN()
  );
  DFF_X1 \out_reg[21] (
      .D (n_23),
      .CK(n_0),
      .Q (out[21]),
      .QN()
  );
  DFF_X1 \out_reg[20] (
      .D (n_22),
      .CK(n_0),
      .Q (out[20]),
      .QN()
  );
  DFF_X1 \out_reg[19] (
      .D (n_21),
      .CK(n_0),
      .Q (out[19]),
      .QN()
  );
  DFF_X1 \out_reg[18] (
      .D (n_20),
      .CK(n_0),
      .Q (out[18]),
      .QN()
  );
  DFF_X1 \out_reg[17] (
      .D (n_19),
      .CK(n_0),
      .Q (out[17]),
      .QN()
  );
  DFF_X1 \out_reg[16] (
      .D (n_18),
      .CK(n_0),
      .Q (out[16]),
      .QN()
  );
  DFF_X1 \out_reg[15] (
      .D (n_17),
      .CK(n_0),
      .Q (out[15]),
      .QN()
  );
  DFF_X1 \out_reg[14] (
      .D (n_16),
      .CK(n_0),
      .Q (out[14]),
      .QN()
  );
  DFF_X1 \out_reg[13] (
      .D (n_15),
      .CK(n_0),
      .Q (out[13]),
      .QN()
  );
  DFF_X1 \out_reg[12] (
      .D (n_14),
      .CK(n_0),
      .Q (out[12]),
      .QN()
  );
  DFF_X1 \out_reg[11] (
      .D (n_13),
      .CK(n_0),
      .Q (out[11]),
      .QN()
  );
  DFF_X1 \out_reg[10] (
      .D (n_12),
      .CK(n_0),
      .Q (out[10]),
      .QN()
  );
  DFF_X1 \out_reg[9] (
      .D (n_11),
      .CK(n_0),
      .Q (out[9]),
      .QN()
  );
  DFF_X1 \out_reg[8] (
      .D (n_10),
      .CK(n_0),
      .Q (out[8]),
      .QN()
  );
  DFF_X1 \out_reg[7] (
      .D (n_9),
      .CK(n_0),
      .Q (out[7]),
      .QN()
  );
  DFF_X1 \out_reg[6] (
      .D (n_8),
      .CK(n_0),
      .Q (out[6]),
      .QN()
  );
  DFF_X1 \out_reg[5] (
      .D (n_7),
      .CK(n_0),
      .Q (out[5]),
      .QN()
  );
  DFF_X1 \out_reg[4] (
      .D (n_6),
      .CK(n_0),
      .Q (out[4]),
      .QN()
  );
  DFF_X1 \out_reg[3] (
      .D (n_5),
      .CK(n_0),
      .Q (out[3]),
      .QN()
  );
  DFF_X1 \out_reg[2] (
      .D (n_4),
      .CK(n_0),
      .Q (out[2]),
      .QN()
  );
  DFF_X1 \out_reg[1] (
      .D (n_3),
      .CK(n_0),
      .Q (out[1]),
      .QN()
  );
  DFF_X1 \out_reg[0] (
      .D (n_2),
      .CK(n_0),
      .Q (out[0]),
      .QN()
  );
  OR2_X1 i_0_0 (
      .A1(en),
      .A2(reset),
      .ZN(n_1)
  );
  INV_X1 i_0_1 (
      .A (reset),
      .ZN(n_0_0)
  );
  AND2_X1 i_0_2 (
      .A1(n_0_0),
      .A2(inp[0]),
      .ZN(n_2)
  );
  AND2_X1 i_0_3 (
      .A1(n_0_0),
      .A2(inp[1]),
      .ZN(n_3)
  );
  AND2_X1 i_0_4 (
      .A1(n_0_0),
      .A2(inp[2]),
      .ZN(n_4)
  );
  AND2_X1 i_0_5 (
      .A1(n_0_0),
      .A2(inp[3]),
      .ZN(n_5)
  );
  AND2_X1 i_0_6 (
      .A1(n_0_0),
      .A2(inp[4]),
      .ZN(n_6)
  );
  AND2_X1 i_0_7 (
      .A1(n_0_0),
      .A2(inp[5]),
      .ZN(n_7)
  );
  AND2_X1 i_0_8 (
      .A1(n_0_0),
      .A2(inp[6]),
      .ZN(n_8)
  );
  AND2_X1 i_0_9 (
      .A1(n_0_0),
      .A2(inp[7]),
      .ZN(n_9)
  );
  AND2_X1 i_0_10 (
      .A1(n_0_0),
      .A2(inp[8]),
      .ZN(n_10)
  );
  AND2_X1 i_0_11 (
      .A1(n_0_0),
      .A2(inp[9]),
      .ZN(n_11)
  );
  AND2_X1 i_0_12 (
      .A1(n_0_0),
      .A2(inp[10]),
      .ZN(n_12)
  );
  AND2_X1 i_0_13 (
      .A1(n_0_0),
      .A2(inp[11]),
      .ZN(n_13)
  );
  AND2_X1 i_0_14 (
      .A1(n_0_0),
      .A2(inp[12]),
      .ZN(n_14)
  );
  AND2_X1 i_0_15 (
      .A1(n_0_0),
      .A2(inp[13]),
      .ZN(n_15)
  );
  AND2_X1 i_0_16 (
      .A1(n_0_0),
      .A2(inp[14]),
      .ZN(n_16)
  );
  AND2_X1 i_0_17 (
      .A1(n_0_0),
      .A2(inp[15]),
      .ZN(n_17)
  );
  AND2_X1 i_0_18 (
      .A1(n_0_0),
      .A2(inp[16]),
      .ZN(n_18)
  );
  AND2_X1 i_0_19 (
      .A1(n_0_0),
      .A2(inp[17]),
      .ZN(n_19)
  );
  AND2_X1 i_0_20 (
      .A1(n_0_0),
      .A2(inp[18]),
      .ZN(n_20)
  );
  AND2_X1 i_0_21 (
      .A1(n_0_0),
      .A2(inp[19]),
      .ZN(n_21)
  );
  AND2_X1 i_0_22 (
      .A1(n_0_0),
      .A2(inp[20]),
      .ZN(n_22)
  );
  AND2_X1 i_0_23 (
      .A1(n_0_0),
      .A2(inp[21]),
      .ZN(n_23)
  );
  AND2_X1 i_0_24 (
      .A1(n_0_0),
      .A2(inp[22]),
      .ZN(n_24)
  );
  AND2_X1 i_0_25 (
      .A1(n_0_0),
      .A2(inp[23]),
      .ZN(n_25)
  );
  AND2_X1 i_0_26 (
      .A1(n_0_0),
      .A2(inp[24]),
      .ZN(n_26)
  );
  AND2_X1 i_0_27 (
      .A1(n_0_0),
      .A2(inp[25]),
      .ZN(n_27)
  );
  AND2_X1 i_0_28 (
      .A1(n_0_0),
      .A2(inp[26]),
      .ZN(n_28)
  );
  AND2_X1 i_0_29 (
      .A1(n_0_0),
      .A2(inp[27]),
      .ZN(n_29)
  );
  AND2_X1 i_0_30 (
      .A1(n_0_0),
      .A2(inp[28]),
      .ZN(n_30)
  );
  AND2_X1 i_0_31 (
      .A1(n_0_0),
      .A2(inp[29]),
      .ZN(n_31)
  );
  AND2_X1 i_0_32 (
      .A1(n_0_0),
      .A2(inp[30]),
      .ZN(n_32)
  );
  AND2_X1 i_0_33 (
      .A1(n_0_0),
      .A2(inp[31]),
      .ZN(n_33)
  );
endmodule

module controller (
    i_clk,
    i_rst,
    i_lsb,
    o_load,
    o_add,
    o_shift,
    o_out
);
  input i_clk;
  input i_rst;
  input i_lsb;
  output o_load;
  output o_add;
  output o_shift;
  output o_out;

  wire start;
  wire [2:0] state;
  wire n_0_3;
  wire n_0_0;
  wire n_0_4;
  wire n_0_1;
  wire n_0_5;
  wire n_0_2;
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
  wire n_0_19;
  wire n_0_20;
  wire n_0_21;
  wire n_0_22;

  DFF_X1 o_out_reg (
      .D (n_24),
      .CK(n_1),
      .Q (o_out),
      .QN()
  );
  DFF_X1 o_shift_reg (
      .D (n_23),
      .CK(n_1),
      .Q (o_shift),
      .QN()
  );
  DFF_X1 o_add_reg (
      .D (n_21),
      .CK(n_1),
      .Q (o_add),
      .QN()
  );
  DFF_X1 o_load_reg (
      .D (n_20),
      .CK(n_1),
      .Q (o_load),
      .QN()
  );
  DFF_X1 start_reg (
      .D (n_0),
      .CK(i_clk),
      .Q (start),
      .QN()
  );
  MUX2_X1 start_reg_enable_mux_0 (
      .A(start),
      .B(i_rst),
      .S(n_17),
      .Z(n_0)
  );
  DFF_X1 \state_reg[2] (
      .D (n_16),
      .CK(n_1),
      .Q (state[2]),
      .QN()
  );
  DFF_X1 \state_reg[1] (
      .D (n_15),
      .CK(n_1),
      .Q (state[1]),
      .QN()
  );
  DFF_X1 \state_reg[0] (
      .D (n_14),
      .CK(n_1),
      .Q (state[0]),
      .QN()
  );
  CLKGATE_X1 clk_gate_count_reg (
      .CK (i_clk),
      .E  (n_19),
      .GCK(n_18)
  );
  DFF_X1 \count_reg[5] (
      .D (n_13),
      .CK(n_18),
      .Q (n_2),
      .QN()
  );
  DFF_X1 \count_reg[4] (
      .D (n_12),
      .CK(n_18),
      .Q (n_3),
      .QN()
  );
  DFF_X1 \count_reg[3] (
      .D (n_11),
      .CK(n_18),
      .Q (n_4),
      .QN()
  );
  DFF_X1 \count_reg[2] (
      .D (n_10),
      .CK(n_18),
      .Q (n_5),
      .QN()
  );
  DFF_X1 \count_reg[1] (
      .D (n_9),
      .CK(n_18),
      .Q (n_6),
      .QN()
  );
  DFF_X1 \count_reg[0] (
      .D (n_8),
      .CK(n_18),
      .Q (n_7),
      .QN()
  );
  CLKGATE_X1 clk_gate_o_out_reg (
      .CK (i_clk),
      .E  (n_22),
      .GCK(n_1)
  );
  HA_X1 i_0_0 (
      .A (n_6),
      .B (n_7),
      .CO(n_0_0),
      .S (n_0_3)
  );
  HA_X1 i_0_1 (
      .A (n_5),
      .B (n_0_0),
      .CO(n_0_1),
      .S (n_0_4)
  );
  HA_X1 i_0_2 (
      .A (n_4),
      .B (n_0_1),
      .CO(n_0_2),
      .S (n_0_5)
  );
  HA_X1 i_0_3 (
      .A (n_3),
      .B (n_0_2),
      .CO(n_0_7),
      .S (n_0_6)
  );
  NOR2_X1 i_0_4 (
      .A1(n_7),
      .A2(n_0_8),
      .ZN(n_8)
  );
  AND2_X1 i_0_5 (
      .A1(n_0_3),
      .A2(n_0_9),
      .ZN(n_9)
  );
  AND2_X1 i_0_6 (
      .A1(n_0_4),
      .A2(n_0_9),
      .ZN(n_10)
  );
  AND2_X1 i_0_7 (
      .A1(n_0_5),
      .A2(n_0_9),
      .ZN(n_11)
  );
  AND2_X1 i_0_8 (
      .A1(n_0_6),
      .A2(n_0_9),
      .ZN(n_12)
  );
  AND2_X1 i_0_9 (
      .A1(n_0_7),
      .A2(n_0_9),
      .ZN(n_13)
  );
  INV_X1 i_0_10 (
      .A (n_0_9),
      .ZN(n_0_8)
  );
  NOR3_X1 i_0_11 (
      .A1(n_2),
      .A2(n_0_16),
      .A3(n_0_15),
      .ZN(n_0_9)
  );
  OAI33_X1 i_0_12 (
      .A1(n_0_19),
      .A2(n_0_17),
      .A3(n_0_16),
      .B1(state[0]),
      .B2(n_0_20),
      .B3(n_0_14),
      .ZN(n_14)
  );
  NOR2_X1 i_0_13 (
      .A1(n_0_12),
      .A2(n_0_10),
      .ZN(n_15)
  );
  AOI21_X1 i_0_14 (
      .A (state[2]),
      .B1(n_0_16),
      .B2(n_0_11),
      .ZN(n_0_10)
  );
  NOR2_X1 i_0_15 (
      .A1(n_0_17),
      .A2(n_0_11),
      .ZN(n_16)
  );
  OAI21_X1 i_0_16 (
      .A (state[1]),
      .B1(state[0]),
      .B2(n_0_20),
      .ZN(n_0_11)
  );
  AOI21_X1 i_0_17 (
      .A (n_0_13),
      .B1(n_0_22),
      .B2(n_0_16),
      .ZN(n_17)
  );
  AOI21_X1 i_0_18 (
      .A (n_0_18),
      .B1(n_0_22),
      .B2(n_0_16),
      .ZN(n_19)
  );
  INV_X1 i_0_19 (
      .A (n_0_13),
      .ZN(n_0_12)
  );
  AOI21_X1 i_0_20 (
      .A (i_rst),
      .B1(n_2),
      .B2(state[2]),
      .ZN(n_0_13)
  );
  NOR3_X1 i_0_21 (
      .A1(state[1]),
      .A2(n_0_21),
      .A3(n_0_17),
      .ZN(n_20)
  );
  NOR2_X1 i_0_22 (
      .A1(n_0_21),
      .A2(n_0_14),
      .ZN(n_21)
  );
  NAND2_X1 i_0_23 (
      .A1(state[1]),
      .A2(n_0_18),
      .ZN(n_0_14)
  );
  NAND2_X1 i_0_24 (
      .A1(n_0_16),
      .A2(n_23),
      .ZN(n_22)
  );
  INV_X1 i_0_25 (
      .A (n_0_15),
      .ZN(n_23)
  );
  NAND2_X1 i_0_26 (
      .A1(n_0_22),
      .A2(state[2]),
      .ZN(n_0_15)
  );
  NOR3_X1 i_0_27 (
      .A1(n_0_17),
      .A2(n_0_16),
      .A3(start),
      .ZN(n_24)
  );
  OR2_X1 i_0_28 (
      .A1(state[1]),
      .A2(state[0]),
      .ZN(n_0_16)
  );
  INV_X1 i_0_29 (
      .A (n_0_18),
      .ZN(n_0_17)
  );
  NOR2_X1 i_0_30 (
      .A1(i_rst),
      .A2(state[2]),
      .ZN(n_0_18)
  );
  INV_X1 i_0_31 (
      .A (start),
      .ZN(n_0_19)
  );
  INV_X1 i_0_32 (
      .A (i_lsb),
      .ZN(n_0_20)
  );
  INV_X1 i_0_33 (
      .A (state[0]),
      .ZN(n_0_21)
  );
  INV_X1 i_0_34 (
      .A (i_rst),
      .ZN(n_0_22)
  );
endmodule

module datapath (
    i_in2,
    i_in1,
    o_out1
);
  input [31:0] i_in2;
  input [31:0] i_in1;
  output [32:0] o_out1;

  HA_X1 i_0 (
      .A (i_in2[0]),
      .B (i_in1[0]),
      .CO(n_0),
      .S (o_out1[0])
  );
  FA_X1 i_1 (
      .A (i_in2[1]),
      .B (i_in1[1]),
      .CI(n_0),
      .CO(n_1),
      .S (o_out1[1])
  );
  FA_X1 i_2 (
      .A (i_in2[2]),
      .B (i_in1[2]),
      .CI(n_1),
      .CO(n_2),
      .S (o_out1[2])
  );
  FA_X1 i_3 (
      .A (i_in2[3]),
      .B (i_in1[3]),
      .CI(n_2),
      .CO(n_3),
      .S (o_out1[3])
  );
  FA_X1 i_4 (
      .A (i_in2[4]),
      .B (i_in1[4]),
      .CI(n_3),
      .CO(n_4),
      .S (o_out1[4])
  );
  FA_X1 i_5 (
      .A (i_in2[5]),
      .B (i_in1[5]),
      .CI(n_4),
      .CO(n_5),
      .S (o_out1[5])
  );
  FA_X1 i_6 (
      .A (i_in2[6]),
      .B (i_in1[6]),
      .CI(n_5),
      .CO(n_6),
      .S (o_out1[6])
  );
  FA_X1 i_7 (
      .A (i_in2[7]),
      .B (i_in1[7]),
      .CI(n_6),
      .CO(n_7),
      .S (o_out1[7])
  );
  FA_X1 i_8 (
      .A (i_in2[8]),
      .B (i_in1[8]),
      .CI(n_7),
      .CO(n_8),
      .S (o_out1[8])
  );
  FA_X1 i_9 (
      .A (i_in2[9]),
      .B (i_in1[9]),
      .CI(n_8),
      .CO(n_9),
      .S (o_out1[9])
  );
  FA_X1 i_10 (
      .A (i_in2[10]),
      .B (i_in1[10]),
      .CI(n_9),
      .CO(n_10),
      .S (o_out1[10])
  );
  FA_X1 i_11 (
      .A (i_in2[11]),
      .B (i_in1[11]),
      .CI(n_10),
      .CO(n_11),
      .S (o_out1[11])
  );
  FA_X1 i_12 (
      .A (i_in2[12]),
      .B (i_in1[12]),
      .CI(n_11),
      .CO(n_12),
      .S (o_out1[12])
  );
  FA_X1 i_13 (
      .A (i_in2[13]),
      .B (i_in1[13]),
      .CI(n_12),
      .CO(n_13),
      .S (o_out1[13])
  );
  FA_X1 i_14 (
      .A (i_in2[14]),
      .B (i_in1[14]),
      .CI(n_13),
      .CO(n_14),
      .S (o_out1[14])
  );
  FA_X1 i_15 (
      .A (i_in2[15]),
      .B (i_in1[15]),
      .CI(n_14),
      .CO(n_15),
      .S (o_out1[15])
  );
  FA_X1 i_16 (
      .A (i_in2[16]),
      .B (i_in1[16]),
      .CI(n_15),
      .CO(n_16),
      .S (o_out1[16])
  );
  FA_X1 i_17 (
      .A (i_in2[17]),
      .B (i_in1[17]),
      .CI(n_16),
      .CO(n_17),
      .S (o_out1[17])
  );
  FA_X1 i_18 (
      .A (i_in2[18]),
      .B (i_in1[18]),
      .CI(n_17),
      .CO(n_18),
      .S (o_out1[18])
  );
  FA_X1 i_19 (
      .A (i_in2[19]),
      .B (i_in1[19]),
      .CI(n_18),
      .CO(n_19),
      .S (o_out1[19])
  );
  FA_X1 i_20 (
      .A (i_in2[20]),
      .B (i_in1[20]),
      .CI(n_19),
      .CO(n_20),
      .S (o_out1[20])
  );
  FA_X1 i_21 (
      .A (i_in2[21]),
      .B (i_in1[21]),
      .CI(n_20),
      .CO(n_21),
      .S (o_out1[21])
  );
  FA_X1 i_22 (
      .A (i_in2[22]),
      .B (i_in1[22]),
      .CI(n_21),
      .CO(n_22),
      .S (o_out1[22])
  );
  FA_X1 i_23 (
      .A (i_in2[23]),
      .B (i_in1[23]),
      .CI(n_22),
      .CO(n_23),
      .S (o_out1[23])
  );
  FA_X1 i_24 (
      .A (i_in2[24]),
      .B (i_in1[24]),
      .CI(n_23),
      .CO(n_24),
      .S (o_out1[24])
  );
  FA_X1 i_25 (
      .A (i_in2[25]),
      .B (i_in1[25]),
      .CI(n_24),
      .CO(n_25),
      .S (o_out1[25])
  );
  FA_X1 i_26 (
      .A (i_in2[26]),
      .B (i_in1[26]),
      .CI(n_25),
      .CO(n_26),
      .S (o_out1[26])
  );
  FA_X1 i_27 (
      .A (i_in2[27]),
      .B (i_in1[27]),
      .CI(n_26),
      .CO(n_27),
      .S (o_out1[27])
  );
  FA_X1 i_28 (
      .A (i_in2[28]),
      .B (i_in1[28]),
      .CI(n_27),
      .CO(n_28),
      .S (o_out1[28])
  );
  FA_X1 i_29 (
      .A (i_in2[29]),
      .B (i_in1[29]),
      .CI(n_28),
      .CO(n_29),
      .S (o_out1[29])
  );
  FA_X1 i_30 (
      .A (i_in2[30]),
      .B (i_in1[30]),
      .CI(n_29),
      .CO(n_30),
      .S (o_out1[30])
  );
  FA_X1 i_31 (
      .A (i_in2[31]),
      .B (i_in1[31]),
      .CI(n_30),
      .CO(o_out1[32]),
      .S (o_out1[31])
  );
endmodule

module adder (
    i_in1,
    i_in2,
    o_out1
);
  input [31:0] i_in1;
  input [31:0] i_in2;
  output [32:0] o_out1;

  datapath i_0 (
      .i_in2 (i_in2),
      .i_in1 (i_in1),
      .o_out1(o_out1)
  );
endmodule

module shifter (
    i_clk,
    i_rst,
    i_load,
    i_add,
    i_shift,
    i_out,
    i_sign,
    i_adder,
    Q,
    A,
    o_lsb,
    o_out
);
  input i_clk;
  input i_rst;
  input i_load;
  input i_add;
  input i_shift;
  input i_out;
  input i_sign;
  input [32:0] i_adder;
  input [31:0] Q;
  output [31:0] A;
  output o_lsb;
  output [63:0] o_out;

  wire add_temp;
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
  wire n_0_69;
  wire n_0_70;
  wire n_0_71;

  CLKGATE_X1 clk_gate_temp_reg (
      .CK (i_clk),
      .E  (n_99),
      .GCK(n_0)
  );
  DFF_X1 \temp_reg[63] (
      .D (n_98),
      .CK(n_0),
      .Q (A[31]),
      .QN()
  );
  DFF_X1 \temp_reg[62] (
      .D (n_97),
      .CK(n_0),
      .Q (A[30]),
      .QN()
  );
  DFF_X1 \temp_reg[61] (
      .D (n_96),
      .CK(n_0),
      .Q (A[29]),
      .QN()
  );
  DFF_X1 \temp_reg[60] (
      .D (n_95),
      .CK(n_0),
      .Q (A[28]),
      .QN()
  );
  DFF_X1 \temp_reg[59] (
      .D (n_94),
      .CK(n_0),
      .Q (A[27]),
      .QN()
  );
  DFF_X1 \temp_reg[58] (
      .D (n_93),
      .CK(n_0),
      .Q (A[26]),
      .QN()
  );
  DFF_X1 \temp_reg[57] (
      .D (n_92),
      .CK(n_0),
      .Q (A[25]),
      .QN()
  );
  DFF_X1 \temp_reg[56] (
      .D (n_91),
      .CK(n_0),
      .Q (A[24]),
      .QN()
  );
  DFF_X1 \temp_reg[55] (
      .D (n_90),
      .CK(n_0),
      .Q (A[23]),
      .QN()
  );
  DFF_X1 \temp_reg[54] (
      .D (n_89),
      .CK(n_0),
      .Q (A[22]),
      .QN()
  );
  DFF_X1 \temp_reg[53] (
      .D (n_88),
      .CK(n_0),
      .Q (A[21]),
      .QN()
  );
  DFF_X1 \temp_reg[52] (
      .D (n_87),
      .CK(n_0),
      .Q (A[20]),
      .QN()
  );
  DFF_X1 \temp_reg[51] (
      .D (n_86),
      .CK(n_0),
      .Q (A[19]),
      .QN()
  );
  DFF_X1 \temp_reg[50] (
      .D (n_85),
      .CK(n_0),
      .Q (A[18]),
      .QN()
  );
  DFF_X1 \temp_reg[49] (
      .D (n_84),
      .CK(n_0),
      .Q (A[17]),
      .QN()
  );
  DFF_X1 \temp_reg[48] (
      .D (n_83),
      .CK(n_0),
      .Q (A[16]),
      .QN()
  );
  DFF_X1 \temp_reg[47] (
      .D (n_82),
      .CK(n_0),
      .Q (A[15]),
      .QN()
  );
  DFF_X1 \temp_reg[46] (
      .D (n_81),
      .CK(n_0),
      .Q (A[14]),
      .QN()
  );
  DFF_X1 \temp_reg[45] (
      .D (n_80),
      .CK(n_0),
      .Q (A[13]),
      .QN()
  );
  DFF_X1 \temp_reg[44] (
      .D (n_79),
      .CK(n_0),
      .Q (A[12]),
      .QN()
  );
  DFF_X1 \temp_reg[43] (
      .D (n_78),
      .CK(n_0),
      .Q (A[11]),
      .QN()
  );
  DFF_X1 \temp_reg[42] (
      .D (n_77),
      .CK(n_0),
      .Q (A[10]),
      .QN()
  );
  DFF_X1 \temp_reg[41] (
      .D (n_76),
      .CK(n_0),
      .Q (A[9]),
      .QN()
  );
  DFF_X1 \temp_reg[40] (
      .D (n_75),
      .CK(n_0),
      .Q (A[8]),
      .QN()
  );
  DFF_X1 \temp_reg[39] (
      .D (n_74),
      .CK(n_0),
      .Q (A[7]),
      .QN()
  );
  DFF_X1 \temp_reg[38] (
      .D (n_73),
      .CK(n_0),
      .Q (A[6]),
      .QN()
  );
  DFF_X1 \temp_reg[37] (
      .D (n_72),
      .CK(n_0),
      .Q (A[5]),
      .QN()
  );
  DFF_X1 \temp_reg[36] (
      .D (n_71),
      .CK(n_0),
      .Q (A[4]),
      .QN()
  );
  DFF_X1 \temp_reg[35] (
      .D (n_70),
      .CK(n_0),
      .Q (A[3]),
      .QN()
  );
  DFF_X1 \temp_reg[34] (
      .D (n_69),
      .CK(n_0),
      .Q (A[2]),
      .QN()
  );
  DFF_X1 \temp_reg[33] (
      .D (n_68),
      .CK(n_0),
      .Q (A[1]),
      .QN()
  );
  DFF_X1 \temp_reg[32] (
      .D (n_67),
      .CK(n_0),
      .Q (A[0]),
      .QN()
  );
  DFF_X1 \temp_reg[31] (
      .D (n_66),
      .CK(n_0),
      .Q (n_1),
      .QN()
  );
  DFF_X1 \temp_reg[30] (
      .D (n_65),
      .CK(n_0),
      .Q (n_2),
      .QN()
  );
  DFF_X1 \temp_reg[29] (
      .D (n_64),
      .CK(n_0),
      .Q (n_3),
      .QN()
  );
  DFF_X1 \temp_reg[28] (
      .D (n_63),
      .CK(n_0),
      .Q (n_4),
      .QN()
  );
  DFF_X1 \temp_reg[27] (
      .D (n_62),
      .CK(n_0),
      .Q (n_5),
      .QN()
  );
  DFF_X1 \temp_reg[26] (
      .D (n_61),
      .CK(n_0),
      .Q (n_6),
      .QN()
  );
  DFF_X1 \temp_reg[25] (
      .D (n_60),
      .CK(n_0),
      .Q (n_7),
      .QN()
  );
  DFF_X1 \temp_reg[24] (
      .D (n_59),
      .CK(n_0),
      .Q (n_8),
      .QN()
  );
  DFF_X1 \temp_reg[23] (
      .D (n_58),
      .CK(n_0),
      .Q (n_9),
      .QN()
  );
  DFF_X1 \temp_reg[22] (
      .D (n_57),
      .CK(n_0),
      .Q (n_10),
      .QN()
  );
  DFF_X1 \temp_reg[21] (
      .D (n_56),
      .CK(n_0),
      .Q (n_11),
      .QN()
  );
  DFF_X1 \temp_reg[20] (
      .D (n_55),
      .CK(n_0),
      .Q (n_12),
      .QN()
  );
  DFF_X1 \temp_reg[19] (
      .D (n_54),
      .CK(n_0),
      .Q (n_13),
      .QN()
  );
  DFF_X1 \temp_reg[18] (
      .D (n_53),
      .CK(n_0),
      .Q (n_14),
      .QN()
  );
  DFF_X1 \temp_reg[17] (
      .D (n_52),
      .CK(n_0),
      .Q (n_15),
      .QN()
  );
  DFF_X1 \temp_reg[16] (
      .D (n_51),
      .CK(n_0),
      .Q (n_16),
      .QN()
  );
  DFF_X1 \temp_reg[15] (
      .D (n_50),
      .CK(n_0),
      .Q (n_17),
      .QN()
  );
  DFF_X1 \temp_reg[14] (
      .D (n_49),
      .CK(n_0),
      .Q (n_18),
      .QN()
  );
  DFF_X1 \temp_reg[13] (
      .D (n_48),
      .CK(n_0),
      .Q (n_19),
      .QN()
  );
  DFF_X1 \temp_reg[12] (
      .D (n_47),
      .CK(n_0),
      .Q (n_20),
      .QN()
  );
  DFF_X1 \temp_reg[11] (
      .D (n_46),
      .CK(n_0),
      .Q (n_21),
      .QN()
  );
  DFF_X1 \temp_reg[10] (
      .D (n_45),
      .CK(n_0),
      .Q (n_22),
      .QN()
  );
  DFF_X1 \temp_reg[9] (
      .D (n_44),
      .CK(n_0),
      .Q (n_23),
      .QN()
  );
  DFF_X1 \temp_reg[8] (
      .D (n_43),
      .CK(n_0),
      .Q (n_24),
      .QN()
  );
  DFF_X1 \temp_reg[7] (
      .D (n_42),
      .CK(n_0),
      .Q (n_25),
      .QN()
  );
  DFF_X1 \temp_reg[6] (
      .D (n_41),
      .CK(n_0),
      .Q (n_26),
      .QN()
  );
  DFF_X1 \temp_reg[5] (
      .D (n_40),
      .CK(n_0),
      .Q (n_27),
      .QN()
  );
  DFF_X1 \temp_reg[4] (
      .D (n_39),
      .CK(n_0),
      .Q (n_28),
      .QN()
  );
  DFF_X1 \temp_reg[3] (
      .D (n_38),
      .CK(n_0),
      .Q (n_29),
      .QN()
  );
  DFF_X1 \temp_reg[2] (
      .D (n_37),
      .CK(n_0),
      .Q (n_30),
      .QN()
  );
  DFF_X1 \temp_reg[1] (
      .D (n_36),
      .CK(n_0),
      .Q (n_31),
      .QN()
  );
  DFF_X1 \temp_reg[0] (
      .D (n_35),
      .CK(n_0),
      .Q (o_lsb),
      .QN()
  );
  DFF_X1 add_temp_reg (
      .D (n_32),
      .CK(i_clk),
      .Q (add_temp),
      .QN()
  );
  MUX2_X1 add_temp_reg_enable_mux_0 (
      .A(add_temp),
      .B(n_33),
      .S(n_34),
      .Z(n_32)
  );
  AND2_X1 i_0_0 (
      .A1(o_lsb),
      .A2(i_out),
      .ZN(o_out[0])
  );
  AND2_X1 i_0_1 (
      .A1(n_31),
      .A2(i_out),
      .ZN(o_out[1])
  );
  AND2_X1 i_0_2 (
      .A1(n_30),
      .A2(i_out),
      .ZN(o_out[2])
  );
  AND2_X1 i_0_3 (
      .A1(n_29),
      .A2(i_out),
      .ZN(o_out[3])
  );
  AND2_X1 i_0_4 (
      .A1(n_28),
      .A2(i_out),
      .ZN(o_out[4])
  );
  AND2_X1 i_0_5 (
      .A1(n_27),
      .A2(i_out),
      .ZN(o_out[5])
  );
  AND2_X1 i_0_6 (
      .A1(n_26),
      .A2(i_out),
      .ZN(o_out[6])
  );
  AND2_X1 i_0_7 (
      .A1(n_25),
      .A2(i_out),
      .ZN(o_out[7])
  );
  AND2_X1 i_0_8 (
      .A1(n_24),
      .A2(i_out),
      .ZN(o_out[8])
  );
  AND2_X1 i_0_9 (
      .A1(n_23),
      .A2(i_out),
      .ZN(o_out[9])
  );
  AND2_X1 i_0_10 (
      .A1(n_22),
      .A2(i_out),
      .ZN(o_out[10])
  );
  AND2_X1 i_0_11 (
      .A1(n_21),
      .A2(i_out),
      .ZN(o_out[11])
  );
  AND2_X1 i_0_12 (
      .A1(n_20),
      .A2(i_out),
      .ZN(o_out[12])
  );
  AND2_X1 i_0_13 (
      .A1(n_19),
      .A2(i_out),
      .ZN(o_out[13])
  );
  AND2_X1 i_0_14 (
      .A1(n_18),
      .A2(i_out),
      .ZN(o_out[14])
  );
  AND2_X1 i_0_15 (
      .A1(n_17),
      .A2(i_out),
      .ZN(o_out[15])
  );
  AND2_X1 i_0_16 (
      .A1(n_16),
      .A2(i_out),
      .ZN(o_out[16])
  );
  AND2_X1 i_0_17 (
      .A1(n_15),
      .A2(i_out),
      .ZN(o_out[17])
  );
  AND2_X1 i_0_18 (
      .A1(n_14),
      .A2(i_out),
      .ZN(o_out[18])
  );
  AND2_X1 i_0_19 (
      .A1(n_13),
      .A2(i_out),
      .ZN(o_out[19])
  );
  AND2_X1 i_0_20 (
      .A1(n_12),
      .A2(i_out),
      .ZN(o_out[20])
  );
  AND2_X1 i_0_21 (
      .A1(n_11),
      .A2(i_out),
      .ZN(o_out[21])
  );
  AND2_X1 i_0_22 (
      .A1(n_10),
      .A2(i_out),
      .ZN(o_out[22])
  );
  AND2_X1 i_0_23 (
      .A1(n_9),
      .A2(i_out),
      .ZN(o_out[23])
  );
  AND2_X1 i_0_24 (
      .A1(n_8),
      .A2(i_out),
      .ZN(o_out[24])
  );
  AND2_X1 i_0_25 (
      .A1(n_7),
      .A2(i_out),
      .ZN(o_out[25])
  );
  AND2_X1 i_0_26 (
      .A1(n_6),
      .A2(i_out),
      .ZN(o_out[26])
  );
  AND2_X1 i_0_27 (
      .A1(n_5),
      .A2(i_out),
      .ZN(o_out[27])
  );
  AND2_X1 i_0_28 (
      .A1(n_4),
      .A2(i_out),
      .ZN(o_out[28])
  );
  AND2_X1 i_0_29 (
      .A1(n_3),
      .A2(i_out),
      .ZN(o_out[29])
  );
  AND2_X1 i_0_30 (
      .A1(n_2),
      .A2(i_out),
      .ZN(o_out[30])
  );
  AND2_X1 i_0_31 (
      .A1(n_1),
      .A2(i_out),
      .ZN(o_out[31])
  );
  AND2_X1 i_0_32 (
      .A1(A[0]),
      .A2(i_out),
      .ZN(o_out[32])
  );
  AND2_X1 i_0_33 (
      .A1(A[1]),
      .A2(i_out),
      .ZN(o_out[33])
  );
  AND2_X1 i_0_34 (
      .A1(A[2]),
      .A2(i_out),
      .ZN(o_out[34])
  );
  AND2_X1 i_0_35 (
      .A1(A[3]),
      .A2(i_out),
      .ZN(o_out[35])
  );
  AND2_X1 i_0_36 (
      .A1(A[4]),
      .A2(i_out),
      .ZN(o_out[36])
  );
  AND2_X1 i_0_37 (
      .A1(A[5]),
      .A2(i_out),
      .ZN(o_out[37])
  );
  AND2_X1 i_0_38 (
      .A1(A[6]),
      .A2(i_out),
      .ZN(o_out[38])
  );
  AND2_X1 i_0_39 (
      .A1(A[7]),
      .A2(i_out),
      .ZN(o_out[39])
  );
  AND2_X1 i_0_40 (
      .A1(A[8]),
      .A2(i_out),
      .ZN(o_out[40])
  );
  AND2_X1 i_0_41 (
      .A1(A[9]),
      .A2(i_out),
      .ZN(o_out[41])
  );
  AND2_X1 i_0_42 (
      .A1(A[10]),
      .A2(i_out),
      .ZN(o_out[42])
  );
  AND2_X1 i_0_43 (
      .A1(A[11]),
      .A2(i_out),
      .ZN(o_out[43])
  );
  AND2_X1 i_0_44 (
      .A1(A[12]),
      .A2(i_out),
      .ZN(o_out[44])
  );
  AND2_X1 i_0_45 (
      .A1(A[13]),
      .A2(i_out),
      .ZN(o_out[45])
  );
  AND2_X1 i_0_46 (
      .A1(A[14]),
      .A2(i_out),
      .ZN(o_out[46])
  );
  AND2_X1 i_0_47 (
      .A1(A[15]),
      .A2(i_out),
      .ZN(o_out[47])
  );
  AND2_X1 i_0_48 (
      .A1(A[16]),
      .A2(i_out),
      .ZN(o_out[48])
  );
  AND2_X1 i_0_49 (
      .A1(A[17]),
      .A2(i_out),
      .ZN(o_out[49])
  );
  AND2_X1 i_0_50 (
      .A1(A[18]),
      .A2(i_out),
      .ZN(o_out[50])
  );
  AND2_X1 i_0_51 (
      .A1(A[19]),
      .A2(i_out),
      .ZN(o_out[51])
  );
  AND2_X1 i_0_52 (
      .A1(A[20]),
      .A2(i_out),
      .ZN(o_out[52])
  );
  AND2_X1 i_0_53 (
      .A1(A[21]),
      .A2(i_out),
      .ZN(o_out[53])
  );
  AND2_X1 i_0_54 (
      .A1(A[22]),
      .A2(i_out),
      .ZN(o_out[54])
  );
  AND2_X1 i_0_55 (
      .A1(A[23]),
      .A2(i_out),
      .ZN(o_out[55])
  );
  AND2_X1 i_0_56 (
      .A1(A[24]),
      .A2(i_out),
      .ZN(o_out[56])
  );
  AND2_X1 i_0_57 (
      .A1(A[25]),
      .A2(i_out),
      .ZN(o_out[57])
  );
  AND2_X1 i_0_58 (
      .A1(A[26]),
      .A2(i_out),
      .ZN(o_out[58])
  );
  AND2_X1 i_0_59 (
      .A1(A[27]),
      .A2(i_out),
      .ZN(o_out[59])
  );
  AND2_X1 i_0_60 (
      .A1(A[28]),
      .A2(i_out),
      .ZN(o_out[60])
  );
  AND2_X1 i_0_61 (
      .A1(A[29]),
      .A2(i_out),
      .ZN(o_out[61])
  );
  AND2_X1 i_0_62 (
      .A1(A[30]),
      .A2(i_out),
      .ZN(o_out[62])
  );
  AND2_X1 i_0_63 (
      .A1(A[31]),
      .A2(i_out),
      .ZN(o_out[63])
  );
  NOR2_X1 i_0_64 (
      .A1(n_0_69),
      .A2(i_rst),
      .ZN(n_33)
  );
  OAI21_X1 i_0_65 (
      .A (n_0_71),
      .B1(i_load),
      .B2(n_0_0),
      .ZN(n_34)
  );
  AOI21_X1 i_0_66 (
      .A (i_add),
      .B1(i_shift),
      .B2(add_temp),
      .ZN(n_0_0)
  );
  INV_X1 i_0_67 (
      .A (n_0_1),
      .ZN(n_35)
  );
  AOI22_X1 i_0_68 (
      .A1(n_31),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[0]),
      .ZN(n_0_1)
  );
  INV_X1 i_0_69 (
      .A (n_0_2),
      .ZN(n_36)
  );
  AOI22_X1 i_0_70 (
      .A1(n_30),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[1]),
      .ZN(n_0_2)
  );
  INV_X1 i_0_71 (
      .A (n_0_3),
      .ZN(n_37)
  );
  AOI22_X1 i_0_72 (
      .A1(n_29),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[2]),
      .ZN(n_0_3)
  );
  INV_X1 i_0_73 (
      .A (n_0_4),
      .ZN(n_38)
  );
  AOI22_X1 i_0_74 (
      .A1(n_28),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[3]),
      .ZN(n_0_4)
  );
  INV_X1 i_0_75 (
      .A (n_0_5),
      .ZN(n_39)
  );
  AOI22_X1 i_0_76 (
      .A1(n_27),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[4]),
      .ZN(n_0_5)
  );
  INV_X1 i_0_77 (
      .A (n_0_6),
      .ZN(n_40)
  );
  AOI22_X1 i_0_78 (
      .A1(n_26),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[5]),
      .ZN(n_0_6)
  );
  INV_X1 i_0_79 (
      .A (n_0_7),
      .ZN(n_41)
  );
  AOI22_X1 i_0_80 (
      .A1(n_25),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[6]),
      .ZN(n_0_7)
  );
  INV_X1 i_0_81 (
      .A (n_0_8),
      .ZN(n_42)
  );
  AOI22_X1 i_0_82 (
      .A1(n_24),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[7]),
      .ZN(n_0_8)
  );
  INV_X1 i_0_83 (
      .A (n_0_9),
      .ZN(n_43)
  );
  AOI22_X1 i_0_84 (
      .A1(n_23),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[8]),
      .ZN(n_0_9)
  );
  INV_X1 i_0_85 (
      .A (n_0_10),
      .ZN(n_44)
  );
  AOI22_X1 i_0_86 (
      .A1(n_22),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[9]),
      .ZN(n_0_10)
  );
  INV_X1 i_0_87 (
      .A (n_0_11),
      .ZN(n_45)
  );
  AOI22_X1 i_0_88 (
      .A1(n_21),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[10]),
      .ZN(n_0_11)
  );
  INV_X1 i_0_89 (
      .A (n_0_12),
      .ZN(n_46)
  );
  AOI22_X1 i_0_90 (
      .A1(n_20),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[11]),
      .ZN(n_0_12)
  );
  INV_X1 i_0_91 (
      .A (n_0_13),
      .ZN(n_47)
  );
  AOI22_X1 i_0_92 (
      .A1(n_19),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[12]),
      .ZN(n_0_13)
  );
  INV_X1 i_0_93 (
      .A (n_0_14),
      .ZN(n_48)
  );
  AOI22_X1 i_0_94 (
      .A1(n_18),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[13]),
      .ZN(n_0_14)
  );
  INV_X1 i_0_95 (
      .A (n_0_15),
      .ZN(n_49)
  );
  AOI22_X1 i_0_96 (
      .A1(n_17),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[14]),
      .ZN(n_0_15)
  );
  INV_X1 i_0_97 (
      .A (n_0_16),
      .ZN(n_50)
  );
  AOI22_X1 i_0_98 (
      .A1(n_16),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[15]),
      .ZN(n_0_16)
  );
  INV_X1 i_0_99 (
      .A (n_0_17),
      .ZN(n_51)
  );
  AOI22_X1 i_0_100 (
      .A1(n_15),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[16]),
      .ZN(n_0_17)
  );
  INV_X1 i_0_101 (
      .A (n_0_18),
      .ZN(n_52)
  );
  AOI22_X1 i_0_102 (
      .A1(n_14),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[17]),
      .ZN(n_0_18)
  );
  INV_X1 i_0_103 (
      .A (n_0_19),
      .ZN(n_53)
  );
  AOI22_X1 i_0_104 (
      .A1(n_13),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[18]),
      .ZN(n_0_19)
  );
  INV_X1 i_0_105 (
      .A (n_0_20),
      .ZN(n_54)
  );
  AOI22_X1 i_0_106 (
      .A1(n_12),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[19]),
      .ZN(n_0_20)
  );
  INV_X1 i_0_107 (
      .A (n_0_21),
      .ZN(n_55)
  );
  AOI22_X1 i_0_108 (
      .A1(n_11),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[20]),
      .ZN(n_0_21)
  );
  INV_X1 i_0_109 (
      .A (n_0_22),
      .ZN(n_56)
  );
  AOI22_X1 i_0_110 (
      .A1(n_10),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[21]),
      .ZN(n_0_22)
  );
  INV_X1 i_0_111 (
      .A (n_0_23),
      .ZN(n_57)
  );
  AOI22_X1 i_0_112 (
      .A1(n_9),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[22]),
      .ZN(n_0_23)
  );
  INV_X1 i_0_113 (
      .A (n_0_24),
      .ZN(n_58)
  );
  AOI22_X1 i_0_114 (
      .A1(n_8),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[23]),
      .ZN(n_0_24)
  );
  INV_X1 i_0_115 (
      .A (n_0_25),
      .ZN(n_59)
  );
  AOI22_X1 i_0_116 (
      .A1(n_7),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[24]),
      .ZN(n_0_25)
  );
  INV_X1 i_0_117 (
      .A (n_0_26),
      .ZN(n_60)
  );
  AOI22_X1 i_0_118 (
      .A1(n_6),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[25]),
      .ZN(n_0_26)
  );
  INV_X1 i_0_119 (
      .A (n_0_27),
      .ZN(n_61)
  );
  AOI22_X1 i_0_120 (
      .A1(n_5),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[26]),
      .ZN(n_0_27)
  );
  INV_X1 i_0_121 (
      .A (n_0_28),
      .ZN(n_62)
  );
  AOI22_X1 i_0_122 (
      .A1(n_4),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[27]),
      .ZN(n_0_28)
  );
  INV_X1 i_0_123 (
      .A (n_0_29),
      .ZN(n_63)
  );
  AOI22_X1 i_0_124 (
      .A1(n_3),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[28]),
      .ZN(n_0_29)
  );
  INV_X1 i_0_125 (
      .A (n_0_30),
      .ZN(n_64)
  );
  AOI22_X1 i_0_126 (
      .A1(n_2),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[29]),
      .ZN(n_0_30)
  );
  INV_X1 i_0_127 (
      .A (n_0_31),
      .ZN(n_65)
  );
  AOI22_X1 i_0_128 (
      .A1(n_1),
      .A2(n_0_67),
      .B1(n_0_33),
      .B2(Q[30]),
      .ZN(n_0_31)
  );
  INV_X1 i_0_129 (
      .A (n_0_32),
      .ZN(n_66)
  );
  AOI222_X1 i_0_130 (
      .A1(i_adder[0]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[0]),
      .C1(Q[31]),
      .C2(n_0_33),
      .ZN(n_0_32)
  );
  NOR2_X1 i_0_131 (
      .A1(n_0_70),
      .A2(i_rst),
      .ZN(n_0_33)
  );
  INV_X1 i_0_132 (
      .A (n_0_34),
      .ZN(n_67)
  );
  AOI22_X1 i_0_133 (
      .A1(i_adder[1]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[1]),
      .ZN(n_0_34)
  );
  INV_X1 i_0_134 (
      .A (n_0_35),
      .ZN(n_68)
  );
  AOI22_X1 i_0_135 (
      .A1(i_adder[2]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[2]),
      .ZN(n_0_35)
  );
  INV_X1 i_0_136 (
      .A (n_0_36),
      .ZN(n_69)
  );
  AOI22_X1 i_0_137 (
      .A1(i_adder[3]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[3]),
      .ZN(n_0_36)
  );
  INV_X1 i_0_138 (
      .A (n_0_37),
      .ZN(n_70)
  );
  AOI22_X1 i_0_139 (
      .A1(i_adder[4]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[4]),
      .ZN(n_0_37)
  );
  INV_X1 i_0_140 (
      .A (n_0_38),
      .ZN(n_71)
  );
  AOI22_X1 i_0_141 (
      .A1(i_adder[5]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[5]),
      .ZN(n_0_38)
  );
  INV_X1 i_0_142 (
      .A (n_0_39),
      .ZN(n_72)
  );
  AOI22_X1 i_0_143 (
      .A1(i_adder[6]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[6]),
      .ZN(n_0_39)
  );
  INV_X1 i_0_144 (
      .A (n_0_40),
      .ZN(n_73)
  );
  AOI22_X1 i_0_145 (
      .A1(i_adder[7]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[7]),
      .ZN(n_0_40)
  );
  INV_X1 i_0_146 (
      .A (n_0_41),
      .ZN(n_74)
  );
  AOI22_X1 i_0_147 (
      .A1(i_adder[8]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[8]),
      .ZN(n_0_41)
  );
  INV_X1 i_0_148 (
      .A (n_0_42),
      .ZN(n_75)
  );
  AOI22_X1 i_0_149 (
      .A1(i_adder[9]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[9]),
      .ZN(n_0_42)
  );
  INV_X1 i_0_150 (
      .A (n_0_43),
      .ZN(n_76)
  );
  AOI22_X1 i_0_151 (
      .A1(i_adder[10]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[10]),
      .ZN(n_0_43)
  );
  INV_X1 i_0_152 (
      .A (n_0_44),
      .ZN(n_77)
  );
  AOI22_X1 i_0_153 (
      .A1(i_adder[11]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[11]),
      .ZN(n_0_44)
  );
  INV_X1 i_0_154 (
      .A (n_0_45),
      .ZN(n_78)
  );
  AOI22_X1 i_0_155 (
      .A1(i_adder[12]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[12]),
      .ZN(n_0_45)
  );
  INV_X1 i_0_156 (
      .A (n_0_46),
      .ZN(n_79)
  );
  AOI22_X1 i_0_157 (
      .A1(i_adder[13]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[13]),
      .ZN(n_0_46)
  );
  INV_X1 i_0_158 (
      .A (n_0_47),
      .ZN(n_80)
  );
  AOI22_X1 i_0_159 (
      .A1(i_adder[14]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[14]),
      .ZN(n_0_47)
  );
  INV_X1 i_0_160 (
      .A (n_0_48),
      .ZN(n_81)
  );
  AOI22_X1 i_0_161 (
      .A1(i_adder[15]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[15]),
      .ZN(n_0_48)
  );
  INV_X1 i_0_162 (
      .A (n_0_49),
      .ZN(n_82)
  );
  AOI22_X1 i_0_163 (
      .A1(i_adder[16]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[16]),
      .ZN(n_0_49)
  );
  INV_X1 i_0_164 (
      .A (n_0_50),
      .ZN(n_83)
  );
  AOI22_X1 i_0_165 (
      .A1(i_adder[17]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[17]),
      .ZN(n_0_50)
  );
  INV_X1 i_0_166 (
      .A (n_0_51),
      .ZN(n_84)
  );
  AOI22_X1 i_0_167 (
      .A1(i_adder[18]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[18]),
      .ZN(n_0_51)
  );
  INV_X1 i_0_168 (
      .A (n_0_52),
      .ZN(n_85)
  );
  AOI22_X1 i_0_169 (
      .A1(i_adder[19]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[19]),
      .ZN(n_0_52)
  );
  INV_X1 i_0_170 (
      .A (n_0_53),
      .ZN(n_86)
  );
  AOI22_X1 i_0_171 (
      .A1(i_adder[20]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[20]),
      .ZN(n_0_53)
  );
  INV_X1 i_0_172 (
      .A (n_0_54),
      .ZN(n_87)
  );
  AOI22_X1 i_0_173 (
      .A1(i_adder[21]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[21]),
      .ZN(n_0_54)
  );
  INV_X1 i_0_174 (
      .A (n_0_55),
      .ZN(n_88)
  );
  AOI22_X1 i_0_175 (
      .A1(i_adder[22]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[22]),
      .ZN(n_0_55)
  );
  INV_X1 i_0_176 (
      .A (n_0_56),
      .ZN(n_89)
  );
  AOI22_X1 i_0_177 (
      .A1(i_adder[23]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[23]),
      .ZN(n_0_56)
  );
  INV_X1 i_0_178 (
      .A (n_0_57),
      .ZN(n_90)
  );
  AOI22_X1 i_0_179 (
      .A1(i_adder[24]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[24]),
      .ZN(n_0_57)
  );
  INV_X1 i_0_180 (
      .A (n_0_58),
      .ZN(n_91)
  );
  AOI22_X1 i_0_181 (
      .A1(i_adder[25]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[25]),
      .ZN(n_0_58)
  );
  INV_X1 i_0_182 (
      .A (n_0_59),
      .ZN(n_92)
  );
  AOI22_X1 i_0_183 (
      .A1(i_adder[26]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[26]),
      .ZN(n_0_59)
  );
  INV_X1 i_0_184 (
      .A (n_0_60),
      .ZN(n_93)
  );
  AOI22_X1 i_0_185 (
      .A1(i_adder[27]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[27]),
      .ZN(n_0_60)
  );
  INV_X1 i_0_186 (
      .A (n_0_61),
      .ZN(n_94)
  );
  AOI22_X1 i_0_187 (
      .A1(i_adder[28]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[28]),
      .ZN(n_0_61)
  );
  INV_X1 i_0_188 (
      .A (n_0_62),
      .ZN(n_95)
  );
  AOI22_X1 i_0_189 (
      .A1(i_adder[29]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[29]),
      .ZN(n_0_62)
  );
  INV_X1 i_0_190 (
      .A (n_0_63),
      .ZN(n_96)
  );
  AOI22_X1 i_0_191 (
      .A1(i_adder[30]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[30]),
      .ZN(n_0_63)
  );
  INV_X1 i_0_192 (
      .A (n_0_64),
      .ZN(n_97)
  );
  AOI22_X1 i_0_193 (
      .A1(i_adder[31]),
      .A2(n_0_66),
      .B1(n_0_65),
      .B2(A[31]),
      .ZN(n_0_64)
  );
  NOR4_X1 i_0_194 (
      .A1(n_0_68),
      .A2(add_temp),
      .A3(i_load),
      .A4(i_rst),
      .ZN(n_0_65)
  );
  AND2_X1 i_0_195 (
      .A1(i_adder[32]),
      .A2(n_0_66),
      .ZN(n_98)
  );
  AND2_X1 i_0_196 (
      .A1(add_temp),
      .A2(n_0_67),
      .ZN(n_0_66)
  );
  NOR3_X1 i_0_197 (
      .A1(n_0_68),
      .A2(i_load),
      .A3(i_rst),
      .ZN(n_0_67)
  );
  NAND3_X1 i_0_198 (
      .A1(n_0_71),
      .A2(n_0_70),
      .A3(n_0_68),
      .ZN(n_99)
  );
  NAND2_X1 i_0_199 (
      .A1(n_0_69),
      .A2(i_shift),
      .ZN(n_0_68)
  );
  INV_X1 i_0_200 (
      .A (i_add),
      .ZN(n_0_69)
  );
  INV_X1 i_0_201 (
      .A (i_load),
      .ZN(n_0_70)
  );
  INV_X1 i_0_202 (
      .A (i_rst),
      .ZN(n_0_71)
  );
endmodule

module datapath__0_21 (
    p_0,
    out
);
  output [63:0] p_0;
  input [63:0] out;

  XOR2_X1 i_0 (
      .A(out[1]),
      .B(out[0]),
      .Z(p_0[1])
  );
  AND2_X1 i_1 (
      .A1(n_61),
      .A2(n_0),
      .ZN(p_0[2])
  );
  OAI21_X1 i_2 (
      .A (out[2]),
      .B1(out[1]),
      .B2(out[0]),
      .ZN(n_0)
  );
  XOR2_X1 i_3 (
      .A(out[3]),
      .B(n_61),
      .Z(p_0[3])
  );
  XOR2_X1 i_4 (
      .A(out[4]),
      .B(n_60),
      .Z(p_0[4])
  );
  XOR2_X1 i_5 (
      .A(out[5]),
      .B(n_59),
      .Z(p_0[5])
  );
  AND2_X1 i_6 (
      .A1(n_58),
      .A2(n_1),
      .ZN(p_0[6])
  );
  OAI21_X1 i_7 (
      .A (out[6]),
      .B1(n_59),
      .B2(out[5]),
      .ZN(n_1)
  );
  XOR2_X1 i_8 (
      .A(out[7]),
      .B(n_58),
      .Z(p_0[7])
  );
  XOR2_X1 i_9 (
      .A(out[8]),
      .B(n_57),
      .Z(p_0[8])
  );
  AND2_X1 i_10 (
      .A1(n_56),
      .A2(n_2),
      .ZN(p_0[9])
  );
  OAI21_X1 i_11 (
      .A (out[9]),
      .B1(n_57),
      .B2(out[8]),
      .ZN(n_2)
  );
  XOR2_X1 i_12 (
      .A(out[10]),
      .B(n_56),
      .Z(p_0[10])
  );
  XNOR2_X1 i_13 (
      .A (out[11]),
      .B (n_55),
      .ZN(p_0[11])
  );
  XOR2_X1 i_14 (
      .A(out[12]),
      .B(n_54),
      .Z(p_0[12])
  );
  XNOR2_X1 i_15 (
      .A (out[13]),
      .B (n_53),
      .ZN(p_0[13])
  );
  XOR2_X1 i_16 (
      .A(out[14]),
      .B(n_52),
      .Z(p_0[14])
  );
  AND2_X1 i_17 (
      .A1(n_51),
      .A2(n_3),
      .ZN(p_0[15])
  );
  OAI21_X1 i_18 (
      .A (out[15]),
      .B1(n_52),
      .B2(out[14]),
      .ZN(n_3)
  );
  XOR2_X1 i_19 (
      .A(out[16]),
      .B(n_51),
      .Z(p_0[16])
  );
  XOR2_X1 i_20 (
      .A(out[17]),
      .B(n_50),
      .Z(p_0[17])
  );
  XOR2_X1 i_21 (
      .A(out[18]),
      .B(n_49),
      .Z(p_0[18])
  );
  XNOR2_X1 i_22 (
      .A (out[19]),
      .B (n_48),
      .ZN(p_0[19])
  );
  XNOR2_X1 i_23 (
      .A (out[20]),
      .B (n_47),
      .ZN(p_0[20])
  );
  XNOR2_X1 i_24 (
      .A (out[21]),
      .B (n_46),
      .ZN(p_0[21])
  );
  XOR2_X1 i_25 (
      .A(out[22]),
      .B(n_45),
      .Z(p_0[22])
  );
  XOR2_X1 i_26 (
      .A(out[23]),
      .B(n_44),
      .Z(p_0[23])
  );
  XNOR2_X1 i_27 (
      .A (out[24]),
      .B (n_43),
      .ZN(p_0[24])
  );
  XNOR2_X1 i_28 (
      .A (out[25]),
      .B (n_42),
      .ZN(p_0[25])
  );
  XNOR2_X1 i_29 (
      .A (out[26]),
      .B (n_41),
      .ZN(p_0[26])
  );
  XOR2_X1 i_30 (
      .A(out[27]),
      .B(n_40),
      .Z(p_0[27])
  );
  XOR2_X1 i_31 (
      .A(out[28]),
      .B(n_39),
      .Z(p_0[28])
  );
  XNOR2_X1 i_32 (
      .A (out[29]),
      .B (n_38),
      .ZN(p_0[29])
  );
  XNOR2_X1 i_33 (
      .A (out[30]),
      .B (n_37),
      .ZN(p_0[30])
  );
  XNOR2_X1 i_34 (
      .A (out[31]),
      .B (n_36),
      .ZN(p_0[31])
  );
  XOR2_X1 i_35 (
      .A(out[32]),
      .B(n_35),
      .Z(p_0[32])
  );
  XOR2_X1 i_36 (
      .A(out[33]),
      .B(n_34),
      .Z(p_0[33])
  );
  XNOR2_X1 i_37 (
      .A (out[34]),
      .B (n_33),
      .ZN(p_0[34])
  );
  XNOR2_X1 i_38 (
      .A (out[35]),
      .B (n_32),
      .ZN(p_0[35])
  );
  XNOR2_X1 i_39 (
      .A (out[36]),
      .B (n_31),
      .ZN(p_0[36])
  );
  XOR2_X1 i_40 (
      .A(out[37]),
      .B(n_30),
      .Z(p_0[37])
  );
  XOR2_X1 i_41 (
      .A(out[38]),
      .B(n_29),
      .Z(p_0[38])
  );
  XNOR2_X1 i_42 (
      .A (out[39]),
      .B (n_28),
      .ZN(p_0[39])
  );
  XNOR2_X1 i_43 (
      .A (out[40]),
      .B (n_27),
      .ZN(p_0[40])
  );
  XOR2_X1 i_44 (
      .A(out[41]),
      .B(n_26),
      .Z(p_0[41])
  );
  XNOR2_X1 i_45 (
      .A (out[42]),
      .B (n_25),
      .ZN(p_0[42])
  );
  XOR2_X1 i_46 (
      .A(out[43]),
      .B(n_24),
      .Z(p_0[43])
  );
  AND2_X1 i_47 (
      .A1(n_23),
      .A2(n_4),
      .ZN(p_0[44])
  );
  OAI21_X1 i_48 (
      .A (out[44]),
      .B1(n_24),
      .B2(out[43]),
      .ZN(n_4)
  );
  XOR2_X1 i_49 (
      .A(out[45]),
      .B(n_23),
      .Z(p_0[45])
  );
  XOR2_X1 i_50 (
      .A(out[46]),
      .B(n_22),
      .Z(p_0[46])
  );
  XOR2_X1 i_51 (
      .A(out[47]),
      .B(n_21),
      .Z(p_0[47])
  );
  XOR2_X1 i_52 (
      .A(out[48]),
      .B(n_20),
      .Z(p_0[48])
  );
  XNOR2_X1 i_53 (
      .A (out[49]),
      .B (n_19),
      .ZN(p_0[49])
  );
  XNOR2_X1 i_54 (
      .A (out[50]),
      .B (n_18),
      .ZN(p_0[50])
  );
  XNOR2_X1 i_55 (
      .A (out[51]),
      .B (n_17),
      .ZN(p_0[51])
  );
  XOR2_X1 i_56 (
      .A(out[52]),
      .B(n_16),
      .Z(p_0[52])
  );
  XNOR2_X1 i_57 (
      .A (out[53]),
      .B (n_15),
      .ZN(p_0[53])
  );
  XNOR2_X1 i_58 (
      .A (out[54]),
      .B (n_14),
      .ZN(p_0[54])
  );
  XNOR2_X1 i_59 (
      .A (out[55]),
      .B (n_13),
      .ZN(p_0[55])
  );
  XOR2_X1 i_60 (
      .A(out[56]),
      .B(n_12),
      .Z(p_0[56])
  );
  AND2_X1 i_61 (
      .A1(n_11),
      .A2(n_5),
      .ZN(p_0[57])
  );
  OAI21_X1 i_62 (
      .A (out[57]),
      .B1(n_12),
      .B2(out[56]),
      .ZN(n_5)
  );
  XOR2_X1 i_63 (
      .A(out[58]),
      .B(n_11),
      .Z(p_0[58])
  );
  XNOR2_X1 i_64 (
      .A (out[59]),
      .B (n_10),
      .ZN(p_0[59])
  );
  XNOR2_X1 i_65 (
      .A (out[60]),
      .B (n_9),
      .ZN(p_0[60])
  );
  XOR2_X1 i_66 (
      .A(out[61]),
      .B(n_8),
      .Z(p_0[61])
  );
  XNOR2_X1 i_67 (
      .A (out[62]),
      .B (n_7),
      .ZN(p_0[62])
  );
  XNOR2_X1 i_68 (
      .A (out[63]),
      .B (n_6),
      .ZN(p_0[63])
  );
  NOR3_X1 i_69 (
      .A1(n_8),
      .A2(out[61]),
      .A3(out[62]),
      .ZN(n_6)
  );
  NOR2_X1 i_70 (
      .A1(n_8),
      .A2(out[61]),
      .ZN(n_7)
  );
  NAND2_X1 i_71 (
      .A1(n_9),
      .A2(n_72),
      .ZN(n_8)
  );
  NOR3_X1 i_72 (
      .A1(n_11),
      .A2(out[58]),
      .A3(out[59]),
      .ZN(n_9)
  );
  NOR2_X1 i_73 (
      .A1(n_11),
      .A2(out[58]),
      .ZN(n_10)
  );
  OR3_X1 i_74 (
      .A1(n_12),
      .A2(out[56]),
      .A3(out[57]),
      .ZN(n_11)
  );
  NAND2_X1 i_75 (
      .A1(n_13),
      .A2(n_71),
      .ZN(n_12)
  );
  NOR4_X1 i_76 (
      .A1(n_16),
      .A2(out[52]),
      .A3(out[53]),
      .A4(out[54]),
      .ZN(n_13)
  );
  NOR3_X1 i_77 (
      .A1(n_16),
      .A2(out[52]),
      .A3(out[53]),
      .ZN(n_14)
  );
  NOR2_X1 i_78 (
      .A1(n_16),
      .A2(out[52]),
      .ZN(n_15)
  );
  NAND2_X1 i_79 (
      .A1(n_17),
      .A2(n_70),
      .ZN(n_16)
  );
  NOR4_X1 i_80 (
      .A1(n_20),
      .A2(out[48]),
      .A3(out[49]),
      .A4(out[50]),
      .ZN(n_17)
  );
  NOR3_X1 i_81 (
      .A1(n_20),
      .A2(out[48]),
      .A3(out[49]),
      .ZN(n_18)
  );
  NOR2_X1 i_82 (
      .A1(n_20),
      .A2(out[48]),
      .ZN(n_19)
  );
  OR2_X1 i_83 (
      .A1(n_21),
      .A2(out[47]),
      .ZN(n_20)
  );
  OR2_X1 i_84 (
      .A1(n_22),
      .A2(out[46]),
      .ZN(n_21)
  );
  OR2_X1 i_85 (
      .A1(n_23),
      .A2(out[45]),
      .ZN(n_22)
  );
  OR3_X1 i_86 (
      .A1(n_24),
      .A2(out[43]),
      .A3(out[44]),
      .ZN(n_23)
  );
  NAND2_X1 i_87 (
      .A1(n_25),
      .A2(n_69),
      .ZN(n_24)
  );
  NOR2_X1 i_88 (
      .A1(n_26),
      .A2(out[41]),
      .ZN(n_25)
  );
  NAND2_X1 i_89 (
      .A1(n_27),
      .A2(n_68),
      .ZN(n_26)
  );
  NOR3_X1 i_90 (
      .A1(n_29),
      .A2(out[38]),
      .A3(out[39]),
      .ZN(n_27)
  );
  NOR2_X1 i_91 (
      .A1(n_29),
      .A2(out[38]),
      .ZN(n_28)
  );
  OR2_X1 i_92 (
      .A1(n_30),
      .A2(out[37]),
      .ZN(n_29)
  );
  NAND2_X1 i_93 (
      .A1(n_31),
      .A2(n_67),
      .ZN(n_30)
  );
  NOR4_X1 i_94 (
      .A1(n_34),
      .A2(out[33]),
      .A3(out[34]),
      .A4(out[35]),
      .ZN(n_31)
  );
  NOR3_X1 i_95 (
      .A1(n_34),
      .A2(out[33]),
      .A3(out[34]),
      .ZN(n_32)
  );
  NOR2_X1 i_96 (
      .A1(n_34),
      .A2(out[33]),
      .ZN(n_33)
  );
  OR2_X1 i_97 (
      .A1(n_35),
      .A2(out[32]),
      .ZN(n_34)
  );
  NAND2_X1 i_98 (
      .A1(n_36),
      .A2(n_66),
      .ZN(n_35)
  );
  NOR4_X1 i_99 (
      .A1(n_39),
      .A2(out[28]),
      .A3(out[29]),
      .A4(out[30]),
      .ZN(n_36)
  );
  NOR3_X1 i_100 (
      .A1(n_39),
      .A2(out[28]),
      .A3(out[29]),
      .ZN(n_37)
  );
  NOR2_X1 i_101 (
      .A1(n_39),
      .A2(out[28]),
      .ZN(n_38)
  );
  OR2_X1 i_102 (
      .A1(n_40),
      .A2(out[27]),
      .ZN(n_39)
  );
  NAND2_X1 i_103 (
      .A1(n_41),
      .A2(n_65),
      .ZN(n_40)
  );
  NOR4_X1 i_104 (
      .A1(n_44),
      .A2(out[23]),
      .A3(out[24]),
      .A4(out[25]),
      .ZN(n_41)
  );
  NOR3_X1 i_105 (
      .A1(n_44),
      .A2(out[23]),
      .A3(out[24]),
      .ZN(n_42)
  );
  NOR2_X1 i_106 (
      .A1(n_44),
      .A2(out[23]),
      .ZN(n_43)
  );
  OR2_X1 i_107 (
      .A1(n_45),
      .A2(out[22]),
      .ZN(n_44)
  );
  NAND2_X1 i_108 (
      .A1(n_46),
      .A2(n_64),
      .ZN(n_45)
  );
  NOR4_X1 i_109 (
      .A1(n_49),
      .A2(out[18]),
      .A3(out[19]),
      .A4(out[20]),
      .ZN(n_46)
  );
  NOR3_X1 i_110 (
      .A1(n_49),
      .A2(out[18]),
      .A3(out[19]),
      .ZN(n_47)
  );
  NOR2_X1 i_111 (
      .A1(n_49),
      .A2(out[18]),
      .ZN(n_48)
  );
  OR2_X1 i_112 (
      .A1(n_50),
      .A2(out[17]),
      .ZN(n_49)
  );
  OR2_X1 i_113 (
      .A1(n_51),
      .A2(out[16]),
      .ZN(n_50)
  );
  OR3_X1 i_114 (
      .A1(n_52),
      .A2(out[14]),
      .A3(out[15]),
      .ZN(n_51)
  );
  NAND2_X1 i_115 (
      .A1(n_53),
      .A2(n_63),
      .ZN(n_52)
  );
  NOR2_X1 i_116 (
      .A1(n_54),
      .A2(out[12]),
      .ZN(n_53)
  );
  NAND2_X1 i_117 (
      .A1(n_55),
      .A2(n_62),
      .ZN(n_54)
  );
  NOR2_X1 i_118 (
      .A1(n_56),
      .A2(out[10]),
      .ZN(n_55)
  );
  OR3_X1 i_119 (
      .A1(n_57),
      .A2(out[8]),
      .A3(out[9]),
      .ZN(n_56)
  );
  OR2_X1 i_120 (
      .A1(n_58),
      .A2(out[7]),
      .ZN(n_57)
  );
  OR3_X1 i_121 (
      .A1(n_59),
      .A2(out[5]),
      .A3(out[6]),
      .ZN(n_58)
  );
  OR2_X1 i_122 (
      .A1(n_60),
      .A2(out[4]),
      .ZN(n_59)
  );
  OR2_X1 i_123 (
      .A1(n_61),
      .A2(out[3]),
      .ZN(n_60)
  );
  OR3_X1 i_124 (
      .A1(out[2]),
      .A2(out[1]),
      .A3(out[0]),
      .ZN(n_61)
  );
  INV_X1 i_125 (
      .A (out[11]),
      .ZN(n_62)
  );
  INV_X1 i_126 (
      .A (out[13]),
      .ZN(n_63)
  );
  INV_X1 i_127 (
      .A (out[21]),
      .ZN(n_64)
  );
  INV_X1 i_128 (
      .A (out[26]),
      .ZN(n_65)
  );
  INV_X1 i_129 (
      .A (out[31]),
      .ZN(n_66)
  );
  INV_X1 i_130 (
      .A (out[36]),
      .ZN(n_67)
  );
  INV_X1 i_131 (
      .A (out[40]),
      .ZN(n_68)
  );
  INV_X1 i_132 (
      .A (out[42]),
      .ZN(n_69)
  );
  INV_X1 i_133 (
      .A (out[51]),
      .ZN(n_70)
  );
  INV_X1 i_134 (
      .A (out[55]),
      .ZN(n_71)
  );
  INV_X1 i_135 (
      .A (out[60]),
      .ZN(n_72)
  );
endmodule

module datapath__0_24 (
    p_0,
    i_in1
);
  output [31:0] p_0;
  input [31:0] i_in1;

  XOR2_X1 i_0 (
      .A(i_in1[1]),
      .B(i_in1[0]),
      .Z(p_0[1])
  );
  AND2_X1 i_1 (
      .A1(n_29),
      .A2(n_0),
      .ZN(p_0[2])
  );
  OAI21_X1 i_2 (
      .A (i_in1[2]),
      .B1(i_in1[1]),
      .B2(i_in1[0]),
      .ZN(n_0)
  );
  XOR2_X1 i_3 (
      .A(i_in1[3]),
      .B(n_29),
      .Z(p_0[3])
  );
  XOR2_X1 i_4 (
      .A(i_in1[4]),
      .B(n_28),
      .Z(p_0[4])
  );
  XOR2_X1 i_5 (
      .A(i_in1[5]),
      .B(n_27),
      .Z(p_0[5])
  );
  AND2_X1 i_6 (
      .A1(n_26),
      .A2(n_1),
      .ZN(p_0[6])
  );
  OAI21_X1 i_7 (
      .A (i_in1[6]),
      .B1(n_27),
      .B2(i_in1[5]),
      .ZN(n_1)
  );
  XOR2_X1 i_8 (
      .A(i_in1[7]),
      .B(n_26),
      .Z(p_0[7])
  );
  XOR2_X1 i_9 (
      .A(i_in1[8]),
      .B(n_25),
      .Z(p_0[8])
  );
  AND2_X1 i_10 (
      .A1(n_24),
      .A2(n_2),
      .ZN(p_0[9])
  );
  OAI21_X1 i_11 (
      .A (i_in1[9]),
      .B1(n_25),
      .B2(i_in1[8]),
      .ZN(n_2)
  );
  XOR2_X1 i_12 (
      .A(i_in1[10]),
      .B(n_24),
      .Z(p_0[10])
  );
  XNOR2_X1 i_13 (
      .A (i_in1[11]),
      .B (n_23),
      .ZN(p_0[11])
  );
  XOR2_X1 i_14 (
      .A(i_in1[12]),
      .B(n_22),
      .Z(p_0[12])
  );
  XNOR2_X1 i_15 (
      .A (i_in1[13]),
      .B (n_21),
      .ZN(p_0[13])
  );
  XNOR2_X1 i_16 (
      .A (i_in1[14]),
      .B (n_20),
      .ZN(p_0[14])
  );
  XOR2_X1 i_17 (
      .A(i_in1[15]),
      .B(n_19),
      .Z(p_0[15])
  );
  AND2_X1 i_18 (
      .A1(n_18),
      .A2(n_3),
      .ZN(p_0[16])
  );
  OAI21_X1 i_19 (
      .A (i_in1[16]),
      .B1(n_19),
      .B2(i_in1[15]),
      .ZN(n_3)
  );
  XOR2_X1 i_20 (
      .A(i_in1[17]),
      .B(n_18),
      .Z(p_0[17])
  );
  XOR2_X1 i_21 (
      .A(i_in1[18]),
      .B(n_17),
      .Z(p_0[18])
  );
  XNOR2_X1 i_22 (
      .A (i_in1[19]),
      .B (n_16),
      .ZN(p_0[19])
  );
  XNOR2_X1 i_23 (
      .A (i_in1[20]),
      .B (n_15),
      .ZN(p_0[20])
  );
  XNOR2_X1 i_24 (
      .A (i_in1[21]),
      .B (n_14),
      .ZN(p_0[21])
  );
  XOR2_X1 i_25 (
      .A(i_in1[22]),
      .B(n_13),
      .Z(p_0[22])
  );
  XOR2_X1 i_26 (
      .A(i_in1[23]),
      .B(n_12),
      .Z(p_0[23])
  );
  XNOR2_X1 i_27 (
      .A (i_in1[24]),
      .B (n_11),
      .ZN(p_0[24])
  );
  XNOR2_X1 i_28 (
      .A (i_in1[25]),
      .B (n_10),
      .ZN(p_0[25])
  );
  XOR2_X1 i_29 (
      .A(i_in1[26]),
      .B(n_9),
      .Z(p_0[26])
  );
  AND2_X1 i_30 (
      .A1(n_8),
      .A2(n_4),
      .ZN(p_0[27])
  );
  OAI21_X1 i_31 (
      .A (i_in1[27]),
      .B1(n_9),
      .B2(i_in1[26]),
      .ZN(n_4)
  );
  XOR2_X1 i_32 (
      .A(i_in1[28]),
      .B(n_8),
      .Z(p_0[28])
  );
  XNOR2_X1 i_33 (
      .A (i_in1[29]),
      .B (n_7),
      .ZN(p_0[29])
  );
  XNOR2_X1 i_34 (
      .A (i_in1[30]),
      .B (n_6),
      .ZN(p_0[30])
  );
  XNOR2_X1 i_35 (
      .A (i_in1[31]),
      .B (n_5),
      .ZN(p_0[31])
  );
  NOR4_X1 i_36 (
      .A1(n_8),
      .A2(i_in1[28]),
      .A3(i_in1[29]),
      .A4(i_in1[30]),
      .ZN(n_5)
  );
  NOR3_X1 i_37 (
      .A1(n_8),
      .A2(i_in1[28]),
      .A3(i_in1[29]),
      .ZN(n_6)
  );
  NOR2_X1 i_38 (
      .A1(n_8),
      .A2(i_in1[28]),
      .ZN(n_7)
  );
  OR3_X1 i_39 (
      .A1(n_9),
      .A2(i_in1[26]),
      .A3(i_in1[27]),
      .ZN(n_8)
  );
  NAND2_X1 i_40 (
      .A1(n_10),
      .A2(n_33),
      .ZN(n_9)
  );
  NOR3_X1 i_41 (
      .A1(n_12),
      .A2(i_in1[23]),
      .A3(i_in1[24]),
      .ZN(n_10)
  );
  NOR2_X1 i_42 (
      .A1(n_12),
      .A2(i_in1[23]),
      .ZN(n_11)
  );
  OR2_X1 i_43 (
      .A1(n_13),
      .A2(i_in1[22]),
      .ZN(n_12)
  );
  NAND2_X1 i_44 (
      .A1(n_14),
      .A2(n_32),
      .ZN(n_13)
  );
  NOR4_X1 i_45 (
      .A1(n_17),
      .A2(i_in1[18]),
      .A3(i_in1[19]),
      .A4(i_in1[20]),
      .ZN(n_14)
  );
  NOR3_X1 i_46 (
      .A1(n_17),
      .A2(i_in1[18]),
      .A3(i_in1[19]),
      .ZN(n_15)
  );
  NOR2_X1 i_47 (
      .A1(n_17),
      .A2(i_in1[18]),
      .ZN(n_16)
  );
  OR2_X1 i_48 (
      .A1(n_18),
      .A2(i_in1[17]),
      .ZN(n_17)
  );
  OR3_X1 i_49 (
      .A1(n_19),
      .A2(i_in1[15]),
      .A3(i_in1[16]),
      .ZN(n_18)
  );
  NAND2_X1 i_50 (
      .A1(n_20),
      .A2(n_31),
      .ZN(n_19)
  );
  NOR3_X1 i_51 (
      .A1(n_22),
      .A2(i_in1[12]),
      .A3(i_in1[13]),
      .ZN(n_20)
  );
  NOR2_X1 i_52 (
      .A1(n_22),
      .A2(i_in1[12]),
      .ZN(n_21)
  );
  NAND2_X1 i_53 (
      .A1(n_23),
      .A2(n_30),
      .ZN(n_22)
  );
  NOR2_X1 i_54 (
      .A1(n_24),
      .A2(i_in1[10]),
      .ZN(n_23)
  );
  OR3_X1 i_55 (
      .A1(n_25),
      .A2(i_in1[8]),
      .A3(i_in1[9]),
      .ZN(n_24)
  );
  OR2_X1 i_56 (
      .A1(n_26),
      .A2(i_in1[7]),
      .ZN(n_25)
  );
  OR3_X1 i_57 (
      .A1(n_27),
      .A2(i_in1[5]),
      .A3(i_in1[6]),
      .ZN(n_26)
  );
  OR2_X1 i_58 (
      .A1(n_28),
      .A2(i_in1[4]),
      .ZN(n_27)
  );
  OR2_X1 i_59 (
      .A1(n_29),
      .A2(i_in1[3]),
      .ZN(n_28)
  );
  OR3_X1 i_60 (
      .A1(i_in1[2]),
      .A2(i_in1[1]),
      .A3(i_in1[0]),
      .ZN(n_29)
  );
  INV_X1 i_61 (
      .A (i_in1[11]),
      .ZN(n_30)
  );
  INV_X1 i_62 (
      .A (i_in1[14]),
      .ZN(n_31)
  );
  INV_X1 i_63 (
      .A (i_in1[21]),
      .ZN(n_32)
  );
  INV_X1 i_64 (
      .A (i_in1[25]),
      .ZN(n_33)
  );
endmodule

module datapath__0_26 (
    p_0,
    i_in2
);
  output [31:0] p_0;
  input [31:0] i_in2;

  XOR2_X1 i_0 (
      .A(i_in2[1]),
      .B(i_in2[0]),
      .Z(p_0[1])
  );
  AND2_X1 i_1 (
      .A1(n_29),
      .A2(n_0),
      .ZN(p_0[2])
  );
  OAI21_X1 i_2 (
      .A (i_in2[2]),
      .B1(i_in2[1]),
      .B2(i_in2[0]),
      .ZN(n_0)
  );
  XOR2_X1 i_3 (
      .A(i_in2[3]),
      .B(n_29),
      .Z(p_0[3])
  );
  XOR2_X1 i_4 (
      .A(i_in2[4]),
      .B(n_28),
      .Z(p_0[4])
  );
  XOR2_X1 i_5 (
      .A(i_in2[5]),
      .B(n_27),
      .Z(p_0[5])
  );
  AND2_X1 i_6 (
      .A1(n_26),
      .A2(n_1),
      .ZN(p_0[6])
  );
  OAI21_X1 i_7 (
      .A (i_in2[6]),
      .B1(n_27),
      .B2(i_in2[5]),
      .ZN(n_1)
  );
  XOR2_X1 i_8 (
      .A(i_in2[7]),
      .B(n_26),
      .Z(p_0[7])
  );
  XOR2_X1 i_9 (
      .A(i_in2[8]),
      .B(n_25),
      .Z(p_0[8])
  );
  AND2_X1 i_10 (
      .A1(n_24),
      .A2(n_2),
      .ZN(p_0[9])
  );
  OAI21_X1 i_11 (
      .A (i_in2[9]),
      .B1(n_25),
      .B2(i_in2[8]),
      .ZN(n_2)
  );
  XOR2_X1 i_12 (
      .A(i_in2[10]),
      .B(n_24),
      .Z(p_0[10])
  );
  XNOR2_X1 i_13 (
      .A (i_in2[11]),
      .B (n_23),
      .ZN(p_0[11])
  );
  XOR2_X1 i_14 (
      .A(i_in2[12]),
      .B(n_22),
      .Z(p_0[12])
  );
  XNOR2_X1 i_15 (
      .A (i_in2[13]),
      .B (n_21),
      .ZN(p_0[13])
  );
  XNOR2_X1 i_16 (
      .A (i_in2[14]),
      .B (n_20),
      .ZN(p_0[14])
  );
  XOR2_X1 i_17 (
      .A(i_in2[15]),
      .B(n_19),
      .Z(p_0[15])
  );
  AND2_X1 i_18 (
      .A1(n_18),
      .A2(n_3),
      .ZN(p_0[16])
  );
  OAI21_X1 i_19 (
      .A (i_in2[16]),
      .B1(n_19),
      .B2(i_in2[15]),
      .ZN(n_3)
  );
  XOR2_X1 i_20 (
      .A(i_in2[17]),
      .B(n_18),
      .Z(p_0[17])
  );
  XOR2_X1 i_21 (
      .A(i_in2[18]),
      .B(n_17),
      .Z(p_0[18])
  );
  XNOR2_X1 i_22 (
      .A (i_in2[19]),
      .B (n_16),
      .ZN(p_0[19])
  );
  XNOR2_X1 i_23 (
      .A (i_in2[20]),
      .B (n_15),
      .ZN(p_0[20])
  );
  XNOR2_X1 i_24 (
      .A (i_in2[21]),
      .B (n_14),
      .ZN(p_0[21])
  );
  XOR2_X1 i_25 (
      .A(i_in2[22]),
      .B(n_13),
      .Z(p_0[22])
  );
  XOR2_X1 i_26 (
      .A(i_in2[23]),
      .B(n_12),
      .Z(p_0[23])
  );
  XNOR2_X1 i_27 (
      .A (i_in2[24]),
      .B (n_11),
      .ZN(p_0[24])
  );
  XNOR2_X1 i_28 (
      .A (i_in2[25]),
      .B (n_10),
      .ZN(p_0[25])
  );
  XOR2_X1 i_29 (
      .A(i_in2[26]),
      .B(n_9),
      .Z(p_0[26])
  );
  AND2_X1 i_30 (
      .A1(n_8),
      .A2(n_4),
      .ZN(p_0[27])
  );
  OAI21_X1 i_31 (
      .A (i_in2[27]),
      .B1(n_9),
      .B2(i_in2[26]),
      .ZN(n_4)
  );
  XOR2_X1 i_32 (
      .A(i_in2[28]),
      .B(n_8),
      .Z(p_0[28])
  );
  XNOR2_X1 i_33 (
      .A (i_in2[29]),
      .B (n_7),
      .ZN(p_0[29])
  );
  XNOR2_X1 i_34 (
      .A (i_in2[30]),
      .B (n_6),
      .ZN(p_0[30])
  );
  XNOR2_X1 i_35 (
      .A (i_in2[31]),
      .B (n_5),
      .ZN(p_0[31])
  );
  NOR4_X1 i_36 (
      .A1(n_8),
      .A2(i_in2[28]),
      .A3(i_in2[29]),
      .A4(i_in2[30]),
      .ZN(n_5)
  );
  NOR3_X1 i_37 (
      .A1(n_8),
      .A2(i_in2[28]),
      .A3(i_in2[29]),
      .ZN(n_6)
  );
  NOR2_X1 i_38 (
      .A1(n_8),
      .A2(i_in2[28]),
      .ZN(n_7)
  );
  OR3_X1 i_39 (
      .A1(n_9),
      .A2(i_in2[26]),
      .A3(i_in2[27]),
      .ZN(n_8)
  );
  NAND2_X1 i_40 (
      .A1(n_10),
      .A2(n_33),
      .ZN(n_9)
  );
  NOR3_X1 i_41 (
      .A1(n_12),
      .A2(i_in2[23]),
      .A3(i_in2[24]),
      .ZN(n_10)
  );
  NOR2_X1 i_42 (
      .A1(n_12),
      .A2(i_in2[23]),
      .ZN(n_11)
  );
  OR2_X1 i_43 (
      .A1(n_13),
      .A2(i_in2[22]),
      .ZN(n_12)
  );
  NAND2_X1 i_44 (
      .A1(n_14),
      .A2(n_32),
      .ZN(n_13)
  );
  NOR4_X1 i_45 (
      .A1(n_17),
      .A2(i_in2[18]),
      .A3(i_in2[19]),
      .A4(i_in2[20]),
      .ZN(n_14)
  );
  NOR3_X1 i_46 (
      .A1(n_17),
      .A2(i_in2[18]),
      .A3(i_in2[19]),
      .ZN(n_15)
  );
  NOR2_X1 i_47 (
      .A1(n_17),
      .A2(i_in2[18]),
      .ZN(n_16)
  );
  OR2_X1 i_48 (
      .A1(n_18),
      .A2(i_in2[17]),
      .ZN(n_17)
  );
  OR3_X1 i_49 (
      .A1(n_19),
      .A2(i_in2[15]),
      .A3(i_in2[16]),
      .ZN(n_18)
  );
  NAND2_X1 i_50 (
      .A1(n_20),
      .A2(n_31),
      .ZN(n_19)
  );
  NOR3_X1 i_51 (
      .A1(n_22),
      .A2(i_in2[12]),
      .A3(i_in2[13]),
      .ZN(n_20)
  );
  NOR2_X1 i_52 (
      .A1(n_22),
      .A2(i_in2[12]),
      .ZN(n_21)
  );
  NAND2_X1 i_53 (
      .A1(n_23),
      .A2(n_30),
      .ZN(n_22)
  );
  NOR2_X1 i_54 (
      .A1(n_24),
      .A2(i_in2[10]),
      .ZN(n_23)
  );
  OR3_X1 i_55 (
      .A1(n_25),
      .A2(i_in2[8]),
      .A3(i_in2[9]),
      .ZN(n_24)
  );
  OR2_X1 i_56 (
      .A1(n_26),
      .A2(i_in2[7]),
      .ZN(n_25)
  );
  OR3_X1 i_57 (
      .A1(n_27),
      .A2(i_in2[5]),
      .A3(i_in2[6]),
      .ZN(n_26)
  );
  OR2_X1 i_58 (
      .A1(n_28),
      .A2(i_in2[4]),
      .ZN(n_27)
  );
  OR2_X1 i_59 (
      .A1(n_29),
      .A2(i_in2[3]),
      .ZN(n_28)
  );
  OR3_X1 i_60 (
      .A1(i_in2[2]),
      .A2(i_in2[1]),
      .A3(i_in2[0]),
      .ZN(n_29)
  );
  INV_X1 i_61 (
      .A (i_in2[11]),
      .ZN(n_30)
  );
  INV_X1 i_62 (
      .A (i_in2[14]),
      .ZN(n_31)
  );
  INV_X1 i_63 (
      .A (i_in2[21]),
      .ZN(n_32)
  );
  INV_X1 i_64 (
      .A (i_in2[25]),
      .ZN(n_33)
  );
endmodule

module multunit (
    i_clk,
    i_rst,
    i_in1,
    i_in2,
    o_out1
);
  input i_clk;
  input i_rst;
  input [31:0] i_in1;
  input [31:0] i_in2;
  output [63:0] o_out1;

  wire out_ready;
  wire shift;
  wire add;
  wire load;
  wire [32:0] add_out;
  wire [63:0] out;
  wire lsb;
  wire [31:0] A;
  wire n_1_0;
  wire [31:0] M;
  wire [31:0] Q;

  controller controller (
      .i_clk  (i_clk),
      .i_rst  (i_rst),
      .i_lsb  (lsb),
      .o_load (load),
      .o_add  (add),
      .o_shift(shift),
      .o_out  (out_ready)
  );
  adder adder (
      .i_in1({
        M[31],
        M[30],
        M[29],
        M[28],
        M[27],
        M[26],
        M[25],
        M[24],
        M[23],
        M[22],
        M[21],
        M[20],
        M[19],
        M[18],
        M[17],
        M[16],
        M[15],
        M[14],
        M[13],
        M[12],
        M[11],
        M[10],
        M[9],
        M[8],
        M[7],
        M[6],
        M[5],
        M[4],
        M[3],
        M[2],
        M[1],
        i_in1[0]
      }),
      .i_in2(A),
      .o_out1(add_out)
  );
  shifter shifter (
      .i_clk(i_clk),
      .i_rst(i_rst),
      .i_load(load),
      .i_add(add),
      .i_shift(shift),
      .i_out(out_ready),
      .i_sign(),
      .i_adder(add_out),
      .Q({
        Q[31],
        Q[30],
        Q[29],
        Q[28],
        Q[27],
        Q[26],
        Q[25],
        Q[24],
        Q[23],
        Q[22],
        Q[21],
        Q[20],
        Q[19],
        Q[18],
        Q[17],
        Q[16],
        Q[15],
        Q[14],
        Q[13],
        Q[12],
        Q[11],
        Q[10],
        Q[9],
        Q[8],
        Q[7],
        Q[6],
        Q[5],
        Q[4],
        Q[3],
        Q[2],
        Q[1],
        i_in2[0]
      }),
      .A(A),
      .o_lsb(lsb),
      .o_out({
        out[63],
        out[62],
        out[61],
        out[60],
        out[59],
        out[58],
        out[57],
        out[56],
        out[55],
        out[54],
        out[53],
        out[52],
        out[51],
        out[50],
        out[49],
        out[48],
        out[47],
        out[46],
        out[45],
        out[44],
        out[43],
        out[42],
        out[41],
        out[40],
        out[39],
        out[38],
        out[37],
        out[36],
        out[35],
        out[34],
        out[33],
        out[32],
        out[31],
        out[30],
        out[29],
        out[28],
        out[27],
        out[26],
        out[25],
        out[24],
        out[23],
        out[22],
        out[21],
        out[20],
        out[19],
        out[18],
        out[17],
        out[16],
        out[15],
        out[14],
        out[13],
        out[12],
        out[11],
        out[10],
        out[9],
        out[8],
        out[7],
        out[6],
        out[5],
        out[4],
        out[3],
        out[2],
        out[1],
        o_out1[0]
      })
  );
  datapath__0_21 i_0 (
      .p_0({
        n_62,
        n_61,
        n_60,
        n_59,
        n_58,
        n_57,
        n_56,
        n_55,
        n_54,
        n_53,
        n_52,
        n_51,
        n_50,
        n_49,
        n_48,
        n_47,
        n_46,
        n_45,
        n_44,
        n_43,
        n_42,
        n_41,
        n_40,
        n_39,
        n_38,
        n_37,
        n_36,
        n_35,
        n_34,
        n_33,
        n_32,
        n_31,
        n_30,
        n_29,
        n_28,
        n_27,
        n_26,
        n_25,
        n_24,
        n_23,
        n_22,
        n_21,
        n_20,
        n_19,
        n_18,
        n_17,
        n_16,
        n_15,
        n_14,
        n_13,
        n_12,
        n_11,
        n_10,
        n_9,
        n_8,
        n_7,
        n_6,
        n_5,
        n_4,
        n_3,
        n_2,
        n_1,
        n_0,
        uc_0
      }),
      .out({
        out[63],
        out[62],
        out[61],
        out[60],
        out[59],
        out[58],
        out[57],
        out[56],
        out[55],
        out[54],
        out[53],
        out[52],
        out[51],
        out[50],
        out[49],
        out[48],
        out[47],
        out[46],
        out[45],
        out[44],
        out[43],
        out[42],
        out[41],
        out[40],
        out[39],
        out[38],
        out[37],
        out[36],
        out[35],
        out[34],
        out[33],
        out[32],
        out[31],
        out[30],
        out[29],
        out[28],
        out[27],
        out[26],
        out[25],
        out[24],
        out[23],
        out[22],
        out[21],
        out[20],
        out[19],
        out[18],
        out[17],
        out[16],
        out[15],
        out[14],
        out[13],
        out[12],
        out[11],
        out[10],
        out[9],
        out[8],
        out[7],
        out[6],
        out[5],
        out[4],
        out[3],
        out[2],
        out[1],
        o_out1[0]
      })
  );
  datapath__0_24 i_3 (
      .p_0({
        n_93,
        n_92,
        n_91,
        n_90,
        n_89,
        n_88,
        n_87,
        n_86,
        n_85,
        n_84,
        n_83,
        n_82,
        n_81,
        n_80,
        n_79,
        n_78,
        n_77,
        n_76,
        n_75,
        n_74,
        n_73,
        n_72,
        n_71,
        n_70,
        n_69,
        n_68,
        n_67,
        n_66,
        n_65,
        n_64,
        n_63,
        uc_1
      }),
      .i_in1(i_in1)
  );
  datapath__0_26 i_5 (
      .p_0({
        n_124,
        n_123,
        n_122,
        n_121,
        n_120,
        n_119,
        n_118,
        n_117,
        n_116,
        n_115,
        n_114,
        n_113,
        n_112,
        n_111,
        n_110,
        n_109,
        n_108,
        n_107,
        n_106,
        n_105,
        n_104,
        n_103,
        n_102,
        n_101,
        n_100,
        n_99,
        n_98,
        n_97,
        n_96,
        n_95,
        n_94,
        uc_2
      }),
      .i_in2(i_in2)
  );
  XNOR2_X1 i_1_0 (
      .A (i_in1[31]),
      .B (i_in2[31]),
      .ZN(n_1_0)
  );
  MUX2_X1 i_1_1 (
      .A(n_0),
      .B(out[1]),
      .S(n_1_0),
      .Z(o_out1[1])
  );
  MUX2_X1 i_1_2 (
      .A(n_1),
      .B(out[2]),
      .S(n_1_0),
      .Z(o_out1[2])
  );
  MUX2_X1 i_1_3 (
      .A(n_2),
      .B(out[3]),
      .S(n_1_0),
      .Z(o_out1[3])
  );
  MUX2_X1 i_1_4 (
      .A(n_3),
      .B(out[4]),
      .S(n_1_0),
      .Z(o_out1[4])
  );
  MUX2_X1 i_1_5 (
      .A(n_4),
      .B(out[5]),
      .S(n_1_0),
      .Z(o_out1[5])
  );
  MUX2_X1 i_1_6 (
      .A(n_5),
      .B(out[6]),
      .S(n_1_0),
      .Z(o_out1[6])
  );
  MUX2_X1 i_1_7 (
      .A(n_6),
      .B(out[7]),
      .S(n_1_0),
      .Z(o_out1[7])
  );
  MUX2_X1 i_1_8 (
      .A(n_7),
      .B(out[8]),
      .S(n_1_0),
      .Z(o_out1[8])
  );
  MUX2_X1 i_1_9 (
      .A(n_8),
      .B(out[9]),
      .S(n_1_0),
      .Z(o_out1[9])
  );
  MUX2_X1 i_1_10 (
      .A(n_9),
      .B(out[10]),
      .S(n_1_0),
      .Z(o_out1[10])
  );
  MUX2_X1 i_1_11 (
      .A(n_10),
      .B(out[11]),
      .S(n_1_0),
      .Z(o_out1[11])
  );
  MUX2_X1 i_1_12 (
      .A(n_11),
      .B(out[12]),
      .S(n_1_0),
      .Z(o_out1[12])
  );
  MUX2_X1 i_1_13 (
      .A(n_12),
      .B(out[13]),
      .S(n_1_0),
      .Z(o_out1[13])
  );
  MUX2_X1 i_1_14 (
      .A(n_13),
      .B(out[14]),
      .S(n_1_0),
      .Z(o_out1[14])
  );
  MUX2_X1 i_1_15 (
      .A(n_14),
      .B(out[15]),
      .S(n_1_0),
      .Z(o_out1[15])
  );
  MUX2_X1 i_1_16 (
      .A(n_15),
      .B(out[16]),
      .S(n_1_0),
      .Z(o_out1[16])
  );
  MUX2_X1 i_1_17 (
      .A(n_16),
      .B(out[17]),
      .S(n_1_0),
      .Z(o_out1[17])
  );
  MUX2_X1 i_1_18 (
      .A(n_17),
      .B(out[18]),
      .S(n_1_0),
      .Z(o_out1[18])
  );
  MUX2_X1 i_1_19 (
      .A(n_18),
      .B(out[19]),
      .S(n_1_0),
      .Z(o_out1[19])
  );
  MUX2_X1 i_1_20 (
      .A(n_19),
      .B(out[20]),
      .S(n_1_0),
      .Z(o_out1[20])
  );
  MUX2_X1 i_1_21 (
      .A(n_20),
      .B(out[21]),
      .S(n_1_0),
      .Z(o_out1[21])
  );
  MUX2_X1 i_1_22 (
      .A(n_21),
      .B(out[22]),
      .S(n_1_0),
      .Z(o_out1[22])
  );
  MUX2_X1 i_1_23 (
      .A(n_22),
      .B(out[23]),
      .S(n_1_0),
      .Z(o_out1[23])
  );
  MUX2_X1 i_1_24 (
      .A(n_23),
      .B(out[24]),
      .S(n_1_0),
      .Z(o_out1[24])
  );
  MUX2_X1 i_1_25 (
      .A(n_24),
      .B(out[25]),
      .S(n_1_0),
      .Z(o_out1[25])
  );
  MUX2_X1 i_1_26 (
      .A(n_25),
      .B(out[26]),
      .S(n_1_0),
      .Z(o_out1[26])
  );
  MUX2_X1 i_1_27 (
      .A(n_26),
      .B(out[27]),
      .S(n_1_0),
      .Z(o_out1[27])
  );
  MUX2_X1 i_1_28 (
      .A(n_27),
      .B(out[28]),
      .S(n_1_0),
      .Z(o_out1[28])
  );
  MUX2_X1 i_1_29 (
      .A(n_28),
      .B(out[29]),
      .S(n_1_0),
      .Z(o_out1[29])
  );
  MUX2_X1 i_1_30 (
      .A(n_29),
      .B(out[30]),
      .S(n_1_0),
      .Z(o_out1[30])
  );
  MUX2_X1 i_1_31 (
      .A(n_30),
      .B(out[31]),
      .S(n_1_0),
      .Z(o_out1[31])
  );
  MUX2_X1 i_1_32 (
      .A(n_31),
      .B(out[32]),
      .S(n_1_0),
      .Z(o_out1[32])
  );
  MUX2_X1 i_1_33 (
      .A(n_32),
      .B(out[33]),
      .S(n_1_0),
      .Z(o_out1[33])
  );
  MUX2_X1 i_1_34 (
      .A(n_33),
      .B(out[34]),
      .S(n_1_0),
      .Z(o_out1[34])
  );
  MUX2_X1 i_1_35 (
      .A(n_34),
      .B(out[35]),
      .S(n_1_0),
      .Z(o_out1[35])
  );
  MUX2_X1 i_1_36 (
      .A(n_35),
      .B(out[36]),
      .S(n_1_0),
      .Z(o_out1[36])
  );
  MUX2_X1 i_1_37 (
      .A(n_36),
      .B(out[37]),
      .S(n_1_0),
      .Z(o_out1[37])
  );
  MUX2_X1 i_1_38 (
      .A(n_37),
      .B(out[38]),
      .S(n_1_0),
      .Z(o_out1[38])
  );
  MUX2_X1 i_1_39 (
      .A(n_38),
      .B(out[39]),
      .S(n_1_0),
      .Z(o_out1[39])
  );
  MUX2_X1 i_1_40 (
      .A(n_39),
      .B(out[40]),
      .S(n_1_0),
      .Z(o_out1[40])
  );
  MUX2_X1 i_1_41 (
      .A(n_40),
      .B(out[41]),
      .S(n_1_0),
      .Z(o_out1[41])
  );
  MUX2_X1 i_1_42 (
      .A(n_41),
      .B(out[42]),
      .S(n_1_0),
      .Z(o_out1[42])
  );
  MUX2_X1 i_1_43 (
      .A(n_42),
      .B(out[43]),
      .S(n_1_0),
      .Z(o_out1[43])
  );
  MUX2_X1 i_1_44 (
      .A(n_43),
      .B(out[44]),
      .S(n_1_0),
      .Z(o_out1[44])
  );
  MUX2_X1 i_1_45 (
      .A(n_44),
      .B(out[45]),
      .S(n_1_0),
      .Z(o_out1[45])
  );
  MUX2_X1 i_1_46 (
      .A(n_45),
      .B(out[46]),
      .S(n_1_0),
      .Z(o_out1[46])
  );
  MUX2_X1 i_1_47 (
      .A(n_46),
      .B(out[47]),
      .S(n_1_0),
      .Z(o_out1[47])
  );
  MUX2_X1 i_1_48 (
      .A(n_47),
      .B(out[48]),
      .S(n_1_0),
      .Z(o_out1[48])
  );
  MUX2_X1 i_1_49 (
      .A(n_48),
      .B(out[49]),
      .S(n_1_0),
      .Z(o_out1[49])
  );
  MUX2_X1 i_1_50 (
      .A(n_49),
      .B(out[50]),
      .S(n_1_0),
      .Z(o_out1[50])
  );
  MUX2_X1 i_1_51 (
      .A(n_50),
      .B(out[51]),
      .S(n_1_0),
      .Z(o_out1[51])
  );
  MUX2_X1 i_1_52 (
      .A(n_51),
      .B(out[52]),
      .S(n_1_0),
      .Z(o_out1[52])
  );
  MUX2_X1 i_1_53 (
      .A(n_52),
      .B(out[53]),
      .S(n_1_0),
      .Z(o_out1[53])
  );
  MUX2_X1 i_1_54 (
      .A(n_53),
      .B(out[54]),
      .S(n_1_0),
      .Z(o_out1[54])
  );
  MUX2_X1 i_1_55 (
      .A(n_54),
      .B(out[55]),
      .S(n_1_0),
      .Z(o_out1[55])
  );
  MUX2_X1 i_1_56 (
      .A(n_55),
      .B(out[56]),
      .S(n_1_0),
      .Z(o_out1[56])
  );
  MUX2_X1 i_1_57 (
      .A(n_56),
      .B(out[57]),
      .S(n_1_0),
      .Z(o_out1[57])
  );
  MUX2_X1 i_1_58 (
      .A(n_57),
      .B(out[58]),
      .S(n_1_0),
      .Z(o_out1[58])
  );
  MUX2_X1 i_1_59 (
      .A(n_58),
      .B(out[59]),
      .S(n_1_0),
      .Z(o_out1[59])
  );
  MUX2_X1 i_1_60 (
      .A(n_59),
      .B(out[60]),
      .S(n_1_0),
      .Z(o_out1[60])
  );
  MUX2_X1 i_1_61 (
      .A(n_60),
      .B(out[61]),
      .S(n_1_0),
      .Z(o_out1[61])
  );
  MUX2_X1 i_1_62 (
      .A(n_61),
      .B(out[62]),
      .S(n_1_0),
      .Z(o_out1[62])
  );
  MUX2_X1 i_1_63 (
      .A(n_62),
      .B(out[63]),
      .S(n_1_0),
      .Z(o_out1[63])
  );
  MUX2_X1 i_1_64 (
      .A(i_in1[1]),
      .B(n_63),
      .S(i_in1[31]),
      .Z(M[1])
  );
  MUX2_X1 i_1_65 (
      .A(i_in1[2]),
      .B(n_64),
      .S(i_in1[31]),
      .Z(M[2])
  );
  MUX2_X1 i_1_66 (
      .A(i_in1[3]),
      .B(n_65),
      .S(i_in1[31]),
      .Z(M[3])
  );
  MUX2_X1 i_1_67 (
      .A(i_in1[4]),
      .B(n_66),
      .S(i_in1[31]),
      .Z(M[4])
  );
  MUX2_X1 i_1_68 (
      .A(i_in1[5]),
      .B(n_67),
      .S(i_in1[31]),
      .Z(M[5])
  );
  MUX2_X1 i_1_69 (
      .A(i_in1[6]),
      .B(n_68),
      .S(i_in1[31]),
      .Z(M[6])
  );
  MUX2_X1 i_1_70 (
      .A(i_in1[7]),
      .B(n_69),
      .S(i_in1[31]),
      .Z(M[7])
  );
  MUX2_X1 i_1_71 (
      .A(i_in1[8]),
      .B(n_70),
      .S(i_in1[31]),
      .Z(M[8])
  );
  MUX2_X1 i_1_72 (
      .A(i_in1[9]),
      .B(n_71),
      .S(i_in1[31]),
      .Z(M[9])
  );
  MUX2_X1 i_1_73 (
      .A(i_in1[10]),
      .B(n_72),
      .S(i_in1[31]),
      .Z(M[10])
  );
  MUX2_X1 i_1_74 (
      .A(i_in1[11]),
      .B(n_73),
      .S(i_in1[31]),
      .Z(M[11])
  );
  MUX2_X1 i_1_75 (
      .A(i_in1[12]),
      .B(n_74),
      .S(i_in1[31]),
      .Z(M[12])
  );
  MUX2_X1 i_1_76 (
      .A(i_in1[13]),
      .B(n_75),
      .S(i_in1[31]),
      .Z(M[13])
  );
  MUX2_X1 i_1_77 (
      .A(i_in1[14]),
      .B(n_76),
      .S(i_in1[31]),
      .Z(M[14])
  );
  MUX2_X1 i_1_78 (
      .A(i_in1[15]),
      .B(n_77),
      .S(i_in1[31]),
      .Z(M[15])
  );
  MUX2_X1 i_1_79 (
      .A(i_in1[16]),
      .B(n_78),
      .S(i_in1[31]),
      .Z(M[16])
  );
  MUX2_X1 i_1_80 (
      .A(i_in1[17]),
      .B(n_79),
      .S(i_in1[31]),
      .Z(M[17])
  );
  MUX2_X1 i_1_81 (
      .A(i_in1[18]),
      .B(n_80),
      .S(i_in1[31]),
      .Z(M[18])
  );
  MUX2_X1 i_1_82 (
      .A(i_in1[19]),
      .B(n_81),
      .S(i_in1[31]),
      .Z(M[19])
  );
  MUX2_X1 i_1_83 (
      .A(i_in1[20]),
      .B(n_82),
      .S(i_in1[31]),
      .Z(M[20])
  );
  MUX2_X1 i_1_84 (
      .A(i_in1[21]),
      .B(n_83),
      .S(i_in1[31]),
      .Z(M[21])
  );
  MUX2_X1 i_1_85 (
      .A(i_in1[22]),
      .B(n_84),
      .S(i_in1[31]),
      .Z(M[22])
  );
  MUX2_X1 i_1_86 (
      .A(i_in1[23]),
      .B(n_85),
      .S(i_in1[31]),
      .Z(M[23])
  );
  MUX2_X1 i_1_87 (
      .A(i_in1[24]),
      .B(n_86),
      .S(i_in1[31]),
      .Z(M[24])
  );
  MUX2_X1 i_1_88 (
      .A(i_in1[25]),
      .B(n_87),
      .S(i_in1[31]),
      .Z(M[25])
  );
  MUX2_X1 i_1_89 (
      .A(i_in1[26]),
      .B(n_88),
      .S(i_in1[31]),
      .Z(M[26])
  );
  MUX2_X1 i_1_90 (
      .A(i_in1[27]),
      .B(n_89),
      .S(i_in1[31]),
      .Z(M[27])
  );
  MUX2_X1 i_1_91 (
      .A(i_in1[28]),
      .B(n_90),
      .S(i_in1[31]),
      .Z(M[28])
  );
  MUX2_X1 i_1_92 (
      .A(i_in1[29]),
      .B(n_91),
      .S(i_in1[31]),
      .Z(M[29])
  );
  MUX2_X1 i_1_93 (
      .A(i_in1[30]),
      .B(n_92),
      .S(i_in1[31]),
      .Z(M[30])
  );
  AND2_X1 i_1_94 (
      .A1(n_93),
      .A2(i_in1[31]),
      .ZN(M[31])
  );
  MUX2_X1 i_1_95 (
      .A(i_in2[1]),
      .B(n_94),
      .S(i_in2[31]),
      .Z(Q[1])
  );
  MUX2_X1 i_1_96 (
      .A(i_in2[2]),
      .B(n_95),
      .S(i_in2[31]),
      .Z(Q[2])
  );
  MUX2_X1 i_1_97 (
      .A(i_in2[3]),
      .B(n_96),
      .S(i_in2[31]),
      .Z(Q[3])
  );
  MUX2_X1 i_1_98 (
      .A(i_in2[4]),
      .B(n_97),
      .S(i_in2[31]),
      .Z(Q[4])
  );
  MUX2_X1 i_1_99 (
      .A(i_in2[5]),
      .B(n_98),
      .S(i_in2[31]),
      .Z(Q[5])
  );
  MUX2_X1 i_1_100 (
      .A(i_in2[6]),
      .B(n_99),
      .S(i_in2[31]),
      .Z(Q[6])
  );
  MUX2_X1 i_1_101 (
      .A(i_in2[7]),
      .B(n_100),
      .S(i_in2[31]),
      .Z(Q[7])
  );
  MUX2_X1 i_1_102 (
      .A(i_in2[8]),
      .B(n_101),
      .S(i_in2[31]),
      .Z(Q[8])
  );
  MUX2_X1 i_1_103 (
      .A(i_in2[9]),
      .B(n_102),
      .S(i_in2[31]),
      .Z(Q[9])
  );
  MUX2_X1 i_1_104 (
      .A(i_in2[10]),
      .B(n_103),
      .S(i_in2[31]),
      .Z(Q[10])
  );
  MUX2_X1 i_1_105 (
      .A(i_in2[11]),
      .B(n_104),
      .S(i_in2[31]),
      .Z(Q[11])
  );
  MUX2_X1 i_1_106 (
      .A(i_in2[12]),
      .B(n_105),
      .S(i_in2[31]),
      .Z(Q[12])
  );
  MUX2_X1 i_1_107 (
      .A(i_in2[13]),
      .B(n_106),
      .S(i_in2[31]),
      .Z(Q[13])
  );
  MUX2_X1 i_1_108 (
      .A(i_in2[14]),
      .B(n_107),
      .S(i_in2[31]),
      .Z(Q[14])
  );
  MUX2_X1 i_1_109 (
      .A(i_in2[15]),
      .B(n_108),
      .S(i_in2[31]),
      .Z(Q[15])
  );
  MUX2_X1 i_1_110 (
      .A(i_in2[16]),
      .B(n_109),
      .S(i_in2[31]),
      .Z(Q[16])
  );
  MUX2_X1 i_1_111 (
      .A(i_in2[17]),
      .B(n_110),
      .S(i_in2[31]),
      .Z(Q[17])
  );
  MUX2_X1 i_1_112 (
      .A(i_in2[18]),
      .B(n_111),
      .S(i_in2[31]),
      .Z(Q[18])
  );
  MUX2_X1 i_1_113 (
      .A(i_in2[19]),
      .B(n_112),
      .S(i_in2[31]),
      .Z(Q[19])
  );
  MUX2_X1 i_1_114 (
      .A(i_in2[20]),
      .B(n_113),
      .S(i_in2[31]),
      .Z(Q[20])
  );
  MUX2_X1 i_1_115 (
      .A(i_in2[21]),
      .B(n_114),
      .S(i_in2[31]),
      .Z(Q[21])
  );
  MUX2_X1 i_1_116 (
      .A(i_in2[22]),
      .B(n_115),
      .S(i_in2[31]),
      .Z(Q[22])
  );
  MUX2_X1 i_1_117 (
      .A(i_in2[23]),
      .B(n_116),
      .S(i_in2[31]),
      .Z(Q[23])
  );
  MUX2_X1 i_1_118 (
      .A(i_in2[24]),
      .B(n_117),
      .S(i_in2[31]),
      .Z(Q[24])
  );
  MUX2_X1 i_1_119 (
      .A(i_in2[25]),
      .B(n_118),
      .S(i_in2[31]),
      .Z(Q[25])
  );
  MUX2_X1 i_1_120 (
      .A(i_in2[26]),
      .B(n_119),
      .S(i_in2[31]),
      .Z(Q[26])
  );
  MUX2_X1 i_1_121 (
      .A(i_in2[27]),
      .B(n_120),
      .S(i_in2[31]),
      .Z(Q[27])
  );
  MUX2_X1 i_1_122 (
      .A(i_in2[28]),
      .B(n_121),
      .S(i_in2[31]),
      .Z(Q[28])
  );
  MUX2_X1 i_1_123 (
      .A(i_in2[29]),
      .B(n_122),
      .S(i_in2[31]),
      .Z(Q[29])
  );
  MUX2_X1 i_1_124 (
      .A(i_in2[30]),
      .B(n_123),
      .S(i_in2[31]),
      .Z(Q[30])
  );
  AND2_X1 i_1_125 (
      .A1(n_124),
      .A2(i_in2[31]),
      .ZN(Q[31])
  );
endmodule

module registerNbits__parameterized0 (
    clk,
    reset,
    en,
    inp,
    out
);
  input clk;
  input reset;
  input en;
  input [63:0] inp;
  output [63:0] out;

  wire n_0_0;

  CLKGATE_X1 clk_gate_out_reg (
      .CK (clk),
      .E  (n_1),
      .GCK(n_0)
  );
  DFF_X1 \out_reg[63] (
      .D (n_65),
      .CK(n_0),
      .Q (out[63]),
      .QN()
  );
  DFF_X1 \out_reg[62] (
      .D (n_64),
      .CK(n_0),
      .Q (out[62]),
      .QN()
  );
  DFF_X1 \out_reg[61] (
      .D (n_63),
      .CK(n_0),
      .Q (out[61]),
      .QN()
  );
  DFF_X1 \out_reg[60] (
      .D (n_62),
      .CK(n_0),
      .Q (out[60]),
      .QN()
  );
  DFF_X1 \out_reg[59] (
      .D (n_61),
      .CK(n_0),
      .Q (out[59]),
      .QN()
  );
  DFF_X1 \out_reg[58] (
      .D (n_60),
      .CK(n_0),
      .Q (out[58]),
      .QN()
  );
  DFF_X1 \out_reg[57] (
      .D (n_59),
      .CK(n_0),
      .Q (out[57]),
      .QN()
  );
  DFF_X1 \out_reg[56] (
      .D (n_58),
      .CK(n_0),
      .Q (out[56]),
      .QN()
  );
  DFF_X1 \out_reg[55] (
      .D (n_57),
      .CK(n_0),
      .Q (out[55]),
      .QN()
  );
  DFF_X1 \out_reg[54] (
      .D (n_56),
      .CK(n_0),
      .Q (out[54]),
      .QN()
  );
  DFF_X1 \out_reg[53] (
      .D (n_55),
      .CK(n_0),
      .Q (out[53]),
      .QN()
  );
  DFF_X1 \out_reg[52] (
      .D (n_54),
      .CK(n_0),
      .Q (out[52]),
      .QN()
  );
  DFF_X1 \out_reg[51] (
      .D (n_53),
      .CK(n_0),
      .Q (out[51]),
      .QN()
  );
  DFF_X1 \out_reg[50] (
      .D (n_52),
      .CK(n_0),
      .Q (out[50]),
      .QN()
  );
  DFF_X1 \out_reg[49] (
      .D (n_51),
      .CK(n_0),
      .Q (out[49]),
      .QN()
  );
  DFF_X1 \out_reg[48] (
      .D (n_50),
      .CK(n_0),
      .Q (out[48]),
      .QN()
  );
  DFF_X1 \out_reg[47] (
      .D (n_49),
      .CK(n_0),
      .Q (out[47]),
      .QN()
  );
  DFF_X1 \out_reg[46] (
      .D (n_48),
      .CK(n_0),
      .Q (out[46]),
      .QN()
  );
  DFF_X1 \out_reg[45] (
      .D (n_47),
      .CK(n_0),
      .Q (out[45]),
      .QN()
  );
  DFF_X1 \out_reg[44] (
      .D (n_46),
      .CK(n_0),
      .Q (out[44]),
      .QN()
  );
  DFF_X1 \out_reg[43] (
      .D (n_45),
      .CK(n_0),
      .Q (out[43]),
      .QN()
  );
  DFF_X1 \out_reg[42] (
      .D (n_44),
      .CK(n_0),
      .Q (out[42]),
      .QN()
  );
  DFF_X1 \out_reg[41] (
      .D (n_43),
      .CK(n_0),
      .Q (out[41]),
      .QN()
  );
  DFF_X1 \out_reg[40] (
      .D (n_42),
      .CK(n_0),
      .Q (out[40]),
      .QN()
  );
  DFF_X1 \out_reg[39] (
      .D (n_41),
      .CK(n_0),
      .Q (out[39]),
      .QN()
  );
  DFF_X1 \out_reg[38] (
      .D (n_40),
      .CK(n_0),
      .Q (out[38]),
      .QN()
  );
  DFF_X1 \out_reg[37] (
      .D (n_39),
      .CK(n_0),
      .Q (out[37]),
      .QN()
  );
  DFF_X1 \out_reg[36] (
      .D (n_38),
      .CK(n_0),
      .Q (out[36]),
      .QN()
  );
  DFF_X1 \out_reg[35] (
      .D (n_37),
      .CK(n_0),
      .Q (out[35]),
      .QN()
  );
  DFF_X1 \out_reg[34] (
      .D (n_36),
      .CK(n_0),
      .Q (out[34]),
      .QN()
  );
  DFF_X1 \out_reg[33] (
      .D (n_35),
      .CK(n_0),
      .Q (out[33]),
      .QN()
  );
  DFF_X1 \out_reg[32] (
      .D (n_34),
      .CK(n_0),
      .Q (out[32]),
      .QN()
  );
  DFF_X1 \out_reg[31] (
      .D (n_33),
      .CK(n_0),
      .Q (out[31]),
      .QN()
  );
  DFF_X1 \out_reg[30] (
      .D (n_32),
      .CK(n_0),
      .Q (out[30]),
      .QN()
  );
  DFF_X1 \out_reg[29] (
      .D (n_31),
      .CK(n_0),
      .Q (out[29]),
      .QN()
  );
  DFF_X1 \out_reg[28] (
      .D (n_30),
      .CK(n_0),
      .Q (out[28]),
      .QN()
  );
  DFF_X1 \out_reg[27] (
      .D (n_29),
      .CK(n_0),
      .Q (out[27]),
      .QN()
  );
  DFF_X1 \out_reg[26] (
      .D (n_28),
      .CK(n_0),
      .Q (out[26]),
      .QN()
  );
  DFF_X1 \out_reg[25] (
      .D (n_27),
      .CK(n_0),
      .Q (out[25]),
      .QN()
  );
  DFF_X1 \out_reg[24] (
      .D (n_26),
      .CK(n_0),
      .Q (out[24]),
      .QN()
  );
  DFF_X1 \out_reg[23] (
      .D (n_25),
      .CK(n_0),
      .Q (out[23]),
      .QN()
  );
  DFF_X1 \out_reg[22] (
      .D (n_24),
      .CK(n_0),
      .Q (out[22]),
      .QN()
  );
  DFF_X1 \out_reg[21] (
      .D (n_23),
      .CK(n_0),
      .Q (out[21]),
      .QN()
  );
  DFF_X1 \out_reg[20] (
      .D (n_22),
      .CK(n_0),
      .Q (out[20]),
      .QN()
  );
  DFF_X1 \out_reg[19] (
      .D (n_21),
      .CK(n_0),
      .Q (out[19]),
      .QN()
  );
  DFF_X1 \out_reg[18] (
      .D (n_20),
      .CK(n_0),
      .Q (out[18]),
      .QN()
  );
  DFF_X1 \out_reg[17] (
      .D (n_19),
      .CK(n_0),
      .Q (out[17]),
      .QN()
  );
  DFF_X1 \out_reg[16] (
      .D (n_18),
      .CK(n_0),
      .Q (out[16]),
      .QN()
  );
  DFF_X1 \out_reg[15] (
      .D (n_17),
      .CK(n_0),
      .Q (out[15]),
      .QN()
  );
  DFF_X1 \out_reg[14] (
      .D (n_16),
      .CK(n_0),
      .Q (out[14]),
      .QN()
  );
  DFF_X1 \out_reg[13] (
      .D (n_15),
      .CK(n_0),
      .Q (out[13]),
      .QN()
  );
  DFF_X1 \out_reg[12] (
      .D (n_14),
      .CK(n_0),
      .Q (out[12]),
      .QN()
  );
  DFF_X1 \out_reg[11] (
      .D (n_13),
      .CK(n_0),
      .Q (out[11]),
      .QN()
  );
  DFF_X1 \out_reg[10] (
      .D (n_12),
      .CK(n_0),
      .Q (out[10]),
      .QN()
  );
  DFF_X1 \out_reg[9] (
      .D (n_11),
      .CK(n_0),
      .Q (out[9]),
      .QN()
  );
  DFF_X1 \out_reg[8] (
      .D (n_10),
      .CK(n_0),
      .Q (out[8]),
      .QN()
  );
  DFF_X1 \out_reg[7] (
      .D (n_9),
      .CK(n_0),
      .Q (out[7]),
      .QN()
  );
  DFF_X1 \out_reg[6] (
      .D (n_8),
      .CK(n_0),
      .Q (out[6]),
      .QN()
  );
  DFF_X1 \out_reg[5] (
      .D (n_7),
      .CK(n_0),
      .Q (out[5]),
      .QN()
  );
  DFF_X1 \out_reg[4] (
      .D (n_6),
      .CK(n_0),
      .Q (out[4]),
      .QN()
  );
  DFF_X1 \out_reg[3] (
      .D (n_5),
      .CK(n_0),
      .Q (out[3]),
      .QN()
  );
  DFF_X1 \out_reg[2] (
      .D (n_4),
      .CK(n_0),
      .Q (out[2]),
      .QN()
  );
  DFF_X1 \out_reg[1] (
      .D (n_3),
      .CK(n_0),
      .Q (out[1]),
      .QN()
  );
  DFF_X1 \out_reg[0] (
      .D (n_2),
      .CK(n_0),
      .Q (out[0]),
      .QN()
  );
  OR2_X1 i_0_0 (
      .A1(en),
      .A2(reset),
      .ZN(n_1)
  );
  INV_X1 i_0_1 (
      .A (reset),
      .ZN(n_0_0)
  );
  AND2_X1 i_0_2 (
      .A1(n_0_0),
      .A2(inp[0]),
      .ZN(n_2)
  );
  AND2_X1 i_0_3 (
      .A1(n_0_0),
      .A2(inp[1]),
      .ZN(n_3)
  );
  AND2_X1 i_0_4 (
      .A1(n_0_0),
      .A2(inp[2]),
      .ZN(n_4)
  );
  AND2_X1 i_0_5 (
      .A1(n_0_0),
      .A2(inp[3]),
      .ZN(n_5)
  );
  AND2_X1 i_0_6 (
      .A1(n_0_0),
      .A2(inp[4]),
      .ZN(n_6)
  );
  AND2_X1 i_0_7 (
      .A1(n_0_0),
      .A2(inp[5]),
      .ZN(n_7)
  );
  AND2_X1 i_0_8 (
      .A1(n_0_0),
      .A2(inp[6]),
      .ZN(n_8)
  );
  AND2_X1 i_0_9 (
      .A1(n_0_0),
      .A2(inp[7]),
      .ZN(n_9)
  );
  AND2_X1 i_0_10 (
      .A1(n_0_0),
      .A2(inp[8]),
      .ZN(n_10)
  );
  AND2_X1 i_0_11 (
      .A1(n_0_0),
      .A2(inp[9]),
      .ZN(n_11)
  );
  AND2_X1 i_0_12 (
      .A1(n_0_0),
      .A2(inp[10]),
      .ZN(n_12)
  );
  AND2_X1 i_0_13 (
      .A1(n_0_0),
      .A2(inp[11]),
      .ZN(n_13)
  );
  AND2_X1 i_0_14 (
      .A1(n_0_0),
      .A2(inp[12]),
      .ZN(n_14)
  );
  AND2_X1 i_0_15 (
      .A1(n_0_0),
      .A2(inp[13]),
      .ZN(n_15)
  );
  AND2_X1 i_0_16 (
      .A1(n_0_0),
      .A2(inp[14]),
      .ZN(n_16)
  );
  AND2_X1 i_0_17 (
      .A1(n_0_0),
      .A2(inp[15]),
      .ZN(n_17)
  );
  AND2_X1 i_0_18 (
      .A1(n_0_0),
      .A2(inp[16]),
      .ZN(n_18)
  );
  AND2_X1 i_0_19 (
      .A1(n_0_0),
      .A2(inp[17]),
      .ZN(n_19)
  );
  AND2_X1 i_0_20 (
      .A1(n_0_0),
      .A2(inp[18]),
      .ZN(n_20)
  );
  AND2_X1 i_0_21 (
      .A1(n_0_0),
      .A2(inp[19]),
      .ZN(n_21)
  );
  AND2_X1 i_0_22 (
      .A1(n_0_0),
      .A2(inp[20]),
      .ZN(n_22)
  );
  AND2_X1 i_0_23 (
      .A1(n_0_0),
      .A2(inp[21]),
      .ZN(n_23)
  );
  AND2_X1 i_0_24 (
      .A1(n_0_0),
      .A2(inp[22]),
      .ZN(n_24)
  );
  AND2_X1 i_0_25 (
      .A1(n_0_0),
      .A2(inp[23]),
      .ZN(n_25)
  );
  AND2_X1 i_0_26 (
      .A1(n_0_0),
      .A2(inp[24]),
      .ZN(n_26)
  );
  AND2_X1 i_0_27 (
      .A1(n_0_0),
      .A2(inp[25]),
      .ZN(n_27)
  );
  AND2_X1 i_0_28 (
      .A1(n_0_0),
      .A2(inp[26]),
      .ZN(n_28)
  );
  AND2_X1 i_0_29 (
      .A1(n_0_0),
      .A2(inp[27]),
      .ZN(n_29)
  );
  AND2_X1 i_0_30 (
      .A1(n_0_0),
      .A2(inp[28]),
      .ZN(n_30)
  );
  AND2_X1 i_0_31 (
      .A1(n_0_0),
      .A2(inp[29]),
      .ZN(n_31)
  );
  AND2_X1 i_0_32 (
      .A1(n_0_0),
      .A2(inp[30]),
      .ZN(n_32)
  );
  AND2_X1 i_0_33 (
      .A1(n_0_0),
      .A2(inp[31]),
      .ZN(n_33)
  );
  AND2_X1 i_0_34 (
      .A1(n_0_0),
      .A2(inp[32]),
      .ZN(n_34)
  );
  AND2_X1 i_0_35 (
      .A1(n_0_0),
      .A2(inp[33]),
      .ZN(n_35)
  );
  AND2_X1 i_0_36 (
      .A1(n_0_0),
      .A2(inp[34]),
      .ZN(n_36)
  );
  AND2_X1 i_0_37 (
      .A1(n_0_0),
      .A2(inp[35]),
      .ZN(n_37)
  );
  AND2_X1 i_0_38 (
      .A1(n_0_0),
      .A2(inp[36]),
      .ZN(n_38)
  );
  AND2_X1 i_0_39 (
      .A1(n_0_0),
      .A2(inp[37]),
      .ZN(n_39)
  );
  AND2_X1 i_0_40 (
      .A1(n_0_0),
      .A2(inp[38]),
      .ZN(n_40)
  );
  AND2_X1 i_0_41 (
      .A1(n_0_0),
      .A2(inp[39]),
      .ZN(n_41)
  );
  AND2_X1 i_0_42 (
      .A1(n_0_0),
      .A2(inp[40]),
      .ZN(n_42)
  );
  AND2_X1 i_0_43 (
      .A1(n_0_0),
      .A2(inp[41]),
      .ZN(n_43)
  );
  AND2_X1 i_0_44 (
      .A1(n_0_0),
      .A2(inp[42]),
      .ZN(n_44)
  );
  AND2_X1 i_0_45 (
      .A1(n_0_0),
      .A2(inp[43]),
      .ZN(n_45)
  );
  AND2_X1 i_0_46 (
      .A1(n_0_0),
      .A2(inp[44]),
      .ZN(n_46)
  );
  AND2_X1 i_0_47 (
      .A1(n_0_0),
      .A2(inp[45]),
      .ZN(n_47)
  );
  AND2_X1 i_0_48 (
      .A1(n_0_0),
      .A2(inp[46]),
      .ZN(n_48)
  );
  AND2_X1 i_0_49 (
      .A1(n_0_0),
      .A2(inp[47]),
      .ZN(n_49)
  );
  AND2_X1 i_0_50 (
      .A1(n_0_0),
      .A2(inp[48]),
      .ZN(n_50)
  );
  AND2_X1 i_0_51 (
      .A1(n_0_0),
      .A2(inp[49]),
      .ZN(n_51)
  );
  AND2_X1 i_0_52 (
      .A1(n_0_0),
      .A2(inp[50]),
      .ZN(n_52)
  );
  AND2_X1 i_0_53 (
      .A1(n_0_0),
      .A2(inp[51]),
      .ZN(n_53)
  );
  AND2_X1 i_0_54 (
      .A1(n_0_0),
      .A2(inp[52]),
      .ZN(n_54)
  );
  AND2_X1 i_0_55 (
      .A1(n_0_0),
      .A2(inp[53]),
      .ZN(n_55)
  );
  AND2_X1 i_0_56 (
      .A1(n_0_0),
      .A2(inp[54]),
      .ZN(n_56)
  );
  AND2_X1 i_0_57 (
      .A1(n_0_0),
      .A2(inp[55]),
      .ZN(n_57)
  );
  AND2_X1 i_0_58 (
      .A1(n_0_0),
      .A2(inp[56]),
      .ZN(n_58)
  );
  AND2_X1 i_0_59 (
      .A1(n_0_0),
      .A2(inp[57]),
      .ZN(n_59)
  );
  AND2_X1 i_0_60 (
      .A1(n_0_0),
      .A2(inp[58]),
      .ZN(n_60)
  );
  AND2_X1 i_0_61 (
      .A1(n_0_0),
      .A2(inp[59]),
      .ZN(n_61)
  );
  AND2_X1 i_0_62 (
      .A1(n_0_0),
      .A2(inp[60]),
      .ZN(n_62)
  );
  AND2_X1 i_0_63 (
      .A1(n_0_0),
      .A2(inp[61]),
      .ZN(n_63)
  );
  AND2_X1 i_0_64 (
      .A1(n_0_0),
      .A2(inp[62]),
      .ZN(n_64)
  );
  AND2_X1 i_0_65 (
      .A1(n_0_0),
      .A2(inp[63]),
      .ZN(n_65)
  );
endmodule

module sequential (
    i_clk,
    i_rst,
    i_en,
    i_inputA,
    i_inputB,
    o_result
);
  input i_clk;
  input i_rst;
  input i_en;
  input [31:0] i_inputA;
  input [31:0] i_inputB;
  output [63:0] o_result;

  wire [31:0] A_reg;
  wire [31:0] B_reg;
  wire [63:0] out_reg;

  registerNbits__0_32 regA (
      .clk(i_clk),
      .reset(i_rst),
      .en(i_en),
      .inp(i_inputA),
      .out(A_reg)
  );
  registerNbits regB (
      .clk(i_clk),
      .reset(i_rst),
      .en(i_en),
      .inp(i_inputB),
      .out(B_reg)
  );
  multunit mult (
      .i_clk (i_clk),
      .i_rst (i_rst),
      .i_in1 (A_reg),
      .i_in2 (B_reg),
      .o_out1(out_reg)
  );
  registerNbits__parameterized0 outReg (
      .clk(i_clk),
      .reset(i_rst),
      .en(i_en),
      .inp(out_reg),
      .out(o_result)
  );
endmodule
