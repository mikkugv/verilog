module full_subtractor_tb;
   reg a,b,cin;
   wire d,bout;
   //instantiate
   full_subtractor dut (
	   .a(a),
	   .b(b),
	   .cin(cin),
	   .d(d),
	   .bout(bout)
   );
   initial begin
	   $dumpfile("full_subtractor.vcd");
	   $dumpvars(0,full_subtractor_tb);
	  $monitor("$time=%0t,a=%b b=%b cin=%b d=%b bout=%b",$time,a,b,cin,d,bout);
         a=0;b=0;cin=0; #1
	 a=0;b=0;cin=1; #1
	 a=0;b=1;cin=0; #1
	 a=0;b=1;cin=1; #1
	 a=1;b=0;cin=0; #1
	 a=1;b=0;cin=1; #1
	 a=1;b=1;cin=0; #1
	 a=1;b=1;cin=1; #1 
	 $finish;
         end
         endmodule

