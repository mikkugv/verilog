module netdatatypes(
  input a,b,
  output wand w_and,
  output wor w_or,
  output trior tri_or,
  output triand tri_and
);
  assign w_and=a;
  assign w_and=b;

  assign w_or=a;
  assign w_or=b;

  assign tri_or=(a) ? 1'b1:1'bz;
  assign tri_or=(b) ? 1'b1:1'bz;

  assign tri_and=(a) ? 1'b1:1'bz;
  assign tri_and=(b) ? 1'b1:1'bz;

  endmodule
