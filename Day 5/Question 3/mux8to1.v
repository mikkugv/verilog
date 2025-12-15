module mux8to1 (
    input  [7:0] I,     
    input  [2:0] S,     
    output  Y
);
    assign Y = (~S[2] & ~S[1] & ~S[0] & I[0]) |
               (~S[2] & ~S[1] &  S[0] & I[1]) |
               (~S[2] &  S[1] & ~S[0] & I[2]) |
               (~S[2] &  S[1] &  S[0] & I[3]) |
               ( S[2] & ~S[1] & ~S[0] & I[4]) |
               ( S[2] & ~S[1] &  S[0] & I[5]) |
               ( S[2] &  S[1] & ~S[0] & I[6]) |
               ( S[2] &  S[1] &  S[0] & I[7]);
endmodule




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/mux8to1$ vvp mux8to1.out
VCD info: dumpfile mux8to1.vcd opened for output.
$time=0|I=10101010|S=000|Y=0
$time=10|I=10101010|S=001|Y=1
$time=20|I=10101010|S=010|Y=0
$time=30|I=10101010|S=011|Y=1
$time=40|I=10101010|S=100|Y=0
$time=50|I=10101010|S=101|Y=1
$time=60|I=10101010|S=110|Y=0
$time=70|I=10101010|S=111|Y=1
mux8to1_tb.v:25: $finish called at 80 (1s)
*/
