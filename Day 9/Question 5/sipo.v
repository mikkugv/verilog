module sipo(
 input clk,
 input rst,
 input serial_in,
 output reg [3:0] parallel_out
);
always @(posedge clk or posedge rst) begin
     if (rst)
      parallel_out <= 4'b0000;
     else
      parallel_out <= {parallel_out[2:0], serial_in};
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/sipo$ vvp sipo.out
VCD info: dumpfile sipo.vcd opened for output.
$time=0| clk=0|rst=1| serial_in=0| parallel_out=0000
$time=5| clk=1|rst=1| serial_in=0| parallel_out=0000
$time=10| clk=0|rst=0| serial_in=0| parallel_out=0000
$time=15| clk=1|rst=0| serial_in=0| parallel_out=0000
$time=20| clk=0|rst=0| serial_in=1| parallel_out=0000
$time=25| clk=1|rst=0| serial_in=1| parallel_out=0001
$time=30| clk=0|rst=0| serial_in=0| parallel_out=0001
$time=35| clk=1|rst=0| serial_in=0| parallel_out=0010
$time=40| clk=0|rst=0| serial_in=1| parallel_out=0010
$time=45| clk=1|rst=0| serial_in=1| parallel_out=0101
$time=50| clk=0|rst=0| serial_in=1| parallel_out=0101
$time=55| clk=1|rst=0| serial_in=1| parallel_out=1011
$time=60| clk=0|rst=0| serial_in=1| parallel_out=1011
$time=65| clk=1|rst=0| serial_in=1| parallel_out=0111
sipo_tb.v:16: $finish called at 70 (1s)
$time=70| clk=0|rst=0| serial_in=1| parallel_out=0111
meenakshi@meenakshi-Inspiron-3501:~/verilog/sipo$ gtkw
*/
