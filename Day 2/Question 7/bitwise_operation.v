module bitwise_operator(
    input [3:0] a,b,
    output [3:0] and_o,or_o,not_o,xor_o
    );
    assign and_o= a&b;
    assign or_o= a|b;
    assign xor_o=a^b;
    assign not_o=~a;
    endmodule
    
/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/bitwise_operator$ vvp bitwise_operator.out
VCD info: dumpfile bitwise_operator.vcd opened for output.
$time=0|a=1010|b=1100| AND =1000| OR=1110| XOR=0110,NOT=0101
a=1010 b=1100
AND = 1000
OR  = 1110
XOR = 0110
NOT = 0101
bitwise_operator_tb.v:23: $finish called at 10 (1s)
*/
