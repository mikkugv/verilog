module two_input_io_tb;
reg [1:0]a;
wire[1:0]y;
//instantiate
two_input_io dut( 
.a(a),
.y(y)
);
initial begin 
	$monitor("$time=%0t|a=%b y=%b",$time,a,y);
	
	$dumpfile("two_input_io.vcd");
	$dumpvars(0,two_input_io_tb);
	a= 2'b00; #10
	a= 2'b01; #10
        a= 2'b10; #10
	a= 2'b11; #10
	$finish; 
 end 
 endmodule
