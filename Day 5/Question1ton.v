module demux1toN #(
    parameter N = 8             
)(
  input  D,
  input  [$clog2(N)-1:0] S,    
  output reg [N-1:0] Y
);
  integer i;
  always @(*) begin
    Y = {N{1'b0}};           
    Y[S] = D;                
    end
endmodule




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/demux1ton$ vvp demux1ton.out
VCD info: dumpfile demux1toN_tb.vcd opened for output.
$time=0|D=0|S=000|Y=00000000
$time=10|D=0|S=001|Y=00000000
$time=20|D=0|S=010|Y=00000000
$time=30|D=0|S=011|Y=00000000
$time=40|D=0|S=100|Y=00000000
$time=50|D=0|S=101|Y=00000000
$time=60|D=0|S=110|Y=00000000
$time=70|D=0|S=111|Y=00000000
$time=80|D=1|S=000|Y=00000001
$time=90|D=1|S=001|Y=00000010
$time=100|D=1|S=010|Y=00000100
$time=110|D=1|S=011|Y=00001000
$time=120|D=1|S=100|Y=00010000
$time=130|D=1|S=101|Y=00100000
$time=140|D=1|S=110|Y=01000000
$time=150|D=1|S=111|Y=10000000
demux1ton_tb.v:37: $finish called at 160 (1s)
*/
