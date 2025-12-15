module bit4comparator_tb;
reg  [3:0] A, B;
wire gt, lt, eq;
bit4comparator dut (
  .A(A),
  .B(B),
  .greater(greater),
  .lesser(lesser),
  .equal(equal)
    );
    initial begin
        $dumpfile("bit4comparator.vcd");
        $dumpvars(0, bit4comparator_tb);
        A = 4'd3;  B = 4'd5;  #10;  
        A = 4'd9;  B = 4'd2;  #10;  
        A = 4'd7;  B = 4'd7;  #10;  
        A = 4'd0;  B = 4'd15; #10;  
        A = 4'd15; B = 4'd0;  #10;  
        $finish;
    end
    initial begin
        $monitor("time=%0t | A=%d | B=%d | greater=%b lesser=%b equal=%b",$time, A, B, greater, lesser, equal);
    end
endmodule

