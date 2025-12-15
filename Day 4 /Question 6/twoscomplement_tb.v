module twoscomplement_tb;
reg  [7:0] a;    
wire [7:0] y;    
//instantiate
twoscomplement dut (
.a(a),
.y(y)
);
initial begin
  $monitor("$time=%0t|a=%b|y=%b",$time,a,y);
  $dumpfile("twoscomplement.vcd");
  $dumpvars(0, twoscomplement_tb);
  a = 8'b00001010; #10;
  a = 8'b11110110; #10;
  a = 8'b00000000; #10;
  a = 8'b10000000; #10;
  a = 8'b1010x010; #10;
  a = 8'b10z01010; #10;
  $finish;
    end
endmodule

