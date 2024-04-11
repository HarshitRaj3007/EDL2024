library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
Use ieee.std_logic_unsigned.All;

entity adc_dac_control is
	port(		
	   clk_50MHz : in std_logic;
		pulse_value_DAC : in std_logic_vector(11 downto 0);
		push_val_to_DAC : in std_logic;
		pulse_out : out std_logic_vector(11 downto 0);
		SCK_DAC : out std_logic;
		CS_DAC : out std_logic;
		reset_DAC : in std_logic;
		SDI_DAC : out std_logic;
		LDAC_DAC : out std_logic;
		reset_ADC 		: in std_logic;
		Din_ADC 		: out std_logic;
		Dout_ADC 		: In std_logic;
		CS_ADC	 		: out std_logic;
		Sclk_ADC 		: out std_logic;
		output_ADC	: out std_logic_vector(9 downto 0);
		ch_display_select : in std_logic
	);
end adc_dac_control;

architecture behavioral of adc_dac_control is

--DAC signals
signal clk_int_DAC : std_logic:='1';
signal counter_sec_DAC : integer := 0;
signal counter_DAC:integer := 0;
signal data_DAC : std_logic_vector(11 downto 0) := x"000";
signal opbit_DAC: integer := 0;
signal counter_value_DAC: integer := 0;

--ADC signals
signal clk_int_ADC	: std_logic:='1';
signal op_valid_ADC	: std_logic:='0';
signal count_ADC	: std_logic_vector (7 downto 0):= x"00";
signal op_bit_ADC	: integer := 9;
signal counter_ADC	: std_logic_vector (7 downto 0):= x"00";
signal rx_buf_ADC	: std_logic_vector (9 downto 0):= b"0000000000";
signal counter_sec_ADC: integer :=0;


--control signals
signal sample_now: std_logic_vector(1 downto 0) := b"11";				--11 means don't sample. 00 is for CH0, 01 is for CH1 reading	
signal CTRL_ADC : std_logic_vector(4 downto 0) := b"00000";

--parameters
signal sq_wave_amp_DAC : std_logic_vector(11 downto 0):= x"000";
signal sq_wave_time_count_DAC : integer := 12500;

--measurement
--type ADC_data_bits is array (1 downto 0) of std_logic_vector(9 downto 0);
--signal measurement : ADC_data_bits := (b"0000000000",b"0000000000");

signal CH0_measured_ADC: std_logic_vector(9 downto 0) := b"0101000010";
signal CH1_measured_ADC: std_logic_vector(9 downto 0) := b"1010000011";
signal CH0_completed : std_logic:='0';
signal CH1_completed : std_logic:='0';

--display 
signal display_counter : integer := 0 ;
--signal ch_toggler : std_logic_vector(1 downto 0):= b"00";
signal ch_toggler : std_logic := '0';
begin
	
	pulse_out <= sq_wave_amp_DAC;
	receive_dac_val: process(push_val_to_DAC)
	begin
		if(push_val_to_DAC'event and push_val_to_DAC = '1') then
			sq_wave_amp_DAC <= pulse_value_DAC;
--			data_DAC <= x"000";
		end if;
	end  process;
	
	
	DAC_value_switcher_proc: process(clk_50Mhz)
	begin
		if (clk_50MHz'event and clk_50MHz = '1') then
			if(counter_value_DAC = sq_wave_time_count_DAC) then					--0A = 10, so 100000*20*2 ns = 4ms => 250Hz @3.3V
				data_DAC <= sq_wave_amp_DAC - data_DAC;
--				data_DAC <= sq_wave_amp_DAC;
				counter_value_DAC <=  0;			
			else 	
				counter_value_DAC <= counter_value_DAC + 1;	
			end if;
			
			if (counter_value_DAC mod (sq_wave_time_count_DAC/4) = 0) then
				if (data_DAC >	x"000" and (sample_now = b"11" or sample_now = b"01")) then 	--read from CH0
					sample_now <= b"00";
					CTRL_ADC(2) <= '0';
					
				elsif(data_DAC > x"000" and sample_now = b"00") then --read from CH1
					sample_now <= b"01";
					CTRL_ADC(2) <= '1';
					
				else
					sample_now <= b"11";
				end if;
			 end if;

		end if;
	end process;
	
	
	
--	measurement_display_proc: process(clk_50Mhz)
--	begin
--		if (clk_50MHz'event and clk_50MHz = '1') then
--			if(display_counter = 100000000)then
----				output_ADC <= measurement(to_integer(unsigned(ch_toggler)));
----			   ch_toggler <= b"01" - ch_toggler;
--				if (ch_toggler = '0') then
--					output_ADC <= CH0_measured_ADC;
----					output_ADC <= b"1111111111";
--					ch_toggler <= '1';
--				else
--					output_ADC <= CH1_measured_ADC;
----					output_ADC <= b"1111111111";
--					ch_toggler <= '0';
--				end if;
--
--				display_counter <= 0;
--			else
--				display_counter <= display_counter + 1;
--			end if;
--		end if;
--	end process;

measurement_display_proc_2: process(clk_50Mhz)
	begin
		if (clk_50MHz'event and clk_50MHz = '1') then
			if(ch_display_select = '1')then
				output_ADC <= CH1_measured_ADC;
			else
				output_ADC <= CH0_measured_ADC;
			end if;
		end if;
	end process;
--	output_ADC <= b"1010000011";
	
	
	
	
	
	
   --DAC processes:
	
	SCK_DAC <= clk_int_DAC;
--	LED_DAC <= data_DAC(11 downto 4);	

	clock : process(clk_50MHz)  -- Clock divider
	begin									 		 
		if (clk_50MHz'event and clk_50MHz = '1') then
			clk_int_DAC <= not clk_int_DAC;
		end if;	
	end process	;	
	
	
	data_DACproc :process(clk_int_DAC)
	begin
	   if (clk_int_DAC'event and clk_int_DAC = '0') then
			if (reset_DAC = '1') then
				 counter_DAC <= 0;
				 CS_DAC <= '1';
				 LDAC_DAC <= '1';  
				 SDI_DAC <= '1';
				 counter_DAC <= counter_DAC + 1;
				 
	      elsif(counter_DAC = 0) then
			    counter_DAC <= 0;
				 CS_DAC <= '1';
				 LDAC_DAC <= '1';  
				 SDI_DAC <= '0';
				 if (counter_sec_DAC <= 1) then
					counter_sec_DAC <= counter_sec_DAC + 1;
				 else
					counter_DAC <= counter_DAC + 1;
				 end if;
--				 counter_DAC <= counter_DAC + 1;
					
			elsif(counter_DAC = 1) then
				 counter_DAC <= counter_DAC + 1;
				 CS_DAC <= '0';
				 LDAC_DAC <= '1';
				 SDI_DAC <= '0';
				 
			elsif(counter_DAC = 2) then
				 counter_DAC <= counter_DAC + 1;
				 CS_DAC <= '0';
				 LDAC_DAC <= '1';
				 SDI_DAC <= '0';
				 
			elsif(counter_DAC = 3) then
				 counter_DAC <= counter_DAC + 1;
				 CS_DAC <= '0';
				 LDAC_DAC <= '1';
				 SDI_DAC <= '1';		

			elsif(counter_DAC = 4) then
				 counter_DAC <= counter_DAC + 1;
				 CS_DAC <= '0';
				 LDAC_DAC <= '1';
				 SDI_DAC <= '1';
			
			elsif(counter_DAC >= 5 and counter_DAC <=16) then
				 counter_DAC <= counter_DAC + 1;
				 CS_DAC <= '0';
				 LDAC_DAC <= '1';
				 SDI_DAC <= data_DAC(11-opbit_DAC);
				 opbit_DAC <= opbit_DAC + 1;
			
			elsif(counter_DAC = 17) then
				 SDI_DAC <= '1';
				 CS_DAC <= '1';
				 LDAC_DAC <= '1';
				 counter_DAC <= counter_DAC + 1;
				 opbit_DAC <= 0;
				 
			elsif(counter_DAC = 18) then
				 CS_DAC <= '1';
				 LDAC_DAC <= '0';		
				 counter_DAC <= counter_DAC + 1;

			elsif (counter_DAC = 19) then
				counter_DAC <= 0;

				 
			end if;
		end if;
	end process;
	       

			 
--ADC processes:
	Sclk_ADC <= clk_int_ADC;
--	output_ADC <= rx_buf_ADC;  
	
	process(clk_50MHz)
	begin									 		 
		if (clk_50MHz'event and clk_50MHz = '1') then
			if(count_ADC = x"0A") then					--0A = 10, so 10*20*2 ns = 400ns => 2.5 MHz ~ 2.52 MHz @3.3V
				clk_int_ADC <= not clk_int_ADC;
				count_ADC <=  x"00";				
			else
				count_ADC <= count_ADC + '1';	
			end if;
		end if;	
	end process	;	
	
	

	
	process(clk_int_ADC)
	begin
		if(clk_int_ADC'event and clk_int_ADC = '0') then
			if(reset_ADC = '1')	then
				counter_ADC <= x"00";
				Din_ADC 	<= '1';	
				CS_ADC	 	<= '1';
				counter_sec_ADC <= 0;
				
			elsif(counter_ADC = x"00" ) then		--reset_ADC
				if(counter_sec_ADC <= 10) then
					counter_sec_ADC <= counter_sec_ADC + 1;
				else
					counter_ADC <= counter_ADC + '1';
					Din_ADC 	<= '1';	
					CS_ADC	 	<= '1';	
				end if;
				
			elsif(counter_ADC = x"01" ) then		--start 
				counter_ADC <= counter_ADC + '1';
				Din_ADC 	<= '1';				
				CS_ADC	 	<= '0';
				
			elsif(counter_ADC = x"02" ) then		--MSB 
				counter_ADC <= counter_ADC + '1';
				Din_ADC 	<= '1';	
				CS_ADC	 	<= '0';
				
			elsif(counter_ADC >= x"03" and counter_ADC <= x"07") then -- ch select, and wait for 2 more cycles after choosing ch
				counter_ADC <= counter_ADC + '1';
--				Din_ADC 	<= '0';
--				Din_ADC <= CTRL_ADC(7 - to_integer(unsigned(counter_ADC)));
				if (counter_ADC = x"05") then
					if (sample_now = x"00") then
						Din_ADC <= '0';
					elsif (sample_now = x"01") then
						Din_ADC <= '1';
					else
						Din_ADC <= '1';
					end if;
				else
					Din_ADC <= '0';
				end if;
				CS_ADC	 	<= '0';
				
				
			elsif(counter_ADC >= x"08" and counter_ADC <= x"11") then -- o/p valid
				counter_ADC <= counter_ADC + '1';
				Din_ADC 	<= '1';	
				CS_ADC	 	<= '0';	
				
				if (counter_ADC >= x"09") then
					rx_buf_ADC(op_bit_ADC) <= Dout_ADC;
					op_bit_ADC <= op_bit_ADC - 1;
				end if;
				
	
			elsif(counter_ADC >= x"12" and counter_ADC <= x"14") then	--t_CS_ADCH
				counter_ADC <= counter_ADC + '1';
				if(counter_ADC = x"12") then
					rx_buf_ADC(op_bit_ADC) <= Dout_ADC;
				end if;
				op_bit_ADC <= 9;	
				CS_ADC <= '1';
				
			elsif(counter_ADC >= x"15") then
				if (sample_now = x"00") then
--					measurement(0)(9 downto 0) <= rx_buf_ADC(9 downto 0);
--					measurement(0) <= b"0000000000";

--					CH0_measured_ADC <= b"1111111111";
					if (CH0_completed = '0') then
						CH0_measured_ADC <= rx_buf_ADC;
					end if;
--					CH0_completed <= '1';
					
				elsif (sample_now = x"01") then
--					measurement(1) <= b"1111111111";
--					measurement(1)(9 downto 0) <= rx_buf_ADC(9 downto 0);

--					CH1_measured_ADC <= b"0000000000";
					if (CH1_completed = '0') then
						CH1_measured_ADC <= rx_buf_ADC;
					end if;
--					CH1_completed <= '1';
				end if;
			
				counter_ADC <= x"00";
				counter_sec_ADC <= 0;
				
			end if;	
		end if;	
		
	end process	;				 			 		 -- represent behavior

	
end behavioral;