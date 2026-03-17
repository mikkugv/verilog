module alu (
input  [31:0] A,
input  [31:0] B,
input  [2:0]  opcode,
output reg [31:0] result
);
always @(*) begin
case(opcode)
3'b000: result = A + B;                        
3'b001: result = A - B;                         
3'b010: result = A & B;                         
3'b011: result = A | B;                         
3'b100: result = A ^ B;                              
3'b101: result = A << B[4:0];                   
3'b110: result = A >> B[4:0];                   
3'b111: result = $signed(A) >>> B[4:0];        
default: result = 32'd0;
endcase
end
endmodule
