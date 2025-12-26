module jk_flipflop (
input  wire J,
input  wire K,
input  wire clk,
output reg  Q,
output wire Qbar
);
assign Qbar = ~Q;
always @(posedge clk) begin
case ({J, K})
  2'b00: Q <= Q;     
  2'b01: Q <= 1'b0; 
  2'b10: Q <= 1'b1;  
  2'b11: Q <= ~Q;   
endcase
end
endmodule




/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/jk_flipflop$ vvp jk_flipflop.out
VCD info: dumpfile jk_flipflop.vcd opened for output.
T=0 | J=0 K=0 | Q=x Qbar=x
T=10 | J=0 K=1 | Q=0 Qbar=1
T=20 | J=1 K=0 | Q=0 Qbar=1
T=30 | J=1 K=1 | Q=1 Qbar=0
jk_flipflop_tb.v:21: $finish called at 40 (1s)
*/
