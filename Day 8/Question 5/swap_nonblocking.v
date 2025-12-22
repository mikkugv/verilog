module swap_nonblocking (
    input  wire clk,
    input  wire rst,
    output reg  [3:0] a,
    output reg  [3:0] b
);
always @(posedge clk or posedge rst) begin
    if (rst) begin
        a <= 4'd5;  
        b <= 4'd10;
    end else begin
        a <= b;
        b <= a;
    end
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/swap_nonblocking$ vvp swap_nonblocking.out
VCD info: dumpfile swap_nonblocking.vcd opened for output.
t=0 | clk=0 rst=1 a= 5 b=10
t=5 | clk=1 rst=1 a= 5 b=10
t=10 | clk=0 rst=0 a= 5 b=10
t=15 | clk=1 rst=0 a=10 b= 5
t=20 | clk=0 rst=0 a=10 b= 5
t=25 | clk=1 rst=0 a= 5 b=10
t=30 | clk=0 rst=0 a= 5 b=10
t=35 | clk=1 rst=0 a=10 b= 5
t=40 | clk=0 rst=0 a=10 b= 5
t=45 | clk=1 rst=0 a= 5 b=10
t=50 | clk=0 rst=0 a= 5 b=10
t=55 | clk=1 rst=0 a=10 b= 5
swap_nonblocking_tb.v:20: $finish called at 60 (1s)
t=60 | clk=0 rst=0 a=10 b= 5
*/
