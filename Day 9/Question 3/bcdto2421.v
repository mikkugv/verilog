module bcdto2421 (
input [3:0] bcd,
output reg [3:0] code2421
);
always @(*) begin
if (bcd < 4'd5)
code2421 = bcd;
else
code2421 = bcd + 4'd6;
end 
endmodule

/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/bcdto2421$ vvp bcdto2421.out
VCD info: dumpfile bcdto2421.vcd opened for output.
Time=0 | BCD=0000 | 2421=0000
Time=10 | BCD=0001 | 2421=0001
Time=20 | BCD=0010 | 2421=0010
Time=30 | BCD=0011 | 2421=0011
Time=40 | BCD=0100 | 2421=0100
Time=50 | BCD=0101 | 2421=1011
Time=60 | BCD=0110 | 2421=1100
Time=70 | BCD=0111 | 2421=1101
Time=80 | BCD=1000 | 2421=1110
Time=90 | BCD=1001 | 2421=1111
bcdto2421_tb.v:22: $finish called at 100 (1s)
*/
