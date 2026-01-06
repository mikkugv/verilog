module dualportsynchronousram (
    input  wire   clk,
    input  wire   we_a,
    input  wire   we_b,
    input  wire [3:0]  addr_a,
    input  wire [3:0]  addr_b,
    input  wire [7:0]  din_a,
    input  wire [7:0]  din_b,
    output reg  [7:0]  dout_a,
    output reg  [7:0]  dout_b
);

    reg [7:0] mem [0:15];

    always @(posedge clk) begin
       if (we_a)
            mem[addr_a] <= din_a;
        dout_a <= mem[addr_a];

        if (we_b)
            mem[addr_b] <= din_b;
        dout_b <= mem[addr_b];
    end

endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/dualportsynchronousram$ vvp dualportsynchronousram.out
VCD info: dumpfile dualportsynchronousram.vcd opened for output.
$time=0|clk=0|we_a=0|we_b=0|addr_a=0000|addr_b=0000|din_a=00000000|din_b=00000000|dout_a=xxxxxxxx| dout_b=xxxxxxxx
$time=5|clk=1|we_a=0|we_b=0|addr_a=0000|addr_b=0000|din_a=00000000|din_b=00000000|dout_a=xxxxxxxx| dout_b=xxxxxxxx
$time=10|clk=0|we_a=1|we_b=0|addr_a=0011|addr_b=0000|din_a=10100101|din_b=00000000|dout_a=xxxxxxxx| dout_b=xxxxxxxx
$time=15|clk=1|we_a=1|we_b=0|addr_a=0011|addr_b=0000|din_a=10100101|din_b=00000000|dout_a=xxxxxxxx| dout_b=xxxxxxxx
$time=20|clk=0|we_a=0|we_b=0|addr_a=0011|addr_b=0000|din_a=10100101|din_b=00000000|dout_a=xxxxxxxx| dout_b=xxxxxxxx
$time=25|clk=1|we_a=0|we_b=0|addr_a=0011|addr_b=0000|din_a=10100101|din_b=00000000|dout_a=10100101| dout_b=xxxxxxxx
$time=30|clk=0|we_a=0|we_b=1|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=xxxxxxxx
$time=35|clk=1|we_a=0|we_b=1|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=xxxxxxxx
$time=40|clk=0|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=xxxxxxxx
$time=45|clk=1|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=01011010
$time=50|clk=0|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=01011010
$time=55|clk=1|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=01011010
$time=60|clk=0|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=01011010
$time=65|clk=1|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=01011010
dualportsynchronousram_tb.v:37: $finish called at 70 (1s)
$time=70|clk=0|we_a=0|we_b=0|addr_a=0011|addr_b=0111|din_a=10100101|din_b=01011010|dout_a=10100101| dout_b=01011010
*/
