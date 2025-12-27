module piso (
    input clk,
    input rst,
    input load,
    input [3:0] parallel_in,
    output reg serial_out
);
reg [3:0] shift_reg;
always @(posedge clk or posedge rst) begin
  if (rst) begin
      shift_reg  <= 4'b0000;
      serial_out <= 1'b0;
  end
  else if (load) begin
      shift_reg <= parallel_in;  
  end
  else begin
      serial_out <= shift_reg[3]; 
      shift_reg  <= shift_reg << 1;
end
end
endmodule



/*output 
meenakshi@meenakshi-Inspiron-3501:~/verilog/piso$ vvp piso.out
VCD info: dumpfile piso.vcd opened for output.
$time=0| clk=0|rst=1| load=0|parallel_in=0000| serial_out=0
$time=5| clk=1|rst=1| load=0|parallel_in=0000| serial_out=0
$time=10| clk=0|rst=0| load=0|parallel_in=0000| serial_out=0
$time=15| clk=1|rst=0| load=0|parallel_in=0000| serial_out=0
$time=20| clk=0|rst=0| load=1|parallel_in=1011| serial_out=0
$time=25| clk=1|rst=0| load=1|parallel_in=1011| serial_out=0
$time=30| clk=0|rst=0| load=0|parallel_in=1011| serial_out=0
$time=35| clk=1|rst=0| load=0|parallel_in=1011| serial_out=1
$time=40| clk=0|rst=0| load=0|parallel_in=1011| serial_out=1
$time=45| clk=1|rst=0| load=0|parallel_in=1011| serial_out=0
$time=50| clk=0|rst=0| load=0|parallel_in=1011| serial_out=0
$time=55| clk=1|rst=0| load=0|parallel_in=1011| serial_out=1
$time=60| clk=0|rst=0| load=0|parallel_in=1011| serial_out=1
$time=65| clk=1|rst=0| load=0|parallel_in=1011| serial_out=1
piso_tb.v:28: $finish called at 70 (1s)
$time=70| clk=0|rst=0| load=0|parallel_in=1011| serial_out=1
*/
