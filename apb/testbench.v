module tb;
 reg PCLK;
 reg PRESETn;
 reg transfer;
 reg read_write;
 reg [7:0] write_addr;
 reg [7:0] write_data;
 reg [7:0] read_addr;
 wire [7:0] read_data_out;
  apb_top dut ( 
   PCLK, PRESETn, transfer, read_write,write_addr, write_data, read_addr,read_data_out
    );
 always #5 PCLK = ~PCLK;
 initial begin
   $dumpfile("apb.vcd");
   $dumpvars(0, tb);
   PCLK = 0;
   PRESETn = 0;
   transfer = 0;
    #20 
    PRESETn = 1;
    #10;
    read_write = 1;
    write_addr = 8'd20;
    write_data = 8'hA5;
    transfer = 1;
    #10
    transfer = 0;
    read_write = 0;
    read_addr = 8'd20;
    transfer = 1;
    #10 
    transfer = 0;
    #50;
    $display("Read Data = %h", read_data_out);
    #20 $finish;
   end
endmodule

