module sized_no_tb;
 reg[7:0] bi_input;
 reg[15:0] hex_input;
 wire[7:0] bi_output;
 wire[15:0] hex_output;
 // instantiate
 sized_no dut(
     .bi_input(bi_input),
     .hex_input(hex_input),
     .bi_output(bi_output),
     .hex_output(hex_output)
 );
initial begin 
    $dumpfile("sized_no.vcd");
    $dumpvars(0,sized_no_tb);
    $monitor("$time=%0t,bi_input=%b,hex_input=%b, bi_output=%b,hex_output=%b",$time,bi_input,hex_input,bi_output,hex_output);
    
    bi_input=4'b1001;
    hex_input=16'hA75;
#10
    bi_input=4'b1010;
    hex_input=16'hB17;
#10
    $finish;
    end
    endmodule

