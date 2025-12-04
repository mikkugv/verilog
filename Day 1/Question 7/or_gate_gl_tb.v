module or_gate_gl_tb;
reg a,b;
wire y;
// instantiate 
or_gate_gl dut(
    .a(a),
    .b(b),
    .y(y)
    );
initial begin 
$dumpfile("or_gate_gl.vcd");
$dumpvars(0,or_gate_gl_tb);
$monitor("$time=%0t|a=%b b=%b y=%b",$time,a,b,y);


  a=0;b=0; #10
  a=0;b=1; #10
  a=1;b=0; #10
  a=1;b=1; #10
  $finish;
   end 
   endmodule

