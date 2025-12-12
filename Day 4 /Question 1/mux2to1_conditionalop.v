module mux2to1_conditionalop(
    input a,b,s,
    output y
);
assign y=s?b:a;
endmodule

/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux2to1_conditionalop$ vvp mux2to1_conditionalop.out
VCD info: dumpfile mux2to1_conditionalop.vcd opened for output.
$time=0|a=0|b=1|s=0|y=0
$time=10|a=1|b=0|s=1|y=0
mux2to1_conditionalop_tb.v:11: $finish called at 20 (1s)
*/
