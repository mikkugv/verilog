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

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/netdatatypes$ vvp netdatatypes.out 
VCD info: dumpfile netdatatypes.vcd opened for output.
$time=0 |a=0 b=1 |w_and=0 w_or=1 tri_or=1 tri_and=1
$time=10 |a=1 b=0 |w_and=0 w_or=1 tri_or=1 tri_and=1
$time=20 |a=1 b=1 |w_and=1 w_or=1 tri_or=1 tri_and=1
netdatatypes_tb.v:23: $finish called at 30 (1s)
*/
