module dualportsynchronousram_tb;
  reg clk;
  reg we_a, we_b;
  reg [3:0]  addr_a, addr_b;
  reg [7:0]  din_a, din_b;
  wire [7:0] dout_a, dout_b;
  dualportsynchronousram dut (
        .clk(clk),
        .we_a(we_a),
        .we_b(we_b),
        .addr_a(addr_a),
        .addr_b(addr_b),
        .din_a(din_a),
        .din_b(din_b),
        .dout_a(dout_a),
        .dout_b(dout_b)
    );
    always #5 clk = ~clk;
    initial begin
        $monitor("$time=%0t|clk=%b|we_a=%b|we_b=%b|addr_a=%b|addr_b=%b|din_a=%b|din_b=%b|dout_a=%b| dout_b=%b",$time,clk,we_a,we_b,addr_a,addr_b,din_a,din_b,dout_a,dout_b);
        $dumpfile("dualportsynchronousram.vcd");
        $dumpvars(0,dualportsynchronousram_tb);
        clk = 0;
        we_a = 0; we_b = 0;
        addr_a = 0; addr_b = 0;
        din_a = 0; din_b = 0;
        #10 we_a = 1;
            addr_a = 4'h3;
            din_a  = 8'hA5;
        #10 we_a = 0;
        #10 we_b = 1;
            addr_b = 4'h7;
            din_b  = 8'h5A;
        #10 we_b = 0;
        #10 addr_a = 4'h3;
            addr_b = 4'h7;
        #20 $finish;
    end
endmodule

