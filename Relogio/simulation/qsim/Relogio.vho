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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/18/2024 14:47:38"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	MEM : OUT std_logic_vector(7 DOWNTO 0);
	bolso : OUT std_logic_vector(7 DOWNTO 0);
	adrs : OUT std_logic_vector(5 DOWNTO 0)
	);
END Relogio;

ARCHITECTURE structure OF Relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MEM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bolso : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_adrs : std_logic_vector(5 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \MEM[0]~output_o\ : std_logic;
SIGNAL \MEM[1]~output_o\ : std_logic;
SIGNAL \MEM[2]~output_o\ : std_logic;
SIGNAL \MEM[3]~output_o\ : std_logic;
SIGNAL \MEM[4]~output_o\ : std_logic;
SIGNAL \MEM[5]~output_o\ : std_logic;
SIGNAL \MEM[6]~output_o\ : std_logic;
SIGNAL \MEM[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \bolso[0]~output_o\ : std_logic;
SIGNAL \bolso[1]~output_o\ : std_logic;
SIGNAL \bolso[2]~output_o\ : std_logic;
SIGNAL \bolso[3]~output_o\ : std_logic;
SIGNAL \bolso[4]~output_o\ : std_logic;
SIGNAL \bolso[5]~output_o\ : std_logic;
SIGNAL \bolso[6]~output_o\ : std_logic;
SIGNAL \bolso[7]~output_o\ : std_logic;
SIGNAL \adrs[0]~output_o\ : std_logic;
SIGNAL \adrs[1]~output_o\ : std_logic;
SIGNAL \adrs[2]~output_o\ : std_logic;
SIGNAL \adrs[3]~output_o\ : std_logic;
SIGNAL \adrs[4]~output_o\ : std_logic;
SIGNAL \adrs[5]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~4_combout\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUXRET|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[4]~8_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[5]~7_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~17_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~12_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~13_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~14_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~15_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~16_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~18_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~7_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~19_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[13]~6_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~2_combout\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~2\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUXRET|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~6\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUXRET|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~10\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUXRET|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~14\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUXRET|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~18\ : std_logic;
SIGNAL \CPU|ULA_sr|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUXRET|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~784_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~21_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~785_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~30_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~786_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~39_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~787_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~48_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~637_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~800_combout\ : std_logic;
SIGNAL \rtl~16_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~165_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~804_combout\ : std_logic;
SIGNAL \rtl~20_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~174_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~808_combout\ : std_logic;
SIGNAL \rtl~24_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~183_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~812_combout\ : std_logic;
SIGNAL \rtl~28_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~192_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~638_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~816_combout\ : std_logic;
SIGNAL \rtl~32_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~309_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~817_combout\ : std_logic;
SIGNAL \rtl~33_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~318_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~818_combout\ : std_logic;
SIGNAL \rtl~34_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~327_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~819_combout\ : std_logic;
SIGNAL \rtl~35_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~336_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~639_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~832_combout\ : std_logic;
SIGNAL \rtl~48_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~453_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~836_combout\ : std_logic;
SIGNAL \rtl~52_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~462_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~840_combout\ : std_logic;
SIGNAL \rtl~56_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~471_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~844_combout\ : std_logic;
SIGNAL \rtl~60_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~480_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~640_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~641_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~788_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~57_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~789_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~66_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~790_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~75_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~791_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~84_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~642_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~801_combout\ : std_logic;
SIGNAL \rtl~17_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~201_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~805_combout\ : std_logic;
SIGNAL \rtl~21_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~210_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~809_combout\ : std_logic;
SIGNAL \rtl~25_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~219_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~813_combout\ : std_logic;
SIGNAL \rtl~29_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~228_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~643_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~820_combout\ : std_logic;
SIGNAL \rtl~36_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~345_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~821_combout\ : std_logic;
SIGNAL \rtl~37_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~354_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~822_combout\ : std_logic;
SIGNAL \rtl~38_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~363_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~823_combout\ : std_logic;
SIGNAL \rtl~39_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~372_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~644_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~833_combout\ : std_logic;
SIGNAL \rtl~49_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~489_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~837_combout\ : std_logic;
SIGNAL \rtl~53_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~498_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~841_combout\ : std_logic;
SIGNAL \rtl~57_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~507_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~845_combout\ : std_logic;
SIGNAL \rtl~61_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~516_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~645_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~646_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~792_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~93_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~793_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~102_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~794_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~111_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~795_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~120_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~647_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~802_combout\ : std_logic;
SIGNAL \rtl~18_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~237_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~806_combout\ : std_logic;
SIGNAL \rtl~22_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~246_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~810_combout\ : std_logic;
SIGNAL \rtl~26_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~255_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~814_combout\ : std_logic;
SIGNAL \rtl~30_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~264_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~648_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~824_combout\ : std_logic;
SIGNAL \rtl~40_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~381_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~825_combout\ : std_logic;
SIGNAL \rtl~41_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~390_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~826_combout\ : std_logic;
SIGNAL \rtl~42_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~399_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~827_combout\ : std_logic;
SIGNAL \rtl~43_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~408_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~649_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~834_combout\ : std_logic;
SIGNAL \rtl~50_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~525_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~838_combout\ : std_logic;
SIGNAL \rtl~54_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~534_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~842_combout\ : std_logic;
SIGNAL \rtl~58_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~543_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~846_combout\ : std_logic;
SIGNAL \rtl~62_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~552_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~650_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~651_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~796_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~129_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~803_combout\ : std_logic;
SIGNAL \rtl~19_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~273_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~828_combout\ : std_logic;
SIGNAL \rtl~44_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~417_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~835_combout\ : std_logic;
SIGNAL \rtl~51_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~561_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~652_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~797_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~138_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~807_combout\ : std_logic;
SIGNAL \rtl~23_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~282_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~829_combout\ : std_logic;
SIGNAL \rtl~45_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~426_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~839_combout\ : std_logic;
SIGNAL \rtl~55_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~570_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~653_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~798_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~147_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~811_combout\ : std_logic;
SIGNAL \rtl~27_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~291_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~830_combout\ : std_logic;
SIGNAL \rtl~46_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~435_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~843_combout\ : std_logic;
SIGNAL \rtl~59_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~579_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~654_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~799_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~156_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~815_combout\ : std_logic;
SIGNAL \rtl~31_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~300_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~831_combout\ : std_logic;
SIGNAL \rtl~47_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~444_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~847_combout\ : std_logic;
SIGNAL \rtl~63_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~588_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~655_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~656_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~657_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~26_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~170_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~314_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~458_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~742_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~62_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~206_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~350_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~494_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~743_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~98_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~242_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~386_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~530_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~744_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~134_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~278_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~422_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~566_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~745_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~746_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~35_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~179_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~323_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~467_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~747_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~71_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~215_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~359_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~503_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~748_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~107_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~251_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~395_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~539_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~749_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~143_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~287_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~431_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~575_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~750_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~751_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~44_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~80_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~116_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~152_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~752_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~188_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~224_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~260_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~296_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~753_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~332_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~368_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~404_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~440_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~754_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~476_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~512_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~548_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~584_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~755_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~756_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~53_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~197_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~341_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~485_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~757_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~89_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~233_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~377_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~521_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~758_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~125_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~269_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~413_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~557_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~759_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~161_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~305_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~449_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~593_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~760_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~761_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~762_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~27_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~36_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~45_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~54_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~763_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~171_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~180_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~189_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~198_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~764_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~315_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~324_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~333_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~342_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~765_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~459_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~468_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~477_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~486_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~766_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~767_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~63_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~72_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~81_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~90_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~768_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~207_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~216_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~225_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~234_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~769_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~351_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~360_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~369_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~378_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~770_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~495_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~504_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~513_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~522_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~771_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~772_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~99_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~108_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~117_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~126_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~773_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~243_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~252_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~261_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~270_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~774_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~387_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~396_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~405_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~414_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~775_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~531_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~540_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~549_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~558_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~776_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~777_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~135_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~279_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~423_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~567_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~778_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~144_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~288_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~432_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~576_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~779_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~153_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~297_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~441_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~585_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~780_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~162_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~306_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~450_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~594_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~781_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~782_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~783_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~22_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~58_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~94_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~130_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~658_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~31_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~67_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~103_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~139_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~659_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~40_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~76_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~112_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~148_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~660_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~49_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~85_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~121_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~157_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~661_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~662_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~166_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~202_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~238_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~274_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~663_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~175_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~211_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~247_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~283_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~664_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~184_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~220_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~256_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~292_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~665_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~193_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~229_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~265_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~301_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~666_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~667_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~310_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~346_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~382_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~418_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~668_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~319_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~355_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~391_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~427_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~669_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~328_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~364_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~400_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~436_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~670_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~337_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~373_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~409_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~445_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~671_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~672_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~454_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~463_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~472_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~481_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~673_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~490_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~499_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~508_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~517_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~674_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~526_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~535_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~544_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~553_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~675_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~562_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~571_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~580_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~589_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~676_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~677_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~678_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~23_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~167_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~311_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~455_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~679_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~59_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~203_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~347_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~491_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~680_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~95_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~239_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~383_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~527_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~681_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~131_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~275_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~419_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~563_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~682_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~683_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~32_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~176_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~320_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~464_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~684_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~68_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~212_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~356_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~500_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~685_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~104_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~248_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~392_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~536_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~686_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~140_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~284_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~428_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~572_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~687_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~688_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~41_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~77_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~113_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~149_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~689_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~185_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~221_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~257_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~293_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~690_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~329_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~365_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~401_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~437_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~691_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~473_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~509_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~545_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~581_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~692_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~693_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~50_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~194_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~338_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~482_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~694_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~86_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~230_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~374_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~518_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~695_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~122_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~266_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~410_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~554_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~696_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~158_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~302_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~446_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~590_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~697_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~698_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~699_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~25_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~61_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~97_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~133_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~721_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~34_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~70_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~106_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~142_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~722_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~43_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~79_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~115_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~151_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~723_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~52_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~88_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~124_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~160_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~724_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~725_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~169_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~205_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~241_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~277_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~726_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~178_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~214_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~250_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~286_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~727_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~187_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~223_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~259_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~295_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~728_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~196_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~232_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~268_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~304_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~729_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~730_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~313_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~349_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~385_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~421_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~731_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~322_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~358_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~394_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~430_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~732_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~331_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~367_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~403_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~439_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~733_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~340_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~376_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~412_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~448_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~734_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~735_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~457_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~466_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~475_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~484_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~736_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~493_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~502_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~511_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~520_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~737_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~529_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~538_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~547_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~556_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~738_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~565_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~574_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~583_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~592_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~739_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~740_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~741_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~20_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~164_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~308_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~452_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~616_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~56_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~200_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~344_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~488_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~617_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~92_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~236_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~380_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~524_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~618_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~128_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~272_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~416_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~560_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~619_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~620_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~29_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~173_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~317_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~461_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~621_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~65_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~209_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~353_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~497_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~622_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~101_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~245_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~389_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~533_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~623_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~137_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~281_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~425_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~569_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~624_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~625_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~38_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~182_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~326_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~470_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~626_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~74_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~218_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~362_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~506_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~627_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~110_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~254_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~398_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~542_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~628_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~146_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~290_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~434_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~578_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~629_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~630_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~47_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~191_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~335_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~479_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~631_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~83_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~227_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~371_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~515_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~632_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~119_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~263_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~407_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~551_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~633_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~155_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~299_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~443_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~587_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~634_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~635_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~636_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~19_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~28_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~37_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~46_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~595_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~55_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~64_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~73_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~82_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~596_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~91_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~100_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~109_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~118_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~597_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~127_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~136_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~145_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~154_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~598_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~599_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~163_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~199_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~235_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~271_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~600_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~172_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~208_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~244_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~280_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~601_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~181_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~217_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~253_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~289_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~602_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~190_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~226_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~262_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~298_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~603_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~604_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~307_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~316_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~325_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~334_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~605_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~343_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~352_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~361_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~370_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~606_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~379_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~388_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~397_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~406_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~607_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~415_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~424_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~433_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~442_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~608_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~609_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~451_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~487_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~523_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~559_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~610_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~460_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~496_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~532_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~568_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~611_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~469_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~505_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~541_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~577_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~612_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~478_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~514_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~550_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~586_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~613_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~614_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~615_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[13]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~24_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~33_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~42_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~51_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~700_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~168_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~177_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~186_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~195_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~701_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~312_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~321_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~330_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~339_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~702_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~456_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~465_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~474_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~483_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~703_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~704_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~60_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~69_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~78_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~87_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~705_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~204_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~213_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~222_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~231_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~706_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~348_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~357_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~366_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~375_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~707_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~492_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~501_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~510_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~519_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~708_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~709_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~96_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~105_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~114_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~123_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~710_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~240_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~249_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~258_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~267_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~711_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~384_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~393_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~402_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~411_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~712_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~528_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~537_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~546_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~555_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~713_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~714_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~132_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~276_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~420_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~564_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~715_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~141_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~285_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~429_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~573_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~716_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~150_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~294_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~438_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~582_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~717_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~159_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~303_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~447_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~591_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~718_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~719_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~720_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|RET|DOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~847_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~846_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~845_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~844_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~843_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~842_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~841_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~840_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~839_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~838_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~837_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~836_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~835_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~834_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~833_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~832_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~831_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~830_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~829_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~828_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~827_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~826_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~825_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~824_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~823_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~822_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~820_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~818_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~816_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~814_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~812_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~810_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~808_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~806_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~804_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~802_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~800_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~798_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~796_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~794_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~792_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~790_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~788_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~786_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~784_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[13]~6_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~782_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~780_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~778_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~776_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~774_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~772_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~770_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~768_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~766_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~764_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~762_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~760_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~758_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~756_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~754_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~752_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~750_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~748_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~746_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~744_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~742_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~740_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~738_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~736_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~734_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~732_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~730_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~728_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~726_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~724_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~722_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~720_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~718_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~716_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~714_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~712_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~710_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~708_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~706_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~704_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~702_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~700_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~698_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~696_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|RET|ALT_INV_DOUT\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~594_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~585_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~576_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~567_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~558_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~549_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~540_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~531_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~593_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~557_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~584_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~548_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~575_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~539_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~566_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~530_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~592_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~583_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~574_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~565_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~556_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~547_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~538_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~529_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~591_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~582_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~573_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~564_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~555_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~546_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~537_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~528_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~590_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~554_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~581_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~545_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~572_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~536_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~563_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~527_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~589_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~580_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~571_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~562_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~553_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~544_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~535_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~588_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~579_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~570_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~561_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~552_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~543_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~534_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~587_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~551_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~578_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~542_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~569_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~533_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~560_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~586_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~550_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~577_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~541_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~568_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~532_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~559_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|ULA_sr|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA_sr|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA_sr|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA_sr|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA_sr|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA_sr|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~12_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
MEM <= ww_MEM;
bolso <= ww_bolso;
adrs <= ww_adrs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|decoderInstru|ALT_INV_saida[4]~8_combout\ <= NOT \CPU|decoderInstru|saida[4]~8_combout\;
\CPU|FLAG|ALT_INV_DOUT~7_combout\ <= NOT \CPU|FLAG|DOUT~7_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\CPU|RAM_RET|ALT_INV_ram~847_combout\ <= NOT \CPU|RAM_RET|ram~847_combout\;
\CPU|RAM_RET|ALT_INV_ram~846_combout\ <= NOT \CPU|RAM_RET|ram~846_combout\;
\CPU|RAM_RET|ALT_INV_ram~845_combout\ <= NOT \CPU|RAM_RET|ram~845_combout\;
\CPU|RAM_RET|ALT_INV_ram~844_combout\ <= NOT \CPU|RAM_RET|ram~844_combout\;
\CPU|RAM_RET|ALT_INV_ram~843_combout\ <= NOT \CPU|RAM_RET|ram~843_combout\;
\CPU|RAM_RET|ALT_INV_ram~842_combout\ <= NOT \CPU|RAM_RET|ram~842_combout\;
\CPU|RAM_RET|ALT_INV_ram~841_combout\ <= NOT \CPU|RAM_RET|ram~841_combout\;
\CPU|RAM_RET|ALT_INV_ram~840_combout\ <= NOT \CPU|RAM_RET|ram~840_combout\;
\CPU|RAM_RET|ALT_INV_ram~839_combout\ <= NOT \CPU|RAM_RET|ram~839_combout\;
\CPU|RAM_RET|ALT_INV_ram~838_combout\ <= NOT \CPU|RAM_RET|ram~838_combout\;
\CPU|RAM_RET|ALT_INV_ram~837_combout\ <= NOT \CPU|RAM_RET|ram~837_combout\;
\CPU|RAM_RET|ALT_INV_ram~836_combout\ <= NOT \CPU|RAM_RET|ram~836_combout\;
\CPU|RAM_RET|ALT_INV_ram~835_combout\ <= NOT \CPU|RAM_RET|ram~835_combout\;
\CPU|RAM_RET|ALT_INV_ram~834_combout\ <= NOT \CPU|RAM_RET|ram~834_combout\;
\CPU|RAM_RET|ALT_INV_ram~833_combout\ <= NOT \CPU|RAM_RET|ram~833_combout\;
\CPU|RAM_RET|ALT_INV_ram~832_combout\ <= NOT \CPU|RAM_RET|ram~832_combout\;
\CPU|RAM_RET|ALT_INV_ram~831_combout\ <= NOT \CPU|RAM_RET|ram~831_combout\;
\CPU|RAM_RET|ALT_INV_ram~830_combout\ <= NOT \CPU|RAM_RET|ram~830_combout\;
\CPU|RAM_RET|ALT_INV_ram~829_combout\ <= NOT \CPU|RAM_RET|ram~829_combout\;
\CPU|RAM_RET|ALT_INV_ram~828_combout\ <= NOT \CPU|RAM_RET|ram~828_combout\;
\CPU|RAM_RET|ALT_INV_ram~827_combout\ <= NOT \CPU|RAM_RET|ram~827_combout\;
\CPU|RAM_RET|ALT_INV_ram~826_combout\ <= NOT \CPU|RAM_RET|ram~826_combout\;
\CPU|RAM_RET|ALT_INV_ram~825_combout\ <= NOT \CPU|RAM_RET|ram~825_combout\;
\CPU|RAM_RET|ALT_INV_ram~824_combout\ <= NOT \CPU|RAM_RET|ram~824_combout\;
\CPU|RAM_RET|ALT_INV_ram~823_combout\ <= NOT \CPU|RAM_RET|ram~823_combout\;
\CPU|RAM_RET|ALT_INV_ram~822_combout\ <= NOT \CPU|RAM_RET|ram~822_combout\;
\CPU|RAM_RET|ALT_INV_ram~821_combout\ <= NOT \CPU|RAM_RET|ram~821_combout\;
\CPU|RAM_RET|ALT_INV_ram~820_combout\ <= NOT \CPU|RAM_RET|ram~820_combout\;
\CPU|RAM_RET|ALT_INV_ram~819_combout\ <= NOT \CPU|RAM_RET|ram~819_combout\;
\CPU|RAM_RET|ALT_INV_ram~818_combout\ <= NOT \CPU|RAM_RET|ram~818_combout\;
\CPU|RAM_RET|ALT_INV_ram~817_combout\ <= NOT \CPU|RAM_RET|ram~817_combout\;
\CPU|RAM_RET|ALT_INV_ram~816_combout\ <= NOT \CPU|RAM_RET|ram~816_combout\;
\CPU|RAM_RET|ALT_INV_ram~815_combout\ <= NOT \CPU|RAM_RET|ram~815_combout\;
\CPU|RAM_RET|ALT_INV_ram~814_combout\ <= NOT \CPU|RAM_RET|ram~814_combout\;
\CPU|RAM_RET|ALT_INV_ram~813_combout\ <= NOT \CPU|RAM_RET|ram~813_combout\;
\CPU|RAM_RET|ALT_INV_ram~812_combout\ <= NOT \CPU|RAM_RET|ram~812_combout\;
\CPU|RAM_RET|ALT_INV_ram~811_combout\ <= NOT \CPU|RAM_RET|ram~811_combout\;
\CPU|RAM_RET|ALT_INV_ram~810_combout\ <= NOT \CPU|RAM_RET|ram~810_combout\;
\CPU|RAM_RET|ALT_INV_ram~809_combout\ <= NOT \CPU|RAM_RET|ram~809_combout\;
\CPU|RAM_RET|ALT_INV_ram~808_combout\ <= NOT \CPU|RAM_RET|ram~808_combout\;
\CPU|RAM_RET|ALT_INV_ram~807_combout\ <= NOT \CPU|RAM_RET|ram~807_combout\;
\CPU|RAM_RET|ALT_INV_ram~806_combout\ <= NOT \CPU|RAM_RET|ram~806_combout\;
\CPU|RAM_RET|ALT_INV_ram~805_combout\ <= NOT \CPU|RAM_RET|ram~805_combout\;
\CPU|RAM_RET|ALT_INV_ram~804_combout\ <= NOT \CPU|RAM_RET|ram~804_combout\;
\CPU|RAM_RET|ALT_INV_ram~803_combout\ <= NOT \CPU|RAM_RET|ram~803_combout\;
\CPU|RAM_RET|ALT_INV_ram~802_combout\ <= NOT \CPU|RAM_RET|ram~802_combout\;
\CPU|RAM_RET|ALT_INV_ram~801_combout\ <= NOT \CPU|RAM_RET|ram~801_combout\;
\CPU|RAM_RET|ALT_INV_ram~800_combout\ <= NOT \CPU|RAM_RET|ram~800_combout\;
\CPU|RAM_RET|ALT_INV_ram~799_combout\ <= NOT \CPU|RAM_RET|ram~799_combout\;
\CPU|RAM_RET|ALT_INV_ram~798_combout\ <= NOT \CPU|RAM_RET|ram~798_combout\;
\CPU|RAM_RET|ALT_INV_ram~797_combout\ <= NOT \CPU|RAM_RET|ram~797_combout\;
\CPU|RAM_RET|ALT_INV_ram~796_combout\ <= NOT \CPU|RAM_RET|ram~796_combout\;
\CPU|RAM_RET|ALT_INV_ram~795_combout\ <= NOT \CPU|RAM_RET|ram~795_combout\;
\CPU|RAM_RET|ALT_INV_ram~794_combout\ <= NOT \CPU|RAM_RET|ram~794_combout\;
\CPU|RAM_RET|ALT_INV_ram~793_combout\ <= NOT \CPU|RAM_RET|ram~793_combout\;
\CPU|RAM_RET|ALT_INV_ram~792_combout\ <= NOT \CPU|RAM_RET|ram~792_combout\;
\CPU|RAM_RET|ALT_INV_ram~791_combout\ <= NOT \CPU|RAM_RET|ram~791_combout\;
\CPU|RAM_RET|ALT_INV_ram~790_combout\ <= NOT \CPU|RAM_RET|ram~790_combout\;
\CPU|RAM_RET|ALT_INV_ram~789_combout\ <= NOT \CPU|RAM_RET|ram~789_combout\;
\CPU|RAM_RET|ALT_INV_ram~788_combout\ <= NOT \CPU|RAM_RET|ram~788_combout\;
\CPU|RAM_RET|ALT_INV_ram~787_combout\ <= NOT \CPU|RAM_RET|ram~787_combout\;
\CPU|RAM_RET|ALT_INV_ram~786_combout\ <= NOT \CPU|RAM_RET|ram~786_combout\;
\CPU|RAM_RET|ALT_INV_ram~785_combout\ <= NOT \CPU|RAM_RET|ram~785_combout\;
\CPU|RAM_RET|ALT_INV_ram~784_combout\ <= NOT \CPU|RAM_RET|ram~784_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~2_combout\ <= NOT \CPU|decoderInstru|Equal11~2_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~1_combout\ <= NOT \CPU|decoderInstru|Equal11~1_combout\;
\CPU|decoderInstru|ALT_INV_saida[13]~6_combout\ <= NOT \CPU|decoderInstru|saida[13]~6_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~0_combout\ <= NOT \CPU|decoderInstru|Equal11~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[2]~5_combout\ <= NOT \CPU|decoderInstru|saida[2]~5_combout\;
\CPU|decoderInstru|ALT_INV_saida~4_combout\ <= NOT \CPU|decoderInstru|saida~4_combout\;
\CPU|ULA1|ALT_INV_saida[5]~5_combout\ <= NOT \CPU|ULA1|saida[5]~5_combout\;
\CPU|ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|ULA1|saida[4]~4_combout\;
\CPU|ULA1|ALT_INV_saida[3]~3_combout\ <= NOT \CPU|ULA1|saida[3]~3_combout\;
\CPU|ULA1|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|ULA1|saida[1]~1_combout\;
\CPU|decoderInstru|ALT_INV_saida~3_combout\ <= NOT \CPU|decoderInstru|saida~3_combout\;
\CPU|decoderInstru|ALT_INV_saida~2_combout\ <= NOT \CPU|decoderInstru|saida~2_combout\;
\CPU|decoderInstru|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|decoderInstru|saida[1]~1_combout\;
\CPU|RAM_RET|ALT_INV_ram~783_combout\ <= NOT \CPU|RAM_RET|ram~783_combout\;
\CPU|RAM_RET|ALT_INV_ram~782_combout\ <= NOT \CPU|RAM_RET|ram~782_combout\;
\CPU|RAM_RET|ALT_INV_ram~781_combout\ <= NOT \CPU|RAM_RET|ram~781_combout\;
\CPU|RAM_RET|ALT_INV_ram~780_combout\ <= NOT \CPU|RAM_RET|ram~780_combout\;
\CPU|RAM_RET|ALT_INV_ram~779_combout\ <= NOT \CPU|RAM_RET|ram~779_combout\;
\CPU|RAM_RET|ALT_INV_ram~778_combout\ <= NOT \CPU|RAM_RET|ram~778_combout\;
\CPU|RAM_RET|ALT_INV_ram~777_combout\ <= NOT \CPU|RAM_RET|ram~777_combout\;
\CPU|RAM_RET|ALT_INV_ram~776_combout\ <= NOT \CPU|RAM_RET|ram~776_combout\;
\CPU|RAM_RET|ALT_INV_ram~775_combout\ <= NOT \CPU|RAM_RET|ram~775_combout\;
\CPU|RAM_RET|ALT_INV_ram~774_combout\ <= NOT \CPU|RAM_RET|ram~774_combout\;
\CPU|RAM_RET|ALT_INV_ram~773_combout\ <= NOT \CPU|RAM_RET|ram~773_combout\;
\CPU|RAM_RET|ALT_INV_ram~772_combout\ <= NOT \CPU|RAM_RET|ram~772_combout\;
\CPU|RAM_RET|ALT_INV_ram~771_combout\ <= NOT \CPU|RAM_RET|ram~771_combout\;
\CPU|RAM_RET|ALT_INV_ram~770_combout\ <= NOT \CPU|RAM_RET|ram~770_combout\;
\CPU|RAM_RET|ALT_INV_ram~769_combout\ <= NOT \CPU|RAM_RET|ram~769_combout\;
\CPU|RAM_RET|ALT_INV_ram~768_combout\ <= NOT \CPU|RAM_RET|ram~768_combout\;
\CPU|RAM_RET|ALT_INV_ram~767_combout\ <= NOT \CPU|RAM_RET|ram~767_combout\;
\CPU|RAM_RET|ALT_INV_ram~766_combout\ <= NOT \CPU|RAM_RET|ram~766_combout\;
\CPU|RAM_RET|ALT_INV_ram~765_combout\ <= NOT \CPU|RAM_RET|ram~765_combout\;
\CPU|RAM_RET|ALT_INV_ram~764_combout\ <= NOT \CPU|RAM_RET|ram~764_combout\;
\CPU|RAM_RET|ALT_INV_ram~763_combout\ <= NOT \CPU|RAM_RET|ram~763_combout\;
\CPU|RAM_RET|ALT_INV_ram~762_combout\ <= NOT \CPU|RAM_RET|ram~762_combout\;
\CPU|RAM_RET|ALT_INV_ram~761_combout\ <= NOT \CPU|RAM_RET|ram~761_combout\;
\CPU|RAM_RET|ALT_INV_ram~760_combout\ <= NOT \CPU|RAM_RET|ram~760_combout\;
\CPU|RAM_RET|ALT_INV_ram~759_combout\ <= NOT \CPU|RAM_RET|ram~759_combout\;
\CPU|RAM_RET|ALT_INV_ram~758_combout\ <= NOT \CPU|RAM_RET|ram~758_combout\;
\CPU|RAM_RET|ALT_INV_ram~757_combout\ <= NOT \CPU|RAM_RET|ram~757_combout\;
\CPU|RAM_RET|ALT_INV_ram~756_combout\ <= NOT \CPU|RAM_RET|ram~756_combout\;
\CPU|RAM_RET|ALT_INV_ram~755_combout\ <= NOT \CPU|RAM_RET|ram~755_combout\;
\CPU|RAM_RET|ALT_INV_ram~754_combout\ <= NOT \CPU|RAM_RET|ram~754_combout\;
\CPU|RAM_RET|ALT_INV_ram~753_combout\ <= NOT \CPU|RAM_RET|ram~753_combout\;
\CPU|RAM_RET|ALT_INV_ram~752_combout\ <= NOT \CPU|RAM_RET|ram~752_combout\;
\CPU|RAM_RET|ALT_INV_ram~751_combout\ <= NOT \CPU|RAM_RET|ram~751_combout\;
\CPU|RAM_RET|ALT_INV_ram~750_combout\ <= NOT \CPU|RAM_RET|ram~750_combout\;
\CPU|RAM_RET|ALT_INV_ram~749_combout\ <= NOT \CPU|RAM_RET|ram~749_combout\;
\CPU|RAM_RET|ALT_INV_ram~748_combout\ <= NOT \CPU|RAM_RET|ram~748_combout\;
\CPU|RAM_RET|ALT_INV_ram~747_combout\ <= NOT \CPU|RAM_RET|ram~747_combout\;
\CPU|RAM_RET|ALT_INV_ram~746_combout\ <= NOT \CPU|RAM_RET|ram~746_combout\;
\CPU|RAM_RET|ALT_INV_ram~745_combout\ <= NOT \CPU|RAM_RET|ram~745_combout\;
\CPU|RAM_RET|ALT_INV_ram~744_combout\ <= NOT \CPU|RAM_RET|ram~744_combout\;
\CPU|RAM_RET|ALT_INV_ram~743_combout\ <= NOT \CPU|RAM_RET|ram~743_combout\;
\CPU|RAM_RET|ALT_INV_ram~742_combout\ <= NOT \CPU|RAM_RET|ram~742_combout\;
\CPU|RAM_RET|ALT_INV_ram~741_combout\ <= NOT \CPU|RAM_RET|ram~741_combout\;
\CPU|RAM_RET|ALT_INV_ram~740_combout\ <= NOT \CPU|RAM_RET|ram~740_combout\;
\CPU|RAM_RET|ALT_INV_ram~739_combout\ <= NOT \CPU|RAM_RET|ram~739_combout\;
\CPU|RAM_RET|ALT_INV_ram~738_combout\ <= NOT \CPU|RAM_RET|ram~738_combout\;
\CPU|RAM_RET|ALT_INV_ram~737_combout\ <= NOT \CPU|RAM_RET|ram~737_combout\;
\CPU|RAM_RET|ALT_INV_ram~736_combout\ <= NOT \CPU|RAM_RET|ram~736_combout\;
\CPU|RAM_RET|ALT_INV_ram~735_combout\ <= NOT \CPU|RAM_RET|ram~735_combout\;
\CPU|RAM_RET|ALT_INV_ram~734_combout\ <= NOT \CPU|RAM_RET|ram~734_combout\;
\CPU|RAM_RET|ALT_INV_ram~733_combout\ <= NOT \CPU|RAM_RET|ram~733_combout\;
\CPU|RAM_RET|ALT_INV_ram~732_combout\ <= NOT \CPU|RAM_RET|ram~732_combout\;
\CPU|RAM_RET|ALT_INV_ram~731_combout\ <= NOT \CPU|RAM_RET|ram~731_combout\;
\CPU|RAM_RET|ALT_INV_ram~730_combout\ <= NOT \CPU|RAM_RET|ram~730_combout\;
\CPU|RAM_RET|ALT_INV_ram~729_combout\ <= NOT \CPU|RAM_RET|ram~729_combout\;
\CPU|RAM_RET|ALT_INV_ram~728_combout\ <= NOT \CPU|RAM_RET|ram~728_combout\;
\CPU|RAM_RET|ALT_INV_ram~727_combout\ <= NOT \CPU|RAM_RET|ram~727_combout\;
\CPU|RAM_RET|ALT_INV_ram~726_combout\ <= NOT \CPU|RAM_RET|ram~726_combout\;
\CPU|RAM_RET|ALT_INV_ram~725_combout\ <= NOT \CPU|RAM_RET|ram~725_combout\;
\CPU|RAM_RET|ALT_INV_ram~724_combout\ <= NOT \CPU|RAM_RET|ram~724_combout\;
\CPU|RAM_RET|ALT_INV_ram~723_combout\ <= NOT \CPU|RAM_RET|ram~723_combout\;
\CPU|RAM_RET|ALT_INV_ram~722_combout\ <= NOT \CPU|RAM_RET|ram~722_combout\;
\CPU|RAM_RET|ALT_INV_ram~721_combout\ <= NOT \CPU|RAM_RET|ram~721_combout\;
\CPU|RAM_RET|ALT_INV_ram~720_combout\ <= NOT \CPU|RAM_RET|ram~720_combout\;
\CPU|RAM_RET|ALT_INV_ram~719_combout\ <= NOT \CPU|RAM_RET|ram~719_combout\;
\CPU|RAM_RET|ALT_INV_ram~718_combout\ <= NOT \CPU|RAM_RET|ram~718_combout\;
\CPU|RAM_RET|ALT_INV_ram~717_combout\ <= NOT \CPU|RAM_RET|ram~717_combout\;
\CPU|RAM_RET|ALT_INV_ram~716_combout\ <= NOT \CPU|RAM_RET|ram~716_combout\;
\CPU|RAM_RET|ALT_INV_ram~715_combout\ <= NOT \CPU|RAM_RET|ram~715_combout\;
\CPU|RAM_RET|ALT_INV_ram~714_combout\ <= NOT \CPU|RAM_RET|ram~714_combout\;
\CPU|RAM_RET|ALT_INV_ram~713_combout\ <= NOT \CPU|RAM_RET|ram~713_combout\;
\CPU|RAM_RET|ALT_INV_ram~712_combout\ <= NOT \CPU|RAM_RET|ram~712_combout\;
\CPU|RAM_RET|ALT_INV_ram~711_combout\ <= NOT \CPU|RAM_RET|ram~711_combout\;
\CPU|RAM_RET|ALT_INV_ram~710_combout\ <= NOT \CPU|RAM_RET|ram~710_combout\;
\CPU|RAM_RET|ALT_INV_ram~709_combout\ <= NOT \CPU|RAM_RET|ram~709_combout\;
\CPU|RAM_RET|ALT_INV_ram~708_combout\ <= NOT \CPU|RAM_RET|ram~708_combout\;
\CPU|RAM_RET|ALT_INV_ram~707_combout\ <= NOT \CPU|RAM_RET|ram~707_combout\;
\CPU|RAM_RET|ALT_INV_ram~706_combout\ <= NOT \CPU|RAM_RET|ram~706_combout\;
\CPU|RAM_RET|ALT_INV_ram~705_combout\ <= NOT \CPU|RAM_RET|ram~705_combout\;
\CPU|RAM_RET|ALT_INV_ram~704_combout\ <= NOT \CPU|RAM_RET|ram~704_combout\;
\CPU|RAM_RET|ALT_INV_ram~703_combout\ <= NOT \CPU|RAM_RET|ram~703_combout\;
\CPU|RAM_RET|ALT_INV_ram~702_combout\ <= NOT \CPU|RAM_RET|ram~702_combout\;
\CPU|RAM_RET|ALT_INV_ram~701_combout\ <= NOT \CPU|RAM_RET|ram~701_combout\;
\CPU|RAM_RET|ALT_INV_ram~700_combout\ <= NOT \CPU|RAM_RET|ram~700_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\CPU|RAM_RET|ALT_INV_ram~699_combout\ <= NOT \CPU|RAM_RET|ram~699_combout\;
\CPU|RAM_RET|ALT_INV_ram~698_combout\ <= NOT \CPU|RAM_RET|ram~698_combout\;
\CPU|RAM_RET|ALT_INV_ram~697_combout\ <= NOT \CPU|RAM_RET|ram~697_combout\;
\CPU|RAM_RET|ALT_INV_ram~696_combout\ <= NOT \CPU|RAM_RET|ram~696_combout\;
\CPU|RAM_RET|ALT_INV_ram~695_combout\ <= NOT \CPU|RAM_RET|ram~695_combout\;
\CPU|RAM_RET|ALT_INV_ram~694_combout\ <= NOT \CPU|RAM_RET|ram~694_combout\;
\CPU|RAM_RET|ALT_INV_ram~693_combout\ <= NOT \CPU|RAM_RET|ram~693_combout\;
\CPU|RAM_RET|ALT_INV_ram~692_combout\ <= NOT \CPU|RAM_RET|ram~692_combout\;
\CPU|RAM_RET|ALT_INV_ram~691_combout\ <= NOT \CPU|RAM_RET|ram~691_combout\;
\CPU|RAM_RET|ALT_INV_ram~690_combout\ <= NOT \CPU|RAM_RET|ram~690_combout\;
\CPU|RAM_RET|ALT_INV_ram~689_combout\ <= NOT \CPU|RAM_RET|ram~689_combout\;
\CPU|RAM_RET|ALT_INV_ram~688_combout\ <= NOT \CPU|RAM_RET|ram~688_combout\;
\CPU|RAM_RET|ALT_INV_ram~687_combout\ <= NOT \CPU|RAM_RET|ram~687_combout\;
\CPU|RAM_RET|ALT_INV_ram~686_combout\ <= NOT \CPU|RAM_RET|ram~686_combout\;
\CPU|RAM_RET|ALT_INV_ram~685_combout\ <= NOT \CPU|RAM_RET|ram~685_combout\;
\CPU|RAM_RET|ALT_INV_ram~684_combout\ <= NOT \CPU|RAM_RET|ram~684_combout\;
\CPU|RAM_RET|ALT_INV_ram~683_combout\ <= NOT \CPU|RAM_RET|ram~683_combout\;
\CPU|RAM_RET|ALT_INV_ram~682_combout\ <= NOT \CPU|RAM_RET|ram~682_combout\;
\CPU|RAM_RET|ALT_INV_ram~681_combout\ <= NOT \CPU|RAM_RET|ram~681_combout\;
\CPU|RAM_RET|ALT_INV_ram~680_combout\ <= NOT \CPU|RAM_RET|ram~680_combout\;
\CPU|RAM_RET|ALT_INV_ram~679_combout\ <= NOT \CPU|RAM_RET|ram~679_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\CPU|RAM_RET|ALT_INV_ram~678_combout\ <= NOT \CPU|RAM_RET|ram~678_combout\;
\CPU|RAM_RET|ALT_INV_ram~677_combout\ <= NOT \CPU|RAM_RET|ram~677_combout\;
\CPU|RAM_RET|ALT_INV_ram~676_combout\ <= NOT \CPU|RAM_RET|ram~676_combout\;
\CPU|RAM_RET|ALT_INV_ram~675_combout\ <= NOT \CPU|RAM_RET|ram~675_combout\;
\CPU|RAM_RET|ALT_INV_ram~674_combout\ <= NOT \CPU|RAM_RET|ram~674_combout\;
\CPU|RAM_RET|ALT_INV_ram~673_combout\ <= NOT \CPU|RAM_RET|ram~673_combout\;
\CPU|RAM_RET|ALT_INV_ram~672_combout\ <= NOT \CPU|RAM_RET|ram~672_combout\;
\CPU|RAM_RET|ALT_INV_ram~671_combout\ <= NOT \CPU|RAM_RET|ram~671_combout\;
\CPU|RAM_RET|ALT_INV_ram~670_combout\ <= NOT \CPU|RAM_RET|ram~670_combout\;
\CPU|RAM_RET|ALT_INV_ram~669_combout\ <= NOT \CPU|RAM_RET|ram~669_combout\;
\CPU|RAM_RET|ALT_INV_ram~668_combout\ <= NOT \CPU|RAM_RET|ram~668_combout\;
\CPU|RAM_RET|ALT_INV_ram~667_combout\ <= NOT \CPU|RAM_RET|ram~667_combout\;
\CPU|RAM_RET|ALT_INV_ram~666_combout\ <= NOT \CPU|RAM_RET|ram~666_combout\;
\CPU|RAM_RET|ALT_INV_ram~665_combout\ <= NOT \CPU|RAM_RET|ram~665_combout\;
\CPU|RAM_RET|ALT_INV_ram~664_combout\ <= NOT \CPU|RAM_RET|ram~664_combout\;
\CPU|RAM_RET|ALT_INV_ram~663_combout\ <= NOT \CPU|RAM_RET|ram~663_combout\;
\CPU|RAM_RET|ALT_INV_ram~662_combout\ <= NOT \CPU|RAM_RET|ram~662_combout\;
\CPU|RAM_RET|ALT_INV_ram~661_combout\ <= NOT \CPU|RAM_RET|ram~661_combout\;
\CPU|RAM_RET|ALT_INV_ram~660_combout\ <= NOT \CPU|RAM_RET|ram~660_combout\;
\CPU|RAM_RET|ALT_INV_ram~659_combout\ <= NOT \CPU|RAM_RET|ram~659_combout\;
\CPU|RAM_RET|ALT_INV_ram~658_combout\ <= NOT \CPU|RAM_RET|ram~658_combout\;
\CPU|RAM_RET|ALT_INV_ram~657_combout\ <= NOT \CPU|RAM_RET|ram~657_combout\;
\CPU|RAM_RET|ALT_INV_ram~656_combout\ <= NOT \CPU|RAM_RET|ram~656_combout\;
\CPU|RAM_RET|ALT_INV_ram~655_combout\ <= NOT \CPU|RAM_RET|ram~655_combout\;
\CPU|RAM_RET|ALT_INV_ram~654_combout\ <= NOT \CPU|RAM_RET|ram~654_combout\;
\CPU|RAM_RET|ALT_INV_ram~653_combout\ <= NOT \CPU|RAM_RET|ram~653_combout\;
\CPU|RAM_RET|ALT_INV_ram~652_combout\ <= NOT \CPU|RAM_RET|ram~652_combout\;
\CPU|RAM_RET|ALT_INV_ram~651_combout\ <= NOT \CPU|RAM_RET|ram~651_combout\;
\CPU|RAM_RET|ALT_INV_ram~650_combout\ <= NOT \CPU|RAM_RET|ram~650_combout\;
\CPU|RAM_RET|ALT_INV_ram~649_combout\ <= NOT \CPU|RAM_RET|ram~649_combout\;
\CPU|RAM_RET|ALT_INV_ram~648_combout\ <= NOT \CPU|RAM_RET|ram~648_combout\;
\CPU|RAM_RET|ALT_INV_ram~647_combout\ <= NOT \CPU|RAM_RET|ram~647_combout\;
\CPU|RAM_RET|ALT_INV_ram~646_combout\ <= NOT \CPU|RAM_RET|ram~646_combout\;
\CPU|RAM_RET|ALT_INV_ram~645_combout\ <= NOT \CPU|RAM_RET|ram~645_combout\;
\CPU|RAM_RET|ALT_INV_ram~644_combout\ <= NOT \CPU|RAM_RET|ram~644_combout\;
\CPU|RAM_RET|ALT_INV_ram~643_combout\ <= NOT \CPU|RAM_RET|ram~643_combout\;
\CPU|RAM_RET|ALT_INV_ram~642_combout\ <= NOT \CPU|RAM_RET|ram~642_combout\;
\CPU|RAM_RET|ALT_INV_ram~641_combout\ <= NOT \CPU|RAM_RET|ram~641_combout\;
\CPU|RAM_RET|ALT_INV_ram~640_combout\ <= NOT \CPU|RAM_RET|ram~640_combout\;
\CPU|RAM_RET|ALT_INV_ram~639_combout\ <= NOT \CPU|RAM_RET|ram~639_combout\;
\CPU|RAM_RET|ALT_INV_ram~638_combout\ <= NOT \CPU|RAM_RET|ram~638_combout\;
\CPU|RAM_RET|ALT_INV_ram~637_combout\ <= NOT \CPU|RAM_RET|ram~637_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\CPU|RAM_RET|ALT_INV_ram~636_combout\ <= NOT \CPU|RAM_RET|ram~636_combout\;
\CPU|RAM_RET|ALT_INV_ram~635_combout\ <= NOT \CPU|RAM_RET|ram~635_combout\;
\CPU|RAM_RET|ALT_INV_ram~634_combout\ <= NOT \CPU|RAM_RET|ram~634_combout\;
\CPU|RAM_RET|ALT_INV_ram~633_combout\ <= NOT \CPU|RAM_RET|ram~633_combout\;
\CPU|RAM_RET|ALT_INV_ram~632_combout\ <= NOT \CPU|RAM_RET|ram~632_combout\;
\CPU|RAM_RET|ALT_INV_ram~631_combout\ <= NOT \CPU|RAM_RET|ram~631_combout\;
\CPU|RAM_RET|ALT_INV_ram~630_combout\ <= NOT \CPU|RAM_RET|ram~630_combout\;
\CPU|RAM_RET|ALT_INV_ram~629_combout\ <= NOT \CPU|RAM_RET|ram~629_combout\;
\CPU|RAM_RET|ALT_INV_ram~628_combout\ <= NOT \CPU|RAM_RET|ram~628_combout\;
\CPU|RAM_RET|ALT_INV_ram~627_combout\ <= NOT \CPU|RAM_RET|ram~627_combout\;
\CPU|RAM_RET|ALT_INV_ram~626_combout\ <= NOT \CPU|RAM_RET|ram~626_combout\;
\CPU|RAM_RET|ALT_INV_ram~625_combout\ <= NOT \CPU|RAM_RET|ram~625_combout\;
\CPU|RAM_RET|ALT_INV_ram~624_combout\ <= NOT \CPU|RAM_RET|ram~624_combout\;
\CPU|RAM_RET|ALT_INV_ram~623_combout\ <= NOT \CPU|RAM_RET|ram~623_combout\;
\CPU|RAM_RET|ALT_INV_ram~622_combout\ <= NOT \CPU|RAM_RET|ram~622_combout\;
\CPU|RAM_RET|ALT_INV_ram~621_combout\ <= NOT \CPU|RAM_RET|ram~621_combout\;
\CPU|RAM_RET|ALT_INV_ram~620_combout\ <= NOT \CPU|RAM_RET|ram~620_combout\;
\CPU|RAM_RET|ALT_INV_ram~619_combout\ <= NOT \CPU|RAM_RET|ram~619_combout\;
\CPU|RAM_RET|ALT_INV_ram~618_combout\ <= NOT \CPU|RAM_RET|ram~618_combout\;
\CPU|RAM_RET|ALT_INV_ram~617_combout\ <= NOT \CPU|RAM_RET|ram~617_combout\;
\CPU|RAM_RET|ALT_INV_ram~616_combout\ <= NOT \CPU|RAM_RET|ram~616_combout\;
\CPU|RAM_RET|ALT_INV_ram~615_combout\ <= NOT \CPU|RAM_RET|ram~615_combout\;
\CPU|RAM_RET|ALT_INV_ram~614_combout\ <= NOT \CPU|RAM_RET|ram~614_combout\;
\CPU|RAM_RET|ALT_INV_ram~613_combout\ <= NOT \CPU|RAM_RET|ram~613_combout\;
\CPU|RAM_RET|ALT_INV_ram~612_combout\ <= NOT \CPU|RAM_RET|ram~612_combout\;
\CPU|RAM_RET|ALT_INV_ram~611_combout\ <= NOT \CPU|RAM_RET|ram~611_combout\;
\CPU|RAM_RET|ALT_INV_ram~610_combout\ <= NOT \CPU|RAM_RET|ram~610_combout\;
\CPU|RAM_RET|ALT_INV_ram~609_combout\ <= NOT \CPU|RAM_RET|ram~609_combout\;
\CPU|RAM_RET|ALT_INV_ram~608_combout\ <= NOT \CPU|RAM_RET|ram~608_combout\;
\CPU|RAM_RET|ALT_INV_ram~607_combout\ <= NOT \CPU|RAM_RET|ram~607_combout\;
\CPU|RAM_RET|ALT_INV_ram~606_combout\ <= NOT \CPU|RAM_RET|ram~606_combout\;
\CPU|RAM_RET|ALT_INV_ram~605_combout\ <= NOT \CPU|RAM_RET|ram~605_combout\;
\CPU|RAM_RET|ALT_INV_ram~604_combout\ <= NOT \CPU|RAM_RET|ram~604_combout\;
\CPU|RAM_RET|ALT_INV_ram~603_combout\ <= NOT \CPU|RAM_RET|ram~603_combout\;
\CPU|RAM_RET|ALT_INV_ram~602_combout\ <= NOT \CPU|RAM_RET|ram~602_combout\;
\CPU|RAM_RET|ALT_INV_ram~601_combout\ <= NOT \CPU|RAM_RET|ram~601_combout\;
\CPU|RAM_RET|ALT_INV_ram~600_combout\ <= NOT \CPU|RAM_RET|ram~600_combout\;
\CPU|RAM_RET|ALT_INV_ram~599_combout\ <= NOT \CPU|RAM_RET|ram~599_combout\;
\CPU|RAM_RET|ALT_INV_ram~598_combout\ <= NOT \CPU|RAM_RET|ram~598_combout\;
\CPU|RAM_RET|ALT_INV_ram~597_combout\ <= NOT \CPU|RAM_RET|ram~597_combout\;
\CPU|RAM_RET|ALT_INV_ram~596_combout\ <= NOT \CPU|RAM_RET|ram~596_combout\;
\CPU|RAM_RET|ALT_INV_ram~595_combout\ <= NOT \CPU|RAM_RET|ram~595_combout\;
\CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \CPU|MUX2|saida_MUX[2]~0_combout\;
\CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUXRET|saida_MUX[5]~5_combout\;
\CPU|RET|ALT_INV_DOUT\(5) <= NOT \CPU|RET|DOUT\(5);
\CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUXRET|saida_MUX[4]~4_combout\;
\CPU|RET|ALT_INV_DOUT\(4) <= NOT \CPU|RET|DOUT\(4);
\CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUXRET|saida_MUX[3]~3_combout\;
\CPU|RET|ALT_INV_DOUT\(3) <= NOT \CPU|RET|DOUT\(3);
\CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUXRET|saida_MUX[2]~2_combout\;
\CPU|RET|ALT_INV_DOUT\(2) <= NOT \CPU|RET|DOUT\(2);
\CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUXRET|saida_MUX[1]~1_combout\;
\CPU|RET|ALT_INV_DOUT\(1) <= NOT \CPU|RET|DOUT\(1);
\CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUXRET|saida_MUX[0]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[13]~0_combout\ <= NOT \CPU|decoderInstru|saida[13]~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\CPU|RET|ALT_INV_DOUT\(0) <= NOT \CPU|RET|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|RAM_RET|ALT_INV_ram~594_q\ <= NOT \CPU|RAM_RET|ram~594_q\;
\CPU|RAM_RET|ALT_INV_ram~450_q\ <= NOT \CPU|RAM_RET|ram~450_q\;
\CPU|RAM_RET|ALT_INV_ram~306_q\ <= NOT \CPU|RAM_RET|ram~306_q\;
\CPU|RAM_RET|ALT_INV_ram~162_q\ <= NOT \CPU|RAM_RET|ram~162_q\;
\CPU|RAM_RET|ALT_INV_ram~585_q\ <= NOT \CPU|RAM_RET|ram~585_q\;
\CPU|RAM_RET|ALT_INV_ram~441_q\ <= NOT \CPU|RAM_RET|ram~441_q\;
\CPU|RAM_RET|ALT_INV_ram~297_q\ <= NOT \CPU|RAM_RET|ram~297_q\;
\CPU|RAM_RET|ALT_INV_ram~153_q\ <= NOT \CPU|RAM_RET|ram~153_q\;
\CPU|RAM_RET|ALT_INV_ram~576_q\ <= NOT \CPU|RAM_RET|ram~576_q\;
\CPU|RAM_RET|ALT_INV_ram~432_q\ <= NOT \CPU|RAM_RET|ram~432_q\;
\CPU|RAM_RET|ALT_INV_ram~288_q\ <= NOT \CPU|RAM_RET|ram~288_q\;
\CPU|RAM_RET|ALT_INV_ram~144_q\ <= NOT \CPU|RAM_RET|ram~144_q\;
\CPU|RAM_RET|ALT_INV_ram~567_q\ <= NOT \CPU|RAM_RET|ram~567_q\;
\CPU|RAM_RET|ALT_INV_ram~423_q\ <= NOT \CPU|RAM_RET|ram~423_q\;
\CPU|RAM_RET|ALT_INV_ram~279_q\ <= NOT \CPU|RAM_RET|ram~279_q\;
\CPU|RAM_RET|ALT_INV_ram~135_q\ <= NOT \CPU|RAM_RET|ram~135_q\;
\CPU|RAM_RET|ALT_INV_ram~558_q\ <= NOT \CPU|RAM_RET|ram~558_q\;
\CPU|RAM_RET|ALT_INV_ram~549_q\ <= NOT \CPU|RAM_RET|ram~549_q\;
\CPU|RAM_RET|ALT_INV_ram~540_q\ <= NOT \CPU|RAM_RET|ram~540_q\;
\CPU|RAM_RET|ALT_INV_ram~531_q\ <= NOT \CPU|RAM_RET|ram~531_q\;
\CPU|RAM_RET|ALT_INV_ram~414_q\ <= NOT \CPU|RAM_RET|ram~414_q\;
\CPU|RAM_RET|ALT_INV_ram~405_q\ <= NOT \CPU|RAM_RET|ram~405_q\;
\CPU|RAM_RET|ALT_INV_ram~396_q\ <= NOT \CPU|RAM_RET|ram~396_q\;
\CPU|RAM_RET|ALT_INV_ram~387_q\ <= NOT \CPU|RAM_RET|ram~387_q\;
\CPU|RAM_RET|ALT_INV_ram~270_q\ <= NOT \CPU|RAM_RET|ram~270_q\;
\CPU|RAM_RET|ALT_INV_ram~261_q\ <= NOT \CPU|RAM_RET|ram~261_q\;
\CPU|RAM_RET|ALT_INV_ram~252_q\ <= NOT \CPU|RAM_RET|ram~252_q\;
\CPU|RAM_RET|ALT_INV_ram~243_q\ <= NOT \CPU|RAM_RET|ram~243_q\;
\CPU|RAM_RET|ALT_INV_ram~126_q\ <= NOT \CPU|RAM_RET|ram~126_q\;
\CPU|RAM_RET|ALT_INV_ram~117_q\ <= NOT \CPU|RAM_RET|ram~117_q\;
\CPU|RAM_RET|ALT_INV_ram~108_q\ <= NOT \CPU|RAM_RET|ram~108_q\;
\CPU|RAM_RET|ALT_INV_ram~99_q\ <= NOT \CPU|RAM_RET|ram~99_q\;
\CPU|RAM_RET|ALT_INV_ram~522_q\ <= NOT \CPU|RAM_RET|ram~522_q\;
\CPU|RAM_RET|ALT_INV_ram~513_q\ <= NOT \CPU|RAM_RET|ram~513_q\;
\CPU|RAM_RET|ALT_INV_ram~504_q\ <= NOT \CPU|RAM_RET|ram~504_q\;
\CPU|RAM_RET|ALT_INV_ram~495_q\ <= NOT \CPU|RAM_RET|ram~495_q\;
\CPU|RAM_RET|ALT_INV_ram~378_q\ <= NOT \CPU|RAM_RET|ram~378_q\;
\CPU|RAM_RET|ALT_INV_ram~369_q\ <= NOT \CPU|RAM_RET|ram~369_q\;
\CPU|RAM_RET|ALT_INV_ram~360_q\ <= NOT \CPU|RAM_RET|ram~360_q\;
\CPU|RAM_RET|ALT_INV_ram~351_q\ <= NOT \CPU|RAM_RET|ram~351_q\;
\CPU|RAM_RET|ALT_INV_ram~234_q\ <= NOT \CPU|RAM_RET|ram~234_q\;
\CPU|RAM_RET|ALT_INV_ram~225_q\ <= NOT \CPU|RAM_RET|ram~225_q\;
\CPU|RAM_RET|ALT_INV_ram~216_q\ <= NOT \CPU|RAM_RET|ram~216_q\;
\CPU|RAM_RET|ALT_INV_ram~207_q\ <= NOT \CPU|RAM_RET|ram~207_q\;
\CPU|RAM_RET|ALT_INV_ram~90_q\ <= NOT \CPU|RAM_RET|ram~90_q\;
\CPU|RAM_RET|ALT_INV_ram~81_q\ <= NOT \CPU|RAM_RET|ram~81_q\;
\CPU|RAM_RET|ALT_INV_ram~72_q\ <= NOT \CPU|RAM_RET|ram~72_q\;
\CPU|RAM_RET|ALT_INV_ram~63_q\ <= NOT \CPU|RAM_RET|ram~63_q\;
\CPU|RAM_RET|ALT_INV_ram~486_q\ <= NOT \CPU|RAM_RET|ram~486_q\;
\CPU|RAM_RET|ALT_INV_ram~477_q\ <= NOT \CPU|RAM_RET|ram~477_q\;
\CPU|RAM_RET|ALT_INV_ram~468_q\ <= NOT \CPU|RAM_RET|ram~468_q\;
\CPU|RAM_RET|ALT_INV_ram~459_q\ <= NOT \CPU|RAM_RET|ram~459_q\;
\CPU|RAM_RET|ALT_INV_ram~342_q\ <= NOT \CPU|RAM_RET|ram~342_q\;
\CPU|RAM_RET|ALT_INV_ram~333_q\ <= NOT \CPU|RAM_RET|ram~333_q\;
\CPU|RAM_RET|ALT_INV_ram~324_q\ <= NOT \CPU|RAM_RET|ram~324_q\;
\CPU|RAM_RET|ALT_INV_ram~315_q\ <= NOT \CPU|RAM_RET|ram~315_q\;
\CPU|RAM_RET|ALT_INV_ram~198_q\ <= NOT \CPU|RAM_RET|ram~198_q\;
\CPU|RAM_RET|ALT_INV_ram~189_q\ <= NOT \CPU|RAM_RET|ram~189_q\;
\CPU|RAM_RET|ALT_INV_ram~180_q\ <= NOT \CPU|RAM_RET|ram~180_q\;
\CPU|RAM_RET|ALT_INV_ram~171_q\ <= NOT \CPU|RAM_RET|ram~171_q\;
\CPU|RAM_RET|ALT_INV_ram~54_q\ <= NOT \CPU|RAM_RET|ram~54_q\;
\CPU|RAM_RET|ALT_INV_ram~45_q\ <= NOT \CPU|RAM_RET|ram~45_q\;
\CPU|RAM_RET|ALT_INV_ram~36_q\ <= NOT \CPU|RAM_RET|ram~36_q\;
\CPU|RAM_RET|ALT_INV_ram~27_q\ <= NOT \CPU|RAM_RET|ram~27_q\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|RAM_RET|ALT_INV_ram~593_q\ <= NOT \CPU|RAM_RET|ram~593_q\;
\CPU|RAM_RET|ALT_INV_ram~449_q\ <= NOT \CPU|RAM_RET|ram~449_q\;
\CPU|RAM_RET|ALT_INV_ram~305_q\ <= NOT \CPU|RAM_RET|ram~305_q\;
\CPU|RAM_RET|ALT_INV_ram~161_q\ <= NOT \CPU|RAM_RET|ram~161_q\;
\CPU|RAM_RET|ALT_INV_ram~557_q\ <= NOT \CPU|RAM_RET|ram~557_q\;
\CPU|RAM_RET|ALT_INV_ram~413_q\ <= NOT \CPU|RAM_RET|ram~413_q\;
\CPU|RAM_RET|ALT_INV_ram~269_q\ <= NOT \CPU|RAM_RET|ram~269_q\;
\CPU|RAM_RET|ALT_INV_ram~125_q\ <= NOT \CPU|RAM_RET|ram~125_q\;
\CPU|RAM_RET|ALT_INV_ram~521_q\ <= NOT \CPU|RAM_RET|ram~521_q\;
\CPU|RAM_RET|ALT_INV_ram~377_q\ <= NOT \CPU|RAM_RET|ram~377_q\;
\CPU|RAM_RET|ALT_INV_ram~233_q\ <= NOT \CPU|RAM_RET|ram~233_q\;
\CPU|RAM_RET|ALT_INV_ram~89_q\ <= NOT \CPU|RAM_RET|ram~89_q\;
\CPU|RAM_RET|ALT_INV_ram~485_q\ <= NOT \CPU|RAM_RET|ram~485_q\;
\CPU|RAM_RET|ALT_INV_ram~341_q\ <= NOT \CPU|RAM_RET|ram~341_q\;
\CPU|RAM_RET|ALT_INV_ram~197_q\ <= NOT \CPU|RAM_RET|ram~197_q\;
\CPU|RAM_RET|ALT_INV_ram~53_q\ <= NOT \CPU|RAM_RET|ram~53_q\;
\CPU|RAM_RET|ALT_INV_ram~584_q\ <= NOT \CPU|RAM_RET|ram~584_q\;
\CPU|RAM_RET|ALT_INV_ram~548_q\ <= NOT \CPU|RAM_RET|ram~548_q\;
\CPU|RAM_RET|ALT_INV_ram~512_q\ <= NOT \CPU|RAM_RET|ram~512_q\;
\CPU|RAM_RET|ALT_INV_ram~476_q\ <= NOT \CPU|RAM_RET|ram~476_q\;
\CPU|RAM_RET|ALT_INV_ram~440_q\ <= NOT \CPU|RAM_RET|ram~440_q\;
\CPU|RAM_RET|ALT_INV_ram~404_q\ <= NOT \CPU|RAM_RET|ram~404_q\;
\CPU|RAM_RET|ALT_INV_ram~368_q\ <= NOT \CPU|RAM_RET|ram~368_q\;
\CPU|RAM_RET|ALT_INV_ram~332_q\ <= NOT \CPU|RAM_RET|ram~332_q\;
\CPU|RAM_RET|ALT_INV_ram~296_q\ <= NOT \CPU|RAM_RET|ram~296_q\;
\CPU|RAM_RET|ALT_INV_ram~260_q\ <= NOT \CPU|RAM_RET|ram~260_q\;
\CPU|RAM_RET|ALT_INV_ram~224_q\ <= NOT \CPU|RAM_RET|ram~224_q\;
\CPU|RAM_RET|ALT_INV_ram~188_q\ <= NOT \CPU|RAM_RET|ram~188_q\;
\CPU|RAM_RET|ALT_INV_ram~152_q\ <= NOT \CPU|RAM_RET|ram~152_q\;
\CPU|RAM_RET|ALT_INV_ram~116_q\ <= NOT \CPU|RAM_RET|ram~116_q\;
\CPU|RAM_RET|ALT_INV_ram~80_q\ <= NOT \CPU|RAM_RET|ram~80_q\;
\CPU|RAM_RET|ALT_INV_ram~44_q\ <= NOT \CPU|RAM_RET|ram~44_q\;
\CPU|RAM_RET|ALT_INV_ram~575_q\ <= NOT \CPU|RAM_RET|ram~575_q\;
\CPU|RAM_RET|ALT_INV_ram~431_q\ <= NOT \CPU|RAM_RET|ram~431_q\;
\CPU|RAM_RET|ALT_INV_ram~287_q\ <= NOT \CPU|RAM_RET|ram~287_q\;
\CPU|RAM_RET|ALT_INV_ram~143_q\ <= NOT \CPU|RAM_RET|ram~143_q\;
\CPU|RAM_RET|ALT_INV_ram~539_q\ <= NOT \CPU|RAM_RET|ram~539_q\;
\CPU|RAM_RET|ALT_INV_ram~395_q\ <= NOT \CPU|RAM_RET|ram~395_q\;
\CPU|RAM_RET|ALT_INV_ram~251_q\ <= NOT \CPU|RAM_RET|ram~251_q\;
\CPU|RAM_RET|ALT_INV_ram~107_q\ <= NOT \CPU|RAM_RET|ram~107_q\;
\CPU|RAM_RET|ALT_INV_ram~503_q\ <= NOT \CPU|RAM_RET|ram~503_q\;
\CPU|RAM_RET|ALT_INV_ram~359_q\ <= NOT \CPU|RAM_RET|ram~359_q\;
\CPU|RAM_RET|ALT_INV_ram~215_q\ <= NOT \CPU|RAM_RET|ram~215_q\;
\CPU|RAM_RET|ALT_INV_ram~71_q\ <= NOT \CPU|RAM_RET|ram~71_q\;
\CPU|RAM_RET|ALT_INV_ram~467_q\ <= NOT \CPU|RAM_RET|ram~467_q\;
\CPU|RAM_RET|ALT_INV_ram~323_q\ <= NOT \CPU|RAM_RET|ram~323_q\;
\CPU|RAM_RET|ALT_INV_ram~179_q\ <= NOT \CPU|RAM_RET|ram~179_q\;
\CPU|RAM_RET|ALT_INV_ram~35_q\ <= NOT \CPU|RAM_RET|ram~35_q\;
\CPU|RAM_RET|ALT_INV_ram~566_q\ <= NOT \CPU|RAM_RET|ram~566_q\;
\CPU|RAM_RET|ALT_INV_ram~422_q\ <= NOT \CPU|RAM_RET|ram~422_q\;
\CPU|RAM_RET|ALT_INV_ram~278_q\ <= NOT \CPU|RAM_RET|ram~278_q\;
\CPU|RAM_RET|ALT_INV_ram~134_q\ <= NOT \CPU|RAM_RET|ram~134_q\;
\CPU|RAM_RET|ALT_INV_ram~530_q\ <= NOT \CPU|RAM_RET|ram~530_q\;
\CPU|RAM_RET|ALT_INV_ram~386_q\ <= NOT \CPU|RAM_RET|ram~386_q\;
\CPU|RAM_RET|ALT_INV_ram~242_q\ <= NOT \CPU|RAM_RET|ram~242_q\;
\CPU|RAM_RET|ALT_INV_ram~98_q\ <= NOT \CPU|RAM_RET|ram~98_q\;
\CPU|RAM_RET|ALT_INV_ram~494_q\ <= NOT \CPU|RAM_RET|ram~494_q\;
\CPU|RAM_RET|ALT_INV_ram~350_q\ <= NOT \CPU|RAM_RET|ram~350_q\;
\CPU|RAM_RET|ALT_INV_ram~206_q\ <= NOT \CPU|RAM_RET|ram~206_q\;
\CPU|RAM_RET|ALT_INV_ram~62_q\ <= NOT \CPU|RAM_RET|ram~62_q\;
\CPU|RAM_RET|ALT_INV_ram~458_q\ <= NOT \CPU|RAM_RET|ram~458_q\;
\CPU|RAM_RET|ALT_INV_ram~314_q\ <= NOT \CPU|RAM_RET|ram~314_q\;
\CPU|RAM_RET|ALT_INV_ram~170_q\ <= NOT \CPU|RAM_RET|ram~170_q\;
\CPU|RAM_RET|ALT_INV_ram~26_q\ <= NOT \CPU|RAM_RET|ram~26_q\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|RAM_RET|ALT_INV_ram~592_q\ <= NOT \CPU|RAM_RET|ram~592_q\;
\CPU|RAM_RET|ALT_INV_ram~583_q\ <= NOT \CPU|RAM_RET|ram~583_q\;
\CPU|RAM_RET|ALT_INV_ram~574_q\ <= NOT \CPU|RAM_RET|ram~574_q\;
\CPU|RAM_RET|ALT_INV_ram~565_q\ <= NOT \CPU|RAM_RET|ram~565_q\;
\CPU|RAM_RET|ALT_INV_ram~556_q\ <= NOT \CPU|RAM_RET|ram~556_q\;
\CPU|RAM_RET|ALT_INV_ram~547_q\ <= NOT \CPU|RAM_RET|ram~547_q\;
\CPU|RAM_RET|ALT_INV_ram~538_q\ <= NOT \CPU|RAM_RET|ram~538_q\;
\CPU|RAM_RET|ALT_INV_ram~529_q\ <= NOT \CPU|RAM_RET|ram~529_q\;
\CPU|RAM_RET|ALT_INV_ram~520_q\ <= NOT \CPU|RAM_RET|ram~520_q\;
\CPU|RAM_RET|ALT_INV_ram~511_q\ <= NOT \CPU|RAM_RET|ram~511_q\;
\CPU|RAM_RET|ALT_INV_ram~502_q\ <= NOT \CPU|RAM_RET|ram~502_q\;
\CPU|RAM_RET|ALT_INV_ram~493_q\ <= NOT \CPU|RAM_RET|ram~493_q\;
\CPU|RAM_RET|ALT_INV_ram~484_q\ <= NOT \CPU|RAM_RET|ram~484_q\;
\CPU|RAM_RET|ALT_INV_ram~475_q\ <= NOT \CPU|RAM_RET|ram~475_q\;
\CPU|RAM_RET|ALT_INV_ram~466_q\ <= NOT \CPU|RAM_RET|ram~466_q\;
\CPU|RAM_RET|ALT_INV_ram~457_q\ <= NOT \CPU|RAM_RET|ram~457_q\;
\CPU|RAM_RET|ALT_INV_ram~448_q\ <= NOT \CPU|RAM_RET|ram~448_q\;
\CPU|RAM_RET|ALT_INV_ram~412_q\ <= NOT \CPU|RAM_RET|ram~412_q\;
\CPU|RAM_RET|ALT_INV_ram~376_q\ <= NOT \CPU|RAM_RET|ram~376_q\;
\CPU|RAM_RET|ALT_INV_ram~340_q\ <= NOT \CPU|RAM_RET|ram~340_q\;
\CPU|RAM_RET|ALT_INV_ram~439_q\ <= NOT \CPU|RAM_RET|ram~439_q\;
\CPU|RAM_RET|ALT_INV_ram~403_q\ <= NOT \CPU|RAM_RET|ram~403_q\;
\CPU|RAM_RET|ALT_INV_ram~367_q\ <= NOT \CPU|RAM_RET|ram~367_q\;
\CPU|RAM_RET|ALT_INV_ram~331_q\ <= NOT \CPU|RAM_RET|ram~331_q\;
\CPU|RAM_RET|ALT_INV_ram~430_q\ <= NOT \CPU|RAM_RET|ram~430_q\;
\CPU|RAM_RET|ALT_INV_ram~394_q\ <= NOT \CPU|RAM_RET|ram~394_q\;
\CPU|RAM_RET|ALT_INV_ram~358_q\ <= NOT \CPU|RAM_RET|ram~358_q\;
\CPU|RAM_RET|ALT_INV_ram~322_q\ <= NOT \CPU|RAM_RET|ram~322_q\;
\CPU|RAM_RET|ALT_INV_ram~421_q\ <= NOT \CPU|RAM_RET|ram~421_q\;
\CPU|RAM_RET|ALT_INV_ram~385_q\ <= NOT \CPU|RAM_RET|ram~385_q\;
\CPU|RAM_RET|ALT_INV_ram~349_q\ <= NOT \CPU|RAM_RET|ram~349_q\;
\CPU|RAM_RET|ALT_INV_ram~313_q\ <= NOT \CPU|RAM_RET|ram~313_q\;
\CPU|RAM_RET|ALT_INV_ram~304_q\ <= NOT \CPU|RAM_RET|ram~304_q\;
\CPU|RAM_RET|ALT_INV_ram~268_q\ <= NOT \CPU|RAM_RET|ram~268_q\;
\CPU|RAM_RET|ALT_INV_ram~232_q\ <= NOT \CPU|RAM_RET|ram~232_q\;
\CPU|RAM_RET|ALT_INV_ram~196_q\ <= NOT \CPU|RAM_RET|ram~196_q\;
\CPU|RAM_RET|ALT_INV_ram~295_q\ <= NOT \CPU|RAM_RET|ram~295_q\;
\CPU|RAM_RET|ALT_INV_ram~259_q\ <= NOT \CPU|RAM_RET|ram~259_q\;
\CPU|RAM_RET|ALT_INV_ram~223_q\ <= NOT \CPU|RAM_RET|ram~223_q\;
\CPU|RAM_RET|ALT_INV_ram~187_q\ <= NOT \CPU|RAM_RET|ram~187_q\;
\CPU|RAM_RET|ALT_INV_ram~286_q\ <= NOT \CPU|RAM_RET|ram~286_q\;
\CPU|RAM_RET|ALT_INV_ram~250_q\ <= NOT \CPU|RAM_RET|ram~250_q\;
\CPU|RAM_RET|ALT_INV_ram~214_q\ <= NOT \CPU|RAM_RET|ram~214_q\;
\CPU|RAM_RET|ALT_INV_ram~178_q\ <= NOT \CPU|RAM_RET|ram~178_q\;
\CPU|RAM_RET|ALT_INV_ram~277_q\ <= NOT \CPU|RAM_RET|ram~277_q\;
\CPU|RAM_RET|ALT_INV_ram~241_q\ <= NOT \CPU|RAM_RET|ram~241_q\;
\CPU|RAM_RET|ALT_INV_ram~205_q\ <= NOT \CPU|RAM_RET|ram~205_q\;
\CPU|RAM_RET|ALT_INV_ram~169_q\ <= NOT \CPU|RAM_RET|ram~169_q\;
\CPU|RAM_RET|ALT_INV_ram~160_q\ <= NOT \CPU|RAM_RET|ram~160_q\;
\CPU|RAM_RET|ALT_INV_ram~124_q\ <= NOT \CPU|RAM_RET|ram~124_q\;
\CPU|RAM_RET|ALT_INV_ram~88_q\ <= NOT \CPU|RAM_RET|ram~88_q\;
\CPU|RAM_RET|ALT_INV_ram~52_q\ <= NOT \CPU|RAM_RET|ram~52_q\;
\CPU|RAM_RET|ALT_INV_ram~151_q\ <= NOT \CPU|RAM_RET|ram~151_q\;
\CPU|RAM_RET|ALT_INV_ram~115_q\ <= NOT \CPU|RAM_RET|ram~115_q\;
\CPU|RAM_RET|ALT_INV_ram~79_q\ <= NOT \CPU|RAM_RET|ram~79_q\;
\CPU|RAM_RET|ALT_INV_ram~43_q\ <= NOT \CPU|RAM_RET|ram~43_q\;
\CPU|RAM_RET|ALT_INV_ram~142_q\ <= NOT \CPU|RAM_RET|ram~142_q\;
\CPU|RAM_RET|ALT_INV_ram~106_q\ <= NOT \CPU|RAM_RET|ram~106_q\;
\CPU|RAM_RET|ALT_INV_ram~70_q\ <= NOT \CPU|RAM_RET|ram~70_q\;
\CPU|RAM_RET|ALT_INV_ram~34_q\ <= NOT \CPU|RAM_RET|ram~34_q\;
\CPU|RAM_RET|ALT_INV_ram~133_q\ <= NOT \CPU|RAM_RET|ram~133_q\;
\CPU|RAM_RET|ALT_INV_ram~97_q\ <= NOT \CPU|RAM_RET|ram~97_q\;
\CPU|RAM_RET|ALT_INV_ram~61_q\ <= NOT \CPU|RAM_RET|ram~61_q\;
\CPU|RAM_RET|ALT_INV_ram~25_q\ <= NOT \CPU|RAM_RET|ram~25_q\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|RAM_RET|ALT_INV_ram~591_q\ <= NOT \CPU|RAM_RET|ram~591_q\;
\CPU|RAM_RET|ALT_INV_ram~447_q\ <= NOT \CPU|RAM_RET|ram~447_q\;
\CPU|RAM_RET|ALT_INV_ram~303_q\ <= NOT \CPU|RAM_RET|ram~303_q\;
\CPU|RAM_RET|ALT_INV_ram~159_q\ <= NOT \CPU|RAM_RET|ram~159_q\;
\CPU|RAM_RET|ALT_INV_ram~582_q\ <= NOT \CPU|RAM_RET|ram~582_q\;
\CPU|RAM_RET|ALT_INV_ram~438_q\ <= NOT \CPU|RAM_RET|ram~438_q\;
\CPU|RAM_RET|ALT_INV_ram~294_q\ <= NOT \CPU|RAM_RET|ram~294_q\;
\CPU|RAM_RET|ALT_INV_ram~150_q\ <= NOT \CPU|RAM_RET|ram~150_q\;
\CPU|RAM_RET|ALT_INV_ram~573_q\ <= NOT \CPU|RAM_RET|ram~573_q\;
\CPU|RAM_RET|ALT_INV_ram~429_q\ <= NOT \CPU|RAM_RET|ram~429_q\;
\CPU|RAM_RET|ALT_INV_ram~285_q\ <= NOT \CPU|RAM_RET|ram~285_q\;
\CPU|RAM_RET|ALT_INV_ram~141_q\ <= NOT \CPU|RAM_RET|ram~141_q\;
\CPU|RAM_RET|ALT_INV_ram~564_q\ <= NOT \CPU|RAM_RET|ram~564_q\;
\CPU|RAM_RET|ALT_INV_ram~420_q\ <= NOT \CPU|RAM_RET|ram~420_q\;
\CPU|RAM_RET|ALT_INV_ram~276_q\ <= NOT \CPU|RAM_RET|ram~276_q\;
\CPU|RAM_RET|ALT_INV_ram~132_q\ <= NOT \CPU|RAM_RET|ram~132_q\;
\CPU|RAM_RET|ALT_INV_ram~555_q\ <= NOT \CPU|RAM_RET|ram~555_q\;
\CPU|RAM_RET|ALT_INV_ram~546_q\ <= NOT \CPU|RAM_RET|ram~546_q\;
\CPU|RAM_RET|ALT_INV_ram~537_q\ <= NOT \CPU|RAM_RET|ram~537_q\;
\CPU|RAM_RET|ALT_INV_ram~528_q\ <= NOT \CPU|RAM_RET|ram~528_q\;
\CPU|RAM_RET|ALT_INV_ram~411_q\ <= NOT \CPU|RAM_RET|ram~411_q\;
\CPU|RAM_RET|ALT_INV_ram~402_q\ <= NOT \CPU|RAM_RET|ram~402_q\;
\CPU|RAM_RET|ALT_INV_ram~393_q\ <= NOT \CPU|RAM_RET|ram~393_q\;
\CPU|RAM_RET|ALT_INV_ram~384_q\ <= NOT \CPU|RAM_RET|ram~384_q\;
\CPU|RAM_RET|ALT_INV_ram~267_q\ <= NOT \CPU|RAM_RET|ram~267_q\;
\CPU|RAM_RET|ALT_INV_ram~258_q\ <= NOT \CPU|RAM_RET|ram~258_q\;
\CPU|RAM_RET|ALT_INV_ram~249_q\ <= NOT \CPU|RAM_RET|ram~249_q\;
\CPU|RAM_RET|ALT_INV_ram~240_q\ <= NOT \CPU|RAM_RET|ram~240_q\;
\CPU|RAM_RET|ALT_INV_ram~123_q\ <= NOT \CPU|RAM_RET|ram~123_q\;
\CPU|RAM_RET|ALT_INV_ram~114_q\ <= NOT \CPU|RAM_RET|ram~114_q\;
\CPU|RAM_RET|ALT_INV_ram~105_q\ <= NOT \CPU|RAM_RET|ram~105_q\;
\CPU|RAM_RET|ALT_INV_ram~96_q\ <= NOT \CPU|RAM_RET|ram~96_q\;
\CPU|RAM_RET|ALT_INV_ram~519_q\ <= NOT \CPU|RAM_RET|ram~519_q\;
\CPU|RAM_RET|ALT_INV_ram~510_q\ <= NOT \CPU|RAM_RET|ram~510_q\;
\CPU|RAM_RET|ALT_INV_ram~501_q\ <= NOT \CPU|RAM_RET|ram~501_q\;
\CPU|RAM_RET|ALT_INV_ram~492_q\ <= NOT \CPU|RAM_RET|ram~492_q\;
\CPU|RAM_RET|ALT_INV_ram~375_q\ <= NOT \CPU|RAM_RET|ram~375_q\;
\CPU|RAM_RET|ALT_INV_ram~366_q\ <= NOT \CPU|RAM_RET|ram~366_q\;
\CPU|RAM_RET|ALT_INV_ram~357_q\ <= NOT \CPU|RAM_RET|ram~357_q\;
\CPU|RAM_RET|ALT_INV_ram~348_q\ <= NOT \CPU|RAM_RET|ram~348_q\;
\CPU|RAM_RET|ALT_INV_ram~231_q\ <= NOT \CPU|RAM_RET|ram~231_q\;
\CPU|RAM_RET|ALT_INV_ram~222_q\ <= NOT \CPU|RAM_RET|ram~222_q\;
\CPU|RAM_RET|ALT_INV_ram~213_q\ <= NOT \CPU|RAM_RET|ram~213_q\;
\CPU|RAM_RET|ALT_INV_ram~204_q\ <= NOT \CPU|RAM_RET|ram~204_q\;
\CPU|RAM_RET|ALT_INV_ram~87_q\ <= NOT \CPU|RAM_RET|ram~87_q\;
\CPU|RAM_RET|ALT_INV_ram~78_q\ <= NOT \CPU|RAM_RET|ram~78_q\;
\CPU|RAM_RET|ALT_INV_ram~69_q\ <= NOT \CPU|RAM_RET|ram~69_q\;
\CPU|RAM_RET|ALT_INV_ram~60_q\ <= NOT \CPU|RAM_RET|ram~60_q\;
\CPU|RAM_RET|ALT_INV_ram~483_q\ <= NOT \CPU|RAM_RET|ram~483_q\;
\CPU|RAM_RET|ALT_INV_ram~474_q\ <= NOT \CPU|RAM_RET|ram~474_q\;
\CPU|RAM_RET|ALT_INV_ram~465_q\ <= NOT \CPU|RAM_RET|ram~465_q\;
\CPU|RAM_RET|ALT_INV_ram~456_q\ <= NOT \CPU|RAM_RET|ram~456_q\;
\CPU|RAM_RET|ALT_INV_ram~339_q\ <= NOT \CPU|RAM_RET|ram~339_q\;
\CPU|RAM_RET|ALT_INV_ram~330_q\ <= NOT \CPU|RAM_RET|ram~330_q\;
\CPU|RAM_RET|ALT_INV_ram~321_q\ <= NOT \CPU|RAM_RET|ram~321_q\;
\CPU|RAM_RET|ALT_INV_ram~312_q\ <= NOT \CPU|RAM_RET|ram~312_q\;
\CPU|RAM_RET|ALT_INV_ram~195_q\ <= NOT \CPU|RAM_RET|ram~195_q\;
\CPU|RAM_RET|ALT_INV_ram~186_q\ <= NOT \CPU|RAM_RET|ram~186_q\;
\CPU|RAM_RET|ALT_INV_ram~177_q\ <= NOT \CPU|RAM_RET|ram~177_q\;
\CPU|RAM_RET|ALT_INV_ram~168_q\ <= NOT \CPU|RAM_RET|ram~168_q\;
\CPU|RAM_RET|ALT_INV_ram~51_q\ <= NOT \CPU|RAM_RET|ram~51_q\;
\CPU|RAM_RET|ALT_INV_ram~42_q\ <= NOT \CPU|RAM_RET|ram~42_q\;
\CPU|RAM_RET|ALT_INV_ram~33_q\ <= NOT \CPU|RAM_RET|ram~33_q\;
\CPU|RAM_RET|ALT_INV_ram~24_q\ <= NOT \CPU|RAM_RET|ram~24_q\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|RAM_RET|ALT_INV_ram~590_q\ <= NOT \CPU|RAM_RET|ram~590_q\;
\CPU|RAM_RET|ALT_INV_ram~446_q\ <= NOT \CPU|RAM_RET|ram~446_q\;
\CPU|RAM_RET|ALT_INV_ram~302_q\ <= NOT \CPU|RAM_RET|ram~302_q\;
\CPU|RAM_RET|ALT_INV_ram~158_q\ <= NOT \CPU|RAM_RET|ram~158_q\;
\CPU|RAM_RET|ALT_INV_ram~554_q\ <= NOT \CPU|RAM_RET|ram~554_q\;
\CPU|RAM_RET|ALT_INV_ram~410_q\ <= NOT \CPU|RAM_RET|ram~410_q\;
\CPU|RAM_RET|ALT_INV_ram~266_q\ <= NOT \CPU|RAM_RET|ram~266_q\;
\CPU|RAM_RET|ALT_INV_ram~122_q\ <= NOT \CPU|RAM_RET|ram~122_q\;
\CPU|RAM_RET|ALT_INV_ram~518_q\ <= NOT \CPU|RAM_RET|ram~518_q\;
\CPU|RAM_RET|ALT_INV_ram~374_q\ <= NOT \CPU|RAM_RET|ram~374_q\;
\CPU|RAM_RET|ALT_INV_ram~230_q\ <= NOT \CPU|RAM_RET|ram~230_q\;
\CPU|RAM_RET|ALT_INV_ram~86_q\ <= NOT \CPU|RAM_RET|ram~86_q\;
\CPU|RAM_RET|ALT_INV_ram~482_q\ <= NOT \CPU|RAM_RET|ram~482_q\;
\CPU|RAM_RET|ALT_INV_ram~338_q\ <= NOT \CPU|RAM_RET|ram~338_q\;
\CPU|RAM_RET|ALT_INV_ram~194_q\ <= NOT \CPU|RAM_RET|ram~194_q\;
\CPU|RAM_RET|ALT_INV_ram~50_q\ <= NOT \CPU|RAM_RET|ram~50_q\;
\CPU|RAM_RET|ALT_INV_ram~581_q\ <= NOT \CPU|RAM_RET|ram~581_q\;
\CPU|RAM_RET|ALT_INV_ram~545_q\ <= NOT \CPU|RAM_RET|ram~545_q\;
\CPU|RAM_RET|ALT_INV_ram~509_q\ <= NOT \CPU|RAM_RET|ram~509_q\;
\CPU|RAM_RET|ALT_INV_ram~473_q\ <= NOT \CPU|RAM_RET|ram~473_q\;
\CPU|RAM_RET|ALT_INV_ram~437_q\ <= NOT \CPU|RAM_RET|ram~437_q\;
\CPU|RAM_RET|ALT_INV_ram~401_q\ <= NOT \CPU|RAM_RET|ram~401_q\;
\CPU|RAM_RET|ALT_INV_ram~365_q\ <= NOT \CPU|RAM_RET|ram~365_q\;
\CPU|RAM_RET|ALT_INV_ram~329_q\ <= NOT \CPU|RAM_RET|ram~329_q\;
\CPU|RAM_RET|ALT_INV_ram~293_q\ <= NOT \CPU|RAM_RET|ram~293_q\;
\CPU|RAM_RET|ALT_INV_ram~257_q\ <= NOT \CPU|RAM_RET|ram~257_q\;
\CPU|RAM_RET|ALT_INV_ram~221_q\ <= NOT \CPU|RAM_RET|ram~221_q\;
\CPU|RAM_RET|ALT_INV_ram~185_q\ <= NOT \CPU|RAM_RET|ram~185_q\;
\CPU|RAM_RET|ALT_INV_ram~149_q\ <= NOT \CPU|RAM_RET|ram~149_q\;
\CPU|RAM_RET|ALT_INV_ram~113_q\ <= NOT \CPU|RAM_RET|ram~113_q\;
\CPU|RAM_RET|ALT_INV_ram~77_q\ <= NOT \CPU|RAM_RET|ram~77_q\;
\CPU|RAM_RET|ALT_INV_ram~41_q\ <= NOT \CPU|RAM_RET|ram~41_q\;
\CPU|RAM_RET|ALT_INV_ram~572_q\ <= NOT \CPU|RAM_RET|ram~572_q\;
\CPU|RAM_RET|ALT_INV_ram~428_q\ <= NOT \CPU|RAM_RET|ram~428_q\;
\CPU|RAM_RET|ALT_INV_ram~284_q\ <= NOT \CPU|RAM_RET|ram~284_q\;
\CPU|RAM_RET|ALT_INV_ram~140_q\ <= NOT \CPU|RAM_RET|ram~140_q\;
\CPU|RAM_RET|ALT_INV_ram~536_q\ <= NOT \CPU|RAM_RET|ram~536_q\;
\CPU|RAM_RET|ALT_INV_ram~392_q\ <= NOT \CPU|RAM_RET|ram~392_q\;
\CPU|RAM_RET|ALT_INV_ram~248_q\ <= NOT \CPU|RAM_RET|ram~248_q\;
\CPU|RAM_RET|ALT_INV_ram~104_q\ <= NOT \CPU|RAM_RET|ram~104_q\;
\CPU|RAM_RET|ALT_INV_ram~500_q\ <= NOT \CPU|RAM_RET|ram~500_q\;
\CPU|RAM_RET|ALT_INV_ram~356_q\ <= NOT \CPU|RAM_RET|ram~356_q\;
\CPU|RAM_RET|ALT_INV_ram~212_q\ <= NOT \CPU|RAM_RET|ram~212_q\;
\CPU|RAM_RET|ALT_INV_ram~68_q\ <= NOT \CPU|RAM_RET|ram~68_q\;
\CPU|RAM_RET|ALT_INV_ram~464_q\ <= NOT \CPU|RAM_RET|ram~464_q\;
\CPU|RAM_RET|ALT_INV_ram~320_q\ <= NOT \CPU|RAM_RET|ram~320_q\;
\CPU|RAM_RET|ALT_INV_ram~176_q\ <= NOT \CPU|RAM_RET|ram~176_q\;
\CPU|RAM_RET|ALT_INV_ram~32_q\ <= NOT \CPU|RAM_RET|ram~32_q\;
\CPU|RAM_RET|ALT_INV_ram~563_q\ <= NOT \CPU|RAM_RET|ram~563_q\;
\CPU|RAM_RET|ALT_INV_ram~419_q\ <= NOT \CPU|RAM_RET|ram~419_q\;
\CPU|RAM_RET|ALT_INV_ram~275_q\ <= NOT \CPU|RAM_RET|ram~275_q\;
\CPU|RAM_RET|ALT_INV_ram~131_q\ <= NOT \CPU|RAM_RET|ram~131_q\;
\CPU|RAM_RET|ALT_INV_ram~527_q\ <= NOT \CPU|RAM_RET|ram~527_q\;
\CPU|RAM_RET|ALT_INV_ram~383_q\ <= NOT \CPU|RAM_RET|ram~383_q\;
\CPU|RAM_RET|ALT_INV_ram~239_q\ <= NOT \CPU|RAM_RET|ram~239_q\;
\CPU|RAM_RET|ALT_INV_ram~95_q\ <= NOT \CPU|RAM_RET|ram~95_q\;
\CPU|RAM_RET|ALT_INV_ram~491_q\ <= NOT \CPU|RAM_RET|ram~491_q\;
\CPU|RAM_RET|ALT_INV_ram~347_q\ <= NOT \CPU|RAM_RET|ram~347_q\;
\CPU|RAM_RET|ALT_INV_ram~203_q\ <= NOT \CPU|RAM_RET|ram~203_q\;
\CPU|RAM_RET|ALT_INV_ram~59_q\ <= NOT \CPU|RAM_RET|ram~59_q\;
\CPU|RAM_RET|ALT_INV_ram~455_q\ <= NOT \CPU|RAM_RET|ram~455_q\;
\CPU|RAM_RET|ALT_INV_ram~311_q\ <= NOT \CPU|RAM_RET|ram~311_q\;
\CPU|RAM_RET|ALT_INV_ram~167_q\ <= NOT \CPU|RAM_RET|ram~167_q\;
\CPU|RAM_RET|ALT_INV_ram~23_q\ <= NOT \CPU|RAM_RET|ram~23_q\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|RAM_RET|ALT_INV_ram~589_q\ <= NOT \CPU|RAM_RET|ram~589_q\;
\CPU|RAM_RET|ALT_INV_ram~580_q\ <= NOT \CPU|RAM_RET|ram~580_q\;
\CPU|RAM_RET|ALT_INV_ram~571_q\ <= NOT \CPU|RAM_RET|ram~571_q\;
\CPU|RAM_RET|ALT_INV_ram~562_q\ <= NOT \CPU|RAM_RET|ram~562_q\;
\CPU|RAM_RET|ALT_INV_ram~553_q\ <= NOT \CPU|RAM_RET|ram~553_q\;
\CPU|RAM_RET|ALT_INV_ram~544_q\ <= NOT \CPU|RAM_RET|ram~544_q\;
\CPU|RAM_RET|ALT_INV_ram~535_q\ <= NOT \CPU|RAM_RET|ram~535_q\;
\CPU|RAM_RET|ALT_INV_ram~526_q\ <= NOT \CPU|RAM_RET|ram~526_q\;
\CPU|RAM_RET|ALT_INV_ram~517_q\ <= NOT \CPU|RAM_RET|ram~517_q\;
\CPU|RAM_RET|ALT_INV_ram~508_q\ <= NOT \CPU|RAM_RET|ram~508_q\;
\CPU|RAM_RET|ALT_INV_ram~499_q\ <= NOT \CPU|RAM_RET|ram~499_q\;
\CPU|RAM_RET|ALT_INV_ram~490_q\ <= NOT \CPU|RAM_RET|ram~490_q\;
\CPU|RAM_RET|ALT_INV_ram~481_q\ <= NOT \CPU|RAM_RET|ram~481_q\;
\CPU|RAM_RET|ALT_INV_ram~472_q\ <= NOT \CPU|RAM_RET|ram~472_q\;
\CPU|RAM_RET|ALT_INV_ram~463_q\ <= NOT \CPU|RAM_RET|ram~463_q\;
\CPU|RAM_RET|ALT_INV_ram~454_q\ <= NOT \CPU|RAM_RET|ram~454_q\;
\CPU|RAM_RET|ALT_INV_ram~445_q\ <= NOT \CPU|RAM_RET|ram~445_q\;
\CPU|RAM_RET|ALT_INV_ram~409_q\ <= NOT \CPU|RAM_RET|ram~409_q\;
\CPU|RAM_RET|ALT_INV_ram~373_q\ <= NOT \CPU|RAM_RET|ram~373_q\;
\CPU|RAM_RET|ALT_INV_ram~337_q\ <= NOT \CPU|RAM_RET|ram~337_q\;
\CPU|RAM_RET|ALT_INV_ram~436_q\ <= NOT \CPU|RAM_RET|ram~436_q\;
\CPU|RAM_RET|ALT_INV_ram~400_q\ <= NOT \CPU|RAM_RET|ram~400_q\;
\CPU|RAM_RET|ALT_INV_ram~364_q\ <= NOT \CPU|RAM_RET|ram~364_q\;
\CPU|RAM_RET|ALT_INV_ram~328_q\ <= NOT \CPU|RAM_RET|ram~328_q\;
\CPU|RAM_RET|ALT_INV_ram~427_q\ <= NOT \CPU|RAM_RET|ram~427_q\;
\CPU|RAM_RET|ALT_INV_ram~391_q\ <= NOT \CPU|RAM_RET|ram~391_q\;
\CPU|RAM_RET|ALT_INV_ram~355_q\ <= NOT \CPU|RAM_RET|ram~355_q\;
\CPU|RAM_RET|ALT_INV_ram~319_q\ <= NOT \CPU|RAM_RET|ram~319_q\;
\CPU|RAM_RET|ALT_INV_ram~418_q\ <= NOT \CPU|RAM_RET|ram~418_q\;
\CPU|RAM_RET|ALT_INV_ram~382_q\ <= NOT \CPU|RAM_RET|ram~382_q\;
\CPU|RAM_RET|ALT_INV_ram~346_q\ <= NOT \CPU|RAM_RET|ram~346_q\;
\CPU|RAM_RET|ALT_INV_ram~310_q\ <= NOT \CPU|RAM_RET|ram~310_q\;
\CPU|RAM_RET|ALT_INV_ram~301_q\ <= NOT \CPU|RAM_RET|ram~301_q\;
\CPU|RAM_RET|ALT_INV_ram~265_q\ <= NOT \CPU|RAM_RET|ram~265_q\;
\CPU|RAM_RET|ALT_INV_ram~229_q\ <= NOT \CPU|RAM_RET|ram~229_q\;
\CPU|RAM_RET|ALT_INV_ram~193_q\ <= NOT \CPU|RAM_RET|ram~193_q\;
\CPU|RAM_RET|ALT_INV_ram~292_q\ <= NOT \CPU|RAM_RET|ram~292_q\;
\CPU|RAM_RET|ALT_INV_ram~256_q\ <= NOT \CPU|RAM_RET|ram~256_q\;
\CPU|RAM_RET|ALT_INV_ram~220_q\ <= NOT \CPU|RAM_RET|ram~220_q\;
\CPU|RAM_RET|ALT_INV_ram~184_q\ <= NOT \CPU|RAM_RET|ram~184_q\;
\CPU|RAM_RET|ALT_INV_ram~283_q\ <= NOT \CPU|RAM_RET|ram~283_q\;
\CPU|RAM_RET|ALT_INV_ram~247_q\ <= NOT \CPU|RAM_RET|ram~247_q\;
\CPU|RAM_RET|ALT_INV_ram~211_q\ <= NOT \CPU|RAM_RET|ram~211_q\;
\CPU|RAM_RET|ALT_INV_ram~175_q\ <= NOT \CPU|RAM_RET|ram~175_q\;
\CPU|RAM_RET|ALT_INV_ram~274_q\ <= NOT \CPU|RAM_RET|ram~274_q\;
\CPU|RAM_RET|ALT_INV_ram~238_q\ <= NOT \CPU|RAM_RET|ram~238_q\;
\CPU|RAM_RET|ALT_INV_ram~202_q\ <= NOT \CPU|RAM_RET|ram~202_q\;
\CPU|RAM_RET|ALT_INV_ram~166_q\ <= NOT \CPU|RAM_RET|ram~166_q\;
\CPU|RAM_RET|ALT_INV_ram~157_q\ <= NOT \CPU|RAM_RET|ram~157_q\;
\CPU|RAM_RET|ALT_INV_ram~121_q\ <= NOT \CPU|RAM_RET|ram~121_q\;
\CPU|RAM_RET|ALT_INV_ram~85_q\ <= NOT \CPU|RAM_RET|ram~85_q\;
\CPU|RAM_RET|ALT_INV_ram~49_q\ <= NOT \CPU|RAM_RET|ram~49_q\;
\CPU|RAM_RET|ALT_INV_ram~148_q\ <= NOT \CPU|RAM_RET|ram~148_q\;
\CPU|RAM_RET|ALT_INV_ram~112_q\ <= NOT \CPU|RAM_RET|ram~112_q\;
\CPU|RAM_RET|ALT_INV_ram~76_q\ <= NOT \CPU|RAM_RET|ram~76_q\;
\CPU|RAM_RET|ALT_INV_ram~40_q\ <= NOT \CPU|RAM_RET|ram~40_q\;
\CPU|RAM_RET|ALT_INV_ram~139_q\ <= NOT \CPU|RAM_RET|ram~139_q\;
\CPU|RAM_RET|ALT_INV_ram~103_q\ <= NOT \CPU|RAM_RET|ram~103_q\;
\CPU|RAM_RET|ALT_INV_ram~67_q\ <= NOT \CPU|RAM_RET|ram~67_q\;
\CPU|RAM_RET|ALT_INV_ram~31_q\ <= NOT \CPU|RAM_RET|ram~31_q\;
\CPU|RAM_RET|ALT_INV_ram~130_q\ <= NOT \CPU|RAM_RET|ram~130_q\;
\CPU|RAM_RET|ALT_INV_ram~94_q\ <= NOT \CPU|RAM_RET|ram~94_q\;
\CPU|RAM_RET|ALT_INV_ram~58_q\ <= NOT \CPU|RAM_RET|ram~58_q\;
\CPU|RAM_RET|ALT_INV_ram~22_q\ <= NOT \CPU|RAM_RET|ram~22_q\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|RAM_RET|ALT_INV_ram~588_q\ <= NOT \CPU|RAM_RET|ram~588_q\;
\CPU|RAM_RET|ALT_INV_ram~444_q\ <= NOT \CPU|RAM_RET|ram~444_q\;
\CPU|RAM_RET|ALT_INV_ram~300_q\ <= NOT \CPU|RAM_RET|ram~300_q\;
\CPU|RAM_RET|ALT_INV_ram~156_q\ <= NOT \CPU|RAM_RET|ram~156_q\;
\CPU|RAM_RET|ALT_INV_ram~579_q\ <= NOT \CPU|RAM_RET|ram~579_q\;
\CPU|RAM_RET|ALT_INV_ram~435_q\ <= NOT \CPU|RAM_RET|ram~435_q\;
\CPU|RAM_RET|ALT_INV_ram~291_q\ <= NOT \CPU|RAM_RET|ram~291_q\;
\CPU|RAM_RET|ALT_INV_ram~147_q\ <= NOT \CPU|RAM_RET|ram~147_q\;
\CPU|RAM_RET|ALT_INV_ram~570_q\ <= NOT \CPU|RAM_RET|ram~570_q\;
\CPU|RAM_RET|ALT_INV_ram~426_q\ <= NOT \CPU|RAM_RET|ram~426_q\;
\CPU|RAM_RET|ALT_INV_ram~282_q\ <= NOT \CPU|RAM_RET|ram~282_q\;
\CPU|RAM_RET|ALT_INV_ram~138_q\ <= NOT \CPU|RAM_RET|ram~138_q\;
\CPU|RAM_RET|ALT_INV_ram~561_q\ <= NOT \CPU|RAM_RET|ram~561_q\;
\CPU|RAM_RET|ALT_INV_ram~417_q\ <= NOT \CPU|RAM_RET|ram~417_q\;
\CPU|RAM_RET|ALT_INV_ram~273_q\ <= NOT \CPU|RAM_RET|ram~273_q\;
\CPU|RAM_RET|ALT_INV_ram~129_q\ <= NOT \CPU|RAM_RET|ram~129_q\;
\CPU|RAM_RET|ALT_INV_ram~552_q\ <= NOT \CPU|RAM_RET|ram~552_q\;
\CPU|RAM_RET|ALT_INV_ram~543_q\ <= NOT \CPU|RAM_RET|ram~543_q\;
\CPU|RAM_RET|ALT_INV_ram~534_q\ <= NOT \CPU|RAM_RET|ram~534_q\;
\CPU|RAM_RET|ALT_INV_ram~525_q\ <= NOT \CPU|RAM_RET|ram~525_q\;
\CPU|RAM_RET|ALT_INV_ram~408_q\ <= NOT \CPU|RAM_RET|ram~408_q\;
\CPU|RAM_RET|ALT_INV_ram~399_q\ <= NOT \CPU|RAM_RET|ram~399_q\;
\CPU|RAM_RET|ALT_INV_ram~390_q\ <= NOT \CPU|RAM_RET|ram~390_q\;
\CPU|RAM_RET|ALT_INV_ram~381_q\ <= NOT \CPU|RAM_RET|ram~381_q\;
\CPU|RAM_RET|ALT_INV_ram~264_q\ <= NOT \CPU|RAM_RET|ram~264_q\;
\CPU|RAM_RET|ALT_INV_ram~255_q\ <= NOT \CPU|RAM_RET|ram~255_q\;
\CPU|RAM_RET|ALT_INV_ram~246_q\ <= NOT \CPU|RAM_RET|ram~246_q\;
\CPU|RAM_RET|ALT_INV_ram~237_q\ <= NOT \CPU|RAM_RET|ram~237_q\;
\CPU|RAM_RET|ALT_INV_ram~120_q\ <= NOT \CPU|RAM_RET|ram~120_q\;
\CPU|RAM_RET|ALT_INV_ram~111_q\ <= NOT \CPU|RAM_RET|ram~111_q\;
\CPU|RAM_RET|ALT_INV_ram~102_q\ <= NOT \CPU|RAM_RET|ram~102_q\;
\CPU|RAM_RET|ALT_INV_ram~93_q\ <= NOT \CPU|RAM_RET|ram~93_q\;
\CPU|RAM_RET|ALT_INV_ram~516_q\ <= NOT \CPU|RAM_RET|ram~516_q\;
\CPU|RAM_RET|ALT_INV_ram~507_q\ <= NOT \CPU|RAM_RET|ram~507_q\;
\CPU|RAM_RET|ALT_INV_ram~498_q\ <= NOT \CPU|RAM_RET|ram~498_q\;
\CPU|RAM_RET|ALT_INV_ram~489_q\ <= NOT \CPU|RAM_RET|ram~489_q\;
\CPU|RAM_RET|ALT_INV_ram~372_q\ <= NOT \CPU|RAM_RET|ram~372_q\;
\CPU|RAM_RET|ALT_INV_ram~363_q\ <= NOT \CPU|RAM_RET|ram~363_q\;
\CPU|RAM_RET|ALT_INV_ram~354_q\ <= NOT \CPU|RAM_RET|ram~354_q\;
\CPU|RAM_RET|ALT_INV_ram~345_q\ <= NOT \CPU|RAM_RET|ram~345_q\;
\CPU|RAM_RET|ALT_INV_ram~228_q\ <= NOT \CPU|RAM_RET|ram~228_q\;
\CPU|RAM_RET|ALT_INV_ram~219_q\ <= NOT \CPU|RAM_RET|ram~219_q\;
\CPU|RAM_RET|ALT_INV_ram~210_q\ <= NOT \CPU|RAM_RET|ram~210_q\;
\CPU|RAM_RET|ALT_INV_ram~201_q\ <= NOT \CPU|RAM_RET|ram~201_q\;
\CPU|RAM_RET|ALT_INV_ram~84_q\ <= NOT \CPU|RAM_RET|ram~84_q\;
\CPU|RAM_RET|ALT_INV_ram~75_q\ <= NOT \CPU|RAM_RET|ram~75_q\;
\CPU|RAM_RET|ALT_INV_ram~66_q\ <= NOT \CPU|RAM_RET|ram~66_q\;
\CPU|RAM_RET|ALT_INV_ram~57_q\ <= NOT \CPU|RAM_RET|ram~57_q\;
\CPU|RAM_RET|ALT_INV_ram~480_q\ <= NOT \CPU|RAM_RET|ram~480_q\;
\CPU|RAM_RET|ALT_INV_ram~471_q\ <= NOT \CPU|RAM_RET|ram~471_q\;
\CPU|RAM_RET|ALT_INV_ram~462_q\ <= NOT \CPU|RAM_RET|ram~462_q\;
\CPU|RAM_RET|ALT_INV_ram~453_q\ <= NOT \CPU|RAM_RET|ram~453_q\;
\CPU|RAM_RET|ALT_INV_ram~336_q\ <= NOT \CPU|RAM_RET|ram~336_q\;
\CPU|RAM_RET|ALT_INV_ram~327_q\ <= NOT \CPU|RAM_RET|ram~327_q\;
\CPU|RAM_RET|ALT_INV_ram~318_q\ <= NOT \CPU|RAM_RET|ram~318_q\;
\CPU|RAM_RET|ALT_INV_ram~309_q\ <= NOT \CPU|RAM_RET|ram~309_q\;
\CPU|RAM_RET|ALT_INV_ram~192_q\ <= NOT \CPU|RAM_RET|ram~192_q\;
\CPU|RAM_RET|ALT_INV_ram~183_q\ <= NOT \CPU|RAM_RET|ram~183_q\;
\CPU|RAM_RET|ALT_INV_ram~174_q\ <= NOT \CPU|RAM_RET|ram~174_q\;
\CPU|RAM_RET|ALT_INV_ram~165_q\ <= NOT \CPU|RAM_RET|ram~165_q\;
\CPU|RAM_RET|ALT_INV_ram~48_q\ <= NOT \CPU|RAM_RET|ram~48_q\;
\CPU|RAM_RET|ALT_INV_ram~39_q\ <= NOT \CPU|RAM_RET|ram~39_q\;
\CPU|RAM_RET|ALT_INV_ram~30_q\ <= NOT \CPU|RAM_RET|ram~30_q\;
\CPU|RAM_RET|ALT_INV_ram~21_q\ <= NOT \CPU|RAM_RET|ram~21_q\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|RAM_RET|ALT_INV_ram~587_q\ <= NOT \CPU|RAM_RET|ram~587_q\;
\CPU|RAM_RET|ALT_INV_ram~443_q\ <= NOT \CPU|RAM_RET|ram~443_q\;
\CPU|RAM_RET|ALT_INV_ram~299_q\ <= NOT \CPU|RAM_RET|ram~299_q\;
\CPU|RAM_RET|ALT_INV_ram~155_q\ <= NOT \CPU|RAM_RET|ram~155_q\;
\CPU|RAM_RET|ALT_INV_ram~551_q\ <= NOT \CPU|RAM_RET|ram~551_q\;
\CPU|RAM_RET|ALT_INV_ram~407_q\ <= NOT \CPU|RAM_RET|ram~407_q\;
\CPU|RAM_RET|ALT_INV_ram~263_q\ <= NOT \CPU|RAM_RET|ram~263_q\;
\CPU|RAM_RET|ALT_INV_ram~119_q\ <= NOT \CPU|RAM_RET|ram~119_q\;
\CPU|RAM_RET|ALT_INV_ram~515_q\ <= NOT \CPU|RAM_RET|ram~515_q\;
\CPU|RAM_RET|ALT_INV_ram~371_q\ <= NOT \CPU|RAM_RET|ram~371_q\;
\CPU|RAM_RET|ALT_INV_ram~227_q\ <= NOT \CPU|RAM_RET|ram~227_q\;
\CPU|RAM_RET|ALT_INV_ram~83_q\ <= NOT \CPU|RAM_RET|ram~83_q\;
\CPU|RAM_RET|ALT_INV_ram~479_q\ <= NOT \CPU|RAM_RET|ram~479_q\;
\CPU|RAM_RET|ALT_INV_ram~335_q\ <= NOT \CPU|RAM_RET|ram~335_q\;
\CPU|RAM_RET|ALT_INV_ram~191_q\ <= NOT \CPU|RAM_RET|ram~191_q\;
\CPU|RAM_RET|ALT_INV_ram~47_q\ <= NOT \CPU|RAM_RET|ram~47_q\;
\CPU|RAM_RET|ALT_INV_ram~578_q\ <= NOT \CPU|RAM_RET|ram~578_q\;
\CPU|RAM_RET|ALT_INV_ram~434_q\ <= NOT \CPU|RAM_RET|ram~434_q\;
\CPU|RAM_RET|ALT_INV_ram~290_q\ <= NOT \CPU|RAM_RET|ram~290_q\;
\CPU|RAM_RET|ALT_INV_ram~146_q\ <= NOT \CPU|RAM_RET|ram~146_q\;
\CPU|RAM_RET|ALT_INV_ram~542_q\ <= NOT \CPU|RAM_RET|ram~542_q\;
\CPU|RAM_RET|ALT_INV_ram~398_q\ <= NOT \CPU|RAM_RET|ram~398_q\;
\CPU|RAM_RET|ALT_INV_ram~254_q\ <= NOT \CPU|RAM_RET|ram~254_q\;
\CPU|RAM_RET|ALT_INV_ram~110_q\ <= NOT \CPU|RAM_RET|ram~110_q\;
\CPU|RAM_RET|ALT_INV_ram~506_q\ <= NOT \CPU|RAM_RET|ram~506_q\;
\CPU|RAM_RET|ALT_INV_ram~362_q\ <= NOT \CPU|RAM_RET|ram~362_q\;
\CPU|RAM_RET|ALT_INV_ram~218_q\ <= NOT \CPU|RAM_RET|ram~218_q\;
\CPU|RAM_RET|ALT_INV_ram~74_q\ <= NOT \CPU|RAM_RET|ram~74_q\;
\CPU|RAM_RET|ALT_INV_ram~470_q\ <= NOT \CPU|RAM_RET|ram~470_q\;
\CPU|RAM_RET|ALT_INV_ram~326_q\ <= NOT \CPU|RAM_RET|ram~326_q\;
\CPU|RAM_RET|ALT_INV_ram~182_q\ <= NOT \CPU|RAM_RET|ram~182_q\;
\CPU|RAM_RET|ALT_INV_ram~38_q\ <= NOT \CPU|RAM_RET|ram~38_q\;
\CPU|RAM_RET|ALT_INV_ram~569_q\ <= NOT \CPU|RAM_RET|ram~569_q\;
\CPU|RAM_RET|ALT_INV_ram~425_q\ <= NOT \CPU|RAM_RET|ram~425_q\;
\CPU|RAM_RET|ALT_INV_ram~281_q\ <= NOT \CPU|RAM_RET|ram~281_q\;
\CPU|RAM_RET|ALT_INV_ram~137_q\ <= NOT \CPU|RAM_RET|ram~137_q\;
\CPU|RAM_RET|ALT_INV_ram~533_q\ <= NOT \CPU|RAM_RET|ram~533_q\;
\CPU|RAM_RET|ALT_INV_ram~389_q\ <= NOT \CPU|RAM_RET|ram~389_q\;
\CPU|RAM_RET|ALT_INV_ram~245_q\ <= NOT \CPU|RAM_RET|ram~245_q\;
\CPU|RAM_RET|ALT_INV_ram~101_q\ <= NOT \CPU|RAM_RET|ram~101_q\;
\CPU|RAM_RET|ALT_INV_ram~497_q\ <= NOT \CPU|RAM_RET|ram~497_q\;
\CPU|RAM_RET|ALT_INV_ram~353_q\ <= NOT \CPU|RAM_RET|ram~353_q\;
\CPU|RAM_RET|ALT_INV_ram~209_q\ <= NOT \CPU|RAM_RET|ram~209_q\;
\CPU|RAM_RET|ALT_INV_ram~65_q\ <= NOT \CPU|RAM_RET|ram~65_q\;
\CPU|RAM_RET|ALT_INV_ram~461_q\ <= NOT \CPU|RAM_RET|ram~461_q\;
\CPU|RAM_RET|ALT_INV_ram~317_q\ <= NOT \CPU|RAM_RET|ram~317_q\;
\CPU|RAM_RET|ALT_INV_ram~173_q\ <= NOT \CPU|RAM_RET|ram~173_q\;
\CPU|RAM_RET|ALT_INV_ram~29_q\ <= NOT \CPU|RAM_RET|ram~29_q\;
\CPU|RAM_RET|ALT_INV_ram~560_q\ <= NOT \CPU|RAM_RET|ram~560_q\;
\CPU|RAM_RET|ALT_INV_ram~416_q\ <= NOT \CPU|RAM_RET|ram~416_q\;
\CPU|RAM_RET|ALT_INV_ram~272_q\ <= NOT \CPU|RAM_RET|ram~272_q\;
\CPU|RAM_RET|ALT_INV_ram~128_q\ <= NOT \CPU|RAM_RET|ram~128_q\;
\CPU|RAM_RET|ALT_INV_ram~524_q\ <= NOT \CPU|RAM_RET|ram~524_q\;
\CPU|RAM_RET|ALT_INV_ram~380_q\ <= NOT \CPU|RAM_RET|ram~380_q\;
\CPU|RAM_RET|ALT_INV_ram~236_q\ <= NOT \CPU|RAM_RET|ram~236_q\;
\CPU|RAM_RET|ALT_INV_ram~92_q\ <= NOT \CPU|RAM_RET|ram~92_q\;
\CPU|RAM_RET|ALT_INV_ram~488_q\ <= NOT \CPU|RAM_RET|ram~488_q\;
\CPU|RAM_RET|ALT_INV_ram~344_q\ <= NOT \CPU|RAM_RET|ram~344_q\;
\CPU|RAM_RET|ALT_INV_ram~200_q\ <= NOT \CPU|RAM_RET|ram~200_q\;
\CPU|RAM_RET|ALT_INV_ram~56_q\ <= NOT \CPU|RAM_RET|ram~56_q\;
\CPU|RAM_RET|ALT_INV_ram~452_q\ <= NOT \CPU|RAM_RET|ram~452_q\;
\CPU|RAM_RET|ALT_INV_ram~308_q\ <= NOT \CPU|RAM_RET|ram~308_q\;
\CPU|RAM_RET|ALT_INV_ram~164_q\ <= NOT \CPU|RAM_RET|ram~164_q\;
\CPU|RAM_RET|ALT_INV_ram~20_q\ <= NOT \CPU|RAM_RET|ram~20_q\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|RAM_RET|ALT_INV_ram~586_q\ <= NOT \CPU|RAM_RET|ram~586_q\;
\CPU|RAM_RET|ALT_INV_ram~550_q\ <= NOT \CPU|RAM_RET|ram~550_q\;
\CPU|RAM_RET|ALT_INV_ram~514_q\ <= NOT \CPU|RAM_RET|ram~514_q\;
\CPU|RAM_RET|ALT_INV_ram~478_q\ <= NOT \CPU|RAM_RET|ram~478_q\;
\CPU|RAM_RET|ALT_INV_ram~577_q\ <= NOT \CPU|RAM_RET|ram~577_q\;
\CPU|RAM_RET|ALT_INV_ram~541_q\ <= NOT \CPU|RAM_RET|ram~541_q\;
\CPU|RAM_RET|ALT_INV_ram~505_q\ <= NOT \CPU|RAM_RET|ram~505_q\;
\CPU|RAM_RET|ALT_INV_ram~469_q\ <= NOT \CPU|RAM_RET|ram~469_q\;
\CPU|RAM_RET|ALT_INV_ram~568_q\ <= NOT \CPU|RAM_RET|ram~568_q\;
\CPU|RAM_RET|ALT_INV_ram~532_q\ <= NOT \CPU|RAM_RET|ram~532_q\;
\CPU|RAM_RET|ALT_INV_ram~496_q\ <= NOT \CPU|RAM_RET|ram~496_q\;
\CPU|RAM_RET|ALT_INV_ram~460_q\ <= NOT \CPU|RAM_RET|ram~460_q\;
\CPU|RAM_RET|ALT_INV_ram~559_q\ <= NOT \CPU|RAM_RET|ram~559_q\;
\CPU|RAM_RET|ALT_INV_ram~523_q\ <= NOT \CPU|RAM_RET|ram~523_q\;
\CPU|RAM_RET|ALT_INV_ram~487_q\ <= NOT \CPU|RAM_RET|ram~487_q\;
\CPU|RAM_RET|ALT_INV_ram~451_q\ <= NOT \CPU|RAM_RET|ram~451_q\;
\CPU|RAM_RET|ALT_INV_ram~442_q\ <= NOT \CPU|RAM_RET|ram~442_q\;
\CPU|RAM_RET|ALT_INV_ram~433_q\ <= NOT \CPU|RAM_RET|ram~433_q\;
\CPU|RAM_RET|ALT_INV_ram~424_q\ <= NOT \CPU|RAM_RET|ram~424_q\;
\CPU|RAM_RET|ALT_INV_ram~415_q\ <= NOT \CPU|RAM_RET|ram~415_q\;
\CPU|RAM_RET|ALT_INV_ram~406_q\ <= NOT \CPU|RAM_RET|ram~406_q\;
\CPU|RAM_RET|ALT_INV_ram~397_q\ <= NOT \CPU|RAM_RET|ram~397_q\;
\CPU|RAM_RET|ALT_INV_ram~388_q\ <= NOT \CPU|RAM_RET|ram~388_q\;
\CPU|RAM_RET|ALT_INV_ram~379_q\ <= NOT \CPU|RAM_RET|ram~379_q\;
\CPU|RAM_RET|ALT_INV_ram~370_q\ <= NOT \CPU|RAM_RET|ram~370_q\;
\CPU|RAM_RET|ALT_INV_ram~361_q\ <= NOT \CPU|RAM_RET|ram~361_q\;
\CPU|RAM_RET|ALT_INV_ram~352_q\ <= NOT \CPU|RAM_RET|ram~352_q\;
\CPU|RAM_RET|ALT_INV_ram~343_q\ <= NOT \CPU|RAM_RET|ram~343_q\;
\CPU|RAM_RET|ALT_INV_ram~334_q\ <= NOT \CPU|RAM_RET|ram~334_q\;
\CPU|RAM_RET|ALT_INV_ram~325_q\ <= NOT \CPU|RAM_RET|ram~325_q\;
\CPU|RAM_RET|ALT_INV_ram~316_q\ <= NOT \CPU|RAM_RET|ram~316_q\;
\CPU|RAM_RET|ALT_INV_ram~307_q\ <= NOT \CPU|RAM_RET|ram~307_q\;
\CPU|RAM_RET|ALT_INV_ram~298_q\ <= NOT \CPU|RAM_RET|ram~298_q\;
\CPU|RAM_RET|ALT_INV_ram~262_q\ <= NOT \CPU|RAM_RET|ram~262_q\;
\CPU|RAM_RET|ALT_INV_ram~226_q\ <= NOT \CPU|RAM_RET|ram~226_q\;
\CPU|RAM_RET|ALT_INV_ram~190_q\ <= NOT \CPU|RAM_RET|ram~190_q\;
\CPU|RAM_RET|ALT_INV_ram~289_q\ <= NOT \CPU|RAM_RET|ram~289_q\;
\CPU|RAM_RET|ALT_INV_ram~253_q\ <= NOT \CPU|RAM_RET|ram~253_q\;
\CPU|RAM_RET|ALT_INV_ram~217_q\ <= NOT \CPU|RAM_RET|ram~217_q\;
\CPU|RAM_RET|ALT_INV_ram~181_q\ <= NOT \CPU|RAM_RET|ram~181_q\;
\CPU|RAM_RET|ALT_INV_ram~280_q\ <= NOT \CPU|RAM_RET|ram~280_q\;
\CPU|RAM_RET|ALT_INV_ram~244_q\ <= NOT \CPU|RAM_RET|ram~244_q\;
\CPU|RAM_RET|ALT_INV_ram~208_q\ <= NOT \CPU|RAM_RET|ram~208_q\;
\CPU|RAM_RET|ALT_INV_ram~172_q\ <= NOT \CPU|RAM_RET|ram~172_q\;
\CPU|RAM_RET|ALT_INV_ram~271_q\ <= NOT \CPU|RAM_RET|ram~271_q\;
\CPU|RAM_RET|ALT_INV_ram~235_q\ <= NOT \CPU|RAM_RET|ram~235_q\;
\CPU|RAM_RET|ALT_INV_ram~199_q\ <= NOT \CPU|RAM_RET|ram~199_q\;
\CPU|RAM_RET|ALT_INV_ram~163_q\ <= NOT \CPU|RAM_RET|ram~163_q\;
\CPU|RAM_RET|ALT_INV_ram~154_q\ <= NOT \CPU|RAM_RET|ram~154_q\;
\CPU|RAM_RET|ALT_INV_ram~145_q\ <= NOT \CPU|RAM_RET|ram~145_q\;
\CPU|RAM_RET|ALT_INV_ram~136_q\ <= NOT \CPU|RAM_RET|ram~136_q\;
\CPU|RAM_RET|ALT_INV_ram~127_q\ <= NOT \CPU|RAM_RET|ram~127_q\;
\CPU|RAM_RET|ALT_INV_ram~118_q\ <= NOT \CPU|RAM_RET|ram~118_q\;
\CPU|RAM_RET|ALT_INV_ram~109_q\ <= NOT \CPU|RAM_RET|ram~109_q\;
\CPU|RAM_RET|ALT_INV_ram~100_q\ <= NOT \CPU|RAM_RET|ram~100_q\;
\CPU|RAM_RET|ALT_INV_ram~91_q\ <= NOT \CPU|RAM_RET|ram~91_q\;
\CPU|RAM_RET|ALT_INV_ram~82_q\ <= NOT \CPU|RAM_RET|ram~82_q\;
\CPU|RAM_RET|ALT_INV_ram~73_q\ <= NOT \CPU|RAM_RET|ram~73_q\;
\CPU|RAM_RET|ALT_INV_ram~64_q\ <= NOT \CPU|RAM_RET|ram~64_q\;
\CPU|RAM_RET|ALT_INV_ram~55_q\ <= NOT \CPU|RAM_RET|ram~55_q\;
\CPU|RAM_RET|ALT_INV_ram~46_q\ <= NOT \CPU|RAM_RET|ram~46_q\;
\CPU|RAM_RET|ALT_INV_ram~37_q\ <= NOT \CPU|RAM_RET|ram~37_q\;
\CPU|RAM_RET|ALT_INV_ram~28_q\ <= NOT \CPU|RAM_RET|ram~28_q\;
\CPU|RAM_RET|ALT_INV_ram~19_q\ <= NOT \CPU|RAM_RET|ram~19_q\;
\CPU|ULA_sr|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA_sr|Add0~21_sumout\;
\CPU|ULA_sr|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA_sr|Add0~17_sumout\;
\CPU|ULA_sr|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA_sr|Add0~13_sumout\;
\CPU|ULA_sr|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA_sr|Add0~9_sumout\;
\CPU|ULA_sr|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA_sr|Add0~5_sumout\;
\CPU|ULA_sr|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA_sr|Add0~1_sumout\;
\CPU|REGS|ALT_INV_registrador~19_q\ <= NOT \CPU|REGS|registrador~19_q\;
\CPU|REGS|ALT_INV_registrador~18_q\ <= NOT \CPU|REGS|registrador~18_q\;
\CPU|REGS|ALT_INV_registrador~17_q\ <= NOT \CPU|REGS|registrador~17_q\;
\CPU|REGS|ALT_INV_registrador~16_q\ <= NOT \CPU|REGS|registrador~16_q\;
\CPU|REGS|ALT_INV_registrador~15_q\ <= NOT \CPU|REGS|registrador~15_q\;
\CPU|REGS|ALT_INV_registrador~14_q\ <= NOT \CPU|REGS|registrador~14_q\;
\CPU|REGS|ALT_INV_registrador~13_q\ <= NOT \CPU|REGS|registrador~13_q\;
\CPU|REGS|ALT_INV_registrador~12_q\ <= NOT \CPU|REGS|registrador~12_q\;

\MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[0]~output_o\);

\MEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[1]~output_o\);

\MEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[2]~output_o\);

\MEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[3]~output_o\);

\MEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[4]~output_o\);

\MEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[5]~output_o\);

\MEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[6]~output_o\);

\MEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \CPU|decoderInstru|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \MEM[7]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\bolso[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~12_q\,
	devoe => ww_devoe,
	o => \bolso[0]~output_o\);

\bolso[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~13_q\,
	devoe => ww_devoe,
	o => \bolso[1]~output_o\);

\bolso[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~14_q\,
	devoe => ww_devoe,
	o => \bolso[2]~output_o\);

\bolso[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~15_q\,
	devoe => ww_devoe,
	o => \bolso[3]~output_o\);

\bolso[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~16_q\,
	devoe => ww_devoe,
	o => \bolso[4]~output_o\);

\bolso[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~17_q\,
	devoe => ww_devoe,
	o => \bolso[5]~output_o\);

\bolso[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~18_q\,
	devoe => ww_devoe,
	o => \bolso[6]~output_o\);

\bolso[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGS|registrador~19_q\,
	devoe => ww_devoe,
	o => \bolso[7]~output_o\);

\adrs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXRET|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \adrs[0]~output_o\);

\adrs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXRET|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \adrs[1]~output_o\);

\adrs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXRET|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \adrs[2]~output_o\);

\adrs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXRET|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \adrs[3]~output_o\);

\adrs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXRET|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \adrs[4]~output_o\);

\adrs[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUXRET|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \adrs[5]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|decoderInstru|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~4_combout\ = (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoderInstru|saida~4_combout\);

\CPU|ULA_sr|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_sr|Add0~1_sumout\ = SUM(( \CPU|RET|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|ULA_sr|Add0~2\ = CARRY(( \CPU|RET|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|RET|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA_sr|Add0~1_sumout\,
	cout => \CPU|ULA_sr|Add0~2\);

\CPU|RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA_sr|Add0~1_sumout\,
	ena => \CPU|decoderInstru|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(0));

\CPU|MUXRET|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXRET|saida_MUX[0]~0_combout\ = (!\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RET|DOUT\(0))) # (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|ULA_sr|Add0~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RET|ALT_INV_DOUT\(0),
	datab => \CPU|ULA_sr|ALT_INV_Add0~1_sumout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	combout => \CPU|MUXRET|saida_MUX[0]~0_combout\);

\CPU|decoderInstru|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~0_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoderInstru|Equal11~0_combout\);

\CPU|decoderInstru|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[4]~8_combout\ = (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~0_combout\)))) # (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & 
-- !\ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000010010010000000001001001000000000100100100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|decoderInstru|saida[4]~8_combout\);

\CPU|decoderInstru|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~3_combout\ = (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoderInstru|saida~3_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

\CPU|decoderInstru|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~2_combout\ = (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\))) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & 
-- \ROM1|memROM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoderInstru|saida~2_combout\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~17_q\ & \ROM1|memROM~7_combout\) ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~17_q\ & !\CPU|decoderInstru|saida[1]~1_combout\) ) ) ) # ( \CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( \ROM1|memROM~7_combout\ ) ) ) # ( 
-- !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( !\CPU|decoderInstru|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100110011001101010000010100000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~17_q\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|decoderInstru|saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[5]~7_combout\ = (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ $ (((!\ROM1|memROM~2_combout\ & !\ROM1|memROM~0_combout\))))) # (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~2_combout\ & 
-- \ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010001010010010001000101001001000100010100100100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \CPU|decoderInstru|saida[5]~7_combout\);

\CPU|REGS|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~17_q\);

\CPU|MUX1|saida_MUX[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~3_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[1]~1_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001010101110011000101010111001100010101011100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~3_combout\);

\CPU|MUX1|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~2_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[1]~1_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001010101110011000101010111001100010101011100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~2_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[1]~1_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001010101110011000101010111001100010101011100110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[1]~1_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101111100000101010111110000010101011111000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoderInstru|saida~3_combout\) # (\CPU|decoderInstru|saida[4]~8_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGS|registrador~12_q\ ) + ( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGS|registrador~12_q\ ) + ( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~12_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\CPU|decoderInstru|saida[1]~1_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101000000000000000011110000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|REGS|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~12_q\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGS|registrador~13_q\ ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGS|registrador~13_q\ ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~13_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~13_q\ & \ROM1|memROM~5_combout\) ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~13_q\ & !\CPU|decoderInstru|saida[1]~1_combout\) ) ) ) # ( \CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( \ROM1|memROM~5_combout\ ) ) ) # ( 
-- !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( !\CPU|decoderInstru|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100110011001101010000010100000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~13_q\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGS|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~13_q\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGS|registrador~14_q\ ) + ( (!\CPU|decoderInstru|saida[4]~8_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & !\CPU|decoderInstru|saida[1]~1_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~8_combout\ & (((\CPU|decoderInstru|saida[1]~1_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGS|registrador~14_q\ ) + ( (!\CPU|decoderInstru|saida[4]~8_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & !\CPU|decoderInstru|saida[1]~1_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~8_combout\ & (((\CPU|decoderInstru|saida[1]~1_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~14_q\,
	dataf => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = (!\CPU|decoderInstru|saida[1]~1_combout\ & (!\CPU|decoderInstru|saida~2_combout\ & !\CPU|decoderInstru|saida~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGS|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~14_q\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGS|registrador~15_q\ ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGS|registrador~15_q\ ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~15_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~15_q\ & \ROM1|memROM~5_combout\) ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~15_q\ & !\CPU|decoderInstru|saida[1]~1_combout\) ) ) ) # ( \CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( \ROM1|memROM~5_combout\ ) ) ) # ( 
-- !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( !\CPU|decoderInstru|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100110011001101010000010100000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~15_q\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGS|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~15_q\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGS|registrador~16_q\ ) + ( !\CPU|MUX1|saida_MUX[4]~2_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGS|registrador~16_q\ ) + ( !\CPU|MUX1|saida_MUX[4]~2_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~16_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~16_q\ & \ROM1|memROM~6_combout\) ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~16_q\ & !\CPU|decoderInstru|saida[1]~1_combout\) ) ) ) # ( \CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( \ROM1|memROM~6_combout\ ) ) ) # ( 
-- !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( !\CPU|decoderInstru|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100110011001101010000010100000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~16_q\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGS|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~16_q\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGS|registrador~17_q\ ) + ( !\CPU|MUX1|saida_MUX[5]~3_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGS|registrador~17_q\ ) + ( !\CPU|MUX1|saida_MUX[5]~3_combout\ $ (((!\CPU|decoderInstru|saida[4]~8_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~17_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~3_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( !\CPU|ULA1|Add0~13_sumout\ & ( !\CPU|ULA1|Add0~17_sumout\ & ( (!\CPU|decoderInstru|saida[4]~8_combout\ & (!\CPU|ULA1|Add0~1_sumout\ & (!\CPU|ULA1|Add0~5_sumout\ & !\CPU|ULA1|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|REGS|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~18_q\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGS|registrador~18_q\ ) + ( (!\CPU|decoderInstru|saida[4]~8_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & !\CPU|decoderInstru|saida[1]~1_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~8_combout\ & (((\CPU|decoderInstru|saida[1]~1_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGS|registrador~18_q\ ) + ( (!\CPU|decoderInstru|saida[4]~8_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & !\CPU|decoderInstru|saida[1]~1_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~8_combout\ & (((\CPU|decoderInstru|saida[1]~1_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~18_q\,
	dataf => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|FLAG|DOUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~7_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001000000000000000000100001001000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|FLAG|DOUT~7_combout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( !\CPU|decoderInstru|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( \CPU|FLAG|DOUT~7_combout\ & ( !\CPU|FLAG|DOUT~0_combout\ & ( (!\CPU|ULA1|saida[1]~1_combout\ & (!\CPU|ULA1|saida[3]~3_combout\ & (!\CPU|ULA1|saida[4]~4_combout\ & !\CPU|ULA1|saida[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_saida[1]~1_combout\,
	datab => \CPU|ULA1|ALT_INV_saida[3]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|ULA1|ALT_INV_saida[5]~5_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~7_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~0_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|decoderInstru|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[2]~5_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoderInstru|saida[2]~5_combout\);

\CPU|REGS|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~8_combout\,
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~19_q\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGS|registrador~19_q\ ) + ( (!\CPU|decoderInstru|saida[4]~8_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & !\CPU|decoderInstru|saida[1]~1_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~8_combout\ & (((\CPU|decoderInstru|saida[1]~1_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100100010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~8_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~19_q\,
	dataf => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~3_combout\ = ( !\CPU|decoderInstru|saida[2]~5_combout\ & ( (((\CPU|FLAG|DOUT~q\))) ) ) # ( \CPU|decoderInstru|saida[2]~5_combout\ & ( ((!\CPU|ULA1|Add0~21_sumout\ & (\CPU|FLAG|DOUT~2_combout\ & (!\CPU|ULA1|Add0~25_sumout\ & 
-- !\CPU|ULA1|Add0~29_sumout\)))) # (\CPU|FLAG|DOUT~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111001000001111111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datab => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida[2]~5_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datag => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|FLAG|DOUT~3_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|FLAG|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|decoderInstru|saida[13]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[13]~6_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~3_combout\) # (\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~4_combout\ & (((!\ROM1|memROM~3_combout\)))) ) ) # ( 
-- !\CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~0_combout\ & (((!\ROM1|memROM~3_combout\ & \ROM1|memROM~4_combout\)))) # (\ROM1|memROM~0_combout\ & ((!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\)) # (\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111100000010100011111000001010001111000000101000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|decoderInstru|saida[13]~6_combout\);

\CPU|decoderInstru|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoderInstru|Equal11~1_combout\);

\CPU|decoderInstru|Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~2_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoderInstru|Equal11~2_combout\);

\CPU|ULA_sr|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_sr|Add0~5_sumout\ = SUM(( (((!\CPU|decoderInstru|Equal11~2_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) # (\CPU|decoderInstru|Equal11~0_combout\) ) + ( \CPU|RET|DOUT\(1) ) + ( 
-- \CPU|ULA_sr|Add0~2\ ))
-- \CPU|ULA_sr|Add0~6\ = CARRY(( (((!\CPU|decoderInstru|Equal11~2_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) # (\CPU|decoderInstru|Equal11~0_combout\) ) + ( \CPU|RET|DOUT\(1) ) + ( \CPU|ULA_sr|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[13]~6_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	dataf => \CPU|RET|ALT_INV_DOUT\(1),
	cin => \CPU|ULA_sr|Add0~2\,
	sumout => \CPU|ULA_sr|Add0~5_sumout\,
	cout => \CPU|ULA_sr|Add0~6\);

\CPU|RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA_sr|Add0~5_sumout\,
	ena => \CPU|decoderInstru|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(1));

\CPU|MUXRET|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXRET|saida_MUX[1]~1_combout\ = (!\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RET|DOUT\(1))) # (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|ULA_sr|Add0~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|RET|ALT_INV_DOUT\(1),
	datac => \CPU|ULA_sr|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUXRET|saida_MUX[1]~1_combout\);

\CPU|ULA_sr|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_sr|Add0~9_sumout\ = SUM(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(2) ) + ( 
-- \CPU|ULA_sr|Add0~6\ ))
-- \CPU|ULA_sr|Add0~10\ = CARRY(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(2) ) + ( \CPU|ULA_sr|Add0~6\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[13]~6_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \CPU|RET|ALT_INV_DOUT\(2),
	cin => \CPU|ULA_sr|Add0~6\,
	sumout => \CPU|ULA_sr|Add0~9_sumout\,
	cout => \CPU|ULA_sr|Add0~10\);

\CPU|RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA_sr|Add0~9_sumout\,
	ena => \CPU|decoderInstru|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(2));

\CPU|MUXRET|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXRET|saida_MUX[2]~2_combout\ = (!\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RET|DOUT\(2))) # (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|ULA_sr|Add0~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|RET|ALT_INV_DOUT\(2),
	datac => \CPU|ULA_sr|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUXRET|saida_MUX[2]~2_combout\);

\CPU|ULA_sr|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_sr|Add0~13_sumout\ = SUM(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(3) ) + ( 
-- \CPU|ULA_sr|Add0~10\ ))
-- \CPU|ULA_sr|Add0~14\ = CARRY(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(3) ) + ( \CPU|ULA_sr|Add0~10\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[13]~6_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \CPU|RET|ALT_INV_DOUT\(3),
	cin => \CPU|ULA_sr|Add0~10\,
	sumout => \CPU|ULA_sr|Add0~13_sumout\,
	cout => \CPU|ULA_sr|Add0~14\);

\CPU|RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA_sr|Add0~13_sumout\,
	ena => \CPU|decoderInstru|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(3));

\CPU|MUXRET|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXRET|saida_MUX[3]~3_combout\ = (!\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RET|DOUT\(3))) # (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|ULA_sr|Add0~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|RET|ALT_INV_DOUT\(3),
	datac => \CPU|ULA_sr|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUXRET|saida_MUX[3]~3_combout\);

\CPU|ULA_sr|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_sr|Add0~17_sumout\ = SUM(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(4) ) + ( 
-- \CPU|ULA_sr|Add0~14\ ))
-- \CPU|ULA_sr|Add0~18\ = CARRY(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(4) ) + ( \CPU|ULA_sr|Add0~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[13]~6_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \CPU|RET|ALT_INV_DOUT\(4),
	cin => \CPU|ULA_sr|Add0~14\,
	sumout => \CPU|ULA_sr|Add0~17_sumout\,
	cout => \CPU|ULA_sr|Add0~18\);

\CPU|RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA_sr|Add0~17_sumout\,
	ena => \CPU|decoderInstru|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(4));

\CPU|MUXRET|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXRET|saida_MUX[4]~4_combout\ = (!\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RET|DOUT\(4))) # (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|ULA_sr|Add0~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|RET|ALT_INV_DOUT\(4),
	datac => \CPU|ULA_sr|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUXRET|saida_MUX[4]~4_combout\);

\CPU|ULA_sr|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_sr|Add0~21_sumout\ = SUM(( (!\CPU|decoderInstru|Equal11~2_combout\) # (((\CPU|decoderInstru|Equal11~0_combout\) # (\CPU|decoderInstru|Equal11~1_combout\)) # (\CPU|decoderInstru|saida[13]~6_combout\)) ) + ( \CPU|RET|DOUT\(5) ) + ( 
-- \CPU|ULA_sr|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal11~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[13]~6_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	dataf => \CPU|RET|ALT_INV_DOUT\(5),
	cin => \CPU|ULA_sr|Add0~18\,
	sumout => \CPU|ULA_sr|Add0~21_sumout\);

\CPU|RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA_sr|Add0~21_sumout\,
	ena => \CPU|decoderInstru|saida~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RET|DOUT\(5));

\CPU|MUXRET|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXRET|saida_MUX[5]~5_combout\ = (!\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RET|DOUT\(5))) # (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|ULA_sr|Add0~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|RET|ALT_INV_DOUT\(5),
	datac => \CPU|ULA_sr|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUXRET|saida_MUX[5]~5_combout\);

\CPU|RAM_RET|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~784_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~784_combout\);

\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~784_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~784_combout\,
	combout => \rtl~0_combout\);

\CPU|RAM_RET|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~21_q\);

\CPU|RAM_RET|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~785_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~785_combout\);

\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~785_combout\,
	combout => \rtl~1_combout\);

\CPU|RAM_RET|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~30_q\);

\CPU|RAM_RET|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~786_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~786_combout\);

\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~786_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~786_combout\,
	combout => \rtl~2_combout\);

\CPU|RAM_RET|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~39_q\);

\CPU|RAM_RET|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~787_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~787_combout\);

\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~787_combout\,
	combout => \rtl~3_combout\);

\CPU|RAM_RET|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~48_q\);

\CPU|RAM_RET|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~637_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~48_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~39_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~30_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~21_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~30_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~39_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~48_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~637_combout\);

\CPU|RAM_RET|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~800_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~800_combout\);

\rtl~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~16_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~800_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~800_combout\,
	combout => \rtl~16_combout\);

\CPU|RAM_RET|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~165_q\);

\CPU|RAM_RET|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~804_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~804_combout\);

\rtl~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~20_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~804_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~804_combout\,
	combout => \rtl~20_combout\);

\CPU|RAM_RET|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~174_q\);

\CPU|RAM_RET|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~808_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~808_combout\);

\rtl~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~24_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~808_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~808_combout\,
	combout => \rtl~24_combout\);

\CPU|RAM_RET|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~183_q\);

\CPU|RAM_RET|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~812_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~812_combout\);

\rtl~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~28_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~812_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~812_combout\,
	combout => \rtl~28_combout\);

\CPU|RAM_RET|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~192_q\);

\CPU|RAM_RET|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~638_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~192_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~183_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~174_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~165_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~165_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~174_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~183_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~192_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~638_combout\);

\CPU|RAM_RET|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~816_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~816_combout\);

\rtl~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~32_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~816_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~816_combout\,
	combout => \rtl~32_combout\);

\CPU|RAM_RET|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~309_q\);

\CPU|RAM_RET|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~817_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~817_combout\);

\rtl~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~33_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~817_combout\,
	combout => \rtl~33_combout\);

\CPU|RAM_RET|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~318_q\);

\CPU|RAM_RET|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~818_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~818_combout\);

\rtl~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~34_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~818_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~818_combout\,
	combout => \rtl~34_combout\);

\CPU|RAM_RET|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~327_q\);

\CPU|RAM_RET|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~819_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~819_combout\);

\rtl~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~35_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~819_combout\,
	combout => \rtl~35_combout\);

\CPU|RAM_RET|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~336_q\);

\CPU|RAM_RET|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~639_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~336_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~327_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~318_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~309_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~318_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~327_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~336_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~639_combout\);

\CPU|RAM_RET|ram~832\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~832_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~832_combout\);

\rtl~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~48_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~832_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~832_combout\,
	combout => \rtl~48_combout\);

\CPU|RAM_RET|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~453_q\);

\CPU|RAM_RET|ram~836\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~836_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~836_combout\);

\rtl~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~52_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~836_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~836_combout\,
	combout => \rtl~52_combout\);

\CPU|RAM_RET|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~462_q\);

\CPU|RAM_RET|ram~840\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~840_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~840_combout\);

\rtl~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~56_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~840_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~840_combout\,
	combout => \rtl~56_combout\);

\CPU|RAM_RET|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~471_q\);

\CPU|RAM_RET|ram~844\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~844_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~844_combout\);

\rtl~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~60_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~844_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~844_combout\,
	combout => \rtl~60_combout\);

\CPU|RAM_RET|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~480_q\);

\CPU|RAM_RET|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~640_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~480_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~471_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~462_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~453_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~453_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~462_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~471_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~480_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~640_combout\);

\CPU|RAM_RET|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~641_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~640_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~639_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~638_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~637_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~638_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~639_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~640_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~641_combout\);

\CPU|RAM_RET|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~788_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~788_combout\);

\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~788_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~788_combout\,
	combout => \rtl~4_combout\);

\CPU|RAM_RET|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~57_q\);

\CPU|RAM_RET|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~789_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~789_combout\);

\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~789_combout\,
	combout => \rtl~5_combout\);

\CPU|RAM_RET|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~66_q\);

\CPU|RAM_RET|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~790_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~790_combout\);

\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~790_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~790_combout\,
	combout => \rtl~6_combout\);

\CPU|RAM_RET|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~75_q\);

\CPU|RAM_RET|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~791_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~791_combout\);

\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~791_combout\,
	combout => \rtl~7_combout\);

\CPU|RAM_RET|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~84_q\);

\CPU|RAM_RET|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~642_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~84_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~75_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~66_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~57_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~66_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~75_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~84_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~642_combout\);

\CPU|RAM_RET|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~801_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~801_combout\);

\rtl~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~17_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~801_combout\,
	combout => \rtl~17_combout\);

\CPU|RAM_RET|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~201_q\);

\CPU|RAM_RET|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~805_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~805_combout\);

\rtl~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~21_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~805_combout\,
	combout => \rtl~21_combout\);

\CPU|RAM_RET|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~210_q\);

\CPU|RAM_RET|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~809_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~809_combout\);

\rtl~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~25_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~809_combout\,
	combout => \rtl~25_combout\);

\CPU|RAM_RET|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~219_q\);

\CPU|RAM_RET|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~813_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~813_combout\);

\rtl~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~29_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~813_combout\,
	combout => \rtl~29_combout\);

\CPU|RAM_RET|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~228_q\);

\CPU|RAM_RET|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~643_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~228_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~219_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~210_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~201_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~201_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~210_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~219_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~228_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~643_combout\);

\CPU|RAM_RET|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~820_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~820_combout\);

\rtl~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~36_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~820_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~820_combout\,
	combout => \rtl~36_combout\);

\CPU|RAM_RET|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~345_q\);

\CPU|RAM_RET|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~821_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~821_combout\);

\rtl~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~37_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~821_combout\,
	combout => \rtl~37_combout\);

\CPU|RAM_RET|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~354_q\);

\CPU|RAM_RET|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~822_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~822_combout\);

\rtl~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~38_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~822_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~822_combout\,
	combout => \rtl~38_combout\);

\CPU|RAM_RET|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~363_q\);

\CPU|RAM_RET|ram~823\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~823_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~823_combout\);

\rtl~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~39_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~823_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~823_combout\,
	combout => \rtl~39_combout\);

\CPU|RAM_RET|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~372_q\);

\CPU|RAM_RET|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~644_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~372_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~363_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~354_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~345_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~345_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~354_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~363_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~372_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~644_combout\);

\CPU|RAM_RET|ram~833\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~833_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~833_combout\);

\rtl~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~49_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~833_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~833_combout\,
	combout => \rtl~49_combout\);

\CPU|RAM_RET|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~489_q\);

\CPU|RAM_RET|ram~837\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~837_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~837_combout\);

\rtl~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~53_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~837_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~837_combout\,
	combout => \rtl~53_combout\);

\CPU|RAM_RET|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~498_q\);

\CPU|RAM_RET|ram~841\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~841_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~841_combout\);

\rtl~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~57_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~841_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~841_combout\,
	combout => \rtl~57_combout\);

\CPU|RAM_RET|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~507_q\);

\CPU|RAM_RET|ram~845\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~845_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- !\CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~845_combout\);

\rtl~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~61_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~845_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~845_combout\,
	combout => \rtl~61_combout\);

\CPU|RAM_RET|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~516_q\);

\CPU|RAM_RET|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~645_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~516_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~507_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~498_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~489_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~489_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~498_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~507_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~516_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~645_combout\);

\CPU|RAM_RET|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~646_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~645_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~644_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~643_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~642_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~643_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~644_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~645_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~646_combout\);

\CPU|RAM_RET|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~792_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~792_combout\);

\rtl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~792_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~792_combout\,
	combout => \rtl~8_combout\);

\CPU|RAM_RET|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~93_q\);

\CPU|RAM_RET|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~793_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~793_combout\);

\rtl~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~793_combout\,
	combout => \rtl~9_combout\);

\CPU|RAM_RET|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~102_q\);

\CPU|RAM_RET|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~794_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~794_combout\);

\rtl~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~794_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~794_combout\,
	combout => \rtl~10_combout\);

\CPU|RAM_RET|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~111_q\);

\CPU|RAM_RET|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~795_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~795_combout\);

\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~795_combout\,
	combout => \rtl~11_combout\);

\CPU|RAM_RET|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~120_q\);

\CPU|RAM_RET|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~647_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~120_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~111_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~102_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~93_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~93_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~102_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~111_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~120_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~647_combout\);

\CPU|RAM_RET|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~802_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~802_combout\);

\rtl~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~18_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~802_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~802_combout\,
	combout => \rtl~18_combout\);

\CPU|RAM_RET|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~237_q\);

\CPU|RAM_RET|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~806_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~806_combout\);

\rtl~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~22_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~806_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~806_combout\,
	combout => \rtl~22_combout\);

\CPU|RAM_RET|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~246_q\);

\CPU|RAM_RET|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~810_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~810_combout\);

\rtl~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~26_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~810_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~810_combout\,
	combout => \rtl~26_combout\);

\CPU|RAM_RET|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~255_q\);

\CPU|RAM_RET|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~814_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~814_combout\);

\rtl~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~30_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~814_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~814_combout\,
	combout => \rtl~30_combout\);

\CPU|RAM_RET|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~264_q\);

\CPU|RAM_RET|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~648_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~264_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~255_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~246_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~237_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~237_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~246_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~255_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~264_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~648_combout\);

\CPU|RAM_RET|ram~824\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~824_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~824_combout\);

\rtl~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~40_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~824_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~824_combout\,
	combout => \rtl~40_combout\);

\CPU|RAM_RET|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~381_q\);

\CPU|RAM_RET|ram~825\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~825_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~825_combout\);

\rtl~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~41_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~825_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~825_combout\,
	combout => \rtl~41_combout\);

\CPU|RAM_RET|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~390_q\);

\CPU|RAM_RET|ram~826\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~826_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~826_combout\);

\rtl~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~42_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~826_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~826_combout\,
	combout => \rtl~42_combout\);

\CPU|RAM_RET|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~399_q\);

\CPU|RAM_RET|ram~827\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~827_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~827_combout\);

\rtl~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~43_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~827_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~827_combout\,
	combout => \rtl~43_combout\);

\CPU|RAM_RET|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~408_q\);

\CPU|RAM_RET|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~649_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~408_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~399_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~390_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~381_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~381_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~390_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~399_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~408_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~649_combout\);

\CPU|RAM_RET|ram~834\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~834_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~834_combout\);

\rtl~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~50_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~834_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~834_combout\,
	combout => \rtl~50_combout\);

\CPU|RAM_RET|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~525_q\);

\CPU|RAM_RET|ram~838\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~838_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~838_combout\);

\rtl~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~54_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~838_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~838_combout\,
	combout => \rtl~54_combout\);

\CPU|RAM_RET|ram~534\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~534_q\);

\CPU|RAM_RET|ram~842\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~842_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~842_combout\);

\rtl~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~58_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~842_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~842_combout\,
	combout => \rtl~58_combout\);

\CPU|RAM_RET|ram~543\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~543_q\);

\CPU|RAM_RET|ram~846\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~846_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (!\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~846_combout\);

\rtl~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~62_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~846_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~846_combout\,
	combout => \rtl~62_combout\);

\CPU|RAM_RET|ram~552\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~552_q\);

\CPU|RAM_RET|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~650_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~552_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~543_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~534_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~525_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~525_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~534_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~543_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~552_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~650_combout\);

\CPU|RAM_RET|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~651_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~650_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~649_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~648_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~647_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~648_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~649_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~650_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~651_combout\);

\CPU|RAM_RET|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~796_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~796_combout\);

\rtl~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~796_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~796_combout\,
	combout => \rtl~12_combout\);

\CPU|RAM_RET|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~129_q\);

\CPU|RAM_RET|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~803_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~803_combout\);

\rtl~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~19_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~803_combout\,
	combout => \rtl~19_combout\);

\CPU|RAM_RET|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~273_q\);

\CPU|RAM_RET|ram~828\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~828_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~828_combout\);

\rtl~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~44_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~828_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~828_combout\,
	combout => \rtl~44_combout\);

\CPU|RAM_RET|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~417_q\);

\CPU|RAM_RET|ram~835\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~835_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~835_combout\);

\rtl~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~51_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~835_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~835_combout\,
	combout => \rtl~51_combout\);

\CPU|RAM_RET|ram~561\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~561_q\);

\CPU|RAM_RET|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~652_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~561_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~417_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~273_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~129_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~129_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~273_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~417_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~561_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~652_combout\);

\CPU|RAM_RET|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~797_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~797_combout\);

\rtl~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~797_combout\,
	combout => \rtl~13_combout\);

\CPU|RAM_RET|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~138_q\);

\CPU|RAM_RET|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~807_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~807_combout\);

\rtl~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~23_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~807_combout\,
	combout => \rtl~23_combout\);

\CPU|RAM_RET|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~282_q\);

\CPU|RAM_RET|ram~829\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~829_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~829_combout\);

\rtl~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~45_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~829_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~829_combout\,
	combout => \rtl~45_combout\);

\CPU|RAM_RET|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~426_q\);

\CPU|RAM_RET|ram~839\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~839_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (!\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~839_combout\);

\rtl~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~55_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~839_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~839_combout\,
	combout => \rtl~55_combout\);

\CPU|RAM_RET|ram~570\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~570_q\);

\CPU|RAM_RET|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~653_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~570_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~426_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~282_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~138_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~138_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~282_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~426_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~570_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~653_combout\);

\CPU|RAM_RET|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~798_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~798_combout\);

\rtl~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~798_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~798_combout\,
	combout => \rtl~14_combout\);

\CPU|RAM_RET|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~147_q\);

\CPU|RAM_RET|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~811_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~811_combout\);

\rtl~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~27_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~811_combout\,
	combout => \rtl~27_combout\);

\CPU|RAM_RET|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~291_q\);

\CPU|RAM_RET|ram~830\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~830_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~830_combout\);

\rtl~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~46_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~830_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~830_combout\,
	combout => \rtl~46_combout\);

\CPU|RAM_RET|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~435_q\);

\CPU|RAM_RET|ram~843\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~843_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (!\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~843_combout\);

\rtl~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~59_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~843_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~843_combout\,
	combout => \rtl~59_combout\);

\CPU|RAM_RET|ram~579\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~579_q\);

\CPU|RAM_RET|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~654_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~579_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~435_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~291_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~147_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~291_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~435_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~579_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~654_combout\);

\CPU|RAM_RET|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~799_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~799_combout\);

\rtl~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~799_combout\,
	combout => \rtl~15_combout\);

\CPU|RAM_RET|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~156_q\);

\CPU|RAM_RET|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~815_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~815_combout\);

\rtl~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~31_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~815_combout\,
	combout => \rtl~31_combout\);

\CPU|RAM_RET|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~300_q\);

\CPU|RAM_RET|ram~831\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~831_combout\ = ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~831_combout\);

\rtl~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~47_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~831_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~831_combout\,
	combout => \rtl~47_combout\);

\CPU|RAM_RET|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~444_q\);

\CPU|RAM_RET|ram~847\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~847_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( (\CPU|MUXRET|saida_MUX[0]~0_combout\ & (\CPU|MUXRET|saida_MUX[1]~1_combout\ & (\CPU|MUXRET|saida_MUX[2]~2_combout\ & 
-- \CPU|MUXRET|saida_MUX[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~847_combout\);

\rtl~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~63_combout\ = (\CPU|decoderInstru|saida~4_combout\ & \CPU|RAM_RET|ram~847_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~4_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~847_combout\,
	combout => \rtl~63_combout\);

\CPU|RAM_RET|ram~588\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~588_q\);

\CPU|RAM_RET|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~655_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~588_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~444_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~300_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~156_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~300_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~444_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~588_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~655_combout\);

\CPU|RAM_RET|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~656_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~655_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~654_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~653_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~652_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~652_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~653_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~654_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~655_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~656_combout\);

\CPU|RAM_RET|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~657_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~656_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~651_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~646_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~641_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~641_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~646_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~651_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~656_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~657_combout\);

\CPU|MUX2|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~3_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RAM_RET|ram~657_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~657_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~3_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|RAM_RET|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~26_q\);

\CPU|RAM_RET|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~170_q\);

\CPU|RAM_RET|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~314_q\);

\CPU|RAM_RET|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~458_q\);

\CPU|RAM_RET|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~742_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~458_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~314_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~170_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~26_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~170_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~314_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~458_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~742_combout\);

\CPU|RAM_RET|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~62_q\);

\CPU|RAM_RET|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~206_q\);

\CPU|RAM_RET|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~350_q\);

\CPU|RAM_RET|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~494_q\);

\CPU|RAM_RET|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~743_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~494_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~350_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~206_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~62_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~206_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~350_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~494_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~743_combout\);

\CPU|RAM_RET|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~98_q\);

\CPU|RAM_RET|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~242_q\);

\CPU|RAM_RET|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~386_q\);

\CPU|RAM_RET|ram~530\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~530_q\);

\CPU|RAM_RET|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~744_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~530_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~386_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~242_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~98_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~242_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~386_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~530_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~744_combout\);

\CPU|RAM_RET|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~134_q\);

\CPU|RAM_RET|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~278_q\);

\CPU|RAM_RET|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~422_q\);

\CPU|RAM_RET|ram~566\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~566_q\);

\CPU|RAM_RET|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~745_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~566_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~422_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~278_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~134_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~278_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~422_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~566_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~745_combout\);

\CPU|RAM_RET|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~746_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~745_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~744_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~743_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~742_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~742_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~743_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~744_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~745_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~746_combout\);

\CPU|RAM_RET|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~35_q\);

\CPU|RAM_RET|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~179_q\);

\CPU|RAM_RET|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~323_q\);

\CPU|RAM_RET|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~467_q\);

\CPU|RAM_RET|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~747_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~467_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~323_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~179_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~35_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~179_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~323_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~467_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~747_combout\);

\CPU|RAM_RET|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~71_q\);

\CPU|RAM_RET|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~215_q\);

\CPU|RAM_RET|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~359_q\);

\CPU|RAM_RET|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~503_q\);

\CPU|RAM_RET|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~748_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~503_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~359_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~215_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~71_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~215_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~359_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~503_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~748_combout\);

\CPU|RAM_RET|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~107_q\);

\CPU|RAM_RET|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~251_q\);

\CPU|RAM_RET|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~395_q\);

\CPU|RAM_RET|ram~539\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~539_q\);

\CPU|RAM_RET|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~749_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~539_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~395_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~251_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~107_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~107_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~251_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~395_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~539_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~749_combout\);

\CPU|RAM_RET|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~143_q\);

\CPU|RAM_RET|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~287_q\);

\CPU|RAM_RET|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~431_q\);

\CPU|RAM_RET|ram~575\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~575_q\);

\CPU|RAM_RET|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~750_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~575_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~431_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~287_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~143_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~143_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~287_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~431_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~575_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~750_combout\);

\CPU|RAM_RET|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~751_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~750_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~749_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~748_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~747_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~747_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~748_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~749_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~750_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~751_combout\);

\CPU|RAM_RET|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~44_q\);

\CPU|RAM_RET|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~80_q\);

\CPU|RAM_RET|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~116_q\);

\CPU|RAM_RET|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~152_q\);

\CPU|RAM_RET|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~752_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~152_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~116_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~80_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~44_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~80_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~116_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~152_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~752_combout\);

\CPU|RAM_RET|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~188_q\);

\CPU|RAM_RET|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~224_q\);

\CPU|RAM_RET|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~260_q\);

\CPU|RAM_RET|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~296_q\);

\CPU|RAM_RET|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~753_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~296_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~260_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~224_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~188_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~188_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~224_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~260_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~296_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~753_combout\);

\CPU|RAM_RET|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~332_q\);

\CPU|RAM_RET|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~368_q\);

\CPU|RAM_RET|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~404_q\);

\CPU|RAM_RET|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~440_q\);

\CPU|RAM_RET|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~754_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~440_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~404_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~368_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~332_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~332_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~368_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~404_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~440_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~754_combout\);

\CPU|RAM_RET|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~476_q\);

\CPU|RAM_RET|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~512_q\);

\CPU|RAM_RET|ram~548\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~548_q\);

\CPU|RAM_RET|ram~584\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~584_q\);

\CPU|RAM_RET|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~755_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~584_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~548_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~512_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~476_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~476_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~512_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~548_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~584_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~755_combout\);

\CPU|RAM_RET|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~756_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~755_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~754_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~753_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~752_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~752_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~753_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~754_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~755_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~756_combout\);

\CPU|RAM_RET|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~53_q\);

\CPU|RAM_RET|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~197_q\);

\CPU|RAM_RET|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~341_q\);

\CPU|RAM_RET|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~485_q\);

\CPU|RAM_RET|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~757_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~485_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~341_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~197_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~53_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~197_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~341_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~485_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~757_combout\);

\CPU|RAM_RET|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~89_q\);

\CPU|RAM_RET|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~233_q\);

\CPU|RAM_RET|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~377_q\);

\CPU|RAM_RET|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~521_q\);

\CPU|RAM_RET|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~758_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~521_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~377_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~233_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~89_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~233_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~377_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~521_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~758_combout\);

\CPU|RAM_RET|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~125_q\);

\CPU|RAM_RET|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~269_q\);

\CPU|RAM_RET|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~413_q\);

\CPU|RAM_RET|ram~557\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~557_q\);

\CPU|RAM_RET|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~759_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~557_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~413_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~269_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~125_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~125_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~269_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~413_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~557_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~759_combout\);

\CPU|RAM_RET|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~161_q\);

\CPU|RAM_RET|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~305_q\);

\CPU|RAM_RET|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~449_q\);

\CPU|RAM_RET|ram~593\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~593_q\);

\CPU|RAM_RET|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~760_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~593_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~449_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~305_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~161_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~305_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~449_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~593_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~760_combout\);

\CPU|RAM_RET|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~761_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~760_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~759_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~758_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~757_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~757_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~758_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~759_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~760_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~761_combout\);

\CPU|RAM_RET|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~762_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~761_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~756_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~751_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~746_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~746_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~751_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~756_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~761_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~762_combout\);

\CPU|MUX2|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~8_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|incrementaPC|Add0~29_sumout\))) # (\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RAM_RET|ram~762_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~762_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~8_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|RAM_RET|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~27_q\);

\CPU|RAM_RET|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~36_q\);

\CPU|RAM_RET|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~45_q\);

\CPU|RAM_RET|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~54_q\);

\CPU|RAM_RET|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~763_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~54_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~45_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~36_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~27_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~36_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~45_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~54_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~763_combout\);

\CPU|RAM_RET|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~171_q\);

\CPU|RAM_RET|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~180_q\);

\CPU|RAM_RET|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~189_q\);

\CPU|RAM_RET|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~198_q\);

\CPU|RAM_RET|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~764_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~198_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~189_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~180_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~171_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~171_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~180_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~189_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~198_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~764_combout\);

\CPU|RAM_RET|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~315_q\);

\CPU|RAM_RET|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~324_q\);

\CPU|RAM_RET|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~333_q\);

\CPU|RAM_RET|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~342_q\);

\CPU|RAM_RET|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~765_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~342_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~333_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~324_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~315_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~315_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~324_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~333_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~342_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~765_combout\);

\CPU|RAM_RET|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~459_q\);

\CPU|RAM_RET|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~468_q\);

\CPU|RAM_RET|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~477_q\);

\CPU|RAM_RET|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~486_q\);

\CPU|RAM_RET|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~766_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~486_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~477_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~468_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~459_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~459_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~468_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~477_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~486_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~766_combout\);

\CPU|RAM_RET|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~767_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~766_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~765_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~764_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~763_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~763_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~764_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~765_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~766_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~767_combout\);

\CPU|RAM_RET|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~63_q\);

\CPU|RAM_RET|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~72_q\);

\CPU|RAM_RET|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~81_q\);

\CPU|RAM_RET|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~90_q\);

\CPU|RAM_RET|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~768_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~90_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~81_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~72_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~63_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~72_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~81_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~90_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~768_combout\);

\CPU|RAM_RET|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~207_q\);

\CPU|RAM_RET|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~216_q\);

\CPU|RAM_RET|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~225_q\);

\CPU|RAM_RET|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~234_q\);

\CPU|RAM_RET|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~769_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~234_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~225_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~216_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~207_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~207_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~216_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~225_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~234_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~769_combout\);

\CPU|RAM_RET|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~351_q\);

\CPU|RAM_RET|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~360_q\);

\CPU|RAM_RET|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~369_q\);

\CPU|RAM_RET|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~378_q\);

\CPU|RAM_RET|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~770_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~378_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~369_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~360_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~351_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~351_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~360_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~369_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~378_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~770_combout\);

\CPU|RAM_RET|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~495_q\);

\CPU|RAM_RET|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~504_q\);

\CPU|RAM_RET|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~513_q\);

\CPU|RAM_RET|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~522_q\);

\CPU|RAM_RET|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~771_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~522_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~513_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~504_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~495_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~495_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~504_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~513_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~522_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~771_combout\);

\CPU|RAM_RET|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~772_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~771_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~770_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~769_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~768_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~768_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~769_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~770_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~771_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~772_combout\);

\CPU|RAM_RET|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~99_q\);

\CPU|RAM_RET|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~108_q\);

\CPU|RAM_RET|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~117_q\);

\CPU|RAM_RET|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~126_q\);

\CPU|RAM_RET|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~773_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~126_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~117_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~108_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~99_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~108_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~117_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~126_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~773_combout\);

\CPU|RAM_RET|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~243_q\);

\CPU|RAM_RET|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~252_q\);

\CPU|RAM_RET|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~261_q\);

\CPU|RAM_RET|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~270_q\);

\CPU|RAM_RET|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~774_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~270_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~261_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~252_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~243_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~243_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~252_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~261_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~270_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~774_combout\);

\CPU|RAM_RET|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~387_q\);

\CPU|RAM_RET|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~396_q\);

\CPU|RAM_RET|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~405_q\);

\CPU|RAM_RET|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~414_q\);

\CPU|RAM_RET|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~775_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~414_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~405_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~396_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~387_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~387_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~396_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~405_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~414_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~775_combout\);

\CPU|RAM_RET|ram~531\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~531_q\);

\CPU|RAM_RET|ram~540\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~540_q\);

\CPU|RAM_RET|ram~549\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~549_q\);

\CPU|RAM_RET|ram~558\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~558_q\);

\CPU|RAM_RET|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~776_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~558_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~549_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~540_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~531_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~531_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~540_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~549_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~558_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~776_combout\);

\CPU|RAM_RET|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~777_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~776_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~775_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~774_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~773_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~773_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~774_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~775_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~776_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~777_combout\);

\CPU|RAM_RET|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~135_q\);

\CPU|RAM_RET|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~279_q\);

\CPU|RAM_RET|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~423_q\);

\CPU|RAM_RET|ram~567\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~567_q\);

\CPU|RAM_RET|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~778_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~567_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~423_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~279_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~135_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~279_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~423_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~567_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~778_combout\);

\CPU|RAM_RET|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~144_q\);

\CPU|RAM_RET|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~288_q\);

\CPU|RAM_RET|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~432_q\);

\CPU|RAM_RET|ram~576\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~576_q\);

\CPU|RAM_RET|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~779_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~576_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~432_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~288_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~144_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~288_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~432_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~576_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~779_combout\);

\CPU|RAM_RET|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~153_q\);

\CPU|RAM_RET|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~297_q\);

\CPU|RAM_RET|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~441_q\);

\CPU|RAM_RET|ram~585\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~585_q\);

\CPU|RAM_RET|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~780_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~585_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~441_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~297_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~153_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~297_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~441_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~585_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~780_combout\);

\CPU|RAM_RET|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~162_q\);

\CPU|RAM_RET|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~306_q\);

\CPU|RAM_RET|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~450_q\);

\CPU|RAM_RET|ram~594\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~594_q\);

\CPU|RAM_RET|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~781_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~594_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~450_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~306_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~162_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~162_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~306_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~450_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~594_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~781_combout\);

\CPU|RAM_RET|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~782_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~781_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~780_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~779_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~778_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~778_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~779_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~780_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~781_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~782_combout\);

\CPU|RAM_RET|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~783_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~782_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~777_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~772_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~767_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~767_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~772_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~777_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~782_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~783_combout\);

\CPU|MUX2|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~9_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RAM_RET|ram~783_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~783_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~9_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~5_combout\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|RAM_RET|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~22_q\);

\CPU|RAM_RET|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~58_q\);

\CPU|RAM_RET|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~94_q\);

\CPU|RAM_RET|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~130_q\);

\CPU|RAM_RET|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~658_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~130_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~94_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~58_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~22_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~58_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~94_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~130_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~658_combout\);

\CPU|RAM_RET|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~31_q\);

\CPU|RAM_RET|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~67_q\);

\CPU|RAM_RET|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~103_q\);

\CPU|RAM_RET|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~139_q\);

\CPU|RAM_RET|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~659_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~139_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~103_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~67_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~31_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~67_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~103_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~139_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~659_combout\);

\CPU|RAM_RET|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~40_q\);

\CPU|RAM_RET|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~76_q\);

\CPU|RAM_RET|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~112_q\);

\CPU|RAM_RET|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~148_q\);

\CPU|RAM_RET|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~660_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~148_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~112_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~76_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~40_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~76_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~112_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~148_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~660_combout\);

\CPU|RAM_RET|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~49_q\);

\CPU|RAM_RET|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~85_q\);

\CPU|RAM_RET|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~121_q\);

\CPU|RAM_RET|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~157_q\);

\CPU|RAM_RET|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~661_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~157_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~121_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~85_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~49_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~85_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~121_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~157_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~661_combout\);

\CPU|RAM_RET|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~662_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~661_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~660_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~659_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~658_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~659_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~660_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~661_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~662_combout\);

\CPU|RAM_RET|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~166_q\);

\CPU|RAM_RET|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~202_q\);

\CPU|RAM_RET|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~238_q\);

\CPU|RAM_RET|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~274_q\);

\CPU|RAM_RET|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~663_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~274_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~238_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~202_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~166_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~166_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~202_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~238_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~274_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~663_combout\);

\CPU|RAM_RET|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~175_q\);

\CPU|RAM_RET|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~211_q\);

\CPU|RAM_RET|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~247_q\);

\CPU|RAM_RET|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~283_q\);

\CPU|RAM_RET|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~664_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~283_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~247_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~211_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~175_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~211_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~247_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~283_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~664_combout\);

\CPU|RAM_RET|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~184_q\);

\CPU|RAM_RET|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~220_q\);

\CPU|RAM_RET|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~256_q\);

\CPU|RAM_RET|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~292_q\);

\CPU|RAM_RET|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~665_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~292_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~256_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~220_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~184_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~184_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~220_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~256_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~292_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~665_combout\);

\CPU|RAM_RET|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~193_q\);

\CPU|RAM_RET|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~229_q\);

\CPU|RAM_RET|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~265_q\);

\CPU|RAM_RET|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~301_q\);

\CPU|RAM_RET|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~666_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~301_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~265_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~229_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~193_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~193_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~229_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~265_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~301_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~666_combout\);

\CPU|RAM_RET|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~667_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~666_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~665_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~664_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~663_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~664_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~665_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~666_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~667_combout\);

\CPU|RAM_RET|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~310_q\);

\CPU|RAM_RET|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~346_q\);

\CPU|RAM_RET|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~382_q\);

\CPU|RAM_RET|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~418_q\);

\CPU|RAM_RET|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~668_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~418_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~382_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~346_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~310_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~346_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~382_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~418_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~668_combout\);

\CPU|RAM_RET|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~319_q\);

\CPU|RAM_RET|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~355_q\);

\CPU|RAM_RET|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~391_q\);

\CPU|RAM_RET|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~427_q\);

\CPU|RAM_RET|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~669_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~427_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~391_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~355_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~319_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~319_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~355_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~391_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~427_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~669_combout\);

\CPU|RAM_RET|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~328_q\);

\CPU|RAM_RET|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~364_q\);

\CPU|RAM_RET|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~400_q\);

\CPU|RAM_RET|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~436_q\);

\CPU|RAM_RET|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~670_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~436_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~400_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~364_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~328_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~328_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~364_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~400_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~436_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~670_combout\);

\CPU|RAM_RET|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~337_q\);

\CPU|RAM_RET|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~373_q\);

\CPU|RAM_RET|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~409_q\);

\CPU|RAM_RET|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~445_q\);

\CPU|RAM_RET|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~671_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~445_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~409_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~373_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~337_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~337_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~373_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~409_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~445_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~671_combout\);

\CPU|RAM_RET|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~672_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~671_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~670_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~669_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~668_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~669_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~670_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~671_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~672_combout\);

\CPU|RAM_RET|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~454_q\);

\CPU|RAM_RET|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~463_q\);

\CPU|RAM_RET|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~472_q\);

\CPU|RAM_RET|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~481_q\);

\CPU|RAM_RET|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~673_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~481_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~472_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~463_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~454_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~454_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~463_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~472_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~481_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~673_combout\);

\CPU|RAM_RET|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~490_q\);

\CPU|RAM_RET|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~499_q\);

\CPU|RAM_RET|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~508_q\);

\CPU|RAM_RET|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~517_q\);

\CPU|RAM_RET|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~674_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~517_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~508_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~499_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~490_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~490_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~499_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~508_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~517_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~674_combout\);

\CPU|RAM_RET|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~526_q\);

\CPU|RAM_RET|ram~535\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~535_q\);

\CPU|RAM_RET|ram~544\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~544_q\);

\CPU|RAM_RET|ram~553\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~553_q\);

\CPU|RAM_RET|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~675_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~553_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~544_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~535_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~526_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~526_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~535_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~544_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~553_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~675_combout\);

\CPU|RAM_RET|ram~562\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~562_q\);

\CPU|RAM_RET|ram~571\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~571_q\);

\CPU|RAM_RET|ram~580\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~580_q\);

\CPU|RAM_RET|ram~589\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~589_q\);

\CPU|RAM_RET|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~676_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~589_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~580_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~571_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~562_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~562_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~571_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~580_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~589_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~676_combout\);

\CPU|RAM_RET|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~677_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~676_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~675_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~674_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~673_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~673_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~674_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~675_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~676_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~677_combout\);

\CPU|RAM_RET|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~678_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~677_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~672_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~667_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~662_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~662_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~667_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~672_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~677_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~678_combout\);

\CPU|MUX2|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~4_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\) # ((\CPU|RAM_RET|ram~678_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~5_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|RAM_RET|ram~678_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~678_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX2|saida_MUX[3]~4_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|RAM_RET|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~23_q\);

\CPU|RAM_RET|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~167_q\);

\CPU|RAM_RET|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~311_q\);

\CPU|RAM_RET|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~455_q\);

\CPU|RAM_RET|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~679_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~455_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~311_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~167_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~23_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~167_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~311_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~455_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~679_combout\);

\CPU|RAM_RET|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~59_q\);

\CPU|RAM_RET|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~203_q\);

\CPU|RAM_RET|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~347_q\);

\CPU|RAM_RET|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~491_q\);

\CPU|RAM_RET|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~680_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~491_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~347_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~203_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~59_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~203_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~347_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~491_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~680_combout\);

\CPU|RAM_RET|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~95_q\);

\CPU|RAM_RET|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~239_q\);

\CPU|RAM_RET|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~383_q\);

\CPU|RAM_RET|ram~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~527_q\);

\CPU|RAM_RET|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~681_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~527_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~383_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~239_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~95_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~239_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~383_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~527_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~681_combout\);

\CPU|RAM_RET|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~131_q\);

\CPU|RAM_RET|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~275_q\);

\CPU|RAM_RET|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~419_q\);

\CPU|RAM_RET|ram~563\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~563_q\);

\CPU|RAM_RET|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~682_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~563_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~419_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~275_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~131_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~275_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~419_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~563_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~682_combout\);

\CPU|RAM_RET|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~683_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~682_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~681_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~680_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~679_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~680_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~681_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~682_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~683_combout\);

\CPU|RAM_RET|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~32_q\);

\CPU|RAM_RET|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~176_q\);

\CPU|RAM_RET|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~320_q\);

\CPU|RAM_RET|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~464_q\);

\CPU|RAM_RET|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~684_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~464_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~320_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~176_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~32_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~176_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~320_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~464_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~684_combout\);

\CPU|RAM_RET|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~68_q\);

\CPU|RAM_RET|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~212_q\);

\CPU|RAM_RET|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~356_q\);

\CPU|RAM_RET|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~500_q\);

\CPU|RAM_RET|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~685_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~500_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~356_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~212_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~68_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~212_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~356_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~500_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~685_combout\);

\CPU|RAM_RET|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~104_q\);

\CPU|RAM_RET|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~248_q\);

\CPU|RAM_RET|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~392_q\);

\CPU|RAM_RET|ram~536\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~536_q\);

\CPU|RAM_RET|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~686_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~536_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~392_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~248_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~104_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~104_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~248_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~392_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~536_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~686_combout\);

\CPU|RAM_RET|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~140_q\);

\CPU|RAM_RET|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~284_q\);

\CPU|RAM_RET|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~428_q\);

\CPU|RAM_RET|ram~572\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~572_q\);

\CPU|RAM_RET|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~687_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~572_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~428_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~284_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~140_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~140_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~284_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~428_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~572_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~687_combout\);

\CPU|RAM_RET|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~688_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~687_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~686_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~685_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~684_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~685_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~686_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~687_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~688_combout\);

\CPU|RAM_RET|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~41_q\);

\CPU|RAM_RET|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~77_q\);

\CPU|RAM_RET|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~113_q\);

\CPU|RAM_RET|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~149_q\);

\CPU|RAM_RET|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~689_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~149_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~113_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~77_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~41_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~77_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~113_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~149_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~689_combout\);

\CPU|RAM_RET|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~185_q\);

\CPU|RAM_RET|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~221_q\);

\CPU|RAM_RET|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~257_q\);

\CPU|RAM_RET|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~293_q\);

\CPU|RAM_RET|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~690_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~293_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~257_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~221_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~185_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~185_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~221_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~257_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~293_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~690_combout\);

\CPU|RAM_RET|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~329_q\);

\CPU|RAM_RET|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~365_q\);

\CPU|RAM_RET|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~401_q\);

\CPU|RAM_RET|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~437_q\);

\CPU|RAM_RET|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~691_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~437_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~401_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~365_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~329_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~329_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~365_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~401_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~437_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~691_combout\);

\CPU|RAM_RET|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~473_q\);

\CPU|RAM_RET|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~509_q\);

\CPU|RAM_RET|ram~545\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~545_q\);

\CPU|RAM_RET|ram~581\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~581_q\);

\CPU|RAM_RET|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~692_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~581_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~545_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~509_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~473_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~473_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~509_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~545_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~581_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~692_combout\);

\CPU|RAM_RET|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~693_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~692_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~691_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~690_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~689_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~690_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~691_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~692_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~693_combout\);

\CPU|RAM_RET|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~50_q\);

\CPU|RAM_RET|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~194_q\);

\CPU|RAM_RET|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~338_q\);

\CPU|RAM_RET|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~482_q\);

\CPU|RAM_RET|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~694_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~482_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~338_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~194_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~50_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~194_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~338_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~482_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~694_combout\);

\CPU|RAM_RET|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~86_q\);

\CPU|RAM_RET|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~230_q\);

\CPU|RAM_RET|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~374_q\);

\CPU|RAM_RET|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~518_q\);

\CPU|RAM_RET|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~695_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~518_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~374_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~230_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~86_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~230_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~374_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~518_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~695_combout\);

\CPU|RAM_RET|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~122_q\);

\CPU|RAM_RET|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~266_q\);

\CPU|RAM_RET|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~410_q\);

\CPU|RAM_RET|ram~554\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~554_q\);

\CPU|RAM_RET|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~696_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~554_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~410_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~266_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~122_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~122_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~266_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~410_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~554_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~696_combout\);

\CPU|RAM_RET|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~158_q\);

\CPU|RAM_RET|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~302_q\);

\CPU|RAM_RET|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~446_q\);

\CPU|RAM_RET|ram~590\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~590_q\);

\CPU|RAM_RET|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~697_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~590_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~446_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~302_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~158_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~158_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~302_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~446_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~590_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~697_combout\);

\CPU|RAM_RET|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~698_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~697_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~696_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~695_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~694_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~694_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~695_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~696_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~697_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~698_combout\);

\CPU|RAM_RET|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~699_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~698_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~693_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~688_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~683_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~683_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~688_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~693_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~698_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~699_combout\);

\CPU|MUX2|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~5_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\) # ((\CPU|RAM_RET|ram~699_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~6_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|RAM_RET|ram~699_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~699_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~5_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\CPU|RAM_RET|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~25_q\);

\CPU|RAM_RET|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~61_q\);

\CPU|RAM_RET|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~97_q\);

\CPU|RAM_RET|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~133_q\);

\CPU|RAM_RET|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~721_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~133_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~97_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~61_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~25_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~61_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~97_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~133_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~721_combout\);

\CPU|RAM_RET|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~34_q\);

\CPU|RAM_RET|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~70_q\);

\CPU|RAM_RET|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~106_q\);

\CPU|RAM_RET|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~142_q\);

\CPU|RAM_RET|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~722_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~142_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~106_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~70_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~34_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~70_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~106_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~142_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~722_combout\);

\CPU|RAM_RET|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~43_q\);

\CPU|RAM_RET|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~79_q\);

\CPU|RAM_RET|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~115_q\);

\CPU|RAM_RET|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~151_q\);

\CPU|RAM_RET|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~723_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~151_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~115_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~79_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~43_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~79_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~115_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~151_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~723_combout\);

\CPU|RAM_RET|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~52_q\);

\CPU|RAM_RET|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~88_q\);

\CPU|RAM_RET|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~124_q\);

\CPU|RAM_RET|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~160_q\);

\CPU|RAM_RET|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~724_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~160_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~124_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~88_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~52_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~88_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~124_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~160_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~724_combout\);

\CPU|RAM_RET|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~725_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~724_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~723_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~722_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~721_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~721_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~722_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~723_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~724_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~725_combout\);

\CPU|RAM_RET|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~169_q\);

\CPU|RAM_RET|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~205_q\);

\CPU|RAM_RET|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~241_q\);

\CPU|RAM_RET|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~277_q\);

\CPU|RAM_RET|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~726_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~277_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~241_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~205_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~169_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~169_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~205_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~241_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~277_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~726_combout\);

\CPU|RAM_RET|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~178_q\);

\CPU|RAM_RET|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~214_q\);

\CPU|RAM_RET|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~250_q\);

\CPU|RAM_RET|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~286_q\);

\CPU|RAM_RET|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~727_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~286_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~250_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~214_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~178_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~178_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~214_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~250_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~286_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~727_combout\);

\CPU|RAM_RET|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~187_q\);

\CPU|RAM_RET|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~223_q\);

\CPU|RAM_RET|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~259_q\);

\CPU|RAM_RET|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~295_q\);

\CPU|RAM_RET|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~728_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~295_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~259_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~223_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~187_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~187_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~223_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~259_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~295_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~728_combout\);

\CPU|RAM_RET|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~196_q\);

\CPU|RAM_RET|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~232_q\);

\CPU|RAM_RET|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~268_q\);

\CPU|RAM_RET|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~304_q\);

\CPU|RAM_RET|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~729_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~304_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~268_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~232_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~196_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~196_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~232_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~268_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~304_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~729_combout\);

\CPU|RAM_RET|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~730_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~729_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~728_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~727_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~726_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~726_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~727_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~728_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~729_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~730_combout\);

\CPU|RAM_RET|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~313_q\);

\CPU|RAM_RET|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~349_q\);

\CPU|RAM_RET|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~385_q\);

\CPU|RAM_RET|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~421_q\);

\CPU|RAM_RET|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~731_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~421_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~385_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~349_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~313_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~349_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~385_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~421_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~731_combout\);

\CPU|RAM_RET|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~322_q\);

\CPU|RAM_RET|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~358_q\);

\CPU|RAM_RET|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~394_q\);

\CPU|RAM_RET|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~430_q\);

\CPU|RAM_RET|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~732_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~430_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~394_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~358_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~322_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~322_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~358_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~394_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~430_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~732_combout\);

\CPU|RAM_RET|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~331_q\);

\CPU|RAM_RET|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~367_q\);

\CPU|RAM_RET|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~403_q\);

\CPU|RAM_RET|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~439_q\);

\CPU|RAM_RET|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~733_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~439_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~403_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~367_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~331_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~331_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~367_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~403_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~439_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~733_combout\);

\CPU|RAM_RET|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~340_q\);

\CPU|RAM_RET|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~376_q\);

\CPU|RAM_RET|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~412_q\);

\CPU|RAM_RET|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~448_q\);

\CPU|RAM_RET|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~734_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~448_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~412_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~376_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~340_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~376_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~412_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~448_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~734_combout\);

\CPU|RAM_RET|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~735_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~734_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~733_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~732_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~731_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~731_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~732_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~733_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~734_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~735_combout\);

\CPU|RAM_RET|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~457_q\);

\CPU|RAM_RET|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~466_q\);

\CPU|RAM_RET|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~475_q\);

\CPU|RAM_RET|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~484_q\);

\CPU|RAM_RET|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~736_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~484_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~475_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~466_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~457_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~457_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~466_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~475_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~484_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~736_combout\);

\CPU|RAM_RET|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~493_q\);

\CPU|RAM_RET|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~502_q\);

\CPU|RAM_RET|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~511_q\);

\CPU|RAM_RET|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~520_q\);

\CPU|RAM_RET|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~737_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~520_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~511_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~502_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~493_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~493_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~502_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~511_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~520_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~737_combout\);

\CPU|RAM_RET|ram~529\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~529_q\);

\CPU|RAM_RET|ram~538\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~538_q\);

\CPU|RAM_RET|ram~547\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~547_q\);

\CPU|RAM_RET|ram~556\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~556_q\);

\CPU|RAM_RET|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~738_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~556_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~547_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~538_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~529_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~529_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~538_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~547_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~556_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~738_combout\);

\CPU|RAM_RET|ram~565\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~565_q\);

\CPU|RAM_RET|ram~574\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~574_q\);

\CPU|RAM_RET|ram~583\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~583_q\);

\CPU|RAM_RET|ram~592\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~592_q\);

\CPU|RAM_RET|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~739_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~592_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~583_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~574_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~565_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~565_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~574_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~583_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~592_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~739_combout\);

\CPU|RAM_RET|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~740_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~739_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~738_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~737_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~736_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~736_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~737_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~738_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~739_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~740_combout\);

\CPU|RAM_RET|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~741_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~740_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~735_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~730_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~725_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~725_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~730_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~735_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~740_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~741_combout\);

\CPU|MUX2|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~7_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|incrementaPC|Add0~25_sumout\))) # (\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RAM_RET|ram~741_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~741_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~7_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001000100000000000000100010100000010001000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(3) & ( \ROM1|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \ROM1|memROM~9_combout\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~3_combout\);

\CPU|MUX2|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) # (\ROM1|memROM~0_combout\ & (((!\ROM1|memROM~3_combout\ & 
-- \ROM1|memROM~4_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & 
-- \ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100101000000000010010000000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|saida_MUX[2]~0_combout\);

\CPU|RAM_RET|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~20_q\);

\CPU|RAM_RET|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~164_q\);

\CPU|RAM_RET|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~308_q\);

\CPU|RAM_RET|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~452_q\);

\CPU|RAM_RET|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~616_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~452_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~308_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~164_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~20_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~164_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~308_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~452_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~616_combout\);

\CPU|RAM_RET|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~56_q\);

\CPU|RAM_RET|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~200_q\);

\CPU|RAM_RET|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~344_q\);

\CPU|RAM_RET|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~488_q\);

\CPU|RAM_RET|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~617_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~488_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~344_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~200_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~56_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~200_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~344_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~488_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~617_combout\);

\CPU|RAM_RET|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~92_q\);

\CPU|RAM_RET|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~236_q\);

\CPU|RAM_RET|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~380_q\);

\CPU|RAM_RET|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~524_q\);

\CPU|RAM_RET|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~618_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~524_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~380_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~236_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~92_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~236_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~380_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~524_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~618_combout\);

\CPU|RAM_RET|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~128_q\);

\CPU|RAM_RET|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~272_q\);

\CPU|RAM_RET|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~416_q\);

\CPU|RAM_RET|ram~560\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~560_q\);

\CPU|RAM_RET|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~619_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~560_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~416_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~272_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~128_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~128_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~272_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~416_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~560_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~619_combout\);

\CPU|RAM_RET|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~620_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~619_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~618_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~617_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~616_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~617_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~618_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~619_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~620_combout\);

\CPU|RAM_RET|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~29_q\);

\CPU|RAM_RET|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~173_q\);

\CPU|RAM_RET|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~317_q\);

\CPU|RAM_RET|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~461_q\);

\CPU|RAM_RET|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~621_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~461_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~317_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~173_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~29_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~173_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~317_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~461_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~621_combout\);

\CPU|RAM_RET|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~65_q\);

\CPU|RAM_RET|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~209_q\);

\CPU|RAM_RET|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~353_q\);

\CPU|RAM_RET|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~497_q\);

\CPU|RAM_RET|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~622_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~497_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~353_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~209_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~65_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~209_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~353_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~497_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~622_combout\);

\CPU|RAM_RET|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~101_q\);

\CPU|RAM_RET|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~245_q\);

\CPU|RAM_RET|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~389_q\);

\CPU|RAM_RET|ram~533\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~533_q\);

\CPU|RAM_RET|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~623_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~533_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~389_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~245_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~101_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~101_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~245_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~389_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~533_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~623_combout\);

\CPU|RAM_RET|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~137_q\);

\CPU|RAM_RET|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~281_q\);

\CPU|RAM_RET|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~425_q\);

\CPU|RAM_RET|ram~569\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~569_q\);

\CPU|RAM_RET|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~624_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~569_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~425_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~281_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~137_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~137_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~281_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~425_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~569_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~624_combout\);

\CPU|RAM_RET|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~625_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~624_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~623_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~622_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~621_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~622_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~623_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~624_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~625_combout\);

\CPU|RAM_RET|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~38_q\);

\CPU|RAM_RET|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~182_q\);

\CPU|RAM_RET|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~326_q\);

\CPU|RAM_RET|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~470_q\);

\CPU|RAM_RET|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~626_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~470_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~326_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~182_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~38_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~182_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~326_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~470_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~626_combout\);

\CPU|RAM_RET|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~74_q\);

\CPU|RAM_RET|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~218_q\);

\CPU|RAM_RET|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~362_q\);

\CPU|RAM_RET|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~506_q\);

\CPU|RAM_RET|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~627_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~506_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~362_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~218_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~74_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~74_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~218_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~362_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~506_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~627_combout\);

\CPU|RAM_RET|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~110_q\);

\CPU|RAM_RET|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~254_q\);

\CPU|RAM_RET|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~398_q\);

\CPU|RAM_RET|ram~542\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~542_q\);

\CPU|RAM_RET|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~628_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~542_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~398_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~254_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~110_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~110_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~254_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~398_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~542_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~628_combout\);

\CPU|RAM_RET|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~146_q\);

\CPU|RAM_RET|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~290_q\);

\CPU|RAM_RET|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~434_q\);

\CPU|RAM_RET|ram~578\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~578_q\);

\CPU|RAM_RET|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~629_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~578_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~434_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~290_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~146_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~290_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~434_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~578_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~629_combout\);

\CPU|RAM_RET|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~630_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~629_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~628_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~627_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~626_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~627_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~628_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~629_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~630_combout\);

\CPU|RAM_RET|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~47_q\);

\CPU|RAM_RET|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~191_q\);

\CPU|RAM_RET|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~335_q\);

\CPU|RAM_RET|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~479_q\);

\CPU|RAM_RET|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~631_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~479_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~335_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~191_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~47_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~191_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~335_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~479_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~631_combout\);

\CPU|RAM_RET|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~83_q\);

\CPU|RAM_RET|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~227_q\);

\CPU|RAM_RET|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~371_q\);

\CPU|RAM_RET|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~515_q\);

\CPU|RAM_RET|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~632_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~515_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~371_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~227_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~83_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~227_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~371_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~515_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~632_combout\);

\CPU|RAM_RET|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~119_q\);

\CPU|RAM_RET|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~263_q\);

\CPU|RAM_RET|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~407_q\);

\CPU|RAM_RET|ram~551\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~551_q\);

\CPU|RAM_RET|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~633_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~551_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~407_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~263_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~119_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~263_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~407_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~551_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~633_combout\);

\CPU|RAM_RET|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~155_q\);

\CPU|RAM_RET|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~299_q\);

\CPU|RAM_RET|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~443_q\);

\CPU|RAM_RET|ram~587\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~587_q\);

\CPU|RAM_RET|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~634_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~587_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~443_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~299_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~155_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~155_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~299_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~443_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~587_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~634_combout\);

\CPU|RAM_RET|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~635_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~634_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~633_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~632_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~631_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~631_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~632_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~633_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~634_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~635_combout\);

\CPU|RAM_RET|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~636_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~635_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~630_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~625_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~620_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~620_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~625_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~630_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~635_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~636_combout\);

\CPU|MUX2|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~2_combout\ = ( \ROM1|memROM~5_combout\ & ( ((!\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|decoderInstru|saida[13]~0_combout\ & (\CPU|RAM_RET|ram~636_combout\))) # 
-- (\CPU|MUX2|saida_MUX[2]~0_combout\) ) ) # ( !\ROM1|memROM~5_combout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|incrementaPC|Add0~5_sumout\))) # (\CPU|decoderInstru|saida[13]~0_combout\ & 
-- (\CPU|RAM_RET|ram~636_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001101111011111100000100100011000011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~636_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \CPU|MUX2|saida_MUX[1]~2_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~1_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~4_combout\);

\CPU|RAM_RET|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~19_q\);

\CPU|RAM_RET|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~28_q\);

\CPU|RAM_RET|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~37_q\);

\CPU|RAM_RET|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~46_q\);

\CPU|RAM_RET|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~595_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~46_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~37_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~28_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~19_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~28_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~37_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~46_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~595_combout\);

\CPU|RAM_RET|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~55_q\);

\CPU|RAM_RET|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~64_q\);

\CPU|RAM_RET|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~73_q\);

\CPU|RAM_RET|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~82_q\);

\CPU|RAM_RET|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~596_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~82_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~73_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~64_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~55_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~64_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~73_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~82_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~596_combout\);

\CPU|RAM_RET|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~91_q\);

\CPU|RAM_RET|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~100_q\);

\CPU|RAM_RET|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~109_q\);

\CPU|RAM_RET|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~118_q\);

\CPU|RAM_RET|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~597_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~118_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~109_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~100_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~91_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~100_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~109_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~118_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~597_combout\);

\CPU|RAM_RET|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~127_q\);

\CPU|RAM_RET|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~136_q\);

\CPU|RAM_RET|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~145_q\);

\CPU|RAM_RET|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~154_q\);

\CPU|RAM_RET|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~598_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~154_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~145_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~136_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~127_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~136_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~145_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~154_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~598_combout\);

\CPU|RAM_RET|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~599_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~598_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~597_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~596_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~595_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~596_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~597_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~598_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~599_combout\);

\CPU|RAM_RET|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~163_q\);

\CPU|RAM_RET|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~199_q\);

\CPU|RAM_RET|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~235_q\);

\CPU|RAM_RET|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~271_q\);

\CPU|RAM_RET|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~600_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~271_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~235_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~199_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~163_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~163_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~199_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~235_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~271_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~600_combout\);

\CPU|RAM_RET|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~172_q\);

\CPU|RAM_RET|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~208_q\);

\CPU|RAM_RET|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~244_q\);

\CPU|RAM_RET|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~280_q\);

\CPU|RAM_RET|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~601_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~280_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~244_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~208_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~172_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~172_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~208_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~244_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~280_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~601_combout\);

\CPU|RAM_RET|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~181_q\);

\CPU|RAM_RET|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~217_q\);

\CPU|RAM_RET|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~253_q\);

\CPU|RAM_RET|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~289_q\);

\CPU|RAM_RET|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~602_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~289_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~253_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~217_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~181_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~181_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~217_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~253_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~289_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~602_combout\);

\CPU|RAM_RET|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~190_q\);

\CPU|RAM_RET|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~226_q\);

\CPU|RAM_RET|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~262_q\);

\CPU|RAM_RET|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~298_q\);

\CPU|RAM_RET|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~603_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~298_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~262_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~226_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~190_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~190_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~226_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~262_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~298_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~603_combout\);

\CPU|RAM_RET|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~604_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~603_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~602_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~601_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~600_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~601_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~602_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~603_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~604_combout\);

\CPU|RAM_RET|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~307_q\);

\CPU|RAM_RET|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~316_q\);

\CPU|RAM_RET|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~325_q\);

\CPU|RAM_RET|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~334_q\);

\CPU|RAM_RET|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~605_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~334_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~325_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~316_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~307_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~316_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~325_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~334_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~605_combout\);

\CPU|RAM_RET|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~343_q\);

\CPU|RAM_RET|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~352_q\);

\CPU|RAM_RET|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~361_q\);

\CPU|RAM_RET|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~370_q\);

\CPU|RAM_RET|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~606_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~370_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~361_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~352_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~343_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~343_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~352_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~361_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~370_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~606_combout\);

\CPU|RAM_RET|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~379_q\);

\CPU|RAM_RET|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~388_q\);

\CPU|RAM_RET|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~397_q\);

\CPU|RAM_RET|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~406_q\);

\CPU|RAM_RET|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~607_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~406_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~397_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~388_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~379_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~379_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~388_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~397_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~406_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~607_combout\);

\CPU|RAM_RET|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~415_q\);

\CPU|RAM_RET|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~424_q\);

\CPU|RAM_RET|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~433_q\);

\CPU|RAM_RET|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~442_q\);

\CPU|RAM_RET|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~608_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~442_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~433_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~424_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~415_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~415_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~424_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~433_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~442_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~608_combout\);

\CPU|RAM_RET|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~609_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~608_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~607_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~606_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~605_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~606_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~607_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~608_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~609_combout\);

\CPU|RAM_RET|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~451_q\);

\CPU|RAM_RET|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~487_q\);

\CPU|RAM_RET|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~523_q\);

\CPU|RAM_RET|ram~559\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~559_q\);

\CPU|RAM_RET|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~610_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~559_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~523_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~487_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~451_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~451_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~487_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~523_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~559_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~610_combout\);

\CPU|RAM_RET|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~460_q\);

\CPU|RAM_RET|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~496_q\);

\CPU|RAM_RET|ram~532\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~532_q\);

\CPU|RAM_RET|ram~568\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~568_q\);

\CPU|RAM_RET|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~611_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~568_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~532_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~496_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~460_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~460_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~496_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~532_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~568_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~611_combout\);

\CPU|RAM_RET|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~469_q\);

\CPU|RAM_RET|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~505_q\);

\CPU|RAM_RET|ram~541\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~541_q\);

\CPU|RAM_RET|ram~577\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~577_q\);

\CPU|RAM_RET|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~612_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~577_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~541_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~505_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~469_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~469_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~505_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~541_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~577_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~612_combout\);

\CPU|RAM_RET|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~478_q\);

\CPU|RAM_RET|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~514_q\);

\CPU|RAM_RET|ram~550\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~550_q\);

\CPU|RAM_RET|ram~586\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~586_q\);

\CPU|RAM_RET|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~613_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~586_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~550_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~514_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~478_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~478_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~514_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~550_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~586_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~613_combout\);

\CPU|RAM_RET|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~614_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~613_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~612_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~611_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~610_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~610_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~611_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~612_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~613_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~614_combout\);

\CPU|RAM_RET|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~615_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~614_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~609_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~604_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~599_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~599_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~604_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~609_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~614_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~615_combout\);

\CPU|MUX2|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~1_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (((!\CPU|decoderInstru|saida[13]~0_combout\) # (\CPU|RAM_RET|ram~615_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (\ROM1|memROM~4_combout\)) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (((\CPU|decoderInstru|saida[13]~0_combout\ & \CPU|RAM_RET|ram~615_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & (\ROM1|memROM~4_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101110001011111010100000101001101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datac => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~615_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|MUX2|saida_MUX[0]~1_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000100001000000000000000000001000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU|decoderInstru|saida[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[13]~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoderInstru|saida[13]~0_combout\);

\CPU|RAM_RET|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~24_q\);

\CPU|RAM_RET|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~33_q\);

\CPU|RAM_RET|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~42_q\);

\CPU|RAM_RET|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~51_q\);

\CPU|RAM_RET|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~700_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~51_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~42_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~33_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~24_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~33_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~42_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~51_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~700_combout\);

\CPU|RAM_RET|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~168_q\);

\CPU|RAM_RET|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~177_q\);

\CPU|RAM_RET|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~186_q\);

\CPU|RAM_RET|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~195_q\);

\CPU|RAM_RET|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~701_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~195_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~186_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~177_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~168_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~168_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~177_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~186_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~195_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~701_combout\);

\CPU|RAM_RET|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~312_q\);

\CPU|RAM_RET|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~321_q\);

\CPU|RAM_RET|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~330_q\);

\CPU|RAM_RET|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~339_q\);

\CPU|RAM_RET|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~702_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~339_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~330_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~321_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~312_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~312_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~321_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~330_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~339_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~702_combout\);

\CPU|RAM_RET|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~456_q\);

\CPU|RAM_RET|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~465_q\);

\CPU|RAM_RET|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~474_q\);

\CPU|RAM_RET|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~483_q\);

\CPU|RAM_RET|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~703_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~483_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~474_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~465_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~456_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~456_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~465_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~474_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~483_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~703_combout\);

\CPU|RAM_RET|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~704_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~703_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~702_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~701_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~700_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~700_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~701_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~702_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~703_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~704_combout\);

\CPU|RAM_RET|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~60_q\);

\CPU|RAM_RET|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~69_q\);

\CPU|RAM_RET|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~78_q\);

\CPU|RAM_RET|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~87_q\);

\CPU|RAM_RET|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~705_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~87_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~78_q\ ) ) 
-- ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~69_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~60_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~69_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~78_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~87_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~705_combout\);

\CPU|RAM_RET|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~204_q\);

\CPU|RAM_RET|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~213_q\);

\CPU|RAM_RET|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~222_q\);

\CPU|RAM_RET|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~231_q\);

\CPU|RAM_RET|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~706_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~231_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~222_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~213_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~204_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~204_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~213_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~222_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~231_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~706_combout\);

\CPU|RAM_RET|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~348_q\);

\CPU|RAM_RET|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~357_q\);

\CPU|RAM_RET|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~366_q\);

\CPU|RAM_RET|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~375_q\);

\CPU|RAM_RET|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~707_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~375_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~366_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~357_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~348_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~348_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~357_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~366_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~375_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~707_combout\);

\CPU|RAM_RET|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~492_q\);

\CPU|RAM_RET|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~501_q\);

\CPU|RAM_RET|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~510_q\);

\CPU|RAM_RET|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~519_q\);

\CPU|RAM_RET|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~708_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~519_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~510_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~501_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~492_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~492_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~501_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~510_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~519_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~708_combout\);

\CPU|RAM_RET|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~709_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~708_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~707_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~706_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~705_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~705_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~706_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~707_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~708_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~709_combout\);

\CPU|RAM_RET|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~96_q\);

\CPU|RAM_RET|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~105_q\);

\CPU|RAM_RET|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~114_q\);

\CPU|RAM_RET|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~123_q\);

\CPU|RAM_RET|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~710_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~123_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~114_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~105_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~96_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~96_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~105_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~114_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~123_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~710_combout\);

\CPU|RAM_RET|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~240_q\);

\CPU|RAM_RET|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~249_q\);

\CPU|RAM_RET|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~258_q\);

\CPU|RAM_RET|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~267_q\);

\CPU|RAM_RET|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~711_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~267_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~258_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~249_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~240_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~240_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~249_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~258_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~267_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~711_combout\);

\CPU|RAM_RET|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~384_q\);

\CPU|RAM_RET|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~393_q\);

\CPU|RAM_RET|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~402_q\);

\CPU|RAM_RET|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~411_q\);

\CPU|RAM_RET|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~712_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~411_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~402_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~393_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~384_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~384_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~393_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~402_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~411_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~712_combout\);

\CPU|RAM_RET|ram~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~528_q\);

\CPU|RAM_RET|ram~537\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~537_q\);

\CPU|RAM_RET|ram~546\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~546_q\);

\CPU|RAM_RET|ram~555\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~555_q\);

\CPU|RAM_RET|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~713_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~555_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~546_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~537_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~528_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~528_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~537_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~546_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~555_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~713_combout\);

\CPU|RAM_RET|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~714_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~713_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~712_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~711_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( 
-- \CPU|RAM_RET|ram~710_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~710_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~711_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~712_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~713_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~714_combout\);

\CPU|RAM_RET|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~132_q\);

\CPU|RAM_RET|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~276_q\);

\CPU|RAM_RET|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~420_q\);

\CPU|RAM_RET|ram~564\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~564_q\);

\CPU|RAM_RET|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~715_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~564_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~420_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~276_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~132_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~132_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~276_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~420_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~564_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~715_combout\);

\CPU|RAM_RET|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~141_q\);

\CPU|RAM_RET|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~285_q\);

\CPU|RAM_RET|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~429_q\);

\CPU|RAM_RET|ram~573\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~573_q\);

\CPU|RAM_RET|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~716_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~573_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~429_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~285_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~141_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~141_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~285_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~429_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~573_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~716_combout\);

\CPU|RAM_RET|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~150_q\);

\CPU|RAM_RET|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~294_q\);

\CPU|RAM_RET|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~438_q\);

\CPU|RAM_RET|ram~582\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~582_q\);

\CPU|RAM_RET|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~717_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~582_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~438_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~294_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~150_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~150_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~294_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~438_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~582_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~717_combout\);

\CPU|RAM_RET|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~159_q\);

\CPU|RAM_RET|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~303_q\);

\CPU|RAM_RET|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~447_q\);

\CPU|RAM_RET|ram~591\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \rtl~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~591_q\);

\CPU|RAM_RET|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~718_combout\ = ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~591_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( \CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~447_q\ ) 
-- ) ) # ( \CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~303_q\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[4]~4_combout\ & ( !\CPU|MUXRET|saida_MUX[5]~5_combout\ & ( \CPU|RAM_RET|ram~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~159_q\,
	datab => \CPU|RAM_RET|ALT_INV_ram~303_q\,
	datac => \CPU|RAM_RET|ALT_INV_ram~447_q\,
	datad => \CPU|RAM_RET|ALT_INV_ram~591_q\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|RAM_RET|ram~718_combout\);

\CPU|RAM_RET|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~719_combout\ = ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~718_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( \CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~717_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( \CPU|RAM_RET|ram~716_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[0]~0_combout\ & ( !\CPU|MUXRET|saida_MUX[1]~1_combout\ & ( 
-- \CPU|RAM_RET|ram~715_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~715_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~716_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~717_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~718_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|RAM_RET|ram~719_combout\);

\CPU|RAM_RET|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_RET|ram~720_combout\ = ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~719_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( \CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~714_combout\ ) ) ) # ( \CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( \CPU|RAM_RET|ram~709_combout\ ) ) ) # ( !\CPU|MUXRET|saida_MUX[2]~2_combout\ & ( !\CPU|MUXRET|saida_MUX[3]~3_combout\ & ( 
-- \CPU|RAM_RET|ram~704_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_RET|ALT_INV_ram~704_combout\,
	datab => \CPU|RAM_RET|ALT_INV_ram~709_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~714_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~719_combout\,
	datae => \CPU|MUXRET|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|MUXRET|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|RAM_RET|ram~720_combout\);

\CPU|MUX2|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~6_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[13]~0_combout\) # ((\CPU|RAM_RET|ram~720_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~7_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (\CPU|decoderInstru|saida[13]~0_combout\ & ((\CPU|RAM_RET|ram~720_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111100010111100111100000011010001111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[13]~0_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~720_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~6_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(4) & 
-- (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000100000000000000000000001010100001000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~8_combout\ & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~0_combout\);

\CPU|decoderInstru|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[1]~1_combout\ = (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ $ (((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000000000011110000000000001111000000000000111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|decoderInstru|saida[1]~1_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_MEM(0) <= \MEM[0]~output_o\;

ww_MEM(1) <= \MEM[1]~output_o\;

ww_MEM(2) <= \MEM[2]~output_o\;

ww_MEM(3) <= \MEM[3]~output_o\;

ww_MEM(4) <= \MEM[4]~output_o\;

ww_MEM(5) <= \MEM[5]~output_o\;

ww_MEM(6) <= \MEM[6]~output_o\;

ww_MEM(7) <= \MEM[7]~output_o\;

ww_bolso(0) <= \bolso[0]~output_o\;

ww_bolso(1) <= \bolso[1]~output_o\;

ww_bolso(2) <= \bolso[2]~output_o\;

ww_bolso(3) <= \bolso[3]~output_o\;

ww_bolso(4) <= \bolso[4]~output_o\;

ww_bolso(5) <= \bolso[5]~output_o\;

ww_bolso(6) <= \bolso[6]~output_o\;

ww_bolso(7) <= \bolso[7]~output_o\;

ww_adrs(0) <= \adrs[0]~output_o\;

ww_adrs(1) <= \adrs[1]~output_o\;

ww_adrs(2) <= \adrs[2]~output_o\;

ww_adrs(3) <= \adrs[3]~output_o\;

ww_adrs(4) <= \adrs[4]~output_o\;

ww_adrs(5) <= \adrs[5]~output_o\;
END structure;


