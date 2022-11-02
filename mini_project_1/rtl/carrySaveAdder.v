module carrySaveAdder #(
    parameter N = 32
) (
    in1,
    in2,
    sum,
    carry,
    cin
);
  //defining the inputs 
  input [N-1:0] in1, in2;
  input cin;
  // defining the outputs 
  output [N:0] sum;
  output carry;  // it should always equal to 0

  // defining connecting wires 
  wire [N -1:0] coutConnectors;
  wire [N -2:0] cinConnectors;   // they are n-2 bec in cin the first carry adder we set its cin to 0 manually
  wire [N -2:0] sumConnectors;  // here same concept we set the sum0 as the sum of the first adder

  // appling the logic TODO
  genvar indx;
  generate
    for (indx = 0; indx < N; indx = indx + 1) begin
      /// the sum vector, the cin input is always 0 
      if (indx == 0) begin
        fullAdder FASum (
            .cin(cin),
            .x(in1[indx]),
            .y(in2[indx]),
            .sum(sum[0]),
            .cout(coutConnectors[indx])
        );
      end else begin
        fullAdder FASum (
            .cin(0),
            .x(in1[indx]),
            .y(in2[indx]),  // connector [1] = sum[1] connector[0] = cout[0]
            .sum(sumConnectors[indx-1]),
            .cout(coutConnectors[indx])
        );
      end

      /// carry Vector 
      if (indx == 0) begin
        fullAdder FACarry (
            .cin(0),
            .x(sumConnectors[indx]),
            .y(coutConnectors[indx]),
            .cout(cinConnectors[indx]),
            .sum(sum[indx+1])
        );
      end else if (indx == N - 1) begin
        fullAdder FACarry2 (
            .cin(cinConnectors[indx-1]),
            .x(0),
            .y(coutConnectors[indx]),
            .sum(sum[indx+1]),
            .cout(carry)
        );
      end else begin
        fullAdder FACarry3 (
            .cin(cinConnectors[indx-1]),
            .x(sumConnectors[indx]),
            .y(coutConnectors[indx]),
            .cout(cinConnectors[indx]),
            .sum(sum[indx+1])
        );
      end
    end
  endgenerate

endmodule
