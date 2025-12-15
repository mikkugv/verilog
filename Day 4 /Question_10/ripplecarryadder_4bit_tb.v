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

