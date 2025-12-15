module demux1to8 (
    input  D,
    input  [2:0] S,
    output Y0, Y1, Y2, Y3,
    output Y4, Y5, Y6, Y7
);
    assign Y0 = D & ~S[2] & ~S[1] & ~S[0];
    assign Y1 = D & ~S[2] & ~S[1] &  S[0];
    assign Y2 = D & ~S[2] &  S[1] & ~S[0];
    assign Y3 = D & ~S[2] &  S[1] &  S[0];

    assign Y4 = D &  S[2] & ~S[1] & ~S[0];
    assign Y5 = D &  S[2] & ~S[1] &  S[0];
    assign Y6 = D &  S[2] &  S[1] & ~S[0];
    assign Y7 = D &  S[2] &  S[1] &  S[0];
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/demux1to8$ vvp demux1to8.out
VCD info: dumpfile demux1to8.vcd opened for output.
$time=0|D=0|S=000|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=10|D=1|S=000|Y0=1|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=20|D=0|S=001|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=30|D=1|S=001|Y0=0|Y1=1|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=40|D=0|S=010|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=50|D=1|S=010|Y0=0|Y1=0|Y2=1|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=60|D=0|S=011|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=70|D=1|S=011|Y0=0|Y1=0|Y2=0|Y3=1|Y4=0|Y5=0|Y6=0|Y7=0
$time=80|D=0|S=100|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=90|D=1|S=100|Y0=0|Y1=0|Y2=0|Y3=0|Y4=1|Y5=0|Y6=0|Y7=0
$time=100|D=0|S=101|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=110|D=1|S=101|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=1|Y6=0|Y7=0
$time=120|D=0|S=110|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=130|D=1|S=110|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=1|Y7=0
$time=140|D=0|S=111|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=0
$time=150|D=1|S=111|Y0=0|Y1=0|Y2=0|Y3=0|Y4=0|Y5=0|Y6=0|Y7=1
demux1to8_tb.v:48: $finish called at 160 (1s)
*/
