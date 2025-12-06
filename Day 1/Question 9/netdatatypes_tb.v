module netdatatypes_tb;
 reg a,b;
 wire  w_and,w_or,tri_or,tri_and;

//instantiate
 netdatatypes dut(
    .a(a),
    .b(b),
    .w_and(w_and),
    .w_or(w_or),
    .tri_or(tri_or),
    .tri_and(tri_and)
  );
  initial begin 
      $dumpfile("netdatatypes.vcd");
      $dumpvars(0,netdatatypes_tb);
      $monitor("$time=%0t |a=%b b=%b |w_and=%b w_or=%b tri_or=%b tri_and=%b",$time,a,b,w_and,w_or,tri_or,tri_and);
      
      a=1'b0;b=1'b1;#10
      a=1'b1;b=1'b0;#10
      a=1'b1;b=1'b1;#10

      $finish;
  end 
  endmodule


