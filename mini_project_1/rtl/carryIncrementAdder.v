module carryIncrementAdder #(
    parameter N = 32
) (
    in1,
    in2,
    sum
);
  /// defining inputs 
  input [N - 1:0] in1, in2;


  /// defining output 
  output [N:0] sum;

  /// defining used wires 
  wire [((N/ 2) - 1) : 0] sumWires;
  wire [(N/ 2) - 1:0] carryWires;
  wire [1:0] coutWire;

  /// applying the logic 

  ///1- defining half of the bits as Ripple adder
  __RippleAdder__ #(N / 2) RA1 (
      .cin(1'b0),
      .x(in1[(N/2)-1:0]),
      .y(in2[(N/2)-1:0]),
      .sum(sum[(N/2)-1:0]),
      .cout(coutWire[0])
  );


  ///2- defining the second RA 
  __RippleAdder__ #(N / 2) RA2 (
      .cin(1'b0),
      .x(in1[N-1 : ((N/2)-1)+1]),
      .y(in2[N-1 : ((N/2)-1)+1]),
      .cout(coutWire[1]),
      .sum(sumWires[(N/2)-1:0])
  );


  /// 3- generating the Half adders 
  genvar indx;
  generate
    for (indx = 0; indx < (N / 2); indx = indx + 1) begin
      if (indx == 0) begin
        halfAdder HA (
            .in1 (coutWire[indx]),
            .in2 (sumWires[indx]),
            .sum (sum[(N/2)+indx]),
            .cout(carryWires[indx])
        );
      end else if (indx == (N / 2) - 1) begin
        halfAdder HA2 (
            .in1 (sumWires[indx]),
            .in2 (carryWires[indx-1]),
            .sum (sum[(N/2)+indx]),
            .cout(carryWires[indx])
        );
      end else begin
        halfAdder HA2 (
            .in1 (sumWires[indx]),
            .in2 (carryWires[indx-1]),
            .sum (sum[(N/2)+indx]),
            .cout(carryWires[indx])
        );
      end
    end  // end of for loop
  endgenerate

  /// this is the logic of the last carry oring between the carry from the last HA and the carry of the RA.
  or or2 (sum[N], carryWires[(N/2)-1], coutWire[1]);
endmodule

