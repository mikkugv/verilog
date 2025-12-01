module half_adder_tb;
   reg a,b;
   wire s,cout;
   // instantiate 
   half_adder dut(
	   .a(a),
	   .b(b),
	   .s(s),
	   .cout(cout)
   );
   initial begin 
	   $dumpfile("half_adder.vcd");
	   $dumpvars(0,half_adder_tb);
	   $monitor("$time=%0t |a=%b b=%b, sum=%b ,cout=%b",$time,a,b,s,cout);
	   a=0;b=0;
	   #10 a=0;b=1;
	   #10 a=1;b=0;
	   #10 a=1;b=1;
	   #10;
	   $finish;
   end 
   endmodule


