module demux1to2 (
    input  D,
    input  S,
    output Y0,
    output Y1
);
    assign Y0 = D & ~S;
    assign Y1 = D &  S;
endmodule


/*Output
meenakshi@meenakshi-Inspiron-3501:~/verilog/demux1to2$ vvp demux1to2.out
VCD info: dumpfile demux1to2.vcd opened for output.
$time=0                   0|D=0|S=0|Y0=0|Y1=0
$time=0                  10|D=1|S=0|Y0=1|Y1=0
$time=0                  20|D=0|S=1|Y0=0|Y1=0
$time=0                  30|D=1|S=1|Y0=0|Y1=1
demux1to2_tb.v:23: $finish called at 40 (1s)
*/
