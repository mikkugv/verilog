module unsized_no_tb;
    reg [7:0]  bi_input;
    reg [15:0] hex_input;
    wire [7:0] bi_output;
    wire [15:0] hex_output;
// Instantiate
unsized_no dut(
    .bi_input(bi_input),
    .hex_input(hex_input),
    .bi_output(bi_output),
    .hex_output(hex_output)
    );
    initial begin
     $dumpfile("unsized_no.vcd");
     $dumpvars(0, unsized_no_tb);
     $monitor("$time=%0t | bi_input=%b | hex_input=%b | bi_output=%b | hex_output=%b",$time, bi_input, hex_input, bi_output, hex_output);
     bi_input  = 'b1001; 
     hex_input = 'hA75;   
     #10;
     bi_input  = 'b1010;
     hex_input = 'hB17;
     #10;
     $finish;
    end
endmodule

