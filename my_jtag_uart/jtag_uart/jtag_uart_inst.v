	jtag_uart u0 (
		.clk_1_clk                     (<connected-to-clk_1_clk>),                     //             clk_1.clk
		.reset_1_reset_n               (<connected-to-reset_1_reset_n>),               //           reset_1.reset_n
		.avalon_jtag_slave_chipselect  (<connected-to-avalon_jtag_slave_chipselect>),  // avalon_jtag_slave.chipselect
		.avalon_jtag_slave_address     (<connected-to-avalon_jtag_slave_address>),     //                  .address
		.avalon_jtag_slave_read_n      (<connected-to-avalon_jtag_slave_read_n>),      //                  .read_n
		.avalon_jtag_slave_readdata    (<connected-to-avalon_jtag_slave_readdata>),    //                  .readdata
		.avalon_jtag_slave_write_n     (<connected-to-avalon_jtag_slave_write_n>),     //                  .write_n
		.avalon_jtag_slave_writedata   (<connected-to-avalon_jtag_slave_writedata>),   //                  .writedata
		.avalon_jtag_slave_waitrequest (<connected-to-avalon_jtag_slave_waitrequest>), //                  .waitrequest
		.irq_irq                       (<connected-to-irq_irq>)                        //               irq.irq
	);

