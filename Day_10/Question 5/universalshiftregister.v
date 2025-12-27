module bidirectionalshiftregister (
 input clk,
 input rst,
 input dir,
 input serial_in,
 output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
    if (rst)
      q <= 4'b0000;
    else if (dir == 0)
      q <= {q[2:0], serial_in};   
  else
      q <= {serial_in, q[3:1]};  
end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/bidirectionalshiftregister$ vvp bidirectionalshiftregister.out
VCD info: dumpfile bidirectionalshiftregister.vcd opened for output.
$time=0| clk=0| rst=1| dir=0|serial_in=0
$time=5| clk=1| rst=1| dir=0|serial_in=0
$time=10| clk=0| rst=0| dir=0|serial_in=1
$time=15| clk=1| rst=0| dir=0|serial_in=1
$time=20| clk=0| rst=0| dir=0|serial_in=0
$time=25| clk=1| rst=0| dir=0|serial_in=0
$time=30| clk=0| rst=0| dir=1|serial_in=1
$time=35| clk=1| rst=0| dir=1|serial_in=1
$time=40| clk=0| rst=0| dir=1|serial_in=0
$time=45| clk=1| rst=0| dir=1|serial_in=0
$time=50| clk=0| rst=0| dir=1|serial_in=0
$time=55| clk=1| rst=0| dir=1|serial_in=0
$time=60| clk=0| rst=0| dir=1|serial_in=0
$time=65| clk=1| rst=0| dir=1|serial_in=0
bidirectionalshiftregister_tb.v:23: $finish called at 70 (1s)
$time=70| clk=0| rst=0| dir=1|serial_in=0

*/
