//`default_nettype none


module EDL_merged_code(
		input  wire     clk,
		input wire in_read,
		output reg HIGH,
		output reg LOW,
		
		output reg[7:0] LED,
		
		output wire SCK_DAC,		//out
		output wire CS_DAC,			//out
		output wire reset_DAC,		//out
		output wire SDI_DAC,		//out
		output wire LDAC_DAC,		//out
		output wire reset_ADC,	//out
		output wire Din_ADC,	//out
		input wire Dout_ADC,	//in
		output wire CS_ADC,	//out
		output wire Sclk_ADC,	//out
		input wire ch_display_select	//in
    );
	 	
	 

	 

	 
	 //measured_val, MSB_ADC are for ADC
	 reg[9:0] measured_val;
	 initial begin
	 measured_val <= 10'b0000000000;	
	 end
	 
	 reg MSB_ADC;
	 initial begin
	 MSB_ADC <= 1'b0;
	 end
	 
	 reg[9:0] measured_values[23:0];
	 
	 // push_val_to_DAC, pulse_value, pulse_out_from_DAC are for DAC
	 reg push_val_to_DAC;
	 initial begin
	 push_val_to_DAC <= 1'b0;	
	 end		
	 
	 reg[11:0] pulse_value;
	 initial begin
	 pulse_value <= 12'b0;	
	 end	

	 reg[11:0] pulse_out_from_DAC;
	 initial begin
	 pulse_out_from_DAC <= 12'b0;	
	 end	  	 
	 
	 
	
	
	 
	 
	 //jtag uart signals

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
	 
	 
	 //logic flow signals
	
	 
	 reg[31:0] counter;
	 initial begin 
	 counter <= 32'd0;
	 end
	 
	 parameter t1 = 32'd50;
	 parameter t2 = 32'd400000000;			//8s given for getting the pulse value

	 reg reading;
	 initial begin
	 reading <= 1'b0;	
	 end	
	 
	 reg writing;
	 initial begin
	 writing <= 1'b0;	
	 end		 
	
	 reg[11:0] state;								//0: start, 1: read pulse value, 2: show ADC value
	 initial begin									
	 state <= 12'd0;
	 end

	 reg[3:0] both_transferred;				//to ensure that both bytes have been sent/received
	 initial begin									//can take values: 0101(none),1101(only MSB done), 0100(only LSB done), 1100(both MSB LSB done)
	 both_transferred <= 4'b0101;
	 end

	 
		//some permanent jtag signals
		assign reset = 1'b0;
		assign jtag_uart_cs = 1'b1;
		assign jtag_uart_addr = 1'b0;
		

		always @(posedge clk) begin			//main process
		
		//the control block starts here
		
			if (state == 12'd0) begin
				counter <= counter + 1;
				if(counter == 32'd50) begin
					state <= 12'd1;
					counter <= 32'd0;
				end
			end
			
			if (state == 12'd1) begin
				reading <= 1'b1;
				writing <= 1'b0;
				
				if (both_transferred == 4'b1100) begin
					state <= 12'd2;
					both_transferred <= 4'b0101;
				end
				
			end
			
			if (state == 12'd2) begin
				reading <= 1'b0;
				writing <= 1'b1;
			end				
//		end		//end of control process
			
			
			//control block ends here
			
			
			
			
			//DAC block starts here
			
			

//			always @(posedge clk) begin			//DAC process
			
//				reading <= 1'b1;
//				LED <= pulse_out_from_DAC[11:4];

				if(push_val_to_DAC) begin
					push_val_to_DAC <= 1'b0;
				end				
				
				if(!(jtag_uart_read) && reading) begin
					jtag_uart_read <= 1'b1;
				end
				if(jtag_uart_read && !jtag_uart_waitrequest) begin
					jtag_uart_read <= 1'b0;
					
					if(!jtag_uart_readdata[7]) begin
						pulse_value[5:0] <= jtag_uart_readdata[5:0];
						both_transferred[1:0] <= 2'b00; 
					end
					
					else begin
						pulse_value[11:6] <= jtag_uart_readdata[5:0];	
						push_val_to_DAC <= 1'b1;
						both_transferred[3:2] <= 2'b11;
					end
				end
//			end				//end of DAC process
		
		
		//DAC block ends here
		
		
		//ADC block starts here
			 
	 
		  
//		  always @(posedge clk) begin			//ADC process

//			 writing <= 1'b1;
//			 LED[6:0] <= measured_val[9:3];
//			 LED[6:0] <= pulse_value[11:5];
			 LED[7:0] <= measured_values[19][7:0];
//			 LED[7] <= writing;
			
//			 LED[6:0] <= counter[26:20];
			
			
				if(!(jtag_uart_write) && writing) begin
					jtag_uart_write <= 1'b1;
					
					if (!MSB_ADC) begin
						jtag_uart_wdata[4:0] <= measured_val[4:0];
						jtag_uart_wdata[7:5] <= 3'b000; 
						MSB_ADC <= 1'b1;
						both_transferred[1:0] <= 2'b00;
					end
					
					else begin
						jtag_uart_wdata[4:0] <= measured_val[9:5];
						jtag_uart_wdata[7:5] <= 3'b111;
						MSB_ADC <= 1'b0;
						both_transferred[1:0] <= 2'b11;
					end
				end
				
//				if(jtag_uart_write && !jtag_uart_waitrequest) begin
				if(jtag_uart_write) begin
					jtag_uart_write <= 1'b0;
				end
//		  end						//end of ADC process
		  
		  
		  //ADC block ends here

			end //ending main process
			
		  
		  




	uart_jtag uart_jtag1 (
		.clk_clk        (clk),
		.reset_reset_n  (!reset),
		.avalon_jtag_slave_chipselect  (jtag_uart_cs),
		.avalon_jtag_slave_waitrequest (jtag_uart_waitrequest),
		.avalon_jtag_slave_address     (jtag_uart_addr),
		.avalon_jtag_slave_read_n      (!jtag_uart_read),
		.avalon_jtag_slave_readdata    (jtag_uart_readdata),
		.avalon_jtag_slave_write_n     (!jtag_uart_write),
		.avalon_jtag_slave_writedata   (jtag_uart_wdata),
		.irq_irq        ()
	);
	

adc_dac_control adc_dac_control0
(
	   .clk_50MHz (clk),	//in
		.pulse_value_DAC (pulse_value), //in
		.push_val_to_DAC(push_val_to_DAC),//in
		.pulse_out(pulse_out_from_DAC),
		.SCK_DAC (SCK_DAC),		//out
		.CS_DAC (CS_DAC),			//out
		.reset_DAC (reset_DAC),		//out
		.SDI_DAC (SDI_DAC),		//out
		.LDAC_DAC (LDAC_DAC),		//out
		.reset_ADC 		(reset_ADC),	//out
		.Din_ADC 		(Din_ADC),	//out
		.Dout_ADC 		(Dout_ADC),	//in
		.CS_ADC	 		(CS_ADC),	//out
		.Sclk_ADC 		(Sclk_ADC),	//out
		.output_ADC	(measured_val),		//out
		.ch_display_select (ch_display_select),	//in
		.measured_values({measured_values[23], measured_values[22], measured_values[21], measured_values[20], measured_values[19], measured_values[18], measured_values[17], measured_values[16], measured_values[15], measured_values[14], measured_values[13], measured_values[12], measured_values[11], measured_values[10], measured_values[9], measured_values[8], measured_values[7], measured_values[6], measured_values[5], measured_values[4], measured_values[3], measured_values[2], measured_values[1], measured_values[0]})	//out
);



endmodule