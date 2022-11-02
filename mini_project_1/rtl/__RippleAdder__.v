module __RippleAdder__ #(parameter  N = 32) (cin, x,y, cout, sum); 
// defining the inputs
input [N - 1 : 0] x, y; 
input cin; 

// defining the outputs 
output [N - 1:0] sum ; 
output cout;

// defining utility wires 
wire [N-2 : 0] coutWires; 

genvar indx; 
generate 
    for (indx = 0 ; indx < N ; indx = indx + 1) begin
        
        if(indx == 0) begin 
            fullAdder FA (.x(x[indx]), .y(y[indx]), .cin(cin)
                    , .sum(sum[indx]), .cout(coutWires[indx]) );
        end
        else if (indx == N -1) begin
            fullAdder FA2 (.x(x[indx]), .y(y[indx]), .cin(coutWires[indx - 1]), 
                    .sum(sum[indx]), .cout(cout));
        end
        else begin 
            fullAdder FA3 (.x(x[indx]), .y(y[indx]), .cin(coutWires[indx - 1]), 
                .cout(coutWires[indx]), .sum(sum[indx])
            );
        end
    end // end of for loop

endgenerate 
endmodule