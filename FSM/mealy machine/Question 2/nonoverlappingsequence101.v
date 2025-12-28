module nonoverlappingsequence101 (
    input clk,
    input rst_n,
    input x,
    output reg z
);
parameter A = 2'b00;
parameter B = 2'b01;
parameter C = 2'b10;
reg [1:0] state, next_state;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= A;
    else
        state <= next_state;
end
always @(*) begin
   case (state)
      A: begin
        if (x)
          next_state = B;
        else
          next_state = A;
        end
      B: begin
        if (!x)
          next_state = C;
        else
          next_state = B;
        end
      C: begin
        if (x)
          next_state = A;   
        else
          next_state = A;
        end
        default: next_state = A;
endcase
end
always @(*) begin
    if (state == C && x)
        z = 1;
    else
        z = 0;
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/nonoverlappingsequence101$ vvp nonoverlappingsequence101.out
VCD info: dumpfile nonoverlappingsequence101.vcd opened for output.
$time=0 | x=0 | z=0
$time=22 | x=1 | z=0
$time=32 | x=0 | z=0
$time=42 | x=1 | z=1
$time=45 | x=1 | z=0
$time=52 | x=0 | z=0
$time=62 | x=1 | z=0
$time=82 | x=0 | z=0
$time=92 | x=1 | z=1
$time=95 | x=1 | z=0
nonoverlappingsequence101_tb.v:30: $finish called at 112 (1s)
*/
