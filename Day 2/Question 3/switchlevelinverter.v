module switchlevelinverter(
input in,
output out
);
pmos p1(out, in, 1'b1);
nmos p2(out, in, 1'b0);
endmodule



/*OUTPUT 
meenakshi@meenakshi-Inspiron-3501:~/verilog/switchlevelinverter$ vvp switchlevelinverter.out
VCD info: dumpfile switchlevelinverter.vcd opened for output.
$time=0|in=0|out=z
$time=10|in=1|out=z
$time=20|in=0|out=z
switchlevelinverter_tb.v:16: $finish called at 30 (1s)
*/
