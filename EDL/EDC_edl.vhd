Library ieee;
Use ieee.std_logic_1164.All;
Use ieee.numeric_std.All;
Use ieee.std_logic_unsigned.All;

	Entity EDC_edl Is
		Port
		(   	clk_50MHz 	: In std_logic;
				reset 		: In std_logic;
				Din 		: Out std_logic;
				Dout 		: In std_logic;
				CS	 		: Out std_logic;
				Sclk 		: Out std_logic;
				output	: Out std_logic_vector(9 downto 0)
		);				
	End EDC_edl;

Architecture behave Of EDC_edl is

	signal clk_int	: std_logic:='1';
	signal op_valid	: std_logic:='0';
	signal count	: std_logic_vector (7 downto 0):= x"00";
--	signal op_bit	: std_logic_vector (7 downto 0):= x"00";
	signal op_bit : integer:=9;
	signal counter	: std_logic_vector (7 downto 0):= x"00";
	signal rx_buf	: std_logic_vector (9 downto 0):= b"0000000000";
	signal counter_sec: integer :=0;

Begin	
	
	Sclk <= clk_int;
	output <= rx_buf;  
	--output <= b"1111111111";
	
	process(clk_50MHz)
	begin									 		 
		if (clk_50MHz'event and clk_50MHz = '1') then
			if(count = x"0A") then					--0A = 10, so 10*20*2 ns = 400ns => 2.5 MHz ~ 2.52 MHz @3.3V
				clk_int <= not clk_int;
				count <=  x"00";				
			else
				count <= count + '1';	
			end if;
		end if;	
	end process	;	
	

	
--	process(clk_int)
--	begin
--		if(clk_int'event and clk_int = '0') then	
--			if(op_valid='1') then
--				if(op_bit >= x"00" and op_bit <= x"08") then
--					rx_buf(9 - to_integer (unsigned (op_bit))) <= Dout;
--					op_bit <= op_bit + '1';
--				--elsif(op_bit >= x"0A") then
--				else
--					--rx_buf(to_integer (unsigned (op_bit))) <= Dout;  
--					op_bit <= x"00";
--				end if;
--			end if;
--		end if;	
--	end process	;

--	process(clk_int)
--	begin
--		if(clk_int'event and clk_int = '0') then	
--			if(op_valid='1') then
--				if(op_bit >= 0 and op_bit <= 9) then
--					rx_buf(op_bit) <= Dout;
--					op_bit <= op_bit - 1;
--				else
--					--rx_buf(to_integer (unsigned (op_bit))) <= Dout;  
--					op_bit <= 9;
--				end if;
--			end if;
--		end if;	
--	end process	;
	
	
	process(clk_int)
	begin
		if(clk_int'event and clk_int = '0') then
			if(reset = '1')	then
				counter <= x"00";
				Din 	<= '1';	
				CS	 	<= '1';
				counter_sec <= 0;
				op_valid<= '0';
				
			elsif(counter = x"00" ) then		--reset
				if(counter_sec <= 20) then
					counter_sec <= counter_sec + 1;
				else
					counter <= counter + '1';
					Din 	<= '1';	
					CS	 	<= '1';	
					op_valid<= '0';
				end if;
				
			elsif(counter = x"01" ) then		--start 
				counter <= counter + '1';
				Din 	<= '1';				
				CS	 	<= '0';
				op_valid<= '0';
				
			elsif(counter = x"02" ) then		--MSB 
				counter <= counter + '1';
				Din 	<= '1';	
				CS	 	<= '0';
				
			elsif(counter >= x"03" and counter <= x"07") then -- ch select, and wait for 2 more cycles after choosing ch
				counter <= counter + '1';
				Din 	<= '0';	
				CS	 	<= '0';
				op_valid<= '0';
				
				
			elsif(counter >= x"08" and counter <= x"11") then -- o/p valid
				counter <= counter + '1';
				Din 	<= '1';	
				CS	 	<= '0';
				if (counter >= x"09") then
					rx_buf(op_bit) <= Dout;
					op_bit <= op_bit - 1;
				end if;
				op_valid<= '1';
	
			elsif(counter >= x"12" and counter <= x"14") then	--t_CSH
				if(counter = x"12") then
					rx_buf(op_bit) <= Dout;
				end if;
				op_bit <= 9;
				counter <= counter + '1';
				op_valid <= '0';
				CS <= '1';
				
			elsif(counter >= x"15") then
				counter <= x"00";
				counter_sec <= 0;
				
			end if;	
		end if;	
		--output <= rx_buf; --Uncomment this 
		
	end process	;				 			 		 -- represent behavior

	
End Architecture behave;					
					