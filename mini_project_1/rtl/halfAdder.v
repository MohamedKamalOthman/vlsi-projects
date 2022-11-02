module halfAdder (
    in1,
    in2,
    cout,
    sum
);
  input in1, in2;
  output cout, sum;

  and and2 (cout, in1, in2);
  xor xor2 (sum, in1, in2);

endmodule
