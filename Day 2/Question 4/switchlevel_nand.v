module switchlevel_nand(input a, input b, output y);
    wire mid;
    pmos P1(y, 1'b1,a);
    pmos P2(y, 1'b1,b);
    nmos N1(mid,1'b0,a);
    nmos N2(y,mid,b);
endmodule

/* OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/switchlevel_nand$ vvp switchlevel_nand.out
VCD info: dumpfile switchlevel_nand.vcd opened for output.
$time=0 | a=0 | b=0 | y=1
$time=10 | a=0 | b=1 | y=1
$time=20 | a=1 | b=0 | y=1
$time=30 | a=1 | b=1 | y=0
switchlevel_nand_tb.v:18: $finish called at 40 (1s)
*/
