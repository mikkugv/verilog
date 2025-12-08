module partselect(
    input [7:0] a,
    output [3:0] low
);
assign low=a[3:0];
endmodule


/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/partselect$ vvp partselect.out
VCD info: dumpfile partselect.vcd opened for output.
$time=0 | a=11011011 |low=1011
$time=10 | a=00111100 |low=1100
partselect_tb.v:15: $finish called at 20 (1s)
*/
