module synchronousupdowncounter (
    input clk,
    input rst,
    input dir,
    output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
   if (rst)
      q <= 4'b0000;
   else if (dir)
      q <= q + 1;  
   else
      q <= q - 1;  
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/synchronousupdowncounter$ vvp synchronousupdowncounter.out
VCD info: dumpfile synchronousupdowncounter.vcd opened for output.
time=0 dir=1 q=0000
time=15 dir=1 q=0001
time=25 dir=1 q=0010
time=35 dir=1 q=0011
time=45 dir=1 q=0100
time=50 dir=0 q=0100
time=55 dir=0 q=0011
time=65 dir=0 q=0010
time=75 dir=0 q=0001
time=85 dir=0 q=0000
time=90 dir=1 q=0000
time=95 dir=1 q=0001
time=105 dir=1 q=0010
time=115 dir=1 q=0011
time=125 dir=1 q=0100
time=135 dir=1 q=0101
time=145 dir=1 q=0110
time=155 dir=1 q=0111
time=165 dir=1 q=1000
time=175 dir=1 q=1001
time=185 dir=1 q=1010
synchronousupdowncounter_tb.v:21: $finish called at 190 (1s)
*/
