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

-- DATE "03/16/2024 13:16:16"

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

ENTITY 	DAC IS
    PORT (
	clk_50MHz : IN std_logic;
	SCK : OUT std_logic;
	CS : OUT std_logic;
	reset : IN std_logic;
	SDI : OUT std_logic;
	LDAC : OUT std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END DAC;

-- Design Ports Information
-- SCK	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDI	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDAC	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DAC IS
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
SIGNAL ww_SCK : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SDI : std_logic;
SIGNAL ww_LDAC : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SCK~output_o\ : std_logic;
SIGNAL \CS~output_o\ : std_logic;
SIGNAL \SDI~output_o\ : std_logic;
SIGNAL \LDAC~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_int~0_combout\ : std_logic;
SIGNAL \clk_int~q\ : std_logic;
SIGNAL \clk_int~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~33_combout\ : std_logic;
SIGNAL \counter_sec[0]~33_combout\ : std_logic;
SIGNAL \counter[23]~83\ : std_logic;
SIGNAL \counter[24]~84_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \counter[21]~45_combout\ : std_logic;
SIGNAL \counter[24]~85\ : std_logic;
SIGNAL \counter[25]~86_combout\ : std_logic;
SIGNAL \counter[25]~87\ : std_logic;
SIGNAL \counter[26]~88_combout\ : std_logic;
SIGNAL \counter[26]~89\ : std_logic;
SIGNAL \counter[27]~90_combout\ : std_logic;
SIGNAL \counter[27]~91\ : std_logic;
SIGNAL \counter[28]~92_combout\ : std_logic;
SIGNAL \counter[28]~93\ : std_logic;
SIGNAL \counter[29]~94_combout\ : std_logic;
SIGNAL \counter[29]~95\ : std_logic;
SIGNAL \counter[30]~96_combout\ : std_logic;
SIGNAL \counter[30]~97\ : std_logic;
SIGNAL \counter[31]~98_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \counter_sec[31]~32_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \opbit~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \dataproc~0_combout\ : std_logic;
SIGNAL \counter_sec[31]~97_combout\ : std_logic;
SIGNAL \counter_sec[0]~34\ : std_logic;
SIGNAL \counter_sec[1]~35_combout\ : std_logic;
SIGNAL \counter_sec[1]~36\ : std_logic;
SIGNAL \counter_sec[2]~37_combout\ : std_logic;
SIGNAL \counter_sec[2]~38\ : std_logic;
SIGNAL \counter_sec[3]~39_combout\ : std_logic;
SIGNAL \counter_sec[3]~40\ : std_logic;
SIGNAL \counter_sec[4]~41_combout\ : std_logic;
SIGNAL \counter_sec[4]~42\ : std_logic;
SIGNAL \counter_sec[5]~43_combout\ : std_logic;
SIGNAL \counter_sec[5]~44\ : std_logic;
SIGNAL \counter_sec[6]~45_combout\ : std_logic;
SIGNAL \counter_sec[6]~46\ : std_logic;
SIGNAL \counter_sec[7]~47_combout\ : std_logic;
SIGNAL \counter_sec[7]~48\ : std_logic;
SIGNAL \counter_sec[8]~49_combout\ : std_logic;
SIGNAL \counter_sec[8]~50\ : std_logic;
SIGNAL \counter_sec[9]~51_combout\ : std_logic;
SIGNAL \counter_sec[9]~52\ : std_logic;
SIGNAL \counter_sec[10]~53_combout\ : std_logic;
SIGNAL \counter_sec[10]~54\ : std_logic;
SIGNAL \counter_sec[11]~55_combout\ : std_logic;
SIGNAL \counter_sec[11]~56\ : std_logic;
SIGNAL \counter_sec[12]~57_combout\ : std_logic;
SIGNAL \counter_sec[12]~58\ : std_logic;
SIGNAL \counter_sec[13]~59_combout\ : std_logic;
SIGNAL \counter_sec[13]~60\ : std_logic;
SIGNAL \counter_sec[14]~61_combout\ : std_logic;
SIGNAL \counter_sec[14]~62\ : std_logic;
SIGNAL \counter_sec[15]~63_combout\ : std_logic;
SIGNAL \counter_sec[15]~64\ : std_logic;
SIGNAL \counter_sec[16]~65_combout\ : std_logic;
SIGNAL \counter_sec[16]~66\ : std_logic;
SIGNAL \counter_sec[17]~67_combout\ : std_logic;
SIGNAL \counter_sec[17]~68\ : std_logic;
SIGNAL \counter_sec[18]~69_combout\ : std_logic;
SIGNAL \counter_sec[18]~70\ : std_logic;
SIGNAL \counter_sec[19]~71_combout\ : std_logic;
SIGNAL \counter_sec[19]~72\ : std_logic;
SIGNAL \counter_sec[20]~73_combout\ : std_logic;
SIGNAL \counter_sec[20]~74\ : std_logic;
SIGNAL \counter_sec[21]~75_combout\ : std_logic;
SIGNAL \counter_sec[21]~76\ : std_logic;
SIGNAL \counter_sec[22]~77_combout\ : std_logic;
SIGNAL \counter_sec[22]~78\ : std_logic;
SIGNAL \counter_sec[23]~79_combout\ : std_logic;
SIGNAL \counter_sec[23]~80\ : std_logic;
SIGNAL \counter_sec[24]~81_combout\ : std_logic;
SIGNAL \counter_sec[24]~82\ : std_logic;
SIGNAL \counter_sec[25]~83_combout\ : std_logic;
SIGNAL \counter_sec[25]~84\ : std_logic;
SIGNAL \counter_sec[26]~85_combout\ : std_logic;
SIGNAL \counter_sec[26]~86\ : std_logic;
SIGNAL \counter_sec[27]~87_combout\ : std_logic;
SIGNAL \counter_sec[27]~88\ : std_logic;
SIGNAL \counter_sec[28]~89_combout\ : std_logic;
SIGNAL \counter_sec[28]~90\ : std_logic;
SIGNAL \counter_sec[29]~91_combout\ : std_logic;
SIGNAL \counter_sec[29]~92\ : std_logic;
SIGNAL \counter_sec[30]~93_combout\ : std_logic;
SIGNAL \counter_sec[30]~94\ : std_logic;
SIGNAL \counter_sec[31]~95_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \counter~43_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \SDI~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \opbit[30]~5_combout\ : std_logic;
SIGNAL \counter~32_combout\ : std_logic;
SIGNAL \counter~44_combout\ : std_logic;
SIGNAL \counter[0]~34\ : std_logic;
SIGNAL \counter[1]~35_combout\ : std_logic;
SIGNAL \counter[1]~36\ : std_logic;
SIGNAL \counter[2]~37_combout\ : std_logic;
SIGNAL \counter[2]~38\ : std_logic;
SIGNAL \counter[3]~39_combout\ : std_logic;
SIGNAL \counter[3]~40\ : std_logic;
SIGNAL \counter[4]~41_combout\ : std_logic;
SIGNAL \counter[4]~42\ : std_logic;
SIGNAL \counter[5]~46_combout\ : std_logic;
SIGNAL \counter[5]~47\ : std_logic;
SIGNAL \counter[6]~48_combout\ : std_logic;
SIGNAL \counter[6]~49\ : std_logic;
SIGNAL \counter[7]~50_combout\ : std_logic;
SIGNAL \counter[7]~51\ : std_logic;
SIGNAL \counter[8]~52_combout\ : std_logic;
SIGNAL \counter[8]~53\ : std_logic;
SIGNAL \counter[9]~54_combout\ : std_logic;
SIGNAL \counter[9]~55\ : std_logic;
SIGNAL \counter[10]~56_combout\ : std_logic;
SIGNAL \counter[10]~57\ : std_logic;
SIGNAL \counter[11]~58_combout\ : std_logic;
SIGNAL \counter[11]~59\ : std_logic;
SIGNAL \counter[12]~60_combout\ : std_logic;
SIGNAL \counter[12]~61\ : std_logic;
SIGNAL \counter[13]~62_combout\ : std_logic;
SIGNAL \counter[13]~63\ : std_logic;
SIGNAL \counter[14]~64_combout\ : std_logic;
SIGNAL \counter[14]~65\ : std_logic;
SIGNAL \counter[15]~66_combout\ : std_logic;
SIGNAL \counter[15]~67\ : std_logic;
SIGNAL \counter[16]~68_combout\ : std_logic;
SIGNAL \counter[16]~69\ : std_logic;
SIGNAL \counter[17]~70_combout\ : std_logic;
SIGNAL \counter[17]~71\ : std_logic;
SIGNAL \counter[18]~72_combout\ : std_logic;
SIGNAL \counter[18]~73\ : std_logic;
SIGNAL \counter[19]~74_combout\ : std_logic;
SIGNAL \counter[19]~75\ : std_logic;
SIGNAL \counter[20]~76_combout\ : std_logic;
SIGNAL \counter[20]~77\ : std_logic;
SIGNAL \counter[21]~78_combout\ : std_logic;
SIGNAL \counter[21]~79\ : std_logic;
SIGNAL \counter[22]~80_combout\ : std_logic;
SIGNAL \counter[22]~81\ : std_logic;
SIGNAL \counter[23]~82_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \SDI~1_combout\ : std_logic;
SIGNAL \CS~0_combout\ : std_logic;
SIGNAL \CS~1_combout\ : std_logic;
SIGNAL \CS~reg0_q\ : std_logic;
SIGNAL \opbit[0]~6_combout\ : std_logic;
SIGNAL \opbit~12_combout\ : std_logic;
SIGNAL \opbit[1]~13_combout\ : std_logic;
SIGNAL \opbit[0]~7\ : std_logic;
SIGNAL \opbit[1]~8_combout\ : std_logic;
SIGNAL \opbit[1]~9\ : std_logic;
SIGNAL \opbit[2]~10_combout\ : std_logic;
SIGNAL \opbit[2]~11\ : std_logic;
SIGNAL \opbit[3]~14_combout\ : std_logic;
SIGNAL \SDI~3_combout\ : std_logic;
SIGNAL \SDI~2_combout\ : std_logic;
SIGNAL \SDI~4_combout\ : std_logic;
SIGNAL \SDI~5_combout\ : std_logic;
SIGNAL \SDI~reg0_q\ : std_logic;
SIGNAL \LDAC~0_combout\ : std_logic;
SIGNAL \LDAC~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL opbit : std_logic_vector(31 DOWNTO 0);
SIGNAL counter_sec : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk_int~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
SCK <= ww_SCK;
CS <= ww_CS;
ww_reset <= reset;
SDI <= ww_SDI;
LDAC <= ww_LDAC;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_int~q\);
\ALT_INV_clk_int~q\ <= NOT \clk_int~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X40_Y0_N30
\SCK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clk_int~q\,
	devoe => ww_devoe,
	o => \SCK~output_o\);

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X36_Y0_N9
\SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDI~reg0_q\,
	devoe => ww_devoe,
	o => \SDI~output_o\);

-- Location: IOOBUF_X38_Y36_N16
\LDAC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LDAC~reg0_q\,
	devoe => ww_devoe,
	o => \LDAC~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\LED[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

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

-- Location: LCCOMB_X2_Y9_N0
\clk_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_int~0_combout\ = !\clk_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_int~q\,
	combout => \clk_int~0_combout\);

-- Location: FF_X1_Y10_N5
clk_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~input_o\,
	asdata => \clk_int~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_int~q\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X30_Y16_N0
\counter[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~33_combout\ = counter(0) $ (VCC)
-- \counter[0]~34\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~33_combout\,
	cout => \counter[0]~34\);

-- Location: LCCOMB_X32_Y19_N0
\counter_sec[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[0]~33_combout\ = counter_sec(0) $ (VCC)
-- \counter_sec[0]~34\ = CARRY(counter_sec(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(0),
	datad => VCC,
	combout => \counter_sec[0]~33_combout\,
	cout => \counter_sec[0]~34\);

-- Location: LCCOMB_X30_Y15_N14
\counter[23]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[23]~82_combout\ = (counter(23) & (!\counter[22]~81\)) # (!counter(23) & ((\counter[22]~81\) # (GND)))
-- \counter[23]~83\ = CARRY((!\counter[22]~81\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~81\,
	combout => \counter[23]~82_combout\,
	cout => \counter[23]~83\);

-- Location: LCCOMB_X30_Y15_N16
\counter[24]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[24]~84_combout\ = (counter(24) & (\counter[23]~83\ $ (GND))) # (!counter(24) & (!\counter[23]~83\ & VCC))
-- \counter[24]~85\ = CARRY((counter(24) & !\counter[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~83\,
	combout => \counter[24]~84_combout\,
	cout => \counter[24]~85\);

-- Location: LCCOMB_X33_Y15_N0
\Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (counter(3) & (!counter(1) & (counter(4) & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(4),
	datad => counter(0),
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X32_Y15_N14
\Equal8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (counter(5) & (\Equal8~0_combout\ & (\Equal8~1_combout\ & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \Equal8~0_combout\,
	datac => \Equal8~1_combout\,
	datad => counter(6),
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X31_Y15_N24
\Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (counter(0) & (counter(4) & (\Equal0~10_combout\ & counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => \Equal0~10_combout\,
	datad => counter(1),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X31_Y15_N26
\counter[21]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~45_combout\ = (\Equal8~2_combout\) # ((\Equal7~0_combout\) # ((!\counter~44_combout\) # (!\Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~2_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal0~13_combout\,
	datad => \counter~44_combout\,
	combout => \counter[21]~45_combout\);

-- Location: FF_X30_Y15_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[24]~84_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X30_Y15_N18
\counter[25]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[25]~86_combout\ = (counter(25) & (!\counter[24]~85\)) # (!counter(25) & ((\counter[24]~85\) # (GND)))
-- \counter[25]~87\ = CARRY((!\counter[24]~85\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~85\,
	combout => \counter[25]~86_combout\,
	cout => \counter[25]~87\);

-- Location: FF_X30_Y15_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[25]~86_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X30_Y15_N20
\counter[26]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[26]~88_combout\ = (counter(26) & (\counter[25]~87\ $ (GND))) # (!counter(26) & (!\counter[25]~87\ & VCC))
-- \counter[26]~89\ = CARRY((counter(26) & !\counter[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~87\,
	combout => \counter[26]~88_combout\,
	cout => \counter[26]~89\);

-- Location: FF_X30_Y15_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[26]~88_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X30_Y15_N22
\counter[27]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[27]~90_combout\ = (counter(27) & (!\counter[26]~89\)) # (!counter(27) & ((\counter[26]~89\) # (GND)))
-- \counter[27]~91\ = CARRY((!\counter[26]~89\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~89\,
	combout => \counter[27]~90_combout\,
	cout => \counter[27]~91\);

-- Location: FF_X30_Y15_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[27]~90_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X30_Y15_N24
\counter[28]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[28]~92_combout\ = (counter(28) & (\counter[27]~91\ $ (GND))) # (!counter(28) & (!\counter[27]~91\ & VCC))
-- \counter[28]~93\ = CARRY((counter(28) & !\counter[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~91\,
	combout => \counter[28]~92_combout\,
	cout => \counter[28]~93\);

-- Location: FF_X30_Y15_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[28]~92_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X30_Y15_N26
\counter[29]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[29]~94_combout\ = (counter(29) & (!\counter[28]~93\)) # (!counter(29) & ((\counter[28]~93\) # (GND)))
-- \counter[29]~95\ = CARRY((!\counter[28]~93\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~93\,
	combout => \counter[29]~94_combout\,
	cout => \counter[29]~95\);

-- Location: FF_X30_Y15_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[29]~94_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X30_Y15_N28
\counter[30]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[30]~96_combout\ = (counter(30) & (\counter[29]~95\ $ (GND))) # (!counter(30) & (!\counter[29]~95\ & VCC))
-- \counter[30]~97\ = CARRY((counter(30) & !\counter[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~95\,
	combout => \counter[30]~96_combout\,
	cout => \counter[30]~97\);

-- Location: FF_X30_Y15_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[30]~96_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X30_Y15_N30
\counter[31]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[31]~98_combout\ = counter(31) $ (\counter[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~97\,
	combout => \counter[31]~98_combout\);

-- Location: FF_X30_Y15_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[31]~98_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X32_Y15_N2
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter(29) & (!counter(28) & (!counter(30) & !counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => counter(28),
	datac => counter(30),
	datad => counter(27),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X32_Y15_N4
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!counter(31) & \Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(31),
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X31_Y15_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(16) & (!counter(15) & (!counter(18) & !counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(15),
	datac => counter(18),
	datad => counter(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X31_Y15_N2
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!counter(13) & (!counter(14) & (!counter(12) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(14),
	datac => counter(12),
	datad => counter(11),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X31_Y15_N8
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!counter(22) & (!counter(19) & (!counter(20) & !counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(19),
	datac => counter(20),
	datad => counter(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y15_N0
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(10) & (!counter(9) & (!counter(8) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datac => counter(8),
	datad => counter(7),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y15_N14
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~6_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X32_Y15_N18
\Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Equal0~2_combout\ & (!counter(2) & (\Equal0~9_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => counter(2),
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X32_Y15_N12
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!counter(5) & (!counter(6) & (!counter(3) & \Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(6),
	datac => counter(3),
	datad => \Equal8~0_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X32_Y15_N26
\Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (counter(0)) # ((counter(4)) # ((counter(1)) # (!\Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => \Equal0~10_combout\,
	combout => \Equal0~13_combout\);

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

-- Location: LCCOMB_X31_Y15_N18
\Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!counter(0) & !counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => counter(1),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X32_Y15_N30
\counter_sec[31]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[31]~32_combout\ = (!\reset~input_o\ & ((counter(4)) # ((!\Equal0~10_combout\) # (!\Equal0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter(4),
	datac => \Equal0~12_combout\,
	datad => \Equal0~10_combout\,
	combout => \counter_sec[31]~32_combout\);

-- Location: LCCOMB_X31_Y15_N4
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (counter(4) & ((counter(3)) # ((counter(2)) # (!\Equal0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(4),
	datac => counter(2),
	datad => \Equal0~12_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y15_N22
\opbit~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit~4_combout\ = (!counter(6) & (!\LessThan2~0_combout\ & (!counter(5) & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \LessThan2~0_combout\,
	datac => counter(5),
	datad => \Equal0~11_combout\,
	combout => \opbit~4_combout\);

-- Location: LCCOMB_X31_Y15_N28
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!counter(0) & !counter(1))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datad => counter(1),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y15_N20
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!counter(6) & (!counter(4) & (!counter(5) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(4),
	datac => counter(5),
	datad => counter(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y15_N6
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\Equal0~2_combout\ & (\LessThan1~1_combout\ & (\Equal0~7_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \LessThan1~1_combout\,
	datac => \Equal0~7_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y15_N10
\dataproc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dataproc~0_combout\ = (\LessThan1~2_combout\) # (!\opbit~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opbit~4_combout\,
	datad => \LessThan1~2_combout\,
	combout => \dataproc~0_combout\);

-- Location: LCCOMB_X32_Y15_N20
\counter_sec[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[31]~97_combout\ = (\counter~43_combout\) # ((\counter_sec[31]~32_combout\ & (\dataproc~0_combout\ & \Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_sec[31]~32_combout\,
	datab => \dataproc~0_combout\,
	datac => \Equal8~2_combout\,
	datad => \counter~43_combout\,
	combout => \counter_sec[31]~97_combout\);

-- Location: FF_X32_Y19_N1
\counter_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[0]~33_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(0));

-- Location: LCCOMB_X32_Y19_N2
\counter_sec[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[1]~35_combout\ = (counter_sec(1) & (!\counter_sec[0]~34\)) # (!counter_sec(1) & ((\counter_sec[0]~34\) # (GND)))
-- \counter_sec[1]~36\ = CARRY((!\counter_sec[0]~34\) # (!counter_sec(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(1),
	datad => VCC,
	cin => \counter_sec[0]~34\,
	combout => \counter_sec[1]~35_combout\,
	cout => \counter_sec[1]~36\);

-- Location: FF_X32_Y19_N3
\counter_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[1]~35_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(1));

-- Location: LCCOMB_X32_Y19_N4
\counter_sec[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[2]~37_combout\ = (counter_sec(2) & (\counter_sec[1]~36\ $ (GND))) # (!counter_sec(2) & (!\counter_sec[1]~36\ & VCC))
-- \counter_sec[2]~38\ = CARRY((counter_sec(2) & !\counter_sec[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(2),
	datad => VCC,
	cin => \counter_sec[1]~36\,
	combout => \counter_sec[2]~37_combout\,
	cout => \counter_sec[2]~38\);

-- Location: FF_X32_Y19_N5
\counter_sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[2]~37_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(2));

-- Location: LCCOMB_X32_Y19_N6
\counter_sec[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[3]~39_combout\ = (counter_sec(3) & (!\counter_sec[2]~38\)) # (!counter_sec(3) & ((\counter_sec[2]~38\) # (GND)))
-- \counter_sec[3]~40\ = CARRY((!\counter_sec[2]~38\) # (!counter_sec(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(3),
	datad => VCC,
	cin => \counter_sec[2]~38\,
	combout => \counter_sec[3]~39_combout\,
	cout => \counter_sec[3]~40\);

-- Location: FF_X32_Y19_N7
\counter_sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[3]~39_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(3));

-- Location: LCCOMB_X32_Y19_N8
\counter_sec[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[4]~41_combout\ = (counter_sec(4) & (\counter_sec[3]~40\ $ (GND))) # (!counter_sec(4) & (!\counter_sec[3]~40\ & VCC))
-- \counter_sec[4]~42\ = CARRY((counter_sec(4) & !\counter_sec[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(4),
	datad => VCC,
	cin => \counter_sec[3]~40\,
	combout => \counter_sec[4]~41_combout\,
	cout => \counter_sec[4]~42\);

-- Location: FF_X32_Y19_N9
\counter_sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[4]~41_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(4));

-- Location: LCCOMB_X32_Y19_N10
\counter_sec[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[5]~43_combout\ = (counter_sec(5) & (!\counter_sec[4]~42\)) # (!counter_sec(5) & ((\counter_sec[4]~42\) # (GND)))
-- \counter_sec[5]~44\ = CARRY((!\counter_sec[4]~42\) # (!counter_sec(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(5),
	datad => VCC,
	cin => \counter_sec[4]~42\,
	combout => \counter_sec[5]~43_combout\,
	cout => \counter_sec[5]~44\);

-- Location: FF_X32_Y19_N11
\counter_sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[5]~43_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(5));

-- Location: LCCOMB_X32_Y19_N12
\counter_sec[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[6]~45_combout\ = (counter_sec(6) & (\counter_sec[5]~44\ $ (GND))) # (!counter_sec(6) & (!\counter_sec[5]~44\ & VCC))
-- \counter_sec[6]~46\ = CARRY((counter_sec(6) & !\counter_sec[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(6),
	datad => VCC,
	cin => \counter_sec[5]~44\,
	combout => \counter_sec[6]~45_combout\,
	cout => \counter_sec[6]~46\);

-- Location: FF_X32_Y19_N13
\counter_sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[6]~45_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(6));

-- Location: LCCOMB_X32_Y19_N14
\counter_sec[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[7]~47_combout\ = (counter_sec(7) & (!\counter_sec[6]~46\)) # (!counter_sec(7) & ((\counter_sec[6]~46\) # (GND)))
-- \counter_sec[7]~48\ = CARRY((!\counter_sec[6]~46\) # (!counter_sec(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(7),
	datad => VCC,
	cin => \counter_sec[6]~46\,
	combout => \counter_sec[7]~47_combout\,
	cout => \counter_sec[7]~48\);

-- Location: FF_X32_Y19_N15
\counter_sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[7]~47_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(7));

-- Location: LCCOMB_X32_Y19_N16
\counter_sec[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[8]~49_combout\ = (counter_sec(8) & (\counter_sec[7]~48\ $ (GND))) # (!counter_sec(8) & (!\counter_sec[7]~48\ & VCC))
-- \counter_sec[8]~50\ = CARRY((counter_sec(8) & !\counter_sec[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(8),
	datad => VCC,
	cin => \counter_sec[7]~48\,
	combout => \counter_sec[8]~49_combout\,
	cout => \counter_sec[8]~50\);

-- Location: FF_X32_Y19_N17
\counter_sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[8]~49_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(8));

-- Location: LCCOMB_X32_Y19_N18
\counter_sec[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[9]~51_combout\ = (counter_sec(9) & (!\counter_sec[8]~50\)) # (!counter_sec(9) & ((\counter_sec[8]~50\) # (GND)))
-- \counter_sec[9]~52\ = CARRY((!\counter_sec[8]~50\) # (!counter_sec(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(9),
	datad => VCC,
	cin => \counter_sec[8]~50\,
	combout => \counter_sec[9]~51_combout\,
	cout => \counter_sec[9]~52\);

-- Location: FF_X32_Y19_N19
\counter_sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[9]~51_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(9));

-- Location: LCCOMB_X32_Y19_N20
\counter_sec[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[10]~53_combout\ = (counter_sec(10) & (\counter_sec[9]~52\ $ (GND))) # (!counter_sec(10) & (!\counter_sec[9]~52\ & VCC))
-- \counter_sec[10]~54\ = CARRY((counter_sec(10) & !\counter_sec[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(10),
	datad => VCC,
	cin => \counter_sec[9]~52\,
	combout => \counter_sec[10]~53_combout\,
	cout => \counter_sec[10]~54\);

-- Location: FF_X32_Y19_N21
\counter_sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[10]~53_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(10));

-- Location: LCCOMB_X32_Y19_N22
\counter_sec[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[11]~55_combout\ = (counter_sec(11) & (!\counter_sec[10]~54\)) # (!counter_sec(11) & ((\counter_sec[10]~54\) # (GND)))
-- \counter_sec[11]~56\ = CARRY((!\counter_sec[10]~54\) # (!counter_sec(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(11),
	datad => VCC,
	cin => \counter_sec[10]~54\,
	combout => \counter_sec[11]~55_combout\,
	cout => \counter_sec[11]~56\);

-- Location: FF_X32_Y19_N23
\counter_sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[11]~55_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(11));

-- Location: LCCOMB_X32_Y19_N24
\counter_sec[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[12]~57_combout\ = (counter_sec(12) & (\counter_sec[11]~56\ $ (GND))) # (!counter_sec(12) & (!\counter_sec[11]~56\ & VCC))
-- \counter_sec[12]~58\ = CARRY((counter_sec(12) & !\counter_sec[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(12),
	datad => VCC,
	cin => \counter_sec[11]~56\,
	combout => \counter_sec[12]~57_combout\,
	cout => \counter_sec[12]~58\);

-- Location: FF_X32_Y19_N25
\counter_sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[12]~57_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(12));

-- Location: LCCOMB_X32_Y19_N26
\counter_sec[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[13]~59_combout\ = (counter_sec(13) & (!\counter_sec[12]~58\)) # (!counter_sec(13) & ((\counter_sec[12]~58\) # (GND)))
-- \counter_sec[13]~60\ = CARRY((!\counter_sec[12]~58\) # (!counter_sec(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(13),
	datad => VCC,
	cin => \counter_sec[12]~58\,
	combout => \counter_sec[13]~59_combout\,
	cout => \counter_sec[13]~60\);

-- Location: FF_X32_Y19_N27
\counter_sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[13]~59_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(13));

-- Location: LCCOMB_X32_Y19_N28
\counter_sec[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[14]~61_combout\ = (counter_sec(14) & (\counter_sec[13]~60\ $ (GND))) # (!counter_sec(14) & (!\counter_sec[13]~60\ & VCC))
-- \counter_sec[14]~62\ = CARRY((counter_sec(14) & !\counter_sec[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(14),
	datad => VCC,
	cin => \counter_sec[13]~60\,
	combout => \counter_sec[14]~61_combout\,
	cout => \counter_sec[14]~62\);

-- Location: FF_X32_Y19_N29
\counter_sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[14]~61_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(14));

-- Location: LCCOMB_X32_Y19_N30
\counter_sec[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[15]~63_combout\ = (counter_sec(15) & (!\counter_sec[14]~62\)) # (!counter_sec(15) & ((\counter_sec[14]~62\) # (GND)))
-- \counter_sec[15]~64\ = CARRY((!\counter_sec[14]~62\) # (!counter_sec(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(15),
	datad => VCC,
	cin => \counter_sec[14]~62\,
	combout => \counter_sec[15]~63_combout\,
	cout => \counter_sec[15]~64\);

-- Location: FF_X32_Y19_N31
\counter_sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[15]~63_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(15));

-- Location: LCCOMB_X32_Y18_N0
\counter_sec[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[16]~65_combout\ = (counter_sec(16) & (\counter_sec[15]~64\ $ (GND))) # (!counter_sec(16) & (!\counter_sec[15]~64\ & VCC))
-- \counter_sec[16]~66\ = CARRY((counter_sec(16) & !\counter_sec[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(16),
	datad => VCC,
	cin => \counter_sec[15]~64\,
	combout => \counter_sec[16]~65_combout\,
	cout => \counter_sec[16]~66\);

-- Location: FF_X32_Y18_N1
\counter_sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[16]~65_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(16));

-- Location: LCCOMB_X32_Y18_N2
\counter_sec[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[17]~67_combout\ = (counter_sec(17) & (!\counter_sec[16]~66\)) # (!counter_sec(17) & ((\counter_sec[16]~66\) # (GND)))
-- \counter_sec[17]~68\ = CARRY((!\counter_sec[16]~66\) # (!counter_sec(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(17),
	datad => VCC,
	cin => \counter_sec[16]~66\,
	combout => \counter_sec[17]~67_combout\,
	cout => \counter_sec[17]~68\);

-- Location: FF_X32_Y18_N3
\counter_sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[17]~67_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(17));

-- Location: LCCOMB_X32_Y18_N4
\counter_sec[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[18]~69_combout\ = (counter_sec(18) & (\counter_sec[17]~68\ $ (GND))) # (!counter_sec(18) & (!\counter_sec[17]~68\ & VCC))
-- \counter_sec[18]~70\ = CARRY((counter_sec(18) & !\counter_sec[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(18),
	datad => VCC,
	cin => \counter_sec[17]~68\,
	combout => \counter_sec[18]~69_combout\,
	cout => \counter_sec[18]~70\);

-- Location: FF_X32_Y18_N5
\counter_sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[18]~69_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(18));

-- Location: LCCOMB_X32_Y18_N6
\counter_sec[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[19]~71_combout\ = (counter_sec(19) & (!\counter_sec[18]~70\)) # (!counter_sec(19) & ((\counter_sec[18]~70\) # (GND)))
-- \counter_sec[19]~72\ = CARRY((!\counter_sec[18]~70\) # (!counter_sec(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(19),
	datad => VCC,
	cin => \counter_sec[18]~70\,
	combout => \counter_sec[19]~71_combout\,
	cout => \counter_sec[19]~72\);

-- Location: FF_X32_Y18_N7
\counter_sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[19]~71_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(19));

-- Location: LCCOMB_X32_Y18_N8
\counter_sec[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[20]~73_combout\ = (counter_sec(20) & (\counter_sec[19]~72\ $ (GND))) # (!counter_sec(20) & (!\counter_sec[19]~72\ & VCC))
-- \counter_sec[20]~74\ = CARRY((counter_sec(20) & !\counter_sec[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(20),
	datad => VCC,
	cin => \counter_sec[19]~72\,
	combout => \counter_sec[20]~73_combout\,
	cout => \counter_sec[20]~74\);

-- Location: FF_X32_Y18_N9
\counter_sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[20]~73_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(20));

-- Location: LCCOMB_X32_Y18_N10
\counter_sec[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[21]~75_combout\ = (counter_sec(21) & (!\counter_sec[20]~74\)) # (!counter_sec(21) & ((\counter_sec[20]~74\) # (GND)))
-- \counter_sec[21]~76\ = CARRY((!\counter_sec[20]~74\) # (!counter_sec(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(21),
	datad => VCC,
	cin => \counter_sec[20]~74\,
	combout => \counter_sec[21]~75_combout\,
	cout => \counter_sec[21]~76\);

-- Location: FF_X32_Y18_N11
\counter_sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[21]~75_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(21));

-- Location: LCCOMB_X32_Y18_N12
\counter_sec[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[22]~77_combout\ = (counter_sec(22) & (\counter_sec[21]~76\ $ (GND))) # (!counter_sec(22) & (!\counter_sec[21]~76\ & VCC))
-- \counter_sec[22]~78\ = CARRY((counter_sec(22) & !\counter_sec[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(22),
	datad => VCC,
	cin => \counter_sec[21]~76\,
	combout => \counter_sec[22]~77_combout\,
	cout => \counter_sec[22]~78\);

-- Location: FF_X32_Y18_N13
\counter_sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[22]~77_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(22));

-- Location: LCCOMB_X32_Y18_N14
\counter_sec[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[23]~79_combout\ = (counter_sec(23) & (!\counter_sec[22]~78\)) # (!counter_sec(23) & ((\counter_sec[22]~78\) # (GND)))
-- \counter_sec[23]~80\ = CARRY((!\counter_sec[22]~78\) # (!counter_sec(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(23),
	datad => VCC,
	cin => \counter_sec[22]~78\,
	combout => \counter_sec[23]~79_combout\,
	cout => \counter_sec[23]~80\);

-- Location: FF_X32_Y18_N15
\counter_sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[23]~79_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(23));

-- Location: LCCOMB_X32_Y18_N16
\counter_sec[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[24]~81_combout\ = (counter_sec(24) & (\counter_sec[23]~80\ $ (GND))) # (!counter_sec(24) & (!\counter_sec[23]~80\ & VCC))
-- \counter_sec[24]~82\ = CARRY((counter_sec(24) & !\counter_sec[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(24),
	datad => VCC,
	cin => \counter_sec[23]~80\,
	combout => \counter_sec[24]~81_combout\,
	cout => \counter_sec[24]~82\);

-- Location: FF_X32_Y18_N17
\counter_sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[24]~81_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(24));

-- Location: LCCOMB_X32_Y18_N18
\counter_sec[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[25]~83_combout\ = (counter_sec(25) & (!\counter_sec[24]~82\)) # (!counter_sec(25) & ((\counter_sec[24]~82\) # (GND)))
-- \counter_sec[25]~84\ = CARRY((!\counter_sec[24]~82\) # (!counter_sec(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(25),
	datad => VCC,
	cin => \counter_sec[24]~82\,
	combout => \counter_sec[25]~83_combout\,
	cout => \counter_sec[25]~84\);

-- Location: FF_X32_Y18_N19
\counter_sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[25]~83_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(25));

-- Location: LCCOMB_X32_Y18_N20
\counter_sec[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[26]~85_combout\ = (counter_sec(26) & (\counter_sec[25]~84\ $ (GND))) # (!counter_sec(26) & (!\counter_sec[25]~84\ & VCC))
-- \counter_sec[26]~86\ = CARRY((counter_sec(26) & !\counter_sec[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(26),
	datad => VCC,
	cin => \counter_sec[25]~84\,
	combout => \counter_sec[26]~85_combout\,
	cout => \counter_sec[26]~86\);

-- Location: FF_X32_Y18_N21
\counter_sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[26]~85_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(26));

-- Location: LCCOMB_X32_Y18_N22
\counter_sec[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[27]~87_combout\ = (counter_sec(27) & (!\counter_sec[26]~86\)) # (!counter_sec(27) & ((\counter_sec[26]~86\) # (GND)))
-- \counter_sec[27]~88\ = CARRY((!\counter_sec[26]~86\) # (!counter_sec(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(27),
	datad => VCC,
	cin => \counter_sec[26]~86\,
	combout => \counter_sec[27]~87_combout\,
	cout => \counter_sec[27]~88\);

-- Location: FF_X32_Y18_N23
\counter_sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[27]~87_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(27));

-- Location: LCCOMB_X32_Y18_N24
\counter_sec[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[28]~89_combout\ = (counter_sec(28) & (\counter_sec[27]~88\ $ (GND))) # (!counter_sec(28) & (!\counter_sec[27]~88\ & VCC))
-- \counter_sec[28]~90\ = CARRY((counter_sec(28) & !\counter_sec[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(28),
	datad => VCC,
	cin => \counter_sec[27]~88\,
	combout => \counter_sec[28]~89_combout\,
	cout => \counter_sec[28]~90\);

-- Location: FF_X32_Y18_N25
\counter_sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[28]~89_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(28));

-- Location: LCCOMB_X32_Y18_N26
\counter_sec[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[29]~91_combout\ = (counter_sec(29) & (!\counter_sec[28]~90\)) # (!counter_sec(29) & ((\counter_sec[28]~90\) # (GND)))
-- \counter_sec[29]~92\ = CARRY((!\counter_sec[28]~90\) # (!counter_sec(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(29),
	datad => VCC,
	cin => \counter_sec[28]~90\,
	combout => \counter_sec[29]~91_combout\,
	cout => \counter_sec[29]~92\);

-- Location: FF_X32_Y18_N27
\counter_sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[29]~91_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(29));

-- Location: LCCOMB_X32_Y18_N28
\counter_sec[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[30]~93_combout\ = (counter_sec(30) & (\counter_sec[29]~92\ $ (GND))) # (!counter_sec(30) & (!\counter_sec[29]~92\ & VCC))
-- \counter_sec[30]~94\ = CARRY((counter_sec(30) & !\counter_sec[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_sec(30),
	datad => VCC,
	cin => \counter_sec[29]~92\,
	combout => \counter_sec[30]~93_combout\,
	cout => \counter_sec[30]~94\);

-- Location: FF_X32_Y18_N29
\counter_sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[30]~93_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(30));

-- Location: LCCOMB_X32_Y18_N30
\counter_sec[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_sec[31]~95_combout\ = counter_sec(31) $ (\counter_sec[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(31),
	cin => \counter_sec[30]~94\,
	combout => \counter_sec[31]~95_combout\);

-- Location: FF_X32_Y18_N31
\counter_sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter_sec[31]~95_combout\,
	sclr => \Equal0~13_combout\,
	ena => \counter_sec[31]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sec(31));

-- Location: LCCOMB_X33_Y18_N8
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (counter_sec(20)) # ((counter_sec(19)) # ((counter_sec(18)) # (counter_sec(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(20),
	datab => counter_sec(19),
	datac => counter_sec(18),
	datad => counter_sec(17),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y19_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter_sec(16)) # ((counter_sec(14)) # ((counter_sec(13)) # (counter_sec(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(16),
	datab => counter_sec(14),
	datac => counter_sec(13),
	datad => counter_sec(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y19_N18
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter_sec(5)) # ((counter_sec(7)) # ((counter_sec(8)) # (counter_sec(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(5),
	datab => counter_sec(7),
	datac => counter_sec(8),
	datad => counter_sec(6),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y19_N8
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter_sec(9)) # ((counter_sec(12)) # ((counter_sec(10)) # (counter_sec(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(9),
	datab => counter_sec(12),
	datac => counter_sec(10),
	datad => counter_sec(11),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y19_N28
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter_sec(4)) # ((counter_sec(3)) # ((counter_sec(2) & counter_sec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(4),
	datab => counter_sec(3),
	datac => counter_sec(2),
	datad => counter_sec(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y19_N16
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y18_N10
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter_sec(23)) # ((counter_sec(22)) # ((counter_sec(24)) # (counter_sec(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(23),
	datab => counter_sec(22),
	datac => counter_sec(24),
	datad => counter_sec(21),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X33_Y18_N0
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter_sec(25)) # ((counter_sec(28)) # ((counter_sec(27)) # (counter_sec(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(25),
	datab => counter_sec(28),
	datac => counter_sec(27),
	datad => counter_sec(26),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X33_Y19_N10
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (counter_sec(30)) # ((counter_sec(29)) # (\LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(30),
	datac => counter_sec(29),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X33_Y19_N4
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~4_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X32_Y15_N6
\counter~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~43_combout\ = (!\reset~input_o\ & (!\Equal0~13_combout\ & ((counter_sec(31)) # (!\LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_sec(31),
	datab => \reset~input_o\,
	datac => \Equal0~13_combout\,
	datad => \LessThan0~9_combout\,
	combout => \counter~43_combout\);

-- Location: LCCOMB_X32_Y15_N8
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!counter(0) & (counter(4) & (counter(1) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => \Equal0~10_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X32_Y15_N10
\SDI~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~0_combout\ = (counter(4)) # ((counter(0) $ (!counter(1))) # (!\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => \Equal0~10_combout\,
	combout => \SDI~0_combout\);

-- Location: LCCOMB_X33_Y15_N12
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (counter(1)) # (((!\Equal0~10_combout\) # (!counter(4))) # (!counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(4),
	datad => \Equal0~10_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X33_Y15_N6
\opbit[30]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit[30]~5_combout\ = (\Equal5~0_combout\ & ((\LessThan1~2_combout\) # (!\opbit~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~2_combout\,
	datac => \opbit~4_combout\,
	datad => \Equal5~0_combout\,
	combout => \opbit[30]~5_combout\);

-- Location: LCCOMB_X32_Y15_N28
\counter~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~32_combout\ = (\SDI~0_combout\ & (\counter_sec[31]~32_combout\ & (\SDI~1_combout\ & \opbit[30]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~0_combout\,
	datab => \counter_sec[31]~32_combout\,
	datac => \SDI~1_combout\,
	datad => \opbit[30]~5_combout\,
	combout => \counter~32_combout\);

-- Location: LCCOMB_X32_Y15_N24
\counter~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~44_combout\ = (\counter~43_combout\) # ((!\Equal6~0_combout\ & \counter~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter~43_combout\,
	datac => \Equal6~0_combout\,
	datad => \counter~32_combout\,
	combout => \counter~44_combout\);

-- Location: FF_X29_Y15_N13
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[0]~33_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X30_Y16_N2
\counter[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~35_combout\ = (counter(1) & (!\counter[0]~34\)) # (!counter(1) & ((\counter[0]~34\) # (GND)))
-- \counter[1]~36\ = CARRY((!\counter[0]~34\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~34\,
	combout => \counter[1]~35_combout\,
	cout => \counter[1]~36\);

-- Location: FF_X30_Y16_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[1]~35_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X30_Y16_N4
\counter[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~37_combout\ = (counter(2) & (\counter[1]~36\ $ (GND))) # (!counter(2) & (!\counter[1]~36\ & VCC))
-- \counter[2]~38\ = CARRY((counter(2) & !\counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~36\,
	combout => \counter[2]~37_combout\,
	cout => \counter[2]~38\);

-- Location: FF_X29_Y15_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[2]~37_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X30_Y16_N6
\counter[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~39_combout\ = (counter(3) & (!\counter[2]~38\)) # (!counter(3) & ((\counter[2]~38\) # (GND)))
-- \counter[3]~40\ = CARRY((!\counter[2]~38\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~38\,
	combout => \counter[3]~39_combout\,
	cout => \counter[3]~40\);

-- Location: FF_X29_Y15_N5
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[3]~39_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X30_Y16_N8
\counter[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~41_combout\ = (counter(4) & (\counter[3]~40\ $ (GND))) # (!counter(4) & (!\counter[3]~40\ & VCC))
-- \counter[4]~42\ = CARRY((counter(4) & !\counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~40\,
	combout => \counter[4]~41_combout\,
	cout => \counter[4]~42\);

-- Location: FF_X30_Y16_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[4]~41_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X30_Y16_N10
\counter[5]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~46_combout\ = (counter(5) & (!\counter[4]~42\)) # (!counter(5) & ((\counter[4]~42\) # (GND)))
-- \counter[5]~47\ = CARRY((!\counter[4]~42\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~42\,
	combout => \counter[5]~46_combout\,
	cout => \counter[5]~47\);

-- Location: FF_X31_Y15_N21
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[5]~46_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X30_Y16_N12
\counter[6]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~48_combout\ = (counter(6) & (\counter[5]~47\ $ (GND))) # (!counter(6) & (!\counter[5]~47\ & VCC))
-- \counter[6]~49\ = CARRY((counter(6) & !\counter[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~47\,
	combout => \counter[6]~48_combout\,
	cout => \counter[6]~49\);

-- Location: FF_X31_Y15_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[6]~48_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X30_Y16_N14
\counter[7]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~50_combout\ = (counter(7) & (!\counter[6]~49\)) # (!counter(7) & ((\counter[6]~49\) # (GND)))
-- \counter[7]~51\ = CARRY((!\counter[6]~49\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~49\,
	combout => \counter[7]~50_combout\,
	cout => \counter[7]~51\);

-- Location: FF_X30_Y16_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[7]~50_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X30_Y16_N16
\counter[8]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~52_combout\ = (counter(8) & (\counter[7]~51\ $ (GND))) # (!counter(8) & (!\counter[7]~51\ & VCC))
-- \counter[8]~53\ = CARRY((counter(8) & !\counter[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~51\,
	combout => \counter[8]~52_combout\,
	cout => \counter[8]~53\);

-- Location: FF_X31_Y15_N1
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[8]~52_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X30_Y16_N18
\counter[9]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~54_combout\ = (counter(9) & (!\counter[8]~53\)) # (!counter(9) & ((\counter[8]~53\) # (GND)))
-- \counter[9]~55\ = CARRY((!\counter[8]~53\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~53\,
	combout => \counter[9]~54_combout\,
	cout => \counter[9]~55\);

-- Location: FF_X30_Y16_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[9]~54_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X30_Y16_N20
\counter[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~56_combout\ = (counter(10) & (\counter[9]~55\ $ (GND))) # (!counter(10) & (!\counter[9]~55\ & VCC))
-- \counter[10]~57\ = CARRY((counter(10) & !\counter[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~55\,
	combout => \counter[10]~56_combout\,
	cout => \counter[10]~57\);

-- Location: FF_X30_Y16_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[10]~56_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X30_Y16_N22
\counter[11]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[11]~58_combout\ = (counter(11) & (!\counter[10]~57\)) # (!counter(11) & ((\counter[10]~57\) # (GND)))
-- \counter[11]~59\ = CARRY((!\counter[10]~57\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~57\,
	combout => \counter[11]~58_combout\,
	cout => \counter[11]~59\);

-- Location: FF_X30_Y16_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[11]~58_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X30_Y16_N24
\counter[12]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[12]~60_combout\ = (counter(12) & (\counter[11]~59\ $ (GND))) # (!counter(12) & (!\counter[11]~59\ & VCC))
-- \counter[12]~61\ = CARRY((counter(12) & !\counter[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~59\,
	combout => \counter[12]~60_combout\,
	cout => \counter[12]~61\);

-- Location: FF_X31_Y15_N3
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[12]~60_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X30_Y16_N26
\counter[13]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[13]~62_combout\ = (counter(13) & (!\counter[12]~61\)) # (!counter(13) & ((\counter[12]~61\) # (GND)))
-- \counter[13]~63\ = CARRY((!\counter[12]~61\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~61\,
	combout => \counter[13]~62_combout\,
	cout => \counter[13]~63\);

-- Location: FF_X30_Y16_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[13]~62_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X30_Y16_N28
\counter[14]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[14]~64_combout\ = (counter(14) & (\counter[13]~63\ $ (GND))) # (!counter(14) & (!\counter[13]~63\ & VCC))
-- \counter[14]~65\ = CARRY((counter(14) & !\counter[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~63\,
	combout => \counter[14]~64_combout\,
	cout => \counter[14]~65\);

-- Location: FF_X30_Y16_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[14]~64_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X30_Y16_N30
\counter[15]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[15]~66_combout\ = (counter(15) & (!\counter[14]~65\)) # (!counter(15) & ((\counter[14]~65\) # (GND)))
-- \counter[15]~67\ = CARRY((!\counter[14]~65\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~65\,
	combout => \counter[15]~66_combout\,
	cout => \counter[15]~67\);

-- Location: FF_X31_Y15_N29
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[15]~66_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X30_Y15_N0
\counter[16]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[16]~68_combout\ = (counter(16) & (\counter[15]~67\ $ (GND))) # (!counter(16) & (!\counter[15]~67\ & VCC))
-- \counter[16]~69\ = CARRY((counter(16) & !\counter[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~67\,
	combout => \counter[16]~68_combout\,
	cout => \counter[16]~69\);

-- Location: FF_X30_Y15_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[16]~68_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X30_Y15_N2
\counter[17]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[17]~70_combout\ = (counter(17) & (!\counter[16]~69\)) # (!counter(17) & ((\counter[16]~69\) # (GND)))
-- \counter[17]~71\ = CARRY((!\counter[16]~69\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~69\,
	combout => \counter[17]~70_combout\,
	cout => \counter[17]~71\);

-- Location: FF_X30_Y15_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[17]~70_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X30_Y15_N4
\counter[18]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[18]~72_combout\ = (counter(18) & (\counter[17]~71\ $ (GND))) # (!counter(18) & (!\counter[17]~71\ & VCC))
-- \counter[18]~73\ = CARRY((counter(18) & !\counter[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~71\,
	combout => \counter[18]~72_combout\,
	cout => \counter[18]~73\);

-- Location: FF_X30_Y15_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[18]~72_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X30_Y15_N6
\counter[19]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[19]~74_combout\ = (counter(19) & (!\counter[18]~73\)) # (!counter(19) & ((\counter[18]~73\) # (GND)))
-- \counter[19]~75\ = CARRY((!\counter[18]~73\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~73\,
	combout => \counter[19]~74_combout\,
	cout => \counter[19]~75\);

-- Location: FF_X30_Y15_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[19]~74_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X30_Y15_N8
\counter[20]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[20]~76_combout\ = (counter(20) & (\counter[19]~75\ $ (GND))) # (!counter(20) & (!\counter[19]~75\ & VCC))
-- \counter[20]~77\ = CARRY((counter(20) & !\counter[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~75\,
	combout => \counter[20]~76_combout\,
	cout => \counter[20]~77\);

-- Location: FF_X30_Y15_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[20]~76_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X30_Y15_N10
\counter[21]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~78_combout\ = (counter(21) & (!\counter[20]~77\)) # (!counter(21) & ((\counter[20]~77\) # (GND)))
-- \counter[21]~79\ = CARRY((!\counter[20]~77\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~77\,
	combout => \counter[21]~78_combout\,
	cout => \counter[21]~79\);

-- Location: FF_X30_Y15_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[21]~78_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X30_Y15_N12
\counter[22]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[22]~80_combout\ = (counter(22) & (\counter[21]~79\ $ (GND))) # (!counter(22) & (!\counter[21]~79\ & VCC))
-- \counter[22]~81\ = CARRY((counter(22) & !\counter[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~79\,
	combout => \counter[22]~80_combout\,
	cout => \counter[22]~81\);

-- Location: FF_X31_Y15_N11
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	asdata => \counter[22]~80_combout\,
	sclr => \counter~44_combout\,
	sload => VCC,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: FF_X30_Y15_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \counter[23]~82_combout\,
	sclr => \counter~44_combout\,
	ena => \counter[21]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X31_Y15_N12
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(23) & (!counter(25) & (!counter(24) & !counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(25),
	datac => counter(24),
	datad => counter(26),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y15_N16
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~2_combout\ & (!counter(31) & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => counter(31),
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X29_Y15_N18
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!counter(0) & (counter(2) & !counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => counter(2),
	datad => counter(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X32_Y15_N0
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (counter(0) & (!counter(4) & (counter(1) & \Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(1),
	datad => \Equal0~10_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X32_Y15_N22
\SDI~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~1_combout\ = (!\Equal3~0_combout\ & (((!\LessThan1~0_combout\) # (!\Equal4~0_combout\)) # (!\Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \Equal4~0_combout\,
	datac => \LessThan1~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \SDI~1_combout\);

-- Location: LCCOMB_X33_Y15_N14
\CS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~0_combout\ = (\dataproc~0_combout\ & ((\Equal6~0_combout\) # ((\CS~reg0_q\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \dataproc~0_combout\,
	datac => \CS~reg0_q\,
	datad => \Equal5~0_combout\,
	combout => \CS~0_combout\);

-- Location: LCCOMB_X33_Y15_N8
\CS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CS~1_combout\ = ((\SDI~1_combout\ & (\SDI~0_combout\ & \CS~0_combout\))) # (!\counter_sec[31]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~1_combout\,
	datab => \SDI~0_combout\,
	datac => \CS~0_combout\,
	datad => \counter_sec[31]~32_combout\,
	combout => \CS~1_combout\);

-- Location: FF_X33_Y15_N9
\CS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \CS~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CS~reg0_q\);

-- Location: LCCOMB_X33_Y15_N22
\opbit[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit[0]~6_combout\ = opbit(0) $ (VCC)
-- \opbit[0]~7\ = CARRY(opbit(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opbit(0),
	datad => VCC,
	combout => \opbit[0]~6_combout\,
	cout => \opbit[0]~7\);

-- Location: LCCOMB_X33_Y15_N18
\opbit~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit~12_combout\ = ((!counter(27) & \LessThan1~2_combout\)) # (!\opbit~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datac => \LessThan1~2_combout\,
	datad => \opbit~4_combout\,
	combout => \opbit~12_combout\);

-- Location: LCCOMB_X33_Y15_N4
\opbit[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit[1]~13_combout\ = (\SDI~1_combout\ & (\counter_sec[31]~32_combout\ & (\SDI~0_combout\ & !\opbit[30]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~1_combout\,
	datab => \counter_sec[31]~32_combout\,
	datac => \SDI~0_combout\,
	datad => \opbit[30]~5_combout\,
	combout => \opbit[1]~13_combout\);

-- Location: FF_X33_Y15_N23
\opbit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \opbit[0]~6_combout\,
	sclr => \opbit~12_combout\,
	ena => \opbit[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opbit(0));

-- Location: LCCOMB_X33_Y15_N24
\opbit[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit[1]~8_combout\ = (opbit(1) & (!\opbit[0]~7\)) # (!opbit(1) & ((\opbit[0]~7\) # (GND)))
-- \opbit[1]~9\ = CARRY((!\opbit[0]~7\) # (!opbit(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => opbit(1),
	datad => VCC,
	cin => \opbit[0]~7\,
	combout => \opbit[1]~8_combout\,
	cout => \opbit[1]~9\);

-- Location: FF_X33_Y15_N25
\opbit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \opbit[1]~8_combout\,
	sclr => \opbit~12_combout\,
	ena => \opbit[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opbit(1));

-- Location: LCCOMB_X33_Y15_N26
\opbit[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit[2]~10_combout\ = (opbit(2) & (\opbit[1]~9\ $ (GND))) # (!opbit(2) & (!\opbit[1]~9\ & VCC))
-- \opbit[2]~11\ = CARRY((opbit(2) & !\opbit[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => opbit(2),
	datad => VCC,
	cin => \opbit[1]~9\,
	combout => \opbit[2]~10_combout\,
	cout => \opbit[2]~11\);

-- Location: FF_X33_Y15_N27
\opbit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \opbit[2]~10_combout\,
	sclr => \opbit~12_combout\,
	ena => \opbit[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opbit(2));

-- Location: LCCOMB_X33_Y15_N28
\opbit[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \opbit[3]~14_combout\ = \opbit[2]~11\ $ (opbit(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => opbit(3),
	cin => \opbit[2]~11\,
	combout => \opbit[3]~14_combout\);

-- Location: FF_X33_Y15_N29
\opbit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \opbit[3]~14_combout\,
	sclr => \opbit~12_combout\,
	ena => \opbit[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opbit(3));

-- Location: LCCOMB_X33_Y15_N10
\SDI~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~3_combout\ = (!opbit(0) & (!opbit(1) & (opbit(3) $ (!opbit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opbit(0),
	datab => opbit(3),
	datac => opbit(2),
	datad => opbit(1),
	combout => \SDI~3_combout\);

-- Location: LCCOMB_X33_Y15_N20
\SDI~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~2_combout\ = (\SDI~reg0_q\ & (((\LessThan1~2_combout\)) # (!\opbit~4_combout\))) # (!\SDI~reg0_q\ & (!\Equal5~0_combout\ & ((\LessThan1~2_combout\) # (!\opbit~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~reg0_q\,
	datab => \opbit~4_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Equal5~0_combout\,
	combout => \SDI~2_combout\);

-- Location: LCCOMB_X33_Y15_N16
\SDI~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~4_combout\ = ((\SDI~2_combout\) # ((\SDI~3_combout\ & !\dataproc~0_combout\))) # (!\SDI~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDI~1_combout\,
	datab => \SDI~3_combout\,
	datac => \dataproc~0_combout\,
	datad => \SDI~2_combout\,
	combout => \SDI~4_combout\);

-- Location: LCCOMB_X32_Y15_N16
\SDI~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDI~5_combout\ = (\Equal0~13_combout\ & (\SDI~0_combout\ & \SDI~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \SDI~0_combout\,
	datad => \SDI~4_combout\,
	combout => \SDI~5_combout\);

-- Location: FF_X32_Y15_N17
\SDI~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \SDI~5_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDI~reg0_q\);

-- Location: LCCOMB_X33_Y15_N30
\LDAC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LDAC~0_combout\ = ((!\Equal6~0_combout\ & \LDAC~reg0_q\)) # (!\counter~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => \LDAC~reg0_q\,
	datad => \counter~32_combout\,
	combout => \LDAC~0_combout\);

-- Location: FF_X33_Y15_N31
\LDAC~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_int~clkctrl_outclk\,
	d => \LDAC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LDAC~reg0_q\);

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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SCK <= \SCK~output_o\;

ww_CS <= \CS~output_o\;

ww_SDI <= \SDI~output_o\;

ww_LDAC <= \LDAC~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;
END structure;


