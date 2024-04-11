
module uart_jtag (
	clk_clk,
	reset_reset_n,
	avalon_jtag_slave_chipselect,
	avalon_jtag_slave_address,
	avalon_jtag_slave_read_n,
	avalon_jtag_slave_readdata,
	avalon_jtag_slave_write_n,
	avalon_jtag_slave_writedata,
	avalon_jtag_slave_waitrequest,
	irq_irq);	

	input		clk_clk;
	input		reset_reset_n;
	input		avalon_jtag_slave_chipselect;
	input		avalon_jtag_slave_address;
	input		avalon_jtag_slave_read_n;
	output	[31:0]	avalon_jtag_slave_readdata;
	input		avalon_jtag_slave_write_n;
	input	[31:0]	avalon_jtag_slave_writedata;
	output		avalon_jtag_slave_waitrequest;
	output		irq_irq;
endmodule
