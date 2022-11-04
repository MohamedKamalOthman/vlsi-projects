module mux_adder
(
input SAsub,
input SBsub,
input SComp,
input [7:0] Esub,
input [27:0] MAsub,
input [27:0] MBsub,
input SAnor,
input SBnor,
input NComp,
input [7:0] Enor,
input [27:0] MAnor,
input [27:0] MBnor,
input [1:0] edata,
output SA,
output SB,
output C,
output [7:0] Eout,
output [27:0] MAout,
output [27:0] MBout
);

assign SA = edata == 2'b00 ? SAsub : SAnor;
assign SB = edata == 2'b00 ? SBsub : SBnor;
assign C = edata == 2'b00 ? SComp : NComp;
assign Eout = edata == 2'b00 ? Esub : Enor;
assign MAout = edata == 2'b00 ? MAsub : MAnor;
assign MBout = edata == 2'b00 ? MBsub : MBnor;

endmodule