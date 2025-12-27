module synchronousdowncounter (
  input clk,
  input rst,
  output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
   if (rst)
     q <= 4'b1111;  
   else
     q <= q - 1;
end
endmodule




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/synchronousdowncounter$ vvp synchronousdowncounter.out
VCD info: dumpfile synchronousdowncounter.vcd opened for output.
time=0 | q=1111
time=15 | q=1110
time=25 | q=1101
time=35 | q=1100
time=45 | q=1011
time=55 | q=1010
time=65 | q=1001
time=75 | q=1000
time=85 | q=0111
time=95 | q=0110
time=105 | q=0101
synchronousdowncounter_tb.v:17: $finish called at 110 (1s)
*/
