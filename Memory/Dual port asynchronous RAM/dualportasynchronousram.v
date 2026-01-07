module dualportasynchronousram (
 input  wire clk,
 input  wire we_a,
 input  wire we_b,
 input  wire [3:0]  addr_a,
 input  wire [3:0]  addr_b,
 input  wire [7:0]  din_a,
 input  wire [7:0]  din_b,
 output wire [7:0]  dout_a,
 output wire [7:0]  dout_b
);
 reg [7:0] mem [0:15];
 assign dout_a = mem[addr_a];
 assign dout_b = mem[addr_b];
 always @(posedge clk) begin
      if (we_a)
            mem[addr_a] <= din_a;
        if (we_b)
            mem[addr_b] <= din_b;
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/dualportasynchronousram$ vvp dualportasynchronousram.out
VCD info: dumpfile dualportasynchronousram.vcd opened for output.
$time=0|addr_a=0000|addr_b=0000|din_a=00000000|din_b=00000000|we_a=0|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=10|addr_a=0010|addr_b=0000|din_a=10101010|din_b=00000000|we_a=1|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=20|addr_a=0010|addr_b=0000|din_a=10101010|din_b=00000000|we_a=0|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=30|addr_a=0010|addr_b=0010|din_a=10101010|din_b=00000000|we_a=0|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=40|addr_a=0010|addr_b=0101|din_a=10101010|din_b=01010101|we_a=0|we_b=1|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=50|addr_a=0010|addr_b=0101|din_a=10101010|din_b=01010101|we_a=0|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=60|addr_a=0101|addr_b=0101|din_a=10101010|din_b=01010101|we_a=0|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=70|addr_a=0111|addr_b=1000|din_a=00010001|din_b=00100010|we_a=1|we_b=1|dout_a=xxxxxxxx|dout_b=xxxxxxxx
$time=80|addr_a=0111|addr_b=1000|din_a=00010001|din_b=00100010|we_a=0|we_b=0|dout_a=xxxxxxxx|dout_b=xxxxxxxx
dualportasynchronousram_tb.v:34: $finish called at 110 (1s)
*/
