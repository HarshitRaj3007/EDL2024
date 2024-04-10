library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
Use ieee.std_logic_unsigned.All;

entity dac is
	port(
		input_signal: in std_logic;
		clk : in std_logic;
		output_signal : out std_logic
	);
end dac;

architecture behavioral of dac is
signal counter : integer := 0;
signal output: std_logic := '0';
begin
	 output_signal <= output;
    process(clk)
    begin
        if input_signal = '0' then
            output <= '1';  -- Output complement for '0' input
				counter <= 0;
        else
				if (clk'event and clk = '1') then
					if(counter >= 50000) then
						output <= not output;  -- Output complement for '1' input
						counter <= 0;
					else 
						counter <= counter + 1;
					end if;
				end if;
        end if;
    end process;
end behavioral;