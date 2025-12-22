module bcd_adder_tb;
    reg  [3:0] A, B;
    wire [3:0] Sum;
    wire Cout;
    bcd_adder dut (A, B, Sum, Cout);
    initial begin
        $monitor("$time=%0t,A=%b,B=%b,Sum=%b,Cout=%b",$time,A,B,Sum,Cout);
        $dumpfile("bcd_adder.vcd");
        $dumpvars(0,bcd_adder_tb);
        A=3; B=4; #10;
        A=5; B=6; #10;
        A=9; B=9; #10;
        A=2; B=8; #10;
        $finish;
    end
endmodule

