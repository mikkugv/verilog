module full_adder(
input a, b, cin,
output sum, cout
);
assign sum  = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
module ripplecarryadder_4bit_tb;
reg  [3:0] A, B;
reg   Cin;
    wire [3:0] Sum;
    wire  Cout;
    ripplecarryadder_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    initial begin
        $dumpfile("ripplecarryadder_4bit.vcd");
        $dumpvars(0, ripplecarryadder_4bit_tb);
        A = 4'd3;  B = 4'd5;  Cin = 0; #10; 
        A = 4'd9;  B = 4'd6;  Cin = 0; #10; 
        A = 4'd7;  B = 4'd8;  Cin = 0; #10; 
        A = 4'd15; B = 4'd1;  Cin = 0; #10; 
        A = 4'd10; B = 4'd3;  Cin = 1; #10; 
        $finish;
    end
    initial begin
        $monitor("time=%0t | A=%d B=%d Cin=%b | Sum=%d Cout=%b",$time, A, B, Cin, Sum, Cout);
    end
endmodule


/*output
meenakshi@meenakshi-Inspiron-3501:~/verilog/ripplecarryadder_4bit$ vvp ripplecarryadder_4bit.out
VCD info: dumpfile ripplecarryadder_4bit.vcd opened for output.
time=0 | A= 3 B= 5 Cin=0 | Sum= 8 Cout=0
time=10 | A= 9 B= 6 Cin=0 | Sum=15 Cout=0
time=20 | A= 7 B= 8 Cin=0 | Sum=15 Cout=0
time=30 | A=15 B= 1 Cin=0 | Sum= 0 Cout=1
time=40 | A=10 B= 3 Cin=1 | Sum=14 Cout=0
ripplecarryadder_4bit_tb.v:28: $finish called at 50 (1s)
*/
