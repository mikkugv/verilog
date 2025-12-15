module nbitripplecarryadder_tb;
parameter N = 4;
    reg  [N-1:0] A;
    reg  [N-1:0] B;
    reg   Cin;
    wire [N-1:0] Sum;
    wire  Cout;
//instantiate
nbitripplecarryadder #(.N(N)) DUT (
 .A(A),
 .B(B),
 .Cin(Cin),
 .Sum(Sum),
 .Cout(Cout)
   );
    initial begin
     $monitor("$time=%0t|A=%b|B=%b|Cin=%b|Sum=%b|Cout=%b|",$time,A,B,Cin,Sum,Cout);
        $dumpfile("nbitripplecarryadder.vcd");
        $dumpvars(0, nbitripplecarryadder_tb);
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0011; B = 4'b0101; Cin = 0; #10; 
        A = 4'b0111; B = 4'b0001; Cin = 0; #10; 
        A = 4'b1111; B = 4'b0001; Cin = 0; #10; 
        A = 4'b1010; B = 4'b0101; Cin = 1; #10; 
        $finish;
    end
endmodule

