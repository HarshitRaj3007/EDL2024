-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/15/2024 23:31:37"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EDC_edl IS
    PORT (
	clk_50MHz : IN std_logic;
	reset : IN std_logic;
	Din : OUT std_logic;
	Dout : IN std_logic;
	CS : OUT std_logic;
	Sclk : OUT std_logic;
	output : OUT std_logic_vector(9 DOWNTO 0)
	);
END EDC_edl;

-- Design Ports Information
-- Din	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sclk	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EDC_edl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_Dout : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_Sclk : std_logic;
SIGNAL ww_output : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Din~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \Sclk~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_int~0_combout\ : std_logic;
SIGNAL \clk_int~feeder_combout\ : std_logic;
SIGNAL \clk_int~q\ : std_logic;
SIGNAL \clk_int~clkctrl_outclk\ : std_logic;
SIGNAL \counter_sec[0]~34_combout\ : std_logic;
SIGNAL \counter[0]~8_combout\ : std_logic;
SIGNAL \counter[1]~11\ : std_logic;
SIGNAL \counter[2]~12_combout\ : std_logic;
SIGNAL \counter[4]~19\ : std_logic;
SIGNAL \counter[5]~24_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \counter[5]~25\ : std_logic;
SIGNAL \counter[6]~26_combout\ : std_logic;
SIGNAL \counter[6]~27\ : std_logic;
SIGNAL \counter[7]~28_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \counter~17_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \counter[2]~23_combout\ : std_logic;
SIGNAL \counter[2]~13\ : std_logic;
SIGNAL \counter[3]~14_combout\ : std_logic;
SIGNAL \counter[3]~16_combout\ : std_logic;
SIGNAL \counter[3]~15\ : std_logic;
SIGNAL \counter[4]~18_combout\ : std_logic;
SIGNAL \counter[4]~20_combout\ : std_logic;
SIGNAL \counter[0]~21_combout\ : std_logic;
SIGNAL \counter[0]~9\ : std_logic;
SIGNAL \counter[1]~10_combout\ : std_logic;
SIGNAL \counter[1]~22_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \counter_sec[3]~100_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \counter_sec~40_combout\ : std_logic;
SIGNAL \counter_sec[3]~41_combout\ : std_logic;
SIGNAL \counter_sec[0]~35\ : std_logic;
SIGNAL \counter_sec[1]~36_combout\ : std_logic;
SIGNAL \counter_sec[1]~37\ : std_logic;
SIGNAL \counter_sec[2]~38_combout\ : std_logic;
SIGNAL \counter_sec[2]~39\ : std_logic;
SIGNAL \counter_sec[3]~42_combout\ : std_logic;
SIGNAL \counter_sec[3]~43\ : std_logic;
SIGNAL \counter_sec[4]~44_combout\ : std_logic;
SIGNAL \counter_sec[4]~45\ : std_logic;
SIGNAL \counter_sec[5]~46_combout\ : std_logic;
SIGNAL \counter_sec[5]~47\ : std_logic;
SIGNAL \counter_sec[6]~48_combout\ : std_logic;
SIGNAL \counter_sec[6]~49\ : std_logic;
SIGNAL \counter_sec[7]~50_combout\ : std_logic;
SIGNAL \counter_sec[7]~51\ : std_logic;
SIGNAL \counter_sec[8]~52_combout\ : std_logic;
SIGNAL \counter_sec[8]~53\ : std_logic;
SIGNAL \counter_sec[9]~54_combout\ : std_logic;
SIGNAL \counter_sec[9]~55\ : std_logic;
SIGNAL \counter_sec[10]~56_combout\ : std_logic;
SIGNAL \counter_sec[10]~57\ : std_logic;
SIGNAL \counter_sec[11]~58_combout\ : std_logic;
SIGNAL \counter_sec[11]~59\ : std_logic;
SIGNAL \counter_sec[12]~60_combout\ : std_logic;
SIGNAL \counter_sec[12]~61\ : std_logic;
SIGNAL \counter_sec[13]~62_combout\ : std_logic;
SIGNAL \counter_sec[13]~63\ : std_logic;
SIGNAL \counter_sec[14]~64_combout\ : std_logic;
SIGNAL \counter_sec[14]~65\ : std_logic;
SIGNAL \counter_sec[15]~66_combout\ : std_logic;
SIGNAL \counter_sec[15]~67\ : std_logic;
SIGNAL \counter_sec[16]~68_combout\ : std_logic;
SIGNAL \counter_sec[16]~69\ : std_logic;
SIGNAL \counter_sec[17]~70_combout\ : std_logic;
SIGNAL \counter_sec[17]~71\ : std_logic;
SIGNAL \counter_sec[18]~72_combout\ : std_logic;
SIGNAL \counter_sec[18]~73\ : std_logic;
SIGNAL \counter_sec[19]~74_combout\ : std_logic;
SIGNAL \counter_sec[19]~75\ : std_logic;
SIGNAL \counter_sec[20]~76_combout\ : std_logic;
SIGNAL \counter_sec[20]~77\ : std_logic;
SIGNAL \counter_sec[21]~78_combout\ : std_logic;
SIGNAL \counter_sec[21]~79\ : std_logic;
SIGNAL \counter_sec[22]~80_combout\ : std_logic;
SIGNAL \counter_sec[22]~81\ : std_logic;
SIGNAL \counter_sec[23]~82_combout\ : std_logic;
SIGNAL \counter_sec[23]~83\ : std_logic;
SIGNAL \counter_sec[24]~84_combout\ : std_logic;
SIGNAL \counter_sec[24]~85\ : std_logic;
SIGNAL \counter_sec[25]~86_combout\ : std_logic;
SIGNAL \counter_sec[25]~87\ : std_logic;
SIGNAL \counter_sec[26]~88_combout\ : std_logic;
SIGNAL \counter_sec[26]~89\ : std_logic;
SIGNAL \counter_sec[27]~90_combout\ : std_logic;
SIGNAL \counter_sec[27]~91\ : std_logic;
SIGNAL \counter_sec[28]~92_combout\ : std_logic;
SIGNAL \counter_sec[28]~93\ : std_logic;
SIGNAL \counter_sec[29]~94_combout\ : std_logic;
SIGNAL \counter_sec[29]~95\ : std_logic;
SIGNAL \counter_sec[30]~96_combout\ : std_logic;
SIGNAL \counter_sec[30]~97\ : std_logic;
SIGNAL \counter_sec[31]~98_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Din~5_combout\ : std_logic;
SIGNAL \Din~3_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \Din~2_combout\ : std_logic;
SIGNAL \Din~4_combout\ : std_logic;
SIGNAL \Din~reg0_q\ : std_logic;
SIGNAL \CS~2_combout\ : std_logic;
SIGNAL \CS~3_combout\ : std_logic;
SIGNAL \CS~0_combout\ : std_logic;
SIGNAL \CS~1_combout\ : std_logic;
SIGNAL \CS~4_combout\ : std_logic;
SIGNAL \CS~reg0_q\ : std_logic;
SIGNAL \Dout~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \rx_buf~2_combout\ : std_logic;
SIGNAL \rx_buf~3_combout\ : std_logic;
SIGNAL \op_bit[3]~0_combout\ : std_logic;
SIGNAL \op_bit[3]~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \rx_buf[0]~15_combout\ : std_logic;
SIGNAL \rx_buf[0]~4_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \rx_buf[0]~5_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \rx_buf[1]~6_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \rx_buf[2]~7_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \rx_buf[3]~8_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \rx_buf[4]~9_combout\ : std_logic;
SIGNAL \rx_buf[5]~10_combout\ : std_logic;
SIGNAL \rx_buf[6]~11_combout\ : std_logic;
SIGNAL \rx_buf[7]~12_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \rx_buf[8]~13_combout\ : std_logic;
SIGNAL \rx_buf[9]~14_combout\ : std_logic;
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL counter_sec : std_logic_vector(31 DOWNTO 0);
SIGNAL rx_buf : std_logic_vector(9 DOWNTO 0);
SIGNAL count : std_logic_vector(7 DOWNTO 0);
SIGNAL op_bit : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk_int~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
ww_reset <= reset;
Din <= ww_Din;
ww_Dout <= Dout;
CS <= ww_CS;
Sclk <= ww_Sclk;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);

\clk_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_int~q\);
\ALT_INV_clk_int~q\ <= NOT \clk_int~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y2_N16
\Din~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Din~reg0_q\,
	devoe => ww_devoe,
	o => \Din~output_o\);

-- Location: IOOBUF_X60_Y2_N23
\CS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CS~reg0_q\,
	devoe => ww_devoe,
	o => \CS~output_o\);

-- Location: IOOBUF_X60_Y10_N9
\Sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk_int~q\,
	devoe => ww_devoe,
	o => \Sclk~output_o\);

-- Location: IOOBUF_X60_Y23_N9
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X60_Y23_N2
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(8),
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rx_buf(9),
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G2
\clk_50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y21_N14
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X59_Y21_N8
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~0_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \count~2_combout\);

-- Location: FF_X59_Y21_N9
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X59_Y21_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X59_Y21_N2
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~2_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \count~0_combout\);

-- Location: FF_X59_Y21_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X59_Y21_N18
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X59_Y21_N19
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X59_Y21_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X59_Y21_N22
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X59_Y21_N23
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X59_Y21_N24
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X59_Y21_N25
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X59_Y21_N26
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X59_Y21_N27
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X59_Y21_N28
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: FF_X59_Y21_N29
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X59_Y21_N12
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(6) & (!count(7) & (!count(4) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(7),
	datac => count(4),
	datad => count(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X59_Y21_N6
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~6_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add0~6_combout\,
	combout => \count~1_combout\);

-- Location: FF_X59_Y21_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X59_Y21_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(3) & (!count(2) & (!count(0) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X59_Y21_N30
\clk_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_int~0_combout\ = \clk_int~q\ $ (((\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_int~q\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \clk_int~0_combout\);

-- Location: LCCOMB_X59_Y21_N10
\clk_int~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_int~feeder_combout\ = \clk_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_int~0_combout\,
	combout => \clk_int~feeder_combout\);

-- Location: FF_X59_Y21_N11
clk_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_int~q\);

-- Location: CLKCTRL_G7
\clk_int~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_int~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y5_N0
\counter_sec[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[0]~34_combout\ = counter_sec(0) $ (VCC)
-- \counter_sec[0]~35\ = CARRY(counter_sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(0),
	datad => VCC,
	combout => \counter_sec[0]~34_combout\,
	cout => \counter_sec[0]~35\);

-- Location: LCCOMB_X24_Y5_N8
\counter[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~8_combout\ = counter(0) $ (VCC)
-- \counter[0]~9\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~8_combout\,
	cout => \counter[0]~9\);

-- Location: LCCOMB_X24_Y5_N10
\counter[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~10_combout\ = (counter(1) & (!\counter[0]~9\)) # (!counter(1) & ((\counter[0]~9\) # (GND)))
-- \counter[1]~11\ = CARRY((!\counter[0]~9\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~9\,
	combout => \counter[1]~10_combout\,
	cout => \counter[1]~11\);

-- Location: LCCOMB_X24_Y5_N12
\counter[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~12_combout\ = (counter(2) & (\counter[1]~11\ $ (GND))) # (!counter(2) & (!\counter[1]~11\ & VCC))
-- \counter[2]~13\ = CARRY((counter(2) & !\counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~11\,
	combout => \counter[2]~12_combout\,
	cout => \counter[2]~13\);

-- Location: LCCOMB_X24_Y5_N16
\counter[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~18_combout\ = (counter(4) & (\counter[3]~15\ $ (GND))) # (!counter(4) & (!\counter[3]~15\ & VCC))
-- \counter[4]~19\ = CARRY((counter(4) & !\counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~15\,
	combout => \counter[4]~18_combout\,
	cout => \counter[4]~19\);

-- Location: LCCOMB_X24_Y5_N18
\counter[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~24_combout\ = (counter(5) & (!\counter[4]~19\)) # (!counter(5) & ((\counter[4]~19\) # (GND)))
-- \counter[5]~25\ = CARRY((!\counter[4]~19\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~19\,
	combout => \counter[5]~24_combout\,
	cout => \counter[5]~25\);

-- Location: LCCOMB_X25_Y15_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X3_Y0_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X24_Y5_N2
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!counter(0) & !counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	datad => counter(1),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X24_Y5_N6
\process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (!counter(3) & (\Equal1~2_combout\ & ((\Equal1~3_combout\) # (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X24_Y5_N24
\process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (counter(4) & (\process_1~6_combout\ & ((counter(2)) # (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => counter(1),
	datad => \process_1~6_combout\,
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X21_Y5_N0
\process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (!counter(4) & (!counter(3) & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => counter(3),
	datad => \Equal1~2_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X24_Y5_N20
\counter[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~26_combout\ = (counter(6) & (\counter[5]~25\ $ (GND))) # (!counter(6) & (!\counter[5]~25\ & VCC))
-- \counter[6]~27\ = CARRY((counter(6) & !\counter[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~25\,
	combout => \counter[6]~26_combout\,
	cout => \counter[6]~27\);

-- Location: FF_X24_Y5_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[6]~26_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X24_Y5_N22
\counter[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~28_combout\ = \counter[6]~27\ $ (counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(7),
	cin => \counter[6]~27\,
	combout => \counter[7]~28_combout\);

-- Location: FF_X24_Y5_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[7]~28_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X24_Y5_N28
\process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (counter(4) & ((counter(1)) # ((counter(3)) # (counter(2))))) # (!counter(4) & (((!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(4),
	datac => counter(3),
	datad => counter(2),
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X24_Y5_N30
\process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (counter(5)) # ((counter(7)) # ((counter(6)) # (\process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(7),
	datac => counter(6),
	datad => \process_1~5_combout\,
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X21_Y5_N20
\counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~17_combout\ = (\Din~5_combout\) # ((!\process_1~7_combout\ & (!\process_1~4_combout\ & \process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~7_combout\,
	datab => \process_1~4_combout\,
	datac => \process_1~8_combout\,
	datad => \Din~5_combout\,
	combout => \counter~17_combout\);

-- Location: FF_X24_Y5_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[5]~24_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X24_Y5_N4
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter(5) & (!counter(7) & !counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datac => counter(7),
	datad => counter(6),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X25_Y5_N14
\counter[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~23_combout\ = (counter(2) & ((\process_1~6_combout\) # ((!counter(4) & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Equal1~2_combout\,
	datac => \process_1~6_combout\,
	datad => counter(2),
	combout => \counter[2]~23_combout\);

-- Location: FF_X24_Y5_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[2]~12_combout\,
	asdata => \counter[2]~23_combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X24_Y5_N14
\counter[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~14_combout\ = (counter(3) & (!\counter[2]~13\)) # (!counter(3) & ((\counter[2]~13\) # (GND)))
-- \counter[3]~15\ = CARRY((!\counter[2]~13\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~13\,
	combout => \counter[3]~14_combout\,
	cout => \counter[3]~15\);

-- Location: LCCOMB_X25_Y5_N10
\counter[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~16_combout\ = (counter(3) & ((\process_1~6_combout\) # ((!counter(4) & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Equal1~2_combout\,
	datac => \process_1~6_combout\,
	datad => counter(3),
	combout => \counter[3]~16_combout\);

-- Location: FF_X24_Y5_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[3]~14_combout\,
	asdata => \counter[3]~16_combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X25_Y5_N8
\counter[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~20_combout\ = (counter(4) & \process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datac => \process_1~6_combout\,
	combout => \counter[4]~20_combout\);

-- Location: FF_X24_Y5_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[4]~18_combout\,
	asdata => \counter[4]~20_combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X25_Y5_N30
\counter[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~21_combout\ = (counter(0) & ((\process_1~6_combout\) # ((!counter(4) & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(0),
	datac => \process_1~6_combout\,
	datad => \Equal1~2_combout\,
	combout => \counter[0]~21_combout\);

-- Location: FF_X24_Y5_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[0]~8_combout\,
	asdata => \counter[0]~21_combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X25_Y5_N0
\counter[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~22_combout\ = (counter(1) & ((\process_1~6_combout\) # ((!counter(4) & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \Equal1~2_combout\,
	datac => \process_1~6_combout\,
	datad => counter(1),
	combout => \counter[1]~22_combout\);

-- Location: FF_X24_Y5_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[1]~10_combout\,
	asdata => \counter[1]~22_combout\,
	sclr => \reset~input_o\,
	sload => \counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X25_Y5_N6
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!counter(2) & (\Equal1~2_combout\ & (!counter(4) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \Equal1~2_combout\,
	datac => counter(4),
	datad => counter(3),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X25_Y5_N20
\counter_sec[3]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[3]~100_combout\ = (counter(1)) # ((counter(0)) # ((\reset~input_o\) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => \reset~input_o\,
	datad => \Equal1~4_combout\,
	combout => \counter_sec[3]~100_combout\);

-- Location: LCCOMB_X21_Y5_N6
\LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\process_1~6_combout\) # ((!counter(4) & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => \process_1~6_combout\,
	datad => \Equal1~2_combout\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X21_Y5_N8
\counter_sec~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec~40_combout\ = (\process_1~8_combout\ & (!\process_1~4_combout\ & (!\process_1~7_combout\ & !\LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => \process_1~4_combout\,
	datac => \process_1~7_combout\,
	datad => \LessThan8~0_combout\,
	combout => \counter_sec~40_combout\);

-- Location: LCCOMB_X21_Y5_N30
\counter_sec[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[3]~41_combout\ = (\reset~input_o\) # ((\counter_sec~40_combout\) # (\Din~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \counter_sec~40_combout\,
	datad => \Din~5_combout\,
	combout => \counter_sec[3]~41_combout\);

-- Location: FF_X20_Y5_N1
\counter_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[0]~34_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(0));

-- Location: LCCOMB_X20_Y5_N2
\counter_sec[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[1]~36_combout\ = (counter_sec(1) & (!\counter_sec[0]~35\)) # (!counter_sec(1) & ((\counter_sec[0]~35\) # (GND)))
-- \counter_sec[1]~37\ = CARRY((!\counter_sec[0]~35\) # (!counter_sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(1),
	datad => VCC,
	cin => \counter_sec[0]~35\,
	combout => \counter_sec[1]~36_combout\,
	cout => \counter_sec[1]~37\);

-- Location: FF_X20_Y5_N3
\counter_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[1]~36_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(1));

-- Location: LCCOMB_X20_Y5_N4
\counter_sec[2]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[2]~38_combout\ = (counter_sec(2) & (\counter_sec[1]~37\ $ (GND))) # (!counter_sec(2) & (!\counter_sec[1]~37\ & VCC))
-- \counter_sec[2]~39\ = CARRY((counter_sec(2) & !\counter_sec[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(2),
	datad => VCC,
	cin => \counter_sec[1]~37\,
	combout => \counter_sec[2]~38_combout\,
	cout => \counter_sec[2]~39\);

-- Location: FF_X20_Y5_N5
\counter_sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[2]~38_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(2));

-- Location: LCCOMB_X20_Y5_N6
\counter_sec[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[3]~42_combout\ = (counter_sec(3) & (!\counter_sec[2]~39\)) # (!counter_sec(3) & ((\counter_sec[2]~39\) # (GND)))
-- \counter_sec[3]~43\ = CARRY((!\counter_sec[2]~39\) # (!counter_sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(3),
	datad => VCC,
	cin => \counter_sec[2]~39\,
	combout => \counter_sec[3]~42_combout\,
	cout => \counter_sec[3]~43\);

-- Location: FF_X20_Y5_N7
\counter_sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[3]~42_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(3));

-- Location: LCCOMB_X20_Y5_N8
\counter_sec[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[4]~44_combout\ = (counter_sec(4) & (\counter_sec[3]~43\ $ (GND))) # (!counter_sec(4) & (!\counter_sec[3]~43\ & VCC))
-- \counter_sec[4]~45\ = CARRY((counter_sec(4) & !\counter_sec[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(4),
	datad => VCC,
	cin => \counter_sec[3]~43\,
	combout => \counter_sec[4]~44_combout\,
	cout => \counter_sec[4]~45\);

-- Location: FF_X20_Y5_N9
\counter_sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[4]~44_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(4));

-- Location: LCCOMB_X20_Y5_N10
\counter_sec[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[5]~46_combout\ = (counter_sec(5) & (!\counter_sec[4]~45\)) # (!counter_sec(5) & ((\counter_sec[4]~45\) # (GND)))
-- \counter_sec[5]~47\ = CARRY((!\counter_sec[4]~45\) # (!counter_sec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(5),
	datad => VCC,
	cin => \counter_sec[4]~45\,
	combout => \counter_sec[5]~46_combout\,
	cout => \counter_sec[5]~47\);

-- Location: FF_X20_Y5_N11
\counter_sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[5]~46_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(5));

-- Location: LCCOMB_X20_Y5_N12
\counter_sec[6]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[6]~48_combout\ = (counter_sec(6) & (\counter_sec[5]~47\ $ (GND))) # (!counter_sec(6) & (!\counter_sec[5]~47\ & VCC))
-- \counter_sec[6]~49\ = CARRY((counter_sec(6) & !\counter_sec[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(6),
	datad => VCC,
	cin => \counter_sec[5]~47\,
	combout => \counter_sec[6]~48_combout\,
	cout => \counter_sec[6]~49\);

-- Location: FF_X20_Y5_N13
\counter_sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[6]~48_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(6));

-- Location: LCCOMB_X20_Y5_N14
\counter_sec[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[7]~50_combout\ = (counter_sec(7) & (!\counter_sec[6]~49\)) # (!counter_sec(7) & ((\counter_sec[6]~49\) # (GND)))
-- \counter_sec[7]~51\ = CARRY((!\counter_sec[6]~49\) # (!counter_sec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(7),
	datad => VCC,
	cin => \counter_sec[6]~49\,
	combout => \counter_sec[7]~50_combout\,
	cout => \counter_sec[7]~51\);

-- Location: FF_X20_Y5_N15
\counter_sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[7]~50_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(7));

-- Location: LCCOMB_X20_Y5_N16
\counter_sec[8]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[8]~52_combout\ = (counter_sec(8) & (\counter_sec[7]~51\ $ (GND))) # (!counter_sec(8) & (!\counter_sec[7]~51\ & VCC))
-- \counter_sec[8]~53\ = CARRY((counter_sec(8) & !\counter_sec[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(8),
	datad => VCC,
	cin => \counter_sec[7]~51\,
	combout => \counter_sec[8]~52_combout\,
	cout => \counter_sec[8]~53\);

-- Location: FF_X20_Y5_N17
\counter_sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[8]~52_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(8));

-- Location: LCCOMB_X20_Y5_N18
\counter_sec[9]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[9]~54_combout\ = (counter_sec(9) & (!\counter_sec[8]~53\)) # (!counter_sec(9) & ((\counter_sec[8]~53\) # (GND)))
-- \counter_sec[9]~55\ = CARRY((!\counter_sec[8]~53\) # (!counter_sec(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(9),
	datad => VCC,
	cin => \counter_sec[8]~53\,
	combout => \counter_sec[9]~54_combout\,
	cout => \counter_sec[9]~55\);

-- Location: FF_X20_Y5_N19
\counter_sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[9]~54_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(9));

-- Location: LCCOMB_X20_Y5_N20
\counter_sec[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[10]~56_combout\ = (counter_sec(10) & (\counter_sec[9]~55\ $ (GND))) # (!counter_sec(10) & (!\counter_sec[9]~55\ & VCC))
-- \counter_sec[10]~57\ = CARRY((counter_sec(10) & !\counter_sec[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(10),
	datad => VCC,
	cin => \counter_sec[9]~55\,
	combout => \counter_sec[10]~56_combout\,
	cout => \counter_sec[10]~57\);

-- Location: FF_X20_Y5_N21
\counter_sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[10]~56_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(10));

-- Location: LCCOMB_X20_Y5_N22
\counter_sec[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[11]~58_combout\ = (counter_sec(11) & (!\counter_sec[10]~57\)) # (!counter_sec(11) & ((\counter_sec[10]~57\) # (GND)))
-- \counter_sec[11]~59\ = CARRY((!\counter_sec[10]~57\) # (!counter_sec(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(11),
	datad => VCC,
	cin => \counter_sec[10]~57\,
	combout => \counter_sec[11]~58_combout\,
	cout => \counter_sec[11]~59\);

-- Location: FF_X20_Y5_N23
\counter_sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[11]~58_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(11));

-- Location: LCCOMB_X20_Y5_N24
\counter_sec[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[12]~60_combout\ = (counter_sec(12) & (\counter_sec[11]~59\ $ (GND))) # (!counter_sec(12) & (!\counter_sec[11]~59\ & VCC))
-- \counter_sec[12]~61\ = CARRY((counter_sec(12) & !\counter_sec[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(12),
	datad => VCC,
	cin => \counter_sec[11]~59\,
	combout => \counter_sec[12]~60_combout\,
	cout => \counter_sec[12]~61\);

-- Location: FF_X20_Y5_N25
\counter_sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[12]~60_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(12));

-- Location: LCCOMB_X20_Y5_N26
\counter_sec[13]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[13]~62_combout\ = (counter_sec(13) & (!\counter_sec[12]~61\)) # (!counter_sec(13) & ((\counter_sec[12]~61\) # (GND)))
-- \counter_sec[13]~63\ = CARRY((!\counter_sec[12]~61\) # (!counter_sec(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(13),
	datad => VCC,
	cin => \counter_sec[12]~61\,
	combout => \counter_sec[13]~62_combout\,
	cout => \counter_sec[13]~63\);

-- Location: FF_X20_Y5_N27
\counter_sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[13]~62_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(13));

-- Location: LCCOMB_X20_Y5_N28
\counter_sec[14]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[14]~64_combout\ = (counter_sec(14) & (\counter_sec[13]~63\ $ (GND))) # (!counter_sec(14) & (!\counter_sec[13]~63\ & VCC))
-- \counter_sec[14]~65\ = CARRY((counter_sec(14) & !\counter_sec[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(14),
	datad => VCC,
	cin => \counter_sec[13]~63\,
	combout => \counter_sec[14]~64_combout\,
	cout => \counter_sec[14]~65\);

-- Location: FF_X20_Y5_N29
\counter_sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[14]~64_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(14));

-- Location: LCCOMB_X20_Y5_N30
\counter_sec[15]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[15]~66_combout\ = (counter_sec(15) & (!\counter_sec[14]~65\)) # (!counter_sec(15) & ((\counter_sec[14]~65\) # (GND)))
-- \counter_sec[15]~67\ = CARRY((!\counter_sec[14]~65\) # (!counter_sec(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(15),
	datad => VCC,
	cin => \counter_sec[14]~65\,
	combout => \counter_sec[15]~66_combout\,
	cout => \counter_sec[15]~67\);

-- Location: FF_X21_Y4_N13
\counter_sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter_sec[15]~66_combout\,
	sclr => \counter_sec[3]~100_combout\,
	sload => VCC,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(15));

-- Location: LCCOMB_X20_Y4_N0
\counter_sec[16]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[16]~68_combout\ = (counter_sec(16) & (\counter_sec[15]~67\ $ (GND))) # (!counter_sec(16) & (!\counter_sec[15]~67\ & VCC))
-- \counter_sec[16]~69\ = CARRY((counter_sec(16) & !\counter_sec[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(16),
	datad => VCC,
	cin => \counter_sec[15]~67\,
	combout => \counter_sec[16]~68_combout\,
	cout => \counter_sec[16]~69\);

-- Location: FF_X21_Y4_N23
\counter_sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter_sec[16]~68_combout\,
	sclr => \counter_sec[3]~100_combout\,
	sload => VCC,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(16));

-- Location: LCCOMB_X20_Y4_N2
\counter_sec[17]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[17]~70_combout\ = (counter_sec(17) & (!\counter_sec[16]~69\)) # (!counter_sec(17) & ((\counter_sec[16]~69\) # (GND)))
-- \counter_sec[17]~71\ = CARRY((!\counter_sec[16]~69\) # (!counter_sec(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(17),
	datad => VCC,
	cin => \counter_sec[16]~69\,
	combout => \counter_sec[17]~70_combout\,
	cout => \counter_sec[17]~71\);

-- Location: FF_X21_Y4_N21
\counter_sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter_sec[17]~70_combout\,
	sclr => \counter_sec[3]~100_combout\,
	sload => VCC,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(17));

-- Location: LCCOMB_X20_Y4_N4
\counter_sec[18]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[18]~72_combout\ = (counter_sec(18) & (\counter_sec[17]~71\ $ (GND))) # (!counter_sec(18) & (!\counter_sec[17]~71\ & VCC))
-- \counter_sec[18]~73\ = CARRY((counter_sec(18) & !\counter_sec[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(18),
	datad => VCC,
	cin => \counter_sec[17]~71\,
	combout => \counter_sec[18]~72_combout\,
	cout => \counter_sec[18]~73\);

-- Location: FF_X21_Y4_N3
\counter_sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter_sec[18]~72_combout\,
	sclr => \counter_sec[3]~100_combout\,
	sload => VCC,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(18));

-- Location: LCCOMB_X20_Y4_N6
\counter_sec[19]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[19]~74_combout\ = (counter_sec(19) & (!\counter_sec[18]~73\)) # (!counter_sec(19) & ((\counter_sec[18]~73\) # (GND)))
-- \counter_sec[19]~75\ = CARRY((!\counter_sec[18]~73\) # (!counter_sec(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(19),
	datad => VCC,
	cin => \counter_sec[18]~73\,
	combout => \counter_sec[19]~74_combout\,
	cout => \counter_sec[19]~75\);

-- Location: FF_X20_Y4_N7
\counter_sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[19]~74_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(19));

-- Location: LCCOMB_X20_Y4_N8
\counter_sec[20]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[20]~76_combout\ = (counter_sec(20) & (\counter_sec[19]~75\ $ (GND))) # (!counter_sec(20) & (!\counter_sec[19]~75\ & VCC))
-- \counter_sec[20]~77\ = CARRY((counter_sec(20) & !\counter_sec[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(20),
	datad => VCC,
	cin => \counter_sec[19]~75\,
	combout => \counter_sec[20]~76_combout\,
	cout => \counter_sec[20]~77\);

-- Location: FF_X20_Y4_N9
\counter_sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[20]~76_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(20));

-- Location: LCCOMB_X20_Y4_N10
\counter_sec[21]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[21]~78_combout\ = (counter_sec(21) & (!\counter_sec[20]~77\)) # (!counter_sec(21) & ((\counter_sec[20]~77\) # (GND)))
-- \counter_sec[21]~79\ = CARRY((!\counter_sec[20]~77\) # (!counter_sec(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(21),
	datad => VCC,
	cin => \counter_sec[20]~77\,
	combout => \counter_sec[21]~78_combout\,
	cout => \counter_sec[21]~79\);

-- Location: FF_X21_Y4_N9
\counter_sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter_sec[21]~78_combout\,
	sclr => \counter_sec[3]~100_combout\,
	sload => VCC,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(21));

-- Location: LCCOMB_X20_Y4_N12
\counter_sec[22]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[22]~80_combout\ = (counter_sec(22) & (\counter_sec[21]~79\ $ (GND))) # (!counter_sec(22) & (!\counter_sec[21]~79\ & VCC))
-- \counter_sec[22]~81\ = CARRY((counter_sec(22) & !\counter_sec[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(22),
	datad => VCC,
	cin => \counter_sec[21]~79\,
	combout => \counter_sec[22]~80_combout\,
	cout => \counter_sec[22]~81\);

-- Location: FF_X20_Y4_N13
\counter_sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[22]~80_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(22));

-- Location: LCCOMB_X20_Y4_N14
\counter_sec[23]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[23]~82_combout\ = (counter_sec(23) & (!\counter_sec[22]~81\)) # (!counter_sec(23) & ((\counter_sec[22]~81\) # (GND)))
-- \counter_sec[23]~83\ = CARRY((!\counter_sec[22]~81\) # (!counter_sec(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(23),
	datad => VCC,
	cin => \counter_sec[22]~81\,
	combout => \counter_sec[23]~82_combout\,
	cout => \counter_sec[23]~83\);

-- Location: FF_X21_Y4_N27
\counter_sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter_sec[23]~82_combout\,
	sclr => \counter_sec[3]~100_combout\,
	sload => VCC,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(23));

-- Location: LCCOMB_X20_Y4_N16
\counter_sec[24]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[24]~84_combout\ = (counter_sec(24) & (\counter_sec[23]~83\ $ (GND))) # (!counter_sec(24) & (!\counter_sec[23]~83\ & VCC))
-- \counter_sec[24]~85\ = CARRY((counter_sec(24) & !\counter_sec[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(24),
	datad => VCC,
	cin => \counter_sec[23]~83\,
	combout => \counter_sec[24]~84_combout\,
	cout => \counter_sec[24]~85\);

-- Location: FF_X20_Y4_N17
\counter_sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[24]~84_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(24));

-- Location: LCCOMB_X20_Y4_N18
\counter_sec[25]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[25]~86_combout\ = (counter_sec(25) & (!\counter_sec[24]~85\)) # (!counter_sec(25) & ((\counter_sec[24]~85\) # (GND)))
-- \counter_sec[25]~87\ = CARRY((!\counter_sec[24]~85\) # (!counter_sec(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(25),
	datad => VCC,
	cin => \counter_sec[24]~85\,
	combout => \counter_sec[25]~86_combout\,
	cout => \counter_sec[25]~87\);

-- Location: FF_X20_Y4_N19
\counter_sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[25]~86_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(25));

-- Location: LCCOMB_X20_Y4_N20
\counter_sec[26]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[26]~88_combout\ = (counter_sec(26) & (\counter_sec[25]~87\ $ (GND))) # (!counter_sec(26) & (!\counter_sec[25]~87\ & VCC))
-- \counter_sec[26]~89\ = CARRY((counter_sec(26) & !\counter_sec[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(26),
	datad => VCC,
	cin => \counter_sec[25]~87\,
	combout => \counter_sec[26]~88_combout\,
	cout => \counter_sec[26]~89\);

-- Location: FF_X20_Y4_N21
\counter_sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[26]~88_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(26));

-- Location: LCCOMB_X20_Y4_N22
\counter_sec[27]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[27]~90_combout\ = (counter_sec(27) & (!\counter_sec[26]~89\)) # (!counter_sec(27) & ((\counter_sec[26]~89\) # (GND)))
-- \counter_sec[27]~91\ = CARRY((!\counter_sec[26]~89\) # (!counter_sec(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(27),
	datad => VCC,
	cin => \counter_sec[26]~89\,
	combout => \counter_sec[27]~90_combout\,
	cout => \counter_sec[27]~91\);

-- Location: FF_X20_Y4_N23
\counter_sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[27]~90_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(27));

-- Location: LCCOMB_X20_Y4_N24
\counter_sec[28]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[28]~92_combout\ = (counter_sec(28) & (\counter_sec[27]~91\ $ (GND))) # (!counter_sec(28) & (!\counter_sec[27]~91\ & VCC))
-- \counter_sec[28]~93\ = CARRY((counter_sec(28) & !\counter_sec[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(28),
	datad => VCC,
	cin => \counter_sec[27]~91\,
	combout => \counter_sec[28]~92_combout\,
	cout => \counter_sec[28]~93\);

-- Location: FF_X20_Y4_N25
\counter_sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[28]~92_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(28));

-- Location: LCCOMB_X20_Y4_N26
\counter_sec[29]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[29]~94_combout\ = (counter_sec(29) & (!\counter_sec[28]~93\)) # (!counter_sec(29) & ((\counter_sec[28]~93\) # (GND)))
-- \counter_sec[29]~95\ = CARRY((!\counter_sec[28]~93\) # (!counter_sec(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(29),
	datad => VCC,
	cin => \counter_sec[28]~93\,
	combout => \counter_sec[29]~94_combout\,
	cout => \counter_sec[29]~95\);

-- Location: FF_X20_Y4_N27
\counter_sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[29]~94_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(29));

-- Location: LCCOMB_X20_Y4_N28
\counter_sec[30]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[30]~96_combout\ = (counter_sec(30) & (\counter_sec[29]~95\ $ (GND))) # (!counter_sec(30) & (!\counter_sec[29]~95\ & VCC))
-- \counter_sec[30]~97\ = CARRY((counter_sec(30) & !\counter_sec[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(30),
	datad => VCC,
	cin => \counter_sec[29]~95\,
	combout => \counter_sec[30]~96_combout\,
	cout => \counter_sec[30]~97\);

-- Location: FF_X20_Y4_N29
\counter_sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[30]~96_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(30));

-- Location: LCCOMB_X20_Y4_N30
\counter_sec[31]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[31]~98_combout\ = counter_sec(31) $ (\counter_sec[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(31),
	cin => \counter_sec[30]~97\,
	combout => \counter_sec[31]~98_combout\);

-- Location: FF_X20_Y4_N31
\counter_sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[31]~98_combout\,
	sclr => \counter_sec[3]~100_combout\,
	ena => \counter_sec[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(31));

-- Location: LCCOMB_X21_Y5_N22
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter_sec(13)) # ((counter_sec(12)) # ((counter_sec(14)) # (counter_sec(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(13),
	datab => counter_sec(12),
	datac => counter_sec(14),
	datad => counter_sec(11),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y5_N16
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter_sec(7)) # ((counter_sec(9)) # ((counter_sec(8)) # (counter_sec(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(7),
	datab => counter_sec(9),
	datac => counter_sec(8),
	datad => counter_sec(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y5_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter_sec(2) & (counter_sec(4) & ((counter_sec(0)) # (counter_sec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(2),
	datab => counter_sec(4),
	datac => counter_sec(0),
	datad => counter_sec(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y5_N6
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter_sec(6)) # ((counter_sec(5)) # ((counter_sec(3) & counter_sec(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(3),
	datab => counter_sec(6),
	datac => counter_sec(5),
	datad => counter_sec(4),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y5_N4
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\) # (\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X21_Y4_N4
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter_sec(23)) # ((counter_sec(26)) # ((counter_sec(24)) # (counter_sec(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(23),
	datab => counter_sec(26),
	datac => counter_sec(24),
	datad => counter_sec(25),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y4_N0
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (counter_sec(15)) # ((counter_sec(17)) # ((counter_sec(16)) # (counter_sec(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(15),
	datab => counter_sec(17),
	datac => counter_sec(16),
	datad => counter_sec(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X21_Y4_N10
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter_sec(20)) # ((counter_sec(21)) # ((counter_sec(19)) # (counter_sec(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(20),
	datab => counter_sec(21),
	datac => counter_sec(19),
	datad => counter_sec(22),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y4_N6
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (counter_sec(29)) # ((counter_sec(27)) # ((counter_sec(30)) # (counter_sec(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(29),
	datab => counter_sec(27),
	datac => counter_sec(30),
	datad => counter_sec(28),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X21_Y5_N14
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~7_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y5_N24
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!counter(2) & (!counter(0) & (!counter(1) & \process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(1),
	datad => \process_1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X21_Y5_N10
\Din~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Din~5_combout\ = (\Equal1~5_combout\ & ((counter_sec(31)) # ((!\LessThan0~4_combout\ & !\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(31),
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~9_combout\,
	datad => \Equal1~5_combout\,
	combout => \Din~5_combout\);

-- Location: LCCOMB_X25_Y5_N28
\Din~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Din~3_combout\ = (counter(2)) # (((counter(1) & counter(0))) # (!\process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(2),
	datad => \process_1~4_combout\,
	combout => \Din~3_combout\);

-- Location: LCCOMB_X25_Y5_N12
\process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!counter(2) & ((!counter(0)) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datac => counter(0),
	datad => counter(2),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X25_Y5_N26
\process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (counter(3)) # (((counter(4)) # (\process_1~2_combout\)) # (!\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \Equal1~2_combout\,
	datac => counter(4),
	datad => \process_1~2_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X21_Y5_N18
\Din~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Din~2_combout\ = (\Equal1~5_combout\ & (((\Din~reg0_q\)))) # (!\Equal1~5_combout\ & (\process_1~3_combout\ & ((\Din~reg0_q\) # (!\process_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \Din~reg0_q\,
	datac => \process_1~8_combout\,
	datad => \Equal1~5_combout\,
	combout => \Din~2_combout\);

-- Location: LCCOMB_X21_Y5_N12
\Din~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Din~4_combout\ = (\reset~input_o\) # ((\Din~2_combout\) # ((!\Din~5_combout\ & !\Din~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din~5_combout\,
	datab => \reset~input_o\,
	datac => \Din~3_combout\,
	datad => \Din~2_combout\,
	combout => \Din~4_combout\);

-- Location: FF_X21_Y5_N13
\Din~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \Din~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Din~reg0_q\);

-- Location: LCCOMB_X22_Y5_N28
\CS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~2_combout\ = (\process_1~3_combout\ & ((\CS~reg0_q\) # ((!\Equal1~5_combout\ & \process_1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS~reg0_q\,
	datab => \process_1~3_combout\,
	datac => \Equal1~5_combout\,
	datad => \process_1~7_combout\,
	combout => \CS~2_combout\);

-- Location: LCCOMB_X25_Y5_N16
\CS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~3_combout\ = (\process_1~8_combout\ & ((counter(1) $ (!counter(0))) # (!\Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \Equal1~4_combout\,
	datac => counter(0),
	datad => \process_1~8_combout\,
	combout => \CS~3_combout\);

-- Location: LCCOMB_X21_Y5_N28
\CS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~0_combout\ = (!counter_sec(31) & ((\LessThan0~9_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~4_combout\,
	datad => counter_sec(31),
	combout => \CS~0_combout\);

-- Location: LCCOMB_X21_Y5_N2
\CS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~1_combout\ = (\reset~input_o\) # ((\Equal1~5_combout\ & ((\CS~reg0_q\) # (\CS~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CS~reg0_q\,
	datab => \Equal1~5_combout\,
	datac => \reset~input_o\,
	datad => \CS~0_combout\,
	combout => \CS~1_combout\);

-- Location: LCCOMB_X21_Y5_N26
\CS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~4_combout\ = (\CS~1_combout\) # ((\CS~2_combout\ & \CS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CS~2_combout\,
	datac => \CS~3_combout\,
	datad => \CS~1_combout\,
	combout => \CS~4_combout\);

-- Location: FF_X21_Y5_N27
\CS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \CS~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS~reg0_q\);

-- Location: IOIBUF_X60_Y8_N22
\Dout~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dout,
	o => \Dout~input_o\);

-- Location: LCCOMB_X22_Y4_N18
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = op_bit(0) $ (GND)
-- \Add2~1\ = CARRY(!op_bit(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X22_Y5_N30
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (!\process_1~5_combout\ & (\Equal1~2_combout\ & !\Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datac => \Equal1~2_combout\,
	datad => \Add2~0_combout\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X24_Y5_N26
\rx_buf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf~2_combout\ = (counter(3) & ((counter(2)) # ((counter(1)) # (counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(1),
	datad => counter(0),
	combout => \rx_buf~2_combout\);

-- Location: LCCOMB_X24_Y5_N0
\rx_buf~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf~3_combout\ = (\Equal1~2_combout\ & (!\process_1~5_combout\ & ((\rx_buf~2_combout\) # (counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf~2_combout\,
	datab => counter(4),
	datac => \Equal1~2_combout\,
	datad => \process_1~5_combout\,
	combout => \rx_buf~3_combout\);

-- Location: LCCOMB_X22_Y5_N2
\op_bit[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit[3]~0_combout\ = (\rx_buf~3_combout\) # ((\process_1~8_combout\ & \process_1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datac => \rx_buf~3_combout\,
	datad => \process_1~7_combout\,
	combout => \op_bit[3]~0_combout\);

-- Location: LCCOMB_X22_Y5_N4
\op_bit[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_bit[3]~1_combout\ = (!\reset~input_o\ & (!\process_1~4_combout\ & \op_bit[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \process_1~4_combout\,
	datad => \op_bit[3]~0_combout\,
	combout => \op_bit[3]~1_combout\);

-- Location: FF_X22_Y5_N31
\op_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \op_bit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(0));

-- Location: LCCOMB_X22_Y4_N20
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (op_bit(1) & (\Add2~1\ & VCC)) # (!op_bit(1) & (!\Add2~1\))
-- \Add2~4\ = CARRY((!op_bit(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X22_Y5_N22
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (!\process_1~5_combout\ & (\Add2~3_combout\ & \Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datab => \Add2~3_combout\,
	datac => \Equal1~2_combout\,
	combout => \Add2~10_combout\);

-- Location: FF_X22_Y5_N23
\op_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \Add2~10_combout\,
	ena => \op_bit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(1));

-- Location: LCCOMB_X22_Y4_N22
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (op_bit(2) & ((GND) # (!\Add2~4\))) # (!op_bit(2) & (\Add2~4\ $ (GND)))
-- \Add2~6\ = CARRY((op_bit(2)) # (!\Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => op_bit(2),
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~5_combout\,
	cout => \Add2~6\);

-- Location: LCCOMB_X22_Y5_N16
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (!\process_1~5_combout\ & (\Equal1~2_combout\ & \Add2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datac => \Equal1~2_combout\,
	datad => \Add2~5_combout\,
	combout => \Add2~11_combout\);

-- Location: FF_X22_Y5_N17
\op_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \Add2~11_combout\,
	ena => \op_bit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(2));

-- Location: LCCOMB_X22_Y4_N14
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!op_bit(2) & !op_bit(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => op_bit(2),
	datac => op_bit(1),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y4_N24
\Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = \Add2~6\ $ (op_bit(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => op_bit(3),
	cin => \Add2~6\,
	combout => \Add2~7_combout\);

-- Location: LCCOMB_X22_Y5_N12
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (!\process_1~5_combout\ & (\Equal1~2_combout\ & !\Add2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datac => \Equal1~2_combout\,
	datad => \Add2~7_combout\,
	combout => \Add2~9_combout\);

-- Location: FF_X22_Y5_N13
\op_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \Add2~9_combout\,
	ena => \op_bit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op_bit(3));

-- Location: LCCOMB_X22_Y5_N14
\rx_buf[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[0]~15_combout\ = (!\reset~input_o\ & ((counter(3)) # ((counter(4)) # (!\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \reset~input_o\,
	datac => \Equal1~2_combout\,
	datad => counter(4),
	combout => \rx_buf[0]~15_combout\);

-- Location: LCCOMB_X22_Y5_N18
\rx_buf[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[0]~4_combout\ = (!counter(2) & (!counter(0) & (\process_1~8_combout\ & \process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => \process_1~8_combout\,
	datad => \process_1~7_combout\,
	combout => \rx_buf[0]~4_combout\);

-- Location: LCCOMB_X22_Y5_N24
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (op_bit(3) & (\rx_buf[0]~15_combout\ & ((\rx_buf~3_combout\) # (\rx_buf[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(3),
	datab => \rx_buf~3_combout\,
	datac => \rx_buf[0]~15_combout\,
	datad => \rx_buf[0]~4_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X22_Y4_N16
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (op_bit(0) & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => op_bit(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X22_Y4_N4
\rx_buf[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[0]~5_combout\ = (\Decoder0~2_combout\ & ((\Decoder0~1_combout\ & (\Dout~input_o\)) # (!\Decoder0~1_combout\ & ((rx_buf(0)))))) # (!\Decoder0~2_combout\ & (((rx_buf(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => \Decoder0~2_combout\,
	datac => rx_buf(0),
	datad => \Decoder0~1_combout\,
	combout => \rx_buf[0]~5_combout\);

-- Location: FF_X22_Y4_N5
\rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(0));

-- Location: LCCOMB_X22_Y5_N6
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!op_bit(0) & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => op_bit(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y5_N0
\rx_buf[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[1]~6_combout\ = (\Decoder0~2_combout\ & ((\Decoder0~3_combout\ & (\Dout~input_o\)) # (!\Decoder0~3_combout\ & ((rx_buf(1)))))) # (!\Decoder0~2_combout\ & (((rx_buf(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => \Decoder0~2_combout\,
	datac => rx_buf(1),
	datad => \Decoder0~3_combout\,
	combout => \rx_buf[1]~6_combout\);

-- Location: FF_X22_Y5_N1
\rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(1));

-- Location: LCCOMB_X22_Y4_N12
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (op_bit(1) & (op_bit(0) & \Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(1),
	datac => op_bit(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y4_N26
\rx_buf[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[2]~7_combout\ = (op_bit(2) & (((rx_buf(2))))) # (!op_bit(2) & ((\Decoder0~4_combout\ & (\Dout~input_o\)) # (!\Decoder0~4_combout\ & ((rx_buf(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => op_bit(2),
	datac => rx_buf(2),
	datad => \Decoder0~4_combout\,
	combout => \rx_buf[2]~7_combout\);

-- Location: FF_X22_Y4_N27
\rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(2));

-- Location: LCCOMB_X22_Y4_N6
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (op_bit(1) & (!op_bit(0) & \Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op_bit(1),
	datac => op_bit(0),
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X22_Y4_N28
\rx_buf[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[3]~8_combout\ = (op_bit(2) & (((rx_buf(3))))) # (!op_bit(2) & ((\Decoder0~5_combout\ & (\Dout~input_o\)) # (!\Decoder0~5_combout\ & ((rx_buf(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => op_bit(2),
	datac => rx_buf(3),
	datad => \Decoder0~5_combout\,
	combout => \rx_buf[3]~8_combout\);

-- Location: FF_X22_Y4_N29
\rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(3));

-- Location: LCCOMB_X22_Y4_N0
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (op_bit(2) & !op_bit(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => op_bit(2),
	datac => op_bit(1),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X22_Y4_N2
\rx_buf[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[4]~9_combout\ = (\Decoder0~6_combout\ & ((\Decoder0~1_combout\ & (\Dout~input_o\)) # (!\Decoder0~1_combout\ & ((rx_buf(4)))))) # (!\Decoder0~6_combout\ & (((rx_buf(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => \Decoder0~6_combout\,
	datac => rx_buf(4),
	datad => \Decoder0~1_combout\,
	combout => \rx_buf[4]~9_combout\);

-- Location: FF_X22_Y4_N3
\rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(4));

-- Location: LCCOMB_X22_Y5_N26
\rx_buf[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[5]~10_combout\ = (\Decoder0~6_combout\ & ((\Decoder0~3_combout\ & (\Dout~input_o\)) # (!\Decoder0~3_combout\ & ((rx_buf(5)))))) # (!\Decoder0~6_combout\ & (((rx_buf(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => \Decoder0~6_combout\,
	datac => rx_buf(5),
	datad => \Decoder0~3_combout\,
	combout => \rx_buf[5]~10_combout\);

-- Location: FF_X22_Y5_N27
\rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(5));

-- Location: LCCOMB_X22_Y4_N8
\rx_buf[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[6]~11_combout\ = (op_bit(2) & ((\Decoder0~4_combout\ & (\Dout~input_o\)) # (!\Decoder0~4_combout\ & ((rx_buf(6)))))) # (!op_bit(2) & (((rx_buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => op_bit(2),
	datac => rx_buf(6),
	datad => \Decoder0~4_combout\,
	combout => \rx_buf[6]~11_combout\);

-- Location: FF_X22_Y4_N9
\rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(6));

-- Location: LCCOMB_X22_Y4_N30
\rx_buf[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[7]~12_combout\ = (op_bit(2) & ((\Decoder0~5_combout\ & (\Dout~input_o\)) # (!\Decoder0~5_combout\ & ((rx_buf(7)))))) # (!op_bit(2) & (((rx_buf(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => op_bit(2),
	datac => rx_buf(7),
	datad => \Decoder0~5_combout\,
	combout => \rx_buf[7]~12_combout\);

-- Location: FF_X22_Y4_N31
\rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(7));

-- Location: LCCOMB_X22_Y4_N10
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!op_bit(2) & (!op_bit(1) & !op_bit(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => op_bit(2),
	datac => op_bit(1),
	datad => op_bit(3),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X22_Y5_N20
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\rx_buf[0]~15_combout\ & (\Decoder0~7_combout\ & ((\rx_buf~3_combout\) # (\rx_buf[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buf[0]~15_combout\,
	datab => \Decoder0~7_combout\,
	datac => \rx_buf~3_combout\,
	datad => \rx_buf[0]~4_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y5_N8
\rx_buf[8]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[8]~13_combout\ = (op_bit(0) & ((\Decoder0~8_combout\ & (\Dout~input_o\)) # (!\Decoder0~8_combout\ & ((rx_buf(8)))))) # (!op_bit(0) & (((rx_buf(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => op_bit(0),
	datac => rx_buf(8),
	datad => \Decoder0~8_combout\,
	combout => \rx_buf[8]~13_combout\);

-- Location: FF_X22_Y5_N9
\rx_buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[8]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(8));

-- Location: LCCOMB_X22_Y5_N10
\rx_buf[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_buf[9]~14_combout\ = (op_bit(0) & (((rx_buf(9))))) # (!op_bit(0) & ((\Decoder0~8_combout\ & (\Dout~input_o\)) # (!\Decoder0~8_combout\ & ((rx_buf(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dout~input_o\,
	datab => op_bit(0),
	datac => rx_buf(9),
	datad => \Decoder0~8_combout\,
	combout => \rx_buf[9]~14_combout\);

-- Location: FF_X22_Y5_N11
\rx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \rx_buf[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(9));

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Din <= \Din~output_o\;

ww_CS <= \CS~output_o\;

ww_Sclk <= \Sclk~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;
END structure;


