	component jtag_uart is
		port (
			clk_1_clk                     : in  std_logic                     := 'X';             -- clk
			reset_1_reset_n               : in  std_logic                     := 'X';             -- reset_n
			avalon_jtag_slave_chipselect  : in  std_logic                     := 'X';             -- chipselect
			avalon_jtag_slave_address     : in  std_logic                     := 'X';             -- address
			avalon_jtag_slave_read_n      : in  std_logic                     := 'X';             -- read_n
			avalon_jtag_slave_readdata    : out std_logic_vector(31 downto 0);                    -- readdata
			avalon_jtag_slave_write_n     : in  std_logic                     := 'X';             -- write_n
			avalon_jtag_slave_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			avalon_jtag_slave_waitrequest : out std_logic;                                        -- waitrequest
			irq_irq                       : out std_logic                                         -- irq
		);
	end component jtag_uart;

	u0 : component jtag_uart
		port map (
			clk_1_clk                     => CONNECTED_TO_clk_1_clk,                     --             clk_1.clk
			reset_1_reset_n               => CONNECTED_TO_reset_1_reset_n,               --           reset_1.reset_n
			avalon_jtag_slave_chipselect  => CONNECTED_TO_avalon_jtag_slave_chipselect,  -- avalon_jtag_slave.chipselect
			avalon_jtag_slave_address     => CONNECTED_TO_avalon_jtag_slave_address,     --                  .address
			avalon_jtag_slave_read_n      => CONNECTED_TO_avalon_jtag_slave_read_n,      --                  .read_n
			avalon_jtag_slave_readdata    => CONNECTED_TO_avalon_jtag_slave_readdata,    --                  .readdata
			avalon_jtag_slave_write_n     => CONNECTED_TO_avalon_jtag_slave_write_n,     --                  .write_n
			avalon_jtag_slave_writedata   => CONNECTED_TO_avalon_jtag_slave_writedata,   --                  .writedata
			avalon_jtag_slave_waitrequest => CONNECTED_TO_avalon_jtag_slave_waitrequest, --                  .waitrequest
			irq_irq                       => CONNECTED_TO_irq_irq                        --               irq.irq
		);

