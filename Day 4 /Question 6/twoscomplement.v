module twoscomplement(
input  [7:0] a,
output reg [7:0] y
);
integer i;
reg [7:0] ones;
always @(*) begin
    for(i = 0; i < 8; i=i+1) begin
         case(a[i])
             1'b0: ones[i] = 1'b1;
             1'b1: ones[i] = 1'b0;
               default: ones[i] = 1'bx;
           endcase
       end
        y = ones + 1'b1;
    end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/twoscomplement$ vvp twoscomplement.out
VCD info: dumpfile twoscomplement.vcd opened for output.
$time=0|a=00001010|y=11110110
$time=10|a=11110110|y=00001010
$time=20|a=00000000|y=00000000
$time=30|a=10000000|y=10000000
$time=40|a=1010x010|y=xxxxxxxx
$time=50|a=10z01010|y=xxxxxxxx
twoscomplement_tb.v:19: $finish called at 60 (1s)
*/
