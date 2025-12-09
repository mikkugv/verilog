module arithmetic_operator(
    input [3:0] a,b,
    output [4:0] add, sub, mul
 );
    assign add = a + b;
    assign sub = a - b;
    assign mul = a * b;
    endmodule



/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/arithmetic_operator$ vvp arithmetic_operator.out
VCD info: dumpfile arithmetic_operator.vcd opened for output.
$time=0,a=0101,b=0011,add=01000,sub=00010,mul=01111
a=0101 b=0011
add = 01000
sub= 00010
mul= 01111
arithmetic_operator_tb.v:22: $finish called at 10 (1s)
*/
