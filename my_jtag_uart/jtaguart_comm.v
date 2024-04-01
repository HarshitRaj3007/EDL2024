//`default_nettype none

`define JTAG_UART

module jtaguart_comm(
        input  wire     clk,
		  input wire in_read,
		  output reg HIGH,
		  output reg LOW,
		  output wire LED
		  
//		  output wire jtag_uart_waitrequest,
//		  output reg jtag_uart_readdata_15,
//        output reg [6:0]      LED
    );


	 integer counter = 0;
    //============================================================
    // Optional JTAG UART
    //============================================================

    reg         jtag_uart_rd_done;
    reg [31:0]  jtag_uart_rdata;

`ifdef JTAG_UART
    wire        jtag_uart_cs;
    wire        jtag_uart_addr;
    wire                reset;
    reg        jtag_uart_write;
	 initial begin
	 jtag_uart_write <= 1'b0;	
	 end
	 
    reg [31:0] jtag_uart_wdata;
	 initial begin
	 jtag_uart_wdata <= 32'b11111111111111111111111111111111;	
	 end
	 
	 reg        jtag_uart_read;
	 initial begin
	 jtag_uart_read <= 1'b1;	
	 end
	 
    reg [31:0] jtag_uart_readdata;
	 
	 
	 
	 reg for_HIGH;
	 initial begin
	 for_HIGH <= 1'b1;	
	 end
	 
	 reg for_LOW;
	 initial begin
	 for_LOW <= 1'b0;	
	 end
	 
 

	 
		
		assign reset = 1'b0;
		assign jtag_uart_cs = 1'b1;
		assign jtag_uart_addr = 1'b0;
		
		assign LED = in_read;
		  
		  always @(posedge clk) begin
			 HIGH <= for_HIGH;
			 LOW <= for_LOW;
			 
				if(!jtag_uart_write) begin
					jtag_uart_write <= 1'b1;
					
					if (in_read) begin
						jtag_uart_wdata <= 32'b11111111111111111111111100000011;
					end
					
					else begin
						jtag_uart_wdata <= 32'b11111111111111111111111100000010;
					end
				end
				
//				if(jtag_uart_write && !jtag_uart_waitrequest) begin
				if(jtag_uart_write) begin

					jtag_uart_write <= 1'b0;
				end
		  end
		  
//			always @(posedge clk) begin	
////				jtag_uart_readdata_15 = jtag_uart_readdata[15];
//				if (jtag_uart_read) begin
//					jtag_uart_read <= 1'b0;
//				end			
//				if (!jtag_uart_read && jtag_uart_readdata[31:16] > 0 && jtag_uart_readdata[15] == 1'b1 && !jtag_uart_waitrequest) begin
//					LED[6:0] <= jtag_uart_readdata[6:0];
//					jtag_uart_read <= 1'b1;
//				end 
//				
// 			
//			end
//			
//		  always @(posedge clk) begin
////	     assign jtag_uart_addr = 1'b1;
////		  assign jtag_uart_write = 1'b0;
////		  assign jtag_uart_read = 1'b1;		
//			
//        jtag_uart_rd_done <= 1'b0;
//		  
//        if (jtag_uart_cs && jtag_uart_read && !jtag_uart_waitrequest) begin
//            jtag_uart_rdata     <= jtag_uart_readdata;
//            jtag_uart_rd_done   <= 1'b1;
//			   LED <= jtag_uart_rdata[7:0];
////				LED <= 8'b11111111;
//        end
//    end

	jtag_uart jtag_uart1 (
		.clk_1_clk        (clk),
		.reset_1_reset_n  (!reset),
		.avalon_jtag_slave_chipselect  (jtag_uart_cs),
		.avalon_jtag_slave_waitrequest (jtag_uart_waitrequest),
		.avalon_jtag_slave_address     (jtag_uart_addr),
		.avalon_jtag_slave_read_n      (!jtag_uart_read),
		.avalon_jtag_slave_readdata    (jtag_uart_readdata),
		.avalon_jtag_slave_write_n     (!jtag_uart_write),
		.avalon_jtag_slave_writedata   (jtag_uart_wdata),
		.irq_irq        ()
	);

//`else
//    always @(posedge clk) begin
//        jtag_uart_rd_done = 1'b0;
//        jtag_uart_rdata   = 32'd0;
//    end
`endif

endmodule