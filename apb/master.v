module apb_master (
  input PCLK,
  input PRESETn,
  input transfer,        
  input read_write,    
  input  [7:0] write_addr,
  input  [7:0] write_data,
  input  [7:0] read_addr,
  input  [7:0] PRDATA,
  input  PREADY,

  output reg PWRITE,
  output reg PSEL,
  output reg PENABLE,
  output reg [7:0] PADDR,
  output reg [7:0] PWDATA,
  output reg [7:0] read_data_out
);
   reg [1:0] state;
   parameter IDLE = 2'b00,
              SETUP = 2'b01,
              ENABLE = 2'b10;

    always @(posedge PCLK or negedge PRESETn) begin
        if (!PRESETn) begin
            state <= IDLE;
            PSEL <= 0;
            PENABLE <= 0;
        end
        else begin

        case (state)

      IDLE: begin
        if (transfer) begin
         PSEL <= 1;
         PENABLE <= 0;
         state <= SETUP;
        if (read_write) begin
         PWRITE <= 1;
         PADDR  <= write_addr;
         PWDATA <= write_data;
        end
        else begin
         PWRITE <= 0;
         PADDR  <= read_addr;
        end
        end
        end

      SETUP: begin
         PENABLE <= 1;
         state <= ENABLE;
         end

      ENABLE: begin
       if (PREADY) begin
       if (!PWRITE)
        read_data_out <= PRDATA;
        PSEL <= 0;
        PENABLE <= 0;
        state <= IDLE;
     end
     end
       endcase
     end
     end
endmodule








