module demux1to8using1toN #(
    parameter N = 8,
    parameter SEL = 3
)(
    input  D,
    input  [SEL-1:0] S,
    output reg [N-1:0] Y
);

    always @(*) begin
        Y = {N{1'b0}};
        Y[S] = D;
    end
endmodule

/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/demux1to8using1toN$ vvp demux1to8using1toN.out
VCD info: dumpfile demux1to8using1toN.vcd opened for output.
$time=0|D=1|S=000|Y=00000001|
$time=10|D=1|S=001|Y=00000010|
$time=20|D=1|S=010|Y=00000100|
$time=30|D=1|S=011|Y=00001000|
$time=40|D=1|S=100|Y=00010000|
$time=50|D=1|S=101|Y=00100000|
$time=60|D=1|S=110|Y=01000000|
$time=70|D=1|S=111|Y=10000000|
$time=80|D=0|S=011|Y=00000000|
demux1to8using1toN_tb.v:30: $finish called at 90 (1s)
*/
