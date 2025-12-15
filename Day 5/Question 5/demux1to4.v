module demux1to4 (
    input  D,
    input  [1:0] S,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);
    assign Y0 = D & ~S[1] & ~S[0];
    assign Y1 = D & ~S[1] &  S[0];
    assign Y2 = D &  S[1] & ~S[0];
    assign Y3 = D &  S[1] &  S[0];
endmodule



/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/demux1to4$ vvp demux1to4.out
VCD info: dumpfile demux1to4.vcd opened for output.
$time=0|Y0=0|Y1=0|Y2=0|Y3=0|D=0|S=00
$time=10|Y0=1|Y1=0|Y2=0|Y3=0|D=1|S=00
$time=20|Y0=0|Y1=0|Y2=0|Y3=0|D=0|S=01
$time=30|Y0=0|Y1=1|Y2=0|Y3=0|D=1|S=01
$time=40|Y0=0|Y1=0|Y2=0|Y3=0|D=0|S=10
$time=50|Y0=0|Y1=0|Y2=1|Y3=0|D=1|S=10
$time=60|Y0=0|Y1=0|Y2=0|Y3=0|D=0|S=11
$time=70|Y0=0|Y1=0|Y2=0|Y3=1|D=1|S=11
demux1to4_tb.v:30: $finish called at 80 (1s)
*/
