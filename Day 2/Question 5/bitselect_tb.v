module bitselect_tb;
reg [7:0] a;
wire bit3;
//instantiate 
bitselect dut( 
    .a(a),
    .bit3(bit3)
    );

    initial begin 
        $dumpfile("bitselect.vcd");
        $dumpvars(0,bitselect_tb);
        $monitor("$time=%0t| a=%b| bit3=%b",$time,a,bit3);
        #10; a=8'b01001110;
        #10; a=8'b01010011; 
    end 
    endmodule

