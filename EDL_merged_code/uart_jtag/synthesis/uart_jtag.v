// uart_jtag.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module uart_jtag (
		input  wire        avalon_jtag_slave_chipselect,  // avalon_jtag_slave.chipselect
		input  wire        avalon_jtag_slave_address,     //                  .address
		input  wire        avalon_jtag_slave_read_n,      //                  .read_n
		output wire [31:0] avalon_jtag_slave_readdata,    //                  .readdata
		input  wire        avalon_jtag_slave_write_n,     //                  .write_n
		input  wire [31:0] avalon_jtag_slave_writedata,   //                  .writedata
		output wire        avalon_jtag_slave_waitrequest, //                  .waitrequest
		input  wire        clk_clk,                       //               clk.clk
		output wire        irq_irq,                       //               irq.irq
		input  wire        reset_reset_n                  //             reset.reset_n
	);

	uart_jtag_ju ju (
		.clk            (clk_clk),                       //               clk.clk
		.rst_n          (reset_reset_n),                 //             reset.reset_n
		.av_chipselect  (avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (avalon_jtag_slave_address),     //                  .address
		.av_read_n      (avalon_jtag_slave_read_n),      //                  .read_n
		.av_readdata    (avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (avalon_jtag_slave_write_n),     //                  .write_n
		.av_writedata   (avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_irq)                        //               irq.irq
	);

endmodule
