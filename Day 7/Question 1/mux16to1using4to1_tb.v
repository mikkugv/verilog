module mux16to1using4to1_tb;
    reg  i0,  i1,  i2,  i3;
    reg  i4,  i5,  i6,  i7;
    reg  i8,  i9,  i10, i11;
    reg  i12, i13, i14, i15;
    reg  s0, s1, s2, s3;
    wire y;
    //instantiate
    mux16to1using4to1 dut (
        .i0(i0),   .i1(i1),   .i2(i2),   .i3(i3),
        .i4(i4),   .i5(i5),   .i6(i6),   .i7(i7),
        .i8(i8),   .i9(i9),   .i10(i10), .i11(i11),
        .i12(i12), .i13(i13), .i14(i14), .i15(i15),
        .s0(s0), .s1(s1), .s2(s2), .s3(s3),
        .y(y)
    );
    initial begin
        $monitor("t=%0t | s3s2s1s0=%b%b%b%b | y=%b",$time, s3, s2, s1, s0, y);
        $dumpfile("mux16to1using4to1.vcd");
        $dumpvars(0, mux16to1using4to1_tb);

        i0=0;  i1=1;  i2=0;  i3=1;
        i4=1;  i5=0;  i6=1;  i7=0;
        i8=0;  i9=1;  i10=0; i11=1;
        i12=1; i13=0; i14=1; i15=0;

        {s3,s2,s1,s0} = 4'b0000; #10;  
        {s3,s2,s1,s0} = 4'b0001; #10; 
        {s3,s2,s1,s0} = 4'b0010; #10;  
        {s3,s2,s1,s0} = 4'b0011; #10;  

        {s3,s2,s1,s0} = 4'b0100; #10;  
        {s3,s2,s1,s0} = 4'b0101; #10; 
        {s3,s2,s1,s0} = 4'b0110; #10;  
        {s3,s2,s1,s0} = 4'b0111; #10;  

        {s3,s2,s1,s0} = 4'b1000; #10;  
        {s3,s2,s1,s0} = 4'b1001; #10;  
        {s3,s2,s1,s0} = 4'b1010; #10;  
        {s3,s2,s1,s0} = 4'b1011; #10;  

        {s3,s2,s1,s0} = 4'b1100; #10;  
        {s3,s2,s1,s0} = 4'b1101; #10;  
        {s3,s2,s1,s0} = 4'b1110; #10;  
        {s3,s2,s1,s0} = 4'b1111; #10;  

        $finish;
    end
endmodule

