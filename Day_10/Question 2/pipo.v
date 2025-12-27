module pipo (
input clk,
input rst,
input [3:0] parallel_in,
output reg [3:0] parallel_out
);
always @(posedge clk or posedge rst) begin
 if (rst)
   parallel_out <= 4'b0000;
 else
   parallel_out <= parallel_in;
end
endmodule



/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/pipo$ vvp pipo.out
VCD info: dumpfile pipo.vcd opened for output.
$time=0| clk=0| rst=1| parallel_in| parallel_out 0 0
$time=5| clk=1| rst=1| parallel_in| parallel_out 0 0
$time=10| clk=0| rst=0| parallel_in| parallel_out 0 0
$time=15| clk=1| rst=0| parallel_in| parallel_out 0 0
$time=20| clk=0| rst=0| parallel_in| parallel_out10 0
$time=25| clk=1| rst=0| parallel_in| parallel_out1010
$time=30| clk=0| rst=0| parallel_in| parallel_out1510
$time=35| clk=1| rst=0| parallel_in| parallel_out1515
$time=40| clk=0| rst=0| parallel_in| parallel_out 515
$time=45| clk=1| rst=0| parallel_in| parallel_out 5 5
$time=50| clk=0| rst=0| parallel_in| parallel_out 5 5
$time=55| clk=1| rst=0| parallel_in| parallel_out 5 5
pipo_tb.v:24: $finish called at 60 (1s)
$time=60| clk=0| rst=0| parallel_in| parallel_out 5 5
*/
