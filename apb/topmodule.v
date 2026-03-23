module apb_top (
 input PCLK,
 input PRESETn,
 input transfer,
 input read_write,
 input  [7:0] write_addr,
 input  [7:0] write_data,
 input  [7:0] read_addr,
 output [7:0] read_data_out
);
 wire [7:0] PADDR;
 wire [7:0] PWDATA;
 wire [7:0] PRDATA;
 wire PWRITE, PSEL, PENABLE, PREADY;

    apb_master master (
     PCLK, PRESETn, transfer, read_write,write_addr, write_data, read_addr,PRDATA, PREADY,PWRITE,PSEL, PENABLE,PADDR, PWDATA, read_data_out
    );

    apb_slave slave (
     PCLK, PRESETn,PADDR, PWDATA, PWRITE,PSEL, PENABLE,PRDATA, PREADY
    );
endmodule
