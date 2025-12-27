module johnson_counter (
    input clk,
    input rst,
    output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
     if (rst)
       q <= 4'b0000;
     else
       q <= {q[2:0], ~q[3]};   
    end
endmodule




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/johnsoncounter$ vvp johnsoncounter.out
VCD info: dumpfile johnsoncounter.vcd opened for output.
t=0 q=0000
t=15 q=0001
t=25 q=0011
t=35 q=0111
t=45 q=1111
t=55 q=1110
t=65 q=1100
t=75 q=1000
t=85 q=0000
t=95 q=0001
t=105 q=0011
johnsoncounter_tb.v:17: $finish called at 110 (1s)
*/
