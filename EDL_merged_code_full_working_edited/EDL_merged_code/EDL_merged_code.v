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
		input wire ch_display_select,	//in
		
		
		output reg 	controlmain_reset,
		output reg 	controlmain_readwrite,
		
		output reg  Control1,
		output reg  Control2,
		output reg  Control3,
		output reg  Control4,
		output reg  Control5,
		output reg  Control6,
		output reg  Control7,
		output reg  Control8,
		output reg  Control9A,
		output reg  Control9B,
		output reg  Control10A,
		output reg  Control10B,
		output reg  Control_Vt1A,
		output reg  Control_Vt1B,
		output reg  Control_Vt2A,
		output reg  Control_Vt2B, 
		output reg  Control_Vt3A,
		output reg  Control_Vt3B,
		
		output reg  Control_Hz1A,
		output reg  Control_Hz1B,
		output reg  Control_Hz2A,
		output reg  Control_Hz2B, 
		output reg  Control_Hz3A,
		output reg  Control_Hz3B	
		
    );
	 	
	 

	 

	 
	 //measured_val, MSB_ADC are for ADC
	 reg[9:0] measured_val_CH0;
	 initial begin
	 measured_val_CH0 <= 10'b0000000000;	
	 end

	 reg[9:0] measured_val_CH1;
	 initial begin
	 measured_val_CH1 <= 10'b0000000000;	
	 end
	
    
    reg[329:0] measured_values_CH1_single_vector;	 
	 initial begin
	 measured_values_CH1_single_vector <= 330'b000000000000000000010000000010000000001100000001000000000000000000000100000000100000000011000000010000000000000000000001000000001000000000110000000100000000000000000000010000000010000000001100000001000000000000000000000100000000100000000011000000010000000000000000000001000000001000000000110000000100000000111100000001110000000111;
	 end
	
	
//	 reg[9:0] measured_values_CH0[127:0];
//	 initial begin
//	 measured_values_CH0[127][9:0] <= 10'b1001111111;
//	 measured_values_CH0[126][9:0] <= 10'b1001111111;
//	 measured_values_CH0[125][9:0] <= 10'b1001111111;
//	 measured_values_CH0[124][9:0] <= 10'b1001111111;
//	 measured_values_CH0[123][9:0] <= 10'b1001111111;
//	 measured_values_CH0[122][9:0] <= 10'b1001111111;
//	 measured_values_CH0[121][9:0] <= 10'b1001111111;
//	 measured_values_CH0[120][9:0] <= 10'b1001111111;
//	 end
//	
//	
//	 reg[9:0] measured_values_CH1[127:0];
//	 initial begin
//	 measured_values_CH1[127][9:0] <= 10'b1001111111;
//	 measured_values_CH1[126][9:0] <= 10'b1001111111;
//	 measured_values_CH1[125][9:0] <= 10'b1001111111;
//	 measured_values_CH1[124][9:0] <= 10'b1001111111;
//	 measured_values_CH1[123][9:0] <= 10'b1001111111;
//	 measured_values_CH1[122][9:0] <= 10'b1001111111;
//	 measured_values_CH1[121][9:0] <= 10'b1001111111;
//	 measured_values_CH1[120][9:0] <= 10'b1001111111;
//	 end
	 
	 reg store_trigger;
	 initial begin
	 store_trigger <= 1'b0;	
	 end	 
	 
	 reg[31:0] sample_counter;
	 initial begin
	 sample_counter <= 32'd0;	
	 end
	 
	 integer sample_index;
	 initial begin
	 sample_index <= 0;
	 end
	 
	 reg start_sampling;
	 initial begin
	 start_sampling <= 1'b0;	
	 end

	 reg sending;					//1 when sending data to laptop, and 0 when confirming if sent data is received. 
	 initial begin
	 sending <= 1'b1;	
	 end
	 
	 reg received_at_laptop;
	 initial begin
	 received_at_laptop <= 1'b0;	
	 end
	 
	 
	 reg MSB_ADC;
	 initial begin
	 MSB_ADC <= 1'b0;
	 end

	 reg CH0_done;
	 initial begin
	 CH0_done <= 1'b0;
	 end
	 
	 reg sampling_complete;
	 initial begin
	 sampling_complete <= 1'b0;
	 end	 
	 
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
	 jtag_uart_wdata <= 32'b00000000000000111000000000000000;	
	 end
	 
	 reg        jtag_uart_read;
	 initial begin
	 jtag_uart_read <= 1'b1;	
	 end
	 
    reg [31:0] jtag_uart_readdata;
	 
	 
	 //logic flow signals
	 
	 reg[23:0] control_signals;
	 initial begin
	 control_signals <= 24'b000000000000000000000000;	
	 end		
	 
	 reg[2:0] control_signals_received;
	 initial begin
	 control_signals_received <= 3'b000;
	 end
	 
	 reg[31:0] counter;
	 initial begin 
	 counter <= 32'd0;
	 end
	 
	 parameter t1 = 32'd50;
	 parameter t2 = 32'd400000000;			//8s given for getting the pulse value

	 integer count_sends;
	 initial begin
	 count_sends <= 0;	
	 end	
	 
	 integer count_wait;
	 initial begin
	 count_wait <= 0;	
	 end
	 
	 reg reading;
	 initial begin
	 reading <= 1'b0;	
	 end	
	 
	 reg writing;
	 initial begin
	 writing <= 1'b0;	
	 end		 
	
	 reg[31:0] state;								//0: start, 1: read pulse value, 2: show ADC value
	 initial begin									
	 state <= 32'd0;
	 end
	 
	 integer state_integer;								//0: start, 1: read pulse value, 2: show ADC value
	 initial begin									
	 state_integer <= 0;
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
		
		
		if(sample_counter <= 32'd31) begin
			if (store_trigger) begin
			   sample_index <= sample_counter;
				measured_values_CH1_single_vector[10*(sample_index+1) +:10] <= measured_val_CH1;
			end
		end
		
		if(sample_counter >= 32'd31) begin
			sampling_complete <= 1'b1;
		end
		
		
		
		
		
		
		
		//the control block starts here
		
		
		controlmain_reset <= 1'b0;
		controlmain_readwrite <= 1'b1;
		Control1 <= 1'b0;
		Control2 <= 1'b0;
		Control3 <= 1'b0;
		Control4 <= 1'b1;

		Control5 <= 1'b0;
		Control6 <= 1'b0;
		Control7 <= 1'b1;
		Control8 <= 1'b1;

		Control9A <= 1'b1;
		Control9B <= 1'b0;
		Control10A <= 1'b1;
		Control10B <= 1'b0;
		
		Control_Vt1A <= 1'b1;
		Control_Vt1B <= 1'b0;
		Control_Vt2A <= 1'b1;
		Control_Vt2B <= 1'b0;		
		Control_Vt3A <= 1'b0;
		Control_Vt3B <= 1'b1;

		Control_Hz1A <= 1'b0;
		Control_Hz1B <= 1'b1;
		Control_Hz2A <= 1'b1;
		Control_Hz2B <= 1'b0;		
		Control_Hz3A <= 1'b0;
		Control_Hz3B <= 1'b1;
		
			if (state == 32'd0) begin
				counter <= counter + 1;
				if(counter == 32'd50) begin
					state <= 32'd1;
					counter <= 32'd0;
				end
			end
			
			if (state == 32'd1) begin
				reading <= 1'b1;
				writing <= 1'b0;
				
				if (both_transferred == 4'b1100) begin
					push_val_to_DAC <= 1'b1;
					state <= 32'd9995;			//32'd9995
					both_transferred <= 4'b0101;
					reading <= 1'b0;
				   writing <= 1'b0;
					received_at_laptop <= 1'b0;
				end	
			end

			//control signnals: 8001, 8002, 8003
			
			if (state == 32'd8001) begin
				reading <= 1'b1;
				writing <= 1'b0;
				if (control_signals_received == 3'b001) begin
					state <= 32'd9995;
					reading <= 1'b1;
				   writing <= 1'b0;
				end	
			end
			
			if (state == 32'd9995) begin
				start_sampling <= 1'b1;
				push_val_to_DAC <= 1'b0;
				writing <= 1'b0;
				reading <= 1'b0;
				
				if(sampling_complete == 1'b1) begin
					state <= 32'd2;
					
					writing <= 1'b0;
				end
			end
			
			
			if (state >= 32'd2 && state <= 32'd33) begin
				sampling_complete <= 1'b0;
				start_sampling <= 1'b0;
				push_val_to_DAC <= 1'b0;
				
			if(sending) begin
				reading <= 1'b0;
				writing <= 1'b1;
				if(both_transferred == 4'b1100) begin
					if (count_wait >= 5) begin
						sending <= 1'b0;
						writing <= 1'b0;
					end
					count_wait <= count_wait + 1;
					both_transferred <= 4'b0101;
				end
			end
			
			else begin
				reading <= 1'b1;
				writing <= 1'b0;
				if (received_at_laptop) begin
					state <= state + 32'd1;
					state_integer <= state_integer + 1;
					sending <= 1'b1;
					both_transferred <= 4'b0101;
					reading <= 1'b0;
					writing <= 1'b0;
					received_at_laptop <= 1'b0;
				end				
			end
				

					
			end		

			if(state == 32'd34) begin
				state <= 32'd39;
				reading <= 1'b0;
				writing <= 1'b0;
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
					
					if(!jtag_uart_readdata[7] && state == 32'd1) begin
						pulse_value[5:0] <= jtag_uart_readdata[5:0];
						both_transferred[1:0] <= 2'b00; 
					end
					
//					else if(jtag_uart_readdata[7] && (state == 32'd1 || state == 32'd9995)) begin
					else if(jtag_uart_readdata[7]) begin
						if (jtag_uart_readdata[7:6] == 2'b10) begin
							received_at_laptop <= 1'b1;
						end	
						pulse_value[11:6] <= jtag_uart_readdata[5:0];
						both_transferred[3:2] <= 2'b11;
					end
					
					else if(state == 32'd8001 || state == 32'd8002 || state == 32'd8003) begin
						if(state == 32'd8001 && jtag_uart_readdata[7:0] != 8'b00000000) begin // && jtag_uart_readdata[7:0] != 8'b00000000
							control_signals[7:0] <= jtag_uart_readdata[7:0];
							control_signals_received[0] <= 1'b1;
						end
						if(state == 32'd8002) begin
							control_signals[15:8] <= jtag_uart_readdata[7:0];
							control_signals_received[1] <= 1'b1;
						end
						if(state == 32'd8003) begin
							control_signals[23:16] <= jtag_uart_readdata[7:0];
							control_signals_received[2] <= 1'b1;
						end
					end		//end of the control signals else if block
					
				end			//end of reading block for jtag
//			end				//end of DAC process
		
		
		//DAC block ends here
		
		
		//ADC block starts here
			 
	 
		  
//		  always @(posedge clk) begin			//ADC process

//			 writing <= 1'b1;
//			 LED[7] <= writing;			
//			 LED[7:4] <= control_signals[4:0];
			 LED[6:0] <= state[6:0];
			 LED[7] <= received_at_laptop;
//			 LED[7:0] <= control_signals[7:0];
//			 LED[6:0] <= measured_val[9:3];
//			 LED[6:0] <= pulse_value[11:5];
//			 LED[7] <= store_trigger;
//			 LED[7] <= start_sampling;
//			 LED[6:0] <= sample_counter[6:0];
//			 LED[3:0] <= state[3:0];
//			 LED[7:0] <= sample_counter[7:0];
			 LED[6] <= writing;
			 LED[5] <= reading;
//			 LED[7] <= sampling_complete;
//			 LED[4] <= push_val_to_DAC;
//			 LED[6:0] <= counter[26:20];
//			 LED[7:0] <= measured_values_CH1[sample_index][7:0];
			
				if(!(jtag_uart_write) && writing) begin
					jtag_uart_write <= 1'b1;
					
//					state_integer <= state;
//					state_integer <= state_integer - 2;
//			 LED[7:0] <= measured_values_CH1_single_vector[(10*state_integer) +: 8];

					if (!MSB_ADC && state != 32'd9995) begin
//						jtag_uart_wdata[4:0] <= measured_val_CH1[4:0];
//						jtag_uart_wdata[4:0] <= measured_values_CH1[state_integer][4:0]; //[state_integer][4:0]
						jtag_uart_wdata[4:0] <= measured_values_CH1_single_vector[(10*state_integer) +: 5]; //[state_integer][4:0]
//						LED[7:0] <= measured_values_CH1[state_integer][7:0];
						jtag_uart_wdata[7:5] <= 3'b000; 
						MSB_ADC <= 1'b1;
						both_transferred[1:0] <= 2'b00;
					end
					
					else if(MSB_ADC && state != 32'd9995) begin
//						jtag_uart_wdata[4:0] <= measured_val_CH1[9:5];
//						jtag_uart_wdata[4:0] <= measured_values_CH1[state_integer][9:5]; //[state_integer][9:5]
						jtag_uart_wdata[4:0] <= measured_values_CH1_single_vector[(10*state_integer + 5) +: 5];
						jtag_uart_wdata[7:5] <= 3'b111;
						MSB_ADC <= 1'b0;
						both_transferred[3:2] <= 2'b11;
					end
					
					
				end
				
				if(jtag_uart_write && !jtag_uart_waitrequest) begin
//				if(jtag_uart_write) begin
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
		.output_ADC_CH0	(measured_val_CH0),		//out
		.output_ADC_CH1   (measured_val_CH1),
		.start_sampling  (start_sampling),
		.sample_index_counter  (sample_counter),
		.store_trigger(store_trigger),
		.ch_display_select (ch_display_select)	//in
);



endmodule