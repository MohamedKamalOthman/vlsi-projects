module fullAdder (
    cin,
    x,
    y,
    cout,
    sum
);
  // defining the inputs
  input cin, x, y;

  // defining the outputs 
  output cout, sum;

  //defining some wires 
  wire dummySum1, dummyCarry1, dummyCarry2;

  // applying the logic
  halfAdder h1 (
      .in1 (x),
      .in2 (y),
      .cout(dummyCarry1),
      .sum (dummySum1)
  );
  halfAdder h2d (
      .in1 (dummySum1),
      .in2 (cin),
      .cout(dummyCarry2),
      .sum (sum)
  );
  or or2 (cout, dummyCarry1, dummyCarry2);

endmodule
