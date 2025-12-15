module twoscomplement_signmagnitude_tb;
reg  [7:0] a;
wire sign;
wire [6:0] mag;
//instantiate
twoscomplement_signmagnitude dut (
.a(a),
.sign(sign),
.mag(mag)
);
initial begin
$dumpfile("twoscomplement_signmagnitude.vcd");
$dumpvars(0, twoscomplement_signmagnitude_tb);
        a = 8'b00000101; #10;   
        a = 8'b00001010; #10;   
        a = 8'b11111011; #10;   
        a = 8'b11110110; #10;   
        a = 8'b10000001; #10;  
        a = 8'b01111111; #10;   
        $finish;
    end
    initial begin
        $monitor("time=%0t | a=%b | sign=%b | magnitude=%b",$time, a, sign, mag);
    end
endmodule



/*OUTPUT
meenakshi@meenakshi-Inspiron-3501:~/verilog/twoscomplement_signedmagnitude$ vvp twoscomplement_signedmagnitude.out
VCD info: dumpfile twoscomplement_signmagnitude.vcd opened for output.
time=0 | a=00000101 | sign=0 | magnitude=0000101
time=10 | a=00001010 | sign=0 | magnitude=0001010
time=20 | a=11111011 | sign=1 | magnitude=0000101
time=30 | a=11110110 | sign=1 | magnitude=0001010
time=40 | a=10000001 | sign=1 | magnitude=1111111
time=50 | a=01111111 | sign=0 | magnitude=1111111
twoscomplement_signedmagnitude.v:20: $finish called at 60 (1s)
*/
