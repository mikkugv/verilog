module onescomplement(
input[7:0] a,
output reg [7:0] y
);
integer i;
always @(*) begin
for (i = 0; i < 8; i = i + 1) begin
case (a[i])
    1'b0: y[i] = 1'b1;
    1'b1: y[i] = 1'b0;
    default: y[i] = 1'bx;
   endcase
end
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/onescomplement$ vvp onescomplement.out
VCD info: dumpfile onescomplement.vcd opened for output.
time=0|a=00000000|y=11111111
time=10|a=11111111|y=00000000
time=20|a=10101010|y=01010101
time=30|a=10x01010|y=01x10101
time=40|a=10z01010|y=01x10101
onescomplement_tb.v:18: $finish called at 50 (1s)
*/
