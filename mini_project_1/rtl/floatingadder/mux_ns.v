module mux_ns
(
input [36:0] ANor,
input [36:0] BNor,
input [36:0] AMix,
input [36:0] BMix,
output [36:0] A,
output [36:0] B,
input [1:0] edata
);

assign A = edata == 2'b01 ? ANor : AMix;
assign B = edata == 2'b01 ? BNor : BMix;

endmodule
