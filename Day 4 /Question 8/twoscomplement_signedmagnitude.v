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
