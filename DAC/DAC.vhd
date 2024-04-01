library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
Use ieee.std_logic_unsigned.All;

entity DAC is
	port(
	   clk_50MHz : in std_logic;
		SCK : out std_logic;
		CS : out std_logic;
		reset : in std_logic;
		SDI : out std_logic;
		LDAC : out std_logic;
		LED : out std_logic_vector(7 downto 0)
		--CLK: in std_logic;
		--CLK2: inout std_logic;
		--SCK: out std_logic
	);
end DAC;

architecture behavioral of DAC is

--signal ip_bit	: std_logic_vector (7 downto 0):= x"00";
--signal tx_buf : std_logic_vector (9 downto 0):= x"00";

--signal SEND : std_logic:='1';
--signal i : integer range 0 to 255:=0;
--signal VALUE: std_logic_vector (15 downto 0);	
--signal SENDING : std_logic := '0';
--signal reg : std_logic_vector (15 downto 0);
--
--constant DELAY:integer := 3; -- 50 MHz / 3 == 16.667 MHz
--constant IGNORE:std_logic := '0'; -- 0:use, 1:ignore
--constant BUFFERED:std_logic := '0'; -- 0:unbuffered, 1:buffered
--constant GAIN:std_logic := '1'; -- 0:2X, 1:1X
--constant ACTIVE:std_logic := '1'; -- 0:shutdown, 1:active

signal clk_int : std_logic:='1';
signal counter_sec : integer := 0;
--signal counter : std_logic_vector (7 downto 0):= x"00";
signal counter:integer := 0;
signal data : std_logic_vector(11 downto 0) := x"800";
signal opbit: integer := 0;
begin
   
	SCK <= clk_int;
	LED <= data(11 downto 4);
	clock : process(clk_50MHz)  -- Clock divider
	begin									 		 
		if (clk_50MHz'event and clk_50MHz = '1') then
--			if(count = x"01") then			--count = 18?
--				clk_int <= not clk_int;
--				count <=  x"00";						
--			else
--				count <= count + '1';	
--			end if;
		
		clk_int <= not clk_int;
		end if;	
	end process	;	
	
	--If CS = 0, conversion is initiated
	--If LDAC = 1, DAC is updated with latest digital value : idts
	
--	process(clk_int)
--	begin
--		if(clk_int'event and clk_int = '0') then
--			if(CS='1') then
--				if(ip_bit >= x"00" and ip_bit <= x"09") then
--					tx_buf(to_integer (unsigned (op_bit))) <= Din;
--					ip_bit <= ip_bit + '1';
--				elsif(ip_bit >= x"0A") then 
--					ip_bit <= x"00";
--				end if;
--			end if;
--		end if;	
--	end process;
	
	dataproc :process(clk_int)
	begin
	   if (clk_int'event and clk_int = '0') then
			if (reset = '1') then
--				 counter <= x"00";
				 counter <= 0;
				 CS <= '1';
				 LDAC <= '1';  --should this be 1 or 0? As per timing diagram, if everything's idle, then it's 1
				 SDI <= '1';
				 counter <= counter + 1;
				 
	      elsif(counter = 0) then
			    counter <= 0;
				 CS <= '1';
				 LDAC <= '1';  --should this be 1 or 0? As per timing diagram, if everything's idle, then it's 1
				 SDI <= '0';
				 if (counter_sec <= 5) then
					counter_sec <= counter_sec + 1;
				 else
					counter <= counter + 1;
				 end if;
--				 counter <= counter + 1;
					
			elsif(counter = 1) then
				 counter <= counter + 1;
				 CS <= '0';
				 LDAC <= '1';
				 SDI <= '0';
				 
			elsif(counter = 2) then
				 counter <= counter + 1;
				 CS <= '0';
				 LDAC <= '1';
				 SDI <= '0';
				 
			elsif(counter = 3) then
				 counter <= counter + 1;
				 CS <= '0';
				 LDAC <= '1';
				 SDI <= '1';		

			elsif(counter = 4) then
				 counter <= counter + 1;
				 CS <= '0';
				 LDAC <= '1';
				 SDI <= '1';
			
			elsif(counter >= 5 and counter <=16) then
				 counter <= counter + 1;
				 CS <= '0';
				 LDAC <= '1';
				 SDI <= data(11-opbit);
				 opbit <= opbit + 1;
			
			elsif(counter = 17) then
				 SDI <= '1';
				 CS <= '1';
				 LDAC <= '1';
				 counter <= counter + 1;
				 opbit <= 0;
				 
			elsif(counter = 18) then
				 CS <= '1';
				 LDAC <= '0';		
				 --stop <= '1'; 
				 counter <= counter + 1;
				 
			elsif (counter = 19) then
				counter <= 0;
				
			elsif(counter = 120) then
				 counter <= 0;
				 counter_sec <= 0;
				 
				 
--			elsif(counter >= x"12") then
--				 stop <= '1';
--				 LDAC <= '1';		
				 
			end if;
		end if;
	end process;
	       
--	process(clk_int, SEND) 
--	variable counter : integer range 0 to 15 := 0;	
--	begin
--	
--	if falling_edge(clk_int) then
--		if SEND = '1' then	
--		reg <= IGNORE & BUFFERED & GAIN & ACTIVE & VALUE(15 downto 4);
--		counter := 0;	
--		CS <= '0';
--		SENDING <= '1';
--		SEND <= '0';
--				
--		elsif SENDING = '1' then				
--		reg <= reg(14 downto 0) & '0';		
--			if counter = 15 then		
--			counter := 0;	
--			CS <= '1';
--			SENDING <= '0'; 
--			SEND <= '1';
--			else
--			counter := counter + 1;	
--			end if;
--		end if;			
--	end if;
--		
--	end process;
--	
--SCK <= clk_int AND SENDING;
--MOSI <= reg(15);
	
end behavioral;