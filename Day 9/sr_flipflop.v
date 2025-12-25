module sr_flipflop (
input  wire S,
input  wire R,
input  wire clk,
output reg  Q,
output wire Qbar
);
assign Qbar = ~Q;
always @(posedge clk) begin
 case ({S, R})
     2'b00: Q <= Q; 
     2'b01: Q <= 1'b0; 
     2'b10: Q <= 1'b1; 
     2'b11: Q <= 1'bx; 
endcase
end
endmodule





/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/sr_flipflop$ vvp sr_flipflop.out
VCD info: dumpfile sr_flipflop.vcd opened for output.
Time=0 | S=0 R=0 | Q=x Qbar=x
Time=10 | S=1 R=0 | Q=x Qbar=x
Time=15 | S=1 R=0 | Q=1 Qbar=0
Time=20 | S=0 R=0 | Q=1 Qbar=0
Time=30 | S=0 R=1 | Q=1 Qbar=0
Time=35 | S=0 R=1 | Q=0 Qbar=1
Time=40 | S=0 R=0 | Q=0 Qbar=1
Time=50 | S=1 R=1 | Q=0 Qbar=1
Time=55 | S=1 R=1 | Q=x Qbar=x
Time=60 | S=0 R=0 | Q=x Qbar=x
sr_flipflop_tb.v:24: $finish called at 80 (1s)
*/
