module apb_slave (
  input PCLK,
  input PRESETn,
  input [7:0] PADDR,
  input [7:0] PWDATA,
  input PWRITE,
  input PSEL,
  input PENABLE,

  output reg [7:0] PRDATA,
  output reg PREADY
);
  reg [7:0] mem [0:255];
  always @(posedge PCLK or negedge PRESETn) begin
   if (!PRESETn) begin
    PREADY <= 0;
   end
   else begin
   if (PSEL && PENABLE) begin
    PREADY <= 1;
   if (PWRITE)
    mem[PADDR] <= PWDATA;      
   else
    PRDATA <= mem[PADDR];     
   end
   else begin
    PREADY <= 0;
  end
  end
  end
endmodule

