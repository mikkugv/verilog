module dualportasynchronousram_tb;
  reg  [3:0] addr_a, addr_b;
  reg  [7:0] din_a, din_b;
  reg  we_a, we_b;
  wire [7:0] dout_a, dout_b;
  dualportasynchronousram dut (
    .addr_a(addr_a),
    .addr_b(addr_b),
    .din_a(din_a),
    .din_b(din_b),
    .we_a(we_a),
    .we_b(we_b),
    .dout_a(dout_a),
    .dout_b(dout_b)
  );
  initial begin
  $monitor("$time=%0t|addr_a=%b|addr_b=%b|din_a=%b|din_b=%b|we_a=%b|we_b=%b|dout_a=%b|dout_b=%b",$time,addr_a,addr_b,din_a,din_b,we_a,we_b,dout_a,dout_b);
  $dumpfile("dualportasynchronousram.vcd");
  $dumpvars(0,dualportasynchronousram_tb);
    addr_a = 0; addr_b = 0;
    din_a  = 0; din_b  = 0;
    we_a   = 0; we_b   = 0;
    #10 addr_a = 4'd2; din_a = 8'hAA; we_a = 1;
    #10 we_a = 0;
    #10 addr_b = 4'd2;
    #10 addr_b = 4'd5; din_b = 8'h55; we_b = 1;
    #10 we_b = 0;
    #10 addr_a = 4'd5;
    #10 addr_a = 4'd7; din_a = 8'h11; we_a = 1;
    addr_b = 4'd8; din_b = 8'h22; we_b = 1;
    #10 we_a = 0; we_b = 0;
    #10 addr_a = 4'd7;
    addr_b = 4'd8;
    #20 $finish;
  end
endmodule

