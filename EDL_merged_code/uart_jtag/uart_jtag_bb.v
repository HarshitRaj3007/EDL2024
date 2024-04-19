
module uart_jtag (
	avalon_jtag_slave_chipselect,
	avalon_jtag_slave_address,
	avalon_jtag_slave_read_n,
	avalon_jtag_slave_readdata,
	avalon_jtag_slave_write_n,
	avalon_jtag_slave_writedata,
	avalon_jtag_slave_waitrequest,
	clk_clk,
	irq_irq,
	reset_reset_n);	

	input		avalon_jtag_slave_chipselect;
	input		avalon_jtag_slave_address;
	input		avalon_jtag_slave_read_n;
	output	[31:0]	avalon_jtag_slave_readdata;
	input		avalon_jtag_slave_write_n;
	input	[31:0]	avalon_jtag_slave_writedata;
	output		avalon_jtag_slave_waitrequest;
	input		clk_clk;
	output		irq_irq;
	input		reset_reset_n;
endmodule
