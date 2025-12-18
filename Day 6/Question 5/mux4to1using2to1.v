module mux4to1using2to1 (
    input  i0, i1, i2, i3,
    input  s0, s1,
    output y
);

    wire w1, w2;
    assign w1 = s0 ? i1 : i0;
    assign w2 = s0 ? i3 : i2;

    assign y  = s1 ? w2 : w1;

endmodule

/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux4to1using2to1$ vvp mux4to1using2to1.out
VCD info: dumpfile mux4to1using2to1.vcd opened for output.
$time=0|i0=0|i1=1|i2=0|i3=1|s0=0|s1=0|y=0
s1=0 s0=0 y=0 (expected i0=0)
$time=10|i0=0|i1=1|i2=0|i3=1|s0=1|s1=0|y=1
s1=0 s0=1 y=1 (expected i1=1)
$time=20|i0=0|i1=1|i2=0|i3=1|s0=0|s1=1|y=0
s1=1 s0=0 y=0 (expected i2=0)
$time=30|i0=0|i1=1|i2=0|i3=1|s0=1|s1=1|y=1
s1=1 s0=1 y=1 (expected i3=1)
mux4to1using2to1_tb.v:28: $finish called at 40 (1s)
*/
