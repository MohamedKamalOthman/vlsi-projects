module demux (
    input  [36:0] NA,
    input  [36:0] NB,
    input  [ 1:0] edata,
    output [36:0] NA0,
    output [36:0] NB0,
    output [36:0] NA1,
    output [36:0] NB1,
    output [36:0] NA2,
    output [36:0] NB2
);

  assign NA0 = (edata == 2'b00) ? NA : 37'bx;
  assign NB0 = (edata == 2'b00) ? NA : 37'bx;
  assign NA1 = (edata == 2'b01) ? NA : 37'bx;
  assign NB1 = (edata == 2'b01) ? NA : 37'bx;
  assign NA2 = (edata == 2'b10) ? NA : 37'bx;
  assign NB2 = (edata == 2'b10) ? NA : 37'bx;

endmodule
