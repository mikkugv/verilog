module universalshiftregister (
    input clk,
    input rst,
    input [1:0] sel,
    input serial_in,
    input [3:0] parallel_in,
    output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
   if (rst)
     q <= 4'b0000;
   else begin
     case (sel)
       2'b00: q <= q;                           
       2'b01: q <= {serial_in, q[3:1]};           
       2'b10: q <= {q[2:0], serial_in};           
       2'b11: q <= parallel_in;                   
endcase
end
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/universalshiftregister$ vvp universalshiftregister.out
VCD info: dumpfile universalshiftregister.vcd opened for output.
t=0 sel=00 serial_in=0 parallel_in=0000 q=0000
t=10 sel=11 serial_in=0 parallel_in=1011 q=0000
t=15 sel=11 serial_in=0 parallel_in=1011 q=1011
t=20 sel=10 serial_in=0 parallel_in=1011 q=1011
t=25 sel=10 serial_in=0 parallel_in=1011 q=0110
t=30 sel=01 serial_in=1 parallel_in=1011 q=0110
t=35 sel=01 serial_in=1 parallel_in=1011 q=1011
t=40 sel=00 serial_in=1 parallel_in=1011 q=1011
universalshiftregister_tb.v:30: $finish called at 70 (1s)
*/
