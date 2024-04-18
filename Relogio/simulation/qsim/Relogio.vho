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

-- DATE "04/15/2024 19:33:28"

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
	adrs : OUT std_logic_vector(2 DOWNTO 0)
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
SIGNAL ww_adrs : std_logic_vector(2 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \KEY[1]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|LDESV|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[1]~0_combout\ : std_logic;
SIGNAL \RAM0|dado_out~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal11~0_combout\ : std_logic;
SIGNAL \DEC2|Mux7~6_combout\ : std_logic;
SIGNAL \RAM0|ram~609_combout\ : std_logic;
SIGNAL \RAM4|ram~609_combout\ : std_logic;
SIGNAL \RAM4|ram~209_q\ : std_logic;
SIGNAL \RAM0|ram~611_combout\ : std_logic;
SIGNAL \RAM4|ram~610_combout\ : std_logic;
SIGNAL \RAM4|ram~225_q\ : std_logic;
SIGNAL \RAM0|ram~613_combout\ : std_logic;
SIGNAL \RAM4|ram~611_combout\ : std_logic;
SIGNAL \RAM4|ram~241_q\ : std_logic;
SIGNAL \RAM0|ram~615_combout\ : std_logic;
SIGNAL \RAM4|ram~612_combout\ : std_logic;
SIGNAL \RAM4|ram~257_q\ : std_logic;
SIGNAL \RAM4|ram~529_combout\ : std_logic;
SIGNAL \RAM0|ram~617_combout\ : std_logic;
SIGNAL \RAM4|ram~613_combout\ : std_logic;
SIGNAL \RAM4|ram~217_q\ : std_logic;
SIGNAL \RAM0|ram~619_combout\ : std_logic;
SIGNAL \RAM4|ram~614_combout\ : std_logic;
SIGNAL \RAM4|ram~233_q\ : std_logic;
SIGNAL \RAM0|ram~621_combout\ : std_logic;
SIGNAL \RAM4|ram~615_combout\ : std_logic;
SIGNAL \RAM4|ram~249_q\ : std_logic;
SIGNAL \RAM0|ram~623_combout\ : std_logic;
SIGNAL \RAM4|ram~616_combout\ : std_logic;
SIGNAL \RAM4|ram~265_q\ : std_logic;
SIGNAL \RAM4|ram~530_combout\ : std_logic;
SIGNAL \RAM0|ram~625_combout\ : std_logic;
SIGNAL \RAM4|ram~617_combout\ : std_logic;
SIGNAL \RAM4|ram~465_q\ : std_logic;
SIGNAL \RAM0|ram~627_combout\ : std_logic;
SIGNAL \RAM4|ram~618_combout\ : std_logic;
SIGNAL \RAM4|ram~481_q\ : std_logic;
SIGNAL \RAM0|ram~629_combout\ : std_logic;
SIGNAL \RAM4|ram~619_combout\ : std_logic;
SIGNAL \RAM4|ram~497_q\ : std_logic;
SIGNAL \RAM0|ram~631_combout\ : std_logic;
SIGNAL \RAM4|ram~620_combout\ : std_logic;
SIGNAL \RAM4|ram~513_q\ : std_logic;
SIGNAL \RAM4|ram~531_combout\ : std_logic;
SIGNAL \RAM0|ram~633_combout\ : std_logic;
SIGNAL \RAM4|ram~621_combout\ : std_logic;
SIGNAL \RAM4|ram~473_q\ : std_logic;
SIGNAL \RAM0|ram~635_combout\ : std_logic;
SIGNAL \RAM4|ram~622_combout\ : std_logic;
SIGNAL \RAM4|ram~489_q\ : std_logic;
SIGNAL \RAM0|ram~637_combout\ : std_logic;
SIGNAL \RAM4|ram~623_combout\ : std_logic;
SIGNAL \RAM4|ram~505_q\ : std_logic;
SIGNAL \RAM0|ram~639_combout\ : std_logic;
SIGNAL \RAM4|ram~624_combout\ : std_logic;
SIGNAL \RAM4|ram~521_q\ : std_logic;
SIGNAL \RAM4|ram~532_combout\ : std_logic;
SIGNAL \RAM4|ram~533_combout\ : std_logic;
SIGNAL \RAM0|ram~641_combout\ : std_logic;
SIGNAL \RAM4|ram~625_combout\ : std_logic;
SIGNAL \RAM4|ram~17_q\ : std_logic;
SIGNAL \RAM0|ram~649_combout\ : std_logic;
SIGNAL \RAM4|ram~626_combout\ : std_logic;
SIGNAL \RAM4|ram~25_q\ : std_logic;
SIGNAL \RAM0|ram~643_combout\ : std_logic;
SIGNAL \RAM4|ram~627_combout\ : std_logic;
SIGNAL \RAM4|ram~273_q\ : std_logic;
SIGNAL \RAM0|ram~651_combout\ : std_logic;
SIGNAL \RAM4|ram~628_combout\ : std_logic;
SIGNAL \RAM4|ram~281_q\ : std_logic;
SIGNAL \RAM4|ram~534_combout\ : std_logic;
SIGNAL \RAM0|ram~657_combout\ : std_logic;
SIGNAL \RAM4|ram~629_combout\ : std_logic;
SIGNAL \RAM4|ram~49_q\ : std_logic;
SIGNAL \RAM0|ram~665_combout\ : std_logic;
SIGNAL \RAM4|ram~630_combout\ : std_logic;
SIGNAL \RAM4|ram~57_q\ : std_logic;
SIGNAL \RAM0|ram~659_combout\ : std_logic;
SIGNAL \RAM4|ram~631_combout\ : std_logic;
SIGNAL \RAM4|ram~305_q\ : std_logic;
SIGNAL \RAM0|ram~667_combout\ : std_logic;
SIGNAL \RAM4|ram~632_combout\ : std_logic;
SIGNAL \RAM4|ram~313_q\ : std_logic;
SIGNAL \RAM4|ram~535_combout\ : std_logic;
SIGNAL \RAM0|ram~645_combout\ : std_logic;
SIGNAL \RAM4|ram~633_combout\ : std_logic;
SIGNAL \RAM4|ram~33_q\ : std_logic;
SIGNAL \RAM0|ram~653_combout\ : std_logic;
SIGNAL \RAM4|ram~634_combout\ : std_logic;
SIGNAL \RAM4|ram~41_q\ : std_logic;
SIGNAL \RAM0|ram~647_combout\ : std_logic;
SIGNAL \RAM4|ram~635_combout\ : std_logic;
SIGNAL \RAM4|ram~289_q\ : std_logic;
SIGNAL \RAM0|ram~655_combout\ : std_logic;
SIGNAL \RAM4|ram~636_combout\ : std_logic;
SIGNAL \RAM4|ram~297_q\ : std_logic;
SIGNAL \RAM4|ram~536_combout\ : std_logic;
SIGNAL \RAM0|ram~661_combout\ : std_logic;
SIGNAL \RAM4|ram~637_combout\ : std_logic;
SIGNAL \RAM4|ram~65_q\ : std_logic;
SIGNAL \RAM0|ram~669_combout\ : std_logic;
SIGNAL \RAM4|ram~638_combout\ : std_logic;
SIGNAL \RAM4|ram~73_q\ : std_logic;
SIGNAL \RAM0|ram~663_combout\ : std_logic;
SIGNAL \RAM4|ram~639_combout\ : std_logic;
SIGNAL \RAM4|ram~321_q\ : std_logic;
SIGNAL \RAM0|ram~671_combout\ : std_logic;
SIGNAL \RAM4|ram~640_combout\ : std_logic;
SIGNAL \RAM4|ram~329_q\ : std_logic;
SIGNAL \RAM4|ram~537_combout\ : std_logic;
SIGNAL \RAM4|ram~538_combout\ : std_logic;
SIGNAL \RAM4|dado_out~0_combout\ : std_logic;
SIGNAL \RAM4|dado_out[0]~1_combout\ : std_logic;
SIGNAL \RAM8|process_0~0_combout\ : std_logic;
SIGNAL \RAM8|ram~609_combout\ : std_logic;
SIGNAL \RAM8|ram~209_q\ : std_logic;
SIGNAL \RAM8|ram~610_combout\ : std_logic;
SIGNAL \RAM8|ram~225_q\ : std_logic;
SIGNAL \RAM8|ram~611_combout\ : std_logic;
SIGNAL \RAM8|ram~241_q\ : std_logic;
SIGNAL \RAM8|ram~612_combout\ : std_logic;
SIGNAL \RAM8|ram~257_q\ : std_logic;
SIGNAL \RAM8|ram~529_combout\ : std_logic;
SIGNAL \RAM8|ram~613_combout\ : std_logic;
SIGNAL \RAM8|ram~217_q\ : std_logic;
SIGNAL \RAM8|ram~614_combout\ : std_logic;
SIGNAL \RAM8|ram~233_q\ : std_logic;
SIGNAL \RAM8|ram~615_combout\ : std_logic;
SIGNAL \RAM8|ram~249_q\ : std_logic;
SIGNAL \RAM8|ram~616_combout\ : std_logic;
SIGNAL \RAM8|ram~265_q\ : std_logic;
SIGNAL \RAM8|ram~530_combout\ : std_logic;
SIGNAL \RAM8|ram~617_combout\ : std_logic;
SIGNAL \RAM8|ram~465_q\ : std_logic;
SIGNAL \RAM8|ram~618_combout\ : std_logic;
SIGNAL \RAM8|ram~481_q\ : std_logic;
SIGNAL \RAM8|ram~619_combout\ : std_logic;
SIGNAL \RAM8|ram~497_q\ : std_logic;
SIGNAL \RAM8|ram~620_combout\ : std_logic;
SIGNAL \RAM8|ram~513_q\ : std_logic;
SIGNAL \RAM8|ram~531_combout\ : std_logic;
SIGNAL \RAM8|ram~621_combout\ : std_logic;
SIGNAL \RAM8|ram~473_q\ : std_logic;
SIGNAL \RAM8|ram~622_combout\ : std_logic;
SIGNAL \RAM8|ram~489_q\ : std_logic;
SIGNAL \RAM8|ram~623_combout\ : std_logic;
SIGNAL \RAM8|ram~505_q\ : std_logic;
SIGNAL \RAM8|ram~624_combout\ : std_logic;
SIGNAL \RAM8|ram~521_q\ : std_logic;
SIGNAL \RAM8|ram~532_combout\ : std_logic;
SIGNAL \RAM8|ram~533_combout\ : std_logic;
SIGNAL \RAM8|ram~625_combout\ : std_logic;
SIGNAL \RAM8|ram~17_q\ : std_logic;
SIGNAL \RAM8|ram~626_combout\ : std_logic;
SIGNAL \RAM8|ram~25_q\ : std_logic;
SIGNAL \RAM8|ram~627_combout\ : std_logic;
SIGNAL \RAM8|ram~273_q\ : std_logic;
SIGNAL \RAM8|ram~628_combout\ : std_logic;
SIGNAL \RAM8|ram~281_q\ : std_logic;
SIGNAL \RAM8|ram~534_combout\ : std_logic;
SIGNAL \RAM8|ram~629_combout\ : std_logic;
SIGNAL \RAM8|ram~49_q\ : std_logic;
SIGNAL \RAM8|ram~630_combout\ : std_logic;
SIGNAL \RAM8|ram~57_q\ : std_logic;
SIGNAL \RAM8|ram~631_combout\ : std_logic;
SIGNAL \RAM8|ram~305_q\ : std_logic;
SIGNAL \RAM8|ram~632_combout\ : std_logic;
SIGNAL \RAM8|ram~313_q\ : std_logic;
SIGNAL \RAM8|ram~535_combout\ : std_logic;
SIGNAL \RAM8|ram~633_combout\ : std_logic;
SIGNAL \RAM8|ram~33_q\ : std_logic;
SIGNAL \RAM8|ram~634_combout\ : std_logic;
SIGNAL \RAM8|ram~41_q\ : std_logic;
SIGNAL \RAM8|ram~635_combout\ : std_logic;
SIGNAL \RAM8|ram~289_q\ : std_logic;
SIGNAL \RAM8|ram~636_combout\ : std_logic;
SIGNAL \RAM8|ram~297_q\ : std_logic;
SIGNAL \RAM8|ram~536_combout\ : std_logic;
SIGNAL \RAM8|ram~637_combout\ : std_logic;
SIGNAL \RAM8|ram~65_q\ : std_logic;
SIGNAL \RAM8|ram~638_combout\ : std_logic;
SIGNAL \RAM8|ram~73_q\ : std_logic;
SIGNAL \RAM8|ram~639_combout\ : std_logic;
SIGNAL \RAM8|ram~321_q\ : std_logic;
SIGNAL \RAM8|ram~640_combout\ : std_logic;
SIGNAL \RAM8|ram~329_q\ : std_logic;
SIGNAL \RAM8|ram~537_combout\ : std_logic;
SIGNAL \RAM8|ram~538_combout\ : std_logic;
SIGNAL \RAM8|dado_out~0_combout\ : std_logic;
SIGNAL \RAM8|dado_out[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~11_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[5]~4_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~140_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~141_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~52_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~142_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~68_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~143_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~145_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~60_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~146_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~20_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~147_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~36_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~149_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~28_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~148_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~12_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~108_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~144_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~44_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~76_combout\ : std_logic;
SIGNAL \RAM0|process_0~0_combout\ : std_logic;
SIGNAL \RAM0|ram~610_combout\ : std_logic;
SIGNAL \RAM0|ram~209_q\ : std_logic;
SIGNAL \RAM0|ram~612_combout\ : std_logic;
SIGNAL \RAM0|ram~225_q\ : std_logic;
SIGNAL \RAM0|ram~614_combout\ : std_logic;
SIGNAL \RAM0|ram~241_q\ : std_logic;
SIGNAL \RAM0|ram~616_combout\ : std_logic;
SIGNAL \RAM0|ram~257_q\ : std_logic;
SIGNAL \RAM0|ram~529_combout\ : std_logic;
SIGNAL \RAM0|ram~618_combout\ : std_logic;
SIGNAL \RAM0|ram~217_q\ : std_logic;
SIGNAL \RAM0|ram~620_combout\ : std_logic;
SIGNAL \RAM0|ram~233_q\ : std_logic;
SIGNAL \RAM0|ram~622_combout\ : std_logic;
SIGNAL \RAM0|ram~249_q\ : std_logic;
SIGNAL \RAM0|ram~624_combout\ : std_logic;
SIGNAL \RAM0|ram~265_q\ : std_logic;
SIGNAL \RAM0|ram~530_combout\ : std_logic;
SIGNAL \RAM0|ram~626_combout\ : std_logic;
SIGNAL \RAM0|ram~465_q\ : std_logic;
SIGNAL \RAM0|ram~628_combout\ : std_logic;
SIGNAL \RAM0|ram~481_q\ : std_logic;
SIGNAL \RAM0|ram~630_combout\ : std_logic;
SIGNAL \RAM0|ram~497_q\ : std_logic;
SIGNAL \RAM0|ram~632_combout\ : std_logic;
SIGNAL \RAM0|ram~513_q\ : std_logic;
SIGNAL \RAM0|ram~531_combout\ : std_logic;
SIGNAL \RAM0|ram~634_combout\ : std_logic;
SIGNAL \RAM0|ram~473_q\ : std_logic;
SIGNAL \RAM0|ram~636_combout\ : std_logic;
SIGNAL \RAM0|ram~489_q\ : std_logic;
SIGNAL \RAM0|ram~638_combout\ : std_logic;
SIGNAL \RAM0|ram~505_q\ : std_logic;
SIGNAL \RAM0|ram~640_combout\ : std_logic;
SIGNAL \RAM0|ram~521_q\ : std_logic;
SIGNAL \RAM0|ram~532_combout\ : std_logic;
SIGNAL \RAM0|ram~533_combout\ : std_logic;
SIGNAL \RAM0|ram~642_combout\ : std_logic;
SIGNAL \RAM0|ram~17_q\ : std_logic;
SIGNAL \RAM0|ram~644_combout\ : std_logic;
SIGNAL \RAM0|ram~273_q\ : std_logic;
SIGNAL \RAM0|ram~646_combout\ : std_logic;
SIGNAL \RAM0|ram~33_q\ : std_logic;
SIGNAL \RAM0|ram~648_combout\ : std_logic;
SIGNAL \RAM0|ram~289_q\ : std_logic;
SIGNAL \RAM0|ram~534_combout\ : std_logic;
SIGNAL \RAM0|ram~650_combout\ : std_logic;
SIGNAL \RAM0|ram~25_q\ : std_logic;
SIGNAL \RAM0|ram~652_combout\ : std_logic;
SIGNAL \RAM0|ram~281_q\ : std_logic;
SIGNAL \RAM0|ram~654_combout\ : std_logic;
SIGNAL \RAM0|ram~41_q\ : std_logic;
SIGNAL \RAM0|ram~656_combout\ : std_logic;
SIGNAL \RAM0|ram~297_q\ : std_logic;
SIGNAL \RAM0|ram~535_combout\ : std_logic;
SIGNAL \RAM0|ram~658_combout\ : std_logic;
SIGNAL \RAM0|ram~49_q\ : std_logic;
SIGNAL \RAM0|ram~660_combout\ : std_logic;
SIGNAL \RAM0|ram~305_q\ : std_logic;
SIGNAL \RAM0|ram~662_combout\ : std_logic;
SIGNAL \RAM0|ram~65_q\ : std_logic;
SIGNAL \RAM0|ram~664_combout\ : std_logic;
SIGNAL \RAM0|ram~321_q\ : std_logic;
SIGNAL \RAM0|ram~536_combout\ : std_logic;
SIGNAL \RAM0|ram~666_combout\ : std_logic;
SIGNAL \RAM0|ram~57_q\ : std_logic;
SIGNAL \RAM0|ram~668_combout\ : std_logic;
SIGNAL \RAM0|ram~313_q\ : std_logic;
SIGNAL \RAM0|ram~670_combout\ : std_logic;
SIGNAL \RAM0|ram~73_q\ : std_logic;
SIGNAL \RAM0|ram~672_combout\ : std_logic;
SIGNAL \RAM0|ram~329_q\ : std_logic;
SIGNAL \RAM0|ram~537_combout\ : std_logic;
SIGNAL \RAM0|ram~538_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM0|dado_out[0]~10_combout\ : std_logic;
SIGNAL \RAM4|ram~210_q\ : std_logic;
SIGNAL \RAM4|ram~226_q\ : std_logic;
SIGNAL \RAM4|ram~242_q\ : std_logic;
SIGNAL \RAM4|ram~258_q\ : std_logic;
SIGNAL \RAM4|ram~539_combout\ : std_logic;
SIGNAL \RAM4|ram~218_q\ : std_logic;
SIGNAL \RAM4|ram~234_q\ : std_logic;
SIGNAL \RAM4|ram~250_q\ : std_logic;
SIGNAL \RAM4|ram~266_q\ : std_logic;
SIGNAL \RAM4|ram~540_combout\ : std_logic;
SIGNAL \RAM4|ram~466_q\ : std_logic;
SIGNAL \RAM4|ram~482_q\ : std_logic;
SIGNAL \RAM4|ram~498_q\ : std_logic;
SIGNAL \RAM4|ram~514_q\ : std_logic;
SIGNAL \RAM4|ram~541_combout\ : std_logic;
SIGNAL \RAM4|ram~474_q\ : std_logic;
SIGNAL \RAM4|ram~490_q\ : std_logic;
SIGNAL \RAM4|ram~506_q\ : std_logic;
SIGNAL \RAM4|ram~522_q\ : std_logic;
SIGNAL \RAM4|ram~542_combout\ : std_logic;
SIGNAL \RAM4|ram~543_combout\ : std_logic;
SIGNAL \RAM4|ram~18_q\ : std_logic;
SIGNAL \RAM4|ram~26_q\ : std_logic;
SIGNAL \RAM4|ram~274_q\ : std_logic;
SIGNAL \RAM4|ram~282_q\ : std_logic;
SIGNAL \RAM4|ram~544_combout\ : std_logic;
SIGNAL \RAM4|ram~50_q\ : std_logic;
SIGNAL \RAM4|ram~58_q\ : std_logic;
SIGNAL \RAM4|ram~306_q\ : std_logic;
SIGNAL \RAM4|ram~314_q\ : std_logic;
SIGNAL \RAM4|ram~545_combout\ : std_logic;
SIGNAL \RAM4|ram~34_q\ : std_logic;
SIGNAL \RAM4|ram~42_q\ : std_logic;
SIGNAL \RAM4|ram~290_q\ : std_logic;
SIGNAL \RAM4|ram~298_q\ : std_logic;
SIGNAL \RAM4|ram~546_combout\ : std_logic;
SIGNAL \RAM4|ram~66_q\ : std_logic;
SIGNAL \RAM4|ram~74_q\ : std_logic;
SIGNAL \RAM4|ram~322_q\ : std_logic;
SIGNAL \RAM4|ram~330_q\ : std_logic;
SIGNAL \RAM4|ram~547_combout\ : std_logic;
SIGNAL \RAM4|ram~548_combout\ : std_logic;
SIGNAL \RAM4|dado_out[1]~2_combout\ : std_logic;
SIGNAL \RAM8|ram~210_q\ : std_logic;
SIGNAL \RAM8|ram~226_q\ : std_logic;
SIGNAL \RAM8|ram~242_q\ : std_logic;
SIGNAL \RAM8|ram~258_q\ : std_logic;
SIGNAL \RAM8|ram~539_combout\ : std_logic;
SIGNAL \RAM8|ram~218_q\ : std_logic;
SIGNAL \RAM8|ram~234_q\ : std_logic;
SIGNAL \RAM8|ram~250_q\ : std_logic;
SIGNAL \RAM8|ram~266_q\ : std_logic;
SIGNAL \RAM8|ram~540_combout\ : std_logic;
SIGNAL \RAM8|ram~466_q\ : std_logic;
SIGNAL \RAM8|ram~482_q\ : std_logic;
SIGNAL \RAM8|ram~498_q\ : std_logic;
SIGNAL \RAM8|ram~514_q\ : std_logic;
SIGNAL \RAM8|ram~541_combout\ : std_logic;
SIGNAL \RAM8|ram~474_q\ : std_logic;
SIGNAL \RAM8|ram~490_q\ : std_logic;
SIGNAL \RAM8|ram~506_q\ : std_logic;
SIGNAL \RAM8|ram~522_q\ : std_logic;
SIGNAL \RAM8|ram~542_combout\ : std_logic;
SIGNAL \RAM8|ram~543_combout\ : std_logic;
SIGNAL \RAM8|ram~18_q\ : std_logic;
SIGNAL \RAM8|ram~26_q\ : std_logic;
SIGNAL \RAM8|ram~274_q\ : std_logic;
SIGNAL \RAM8|ram~282_q\ : std_logic;
SIGNAL \RAM8|ram~544_combout\ : std_logic;
SIGNAL \RAM8|ram~50_q\ : std_logic;
SIGNAL \RAM8|ram~58_q\ : std_logic;
SIGNAL \RAM8|ram~306_q\ : std_logic;
SIGNAL \RAM8|ram~314_q\ : std_logic;
SIGNAL \RAM8|ram~545_combout\ : std_logic;
SIGNAL \RAM8|ram~34_q\ : std_logic;
SIGNAL \RAM8|ram~42_q\ : std_logic;
SIGNAL \RAM8|ram~290_q\ : std_logic;
SIGNAL \RAM8|ram~298_q\ : std_logic;
SIGNAL \RAM8|ram~546_combout\ : std_logic;
SIGNAL \RAM8|ram~66_q\ : std_logic;
SIGNAL \RAM8|ram~74_q\ : std_logic;
SIGNAL \RAM8|ram~322_q\ : std_logic;
SIGNAL \RAM8|ram~330_q\ : std_logic;
SIGNAL \RAM8|ram~547_combout\ : std_logic;
SIGNAL \RAM8|ram~548_combout\ : std_logic;
SIGNAL \RAM8|dado_out[1]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~53_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~69_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~61_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~21_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~37_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~29_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~13_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~112_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~45_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~80_combout\ : std_logic;
SIGNAL \RAM0|ram~210_q\ : std_logic;
SIGNAL \RAM0|ram~226_q\ : std_logic;
SIGNAL \RAM0|ram~242_q\ : std_logic;
SIGNAL \RAM0|ram~258_q\ : std_logic;
SIGNAL \RAM0|ram~539_combout\ : std_logic;
SIGNAL \RAM0|ram~218_q\ : std_logic;
SIGNAL \RAM0|ram~234_q\ : std_logic;
SIGNAL \RAM0|ram~250_q\ : std_logic;
SIGNAL \RAM0|ram~266_q\ : std_logic;
SIGNAL \RAM0|ram~540_combout\ : std_logic;
SIGNAL \RAM0|ram~466_q\ : std_logic;
SIGNAL \RAM0|ram~482_q\ : std_logic;
SIGNAL \RAM0|ram~498_q\ : std_logic;
SIGNAL \RAM0|ram~514_q\ : std_logic;
SIGNAL \RAM0|ram~541_combout\ : std_logic;
SIGNAL \RAM0|ram~474_q\ : std_logic;
SIGNAL \RAM0|ram~490_q\ : std_logic;
SIGNAL \RAM0|ram~506_q\ : std_logic;
SIGNAL \RAM0|ram~522_q\ : std_logic;
SIGNAL \RAM0|ram~542_combout\ : std_logic;
SIGNAL \RAM0|ram~543_combout\ : std_logic;
SIGNAL \RAM0|ram~18_q\ : std_logic;
SIGNAL \RAM0|ram~26_q\ : std_logic;
SIGNAL \RAM0|ram~274_q\ : std_logic;
SIGNAL \RAM0|ram~282_q\ : std_logic;
SIGNAL \RAM0|ram~544_combout\ : std_logic;
SIGNAL \RAM0|ram~50_q\ : std_logic;
SIGNAL \RAM0|ram~58_q\ : std_logic;
SIGNAL \RAM0|ram~306_q\ : std_logic;
SIGNAL \RAM0|ram~314_q\ : std_logic;
SIGNAL \RAM0|ram~545_combout\ : std_logic;
SIGNAL \RAM0|ram~34_q\ : std_logic;
SIGNAL \RAM0|ram~42_q\ : std_logic;
SIGNAL \RAM0|ram~290_q\ : std_logic;
SIGNAL \RAM0|ram~298_q\ : std_logic;
SIGNAL \RAM0|ram~546_combout\ : std_logic;
SIGNAL \RAM0|ram~66_q\ : std_logic;
SIGNAL \RAM0|ram~74_q\ : std_logic;
SIGNAL \RAM0|ram~322_q\ : std_logic;
SIGNAL \RAM0|ram~330_q\ : std_logic;
SIGNAL \RAM0|ram~547_combout\ : std_logic;
SIGNAL \RAM0|ram~548_combout\ : std_logic;
SIGNAL \RAM0|dado_out[1]~12_combout\ : std_logic;
SIGNAL \RAM0|dado_out[1]~13_combout\ : std_logic;
SIGNAL \RAM4|ram~211_q\ : std_logic;
SIGNAL \RAM4|ram~227_q\ : std_logic;
SIGNAL \RAM4|ram~243_q\ : std_logic;
SIGNAL \RAM4|ram~259_q\ : std_logic;
SIGNAL \RAM4|ram~549_combout\ : std_logic;
SIGNAL \RAM4|ram~219_q\ : std_logic;
SIGNAL \RAM4|ram~235_q\ : std_logic;
SIGNAL \RAM4|ram~251_q\ : std_logic;
SIGNAL \RAM4|ram~267_q\ : std_logic;
SIGNAL \RAM4|ram~550_combout\ : std_logic;
SIGNAL \RAM4|ram~467_q\ : std_logic;
SIGNAL \RAM4|ram~483_q\ : std_logic;
SIGNAL \RAM4|ram~499_q\ : std_logic;
SIGNAL \RAM4|ram~515_q\ : std_logic;
SIGNAL \RAM4|ram~551_combout\ : std_logic;
SIGNAL \RAM4|ram~475_q\ : std_logic;
SIGNAL \RAM4|ram~491_q\ : std_logic;
SIGNAL \RAM4|ram~507_q\ : std_logic;
SIGNAL \RAM4|ram~523_q\ : std_logic;
SIGNAL \RAM4|ram~552_combout\ : std_logic;
SIGNAL \RAM4|ram~553_combout\ : std_logic;
SIGNAL \RAM4|ram~19_q\ : std_logic;
SIGNAL \RAM4|ram~27_q\ : std_logic;
SIGNAL \RAM4|ram~275_q\ : std_logic;
SIGNAL \RAM4|ram~283_q\ : std_logic;
SIGNAL \RAM4|ram~554_combout\ : std_logic;
SIGNAL \RAM4|ram~51_q\ : std_logic;
SIGNAL \RAM4|ram~59_q\ : std_logic;
SIGNAL \RAM4|ram~307_q\ : std_logic;
SIGNAL \RAM4|ram~315_q\ : std_logic;
SIGNAL \RAM4|ram~555_combout\ : std_logic;
SIGNAL \RAM4|ram~35_q\ : std_logic;
SIGNAL \RAM4|ram~43_q\ : std_logic;
SIGNAL \RAM4|ram~291_q\ : std_logic;
SIGNAL \RAM4|ram~299_q\ : std_logic;
SIGNAL \RAM4|ram~556_combout\ : std_logic;
SIGNAL \RAM4|ram~67_q\ : std_logic;
SIGNAL \RAM4|ram~75_q\ : std_logic;
SIGNAL \RAM4|ram~323_q\ : std_logic;
SIGNAL \RAM4|ram~331_q\ : std_logic;
SIGNAL \RAM4|ram~557_combout\ : std_logic;
SIGNAL \RAM4|ram~558_combout\ : std_logic;
SIGNAL \RAM4|dado_out[2]~3_combout\ : std_logic;
SIGNAL \RAM8|ram~211_q\ : std_logic;
SIGNAL \RAM8|ram~227_q\ : std_logic;
SIGNAL \RAM8|ram~243_q\ : std_logic;
SIGNAL \RAM8|ram~259_q\ : std_logic;
SIGNAL \RAM8|ram~549_combout\ : std_logic;
SIGNAL \RAM8|ram~219_q\ : std_logic;
SIGNAL \RAM8|ram~235_q\ : std_logic;
SIGNAL \RAM8|ram~251_q\ : std_logic;
SIGNAL \RAM8|ram~267_q\ : std_logic;
SIGNAL \RAM8|ram~550_combout\ : std_logic;
SIGNAL \RAM8|ram~467_q\ : std_logic;
SIGNAL \RAM8|ram~483_q\ : std_logic;
SIGNAL \RAM8|ram~499_q\ : std_logic;
SIGNAL \RAM8|ram~515_q\ : std_logic;
SIGNAL \RAM8|ram~551_combout\ : std_logic;
SIGNAL \RAM8|ram~475_q\ : std_logic;
SIGNAL \RAM8|ram~491_q\ : std_logic;
SIGNAL \RAM8|ram~507_q\ : std_logic;
SIGNAL \RAM8|ram~523_q\ : std_logic;
SIGNAL \RAM8|ram~552_combout\ : std_logic;
SIGNAL \RAM8|ram~553_combout\ : std_logic;
SIGNAL \RAM8|ram~19_q\ : std_logic;
SIGNAL \RAM8|ram~27_q\ : std_logic;
SIGNAL \RAM8|ram~275_q\ : std_logic;
SIGNAL \RAM8|ram~283_q\ : std_logic;
SIGNAL \RAM8|ram~554_combout\ : std_logic;
SIGNAL \RAM8|ram~51_q\ : std_logic;
SIGNAL \RAM8|ram~59_q\ : std_logic;
SIGNAL \RAM8|ram~307_q\ : std_logic;
SIGNAL \RAM8|ram~315_q\ : std_logic;
SIGNAL \RAM8|ram~555_combout\ : std_logic;
SIGNAL \RAM8|ram~35_q\ : std_logic;
SIGNAL \RAM8|ram~43_q\ : std_logic;
SIGNAL \RAM8|ram~291_q\ : std_logic;
SIGNAL \RAM8|ram~299_q\ : std_logic;
SIGNAL \RAM8|ram~556_combout\ : std_logic;
SIGNAL \RAM8|ram~67_q\ : std_logic;
SIGNAL \RAM8|ram~75_q\ : std_logic;
SIGNAL \RAM8|ram~323_q\ : std_logic;
SIGNAL \RAM8|ram~331_q\ : std_logic;
SIGNAL \RAM8|ram~557_combout\ : std_logic;
SIGNAL \RAM8|ram~558_combout\ : std_logic;
SIGNAL \RAM8|dado_out[2]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~54_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~70_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~62_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~22_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~38_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~30_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~14_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~116_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~46_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~84_combout\ : std_logic;
SIGNAL \RAM0|ram~211_q\ : std_logic;
SIGNAL \RAM0|ram~227_q\ : std_logic;
SIGNAL \RAM0|ram~243_q\ : std_logic;
SIGNAL \RAM0|ram~259_q\ : std_logic;
SIGNAL \RAM0|ram~549_combout\ : std_logic;
SIGNAL \RAM0|ram~219_q\ : std_logic;
SIGNAL \RAM0|ram~235_q\ : std_logic;
SIGNAL \RAM0|ram~251_q\ : std_logic;
SIGNAL \RAM0|ram~267_q\ : std_logic;
SIGNAL \RAM0|ram~550_combout\ : std_logic;
SIGNAL \RAM0|ram~467_q\ : std_logic;
SIGNAL \RAM0|ram~483_q\ : std_logic;
SIGNAL \RAM0|ram~499_q\ : std_logic;
SIGNAL \RAM0|ram~515_q\ : std_logic;
SIGNAL \RAM0|ram~551_combout\ : std_logic;
SIGNAL \RAM0|ram~475_q\ : std_logic;
SIGNAL \RAM0|ram~491_q\ : std_logic;
SIGNAL \RAM0|ram~507_q\ : std_logic;
SIGNAL \RAM0|ram~523_q\ : std_logic;
SIGNAL \RAM0|ram~552_combout\ : std_logic;
SIGNAL \RAM0|ram~553_combout\ : std_logic;
SIGNAL \RAM0|ram~19_q\ : std_logic;
SIGNAL \RAM0|ram~27_q\ : std_logic;
SIGNAL \RAM0|ram~275_q\ : std_logic;
SIGNAL \RAM0|ram~283_q\ : std_logic;
SIGNAL \RAM0|ram~554_combout\ : std_logic;
SIGNAL \RAM0|ram~51_q\ : std_logic;
SIGNAL \RAM0|ram~59_q\ : std_logic;
SIGNAL \RAM0|ram~307_q\ : std_logic;
SIGNAL \RAM0|ram~315_q\ : std_logic;
SIGNAL \RAM0|ram~555_combout\ : std_logic;
SIGNAL \RAM0|ram~35_q\ : std_logic;
SIGNAL \RAM0|ram~43_q\ : std_logic;
SIGNAL \RAM0|ram~291_q\ : std_logic;
SIGNAL \RAM0|ram~299_q\ : std_logic;
SIGNAL \RAM0|ram~556_combout\ : std_logic;
SIGNAL \RAM0|ram~67_q\ : std_logic;
SIGNAL \RAM0|ram~75_q\ : std_logic;
SIGNAL \RAM0|ram~323_q\ : std_logic;
SIGNAL \RAM0|ram~331_q\ : std_logic;
SIGNAL \RAM0|ram~557_combout\ : std_logic;
SIGNAL \RAM0|ram~558_combout\ : std_logic;
SIGNAL \RAM0|dado_out[2]~14_combout\ : std_logic;
SIGNAL \RAM0|dado_out[2]~15_combout\ : std_logic;
SIGNAL \RAM4|ram~212_q\ : std_logic;
SIGNAL \RAM4|ram~228_q\ : std_logic;
SIGNAL \RAM4|ram~244_q\ : std_logic;
SIGNAL \RAM4|ram~260_q\ : std_logic;
SIGNAL \RAM4|ram~559_combout\ : std_logic;
SIGNAL \RAM4|ram~220_q\ : std_logic;
SIGNAL \RAM4|ram~236_q\ : std_logic;
SIGNAL \RAM4|ram~252_q\ : std_logic;
SIGNAL \RAM4|ram~268_q\ : std_logic;
SIGNAL \RAM4|ram~560_combout\ : std_logic;
SIGNAL \RAM4|ram~468_q\ : std_logic;
SIGNAL \RAM4|ram~484_q\ : std_logic;
SIGNAL \RAM4|ram~500_q\ : std_logic;
SIGNAL \RAM4|ram~516_q\ : std_logic;
SIGNAL \RAM4|ram~561_combout\ : std_logic;
SIGNAL \RAM4|ram~476_q\ : std_logic;
SIGNAL \RAM4|ram~492_q\ : std_logic;
SIGNAL \RAM4|ram~508_q\ : std_logic;
SIGNAL \RAM4|ram~524_q\ : std_logic;
SIGNAL \RAM4|ram~562_combout\ : std_logic;
SIGNAL \RAM4|ram~563_combout\ : std_logic;
SIGNAL \RAM4|ram~20_q\ : std_logic;
SIGNAL \RAM4|ram~28_q\ : std_logic;
SIGNAL \RAM4|ram~276_q\ : std_logic;
SIGNAL \RAM4|ram~284_q\ : std_logic;
SIGNAL \RAM4|ram~564_combout\ : std_logic;
SIGNAL \RAM4|ram~52_q\ : std_logic;
SIGNAL \RAM4|ram~60_q\ : std_logic;
SIGNAL \RAM4|ram~308_q\ : std_logic;
SIGNAL \RAM4|ram~316_q\ : std_logic;
SIGNAL \RAM4|ram~565_combout\ : std_logic;
SIGNAL \RAM4|ram~36_q\ : std_logic;
SIGNAL \RAM4|ram~44_q\ : std_logic;
SIGNAL \RAM4|ram~292_q\ : std_logic;
SIGNAL \RAM4|ram~300_q\ : std_logic;
SIGNAL \RAM4|ram~566_combout\ : std_logic;
SIGNAL \RAM4|ram~68_q\ : std_logic;
SIGNAL \RAM4|ram~76_q\ : std_logic;
SIGNAL \RAM4|ram~324_q\ : std_logic;
SIGNAL \RAM4|ram~332_q\ : std_logic;
SIGNAL \RAM4|ram~567_combout\ : std_logic;
SIGNAL \RAM4|ram~568_combout\ : std_logic;
SIGNAL \RAM4|dado_out[3]~4_combout\ : std_logic;
SIGNAL \RAM8|ram~212_q\ : std_logic;
SIGNAL \RAM8|ram~228_q\ : std_logic;
SIGNAL \RAM8|ram~244_q\ : std_logic;
SIGNAL \RAM8|ram~260_q\ : std_logic;
SIGNAL \RAM8|ram~559_combout\ : std_logic;
SIGNAL \RAM8|ram~220_q\ : std_logic;
SIGNAL \RAM8|ram~236_q\ : std_logic;
SIGNAL \RAM8|ram~252_q\ : std_logic;
SIGNAL \RAM8|ram~268_q\ : std_logic;
SIGNAL \RAM8|ram~560_combout\ : std_logic;
SIGNAL \RAM8|ram~468_q\ : std_logic;
SIGNAL \RAM8|ram~484_q\ : std_logic;
SIGNAL \RAM8|ram~500_q\ : std_logic;
SIGNAL \RAM8|ram~516_q\ : std_logic;
SIGNAL \RAM8|ram~561_combout\ : std_logic;
SIGNAL \RAM8|ram~476_q\ : std_logic;
SIGNAL \RAM8|ram~492_q\ : std_logic;
SIGNAL \RAM8|ram~508_q\ : std_logic;
SIGNAL \RAM8|ram~524_q\ : std_logic;
SIGNAL \RAM8|ram~562_combout\ : std_logic;
SIGNAL \RAM8|ram~563_combout\ : std_logic;
SIGNAL \RAM8|ram~20_q\ : std_logic;
SIGNAL \RAM8|ram~28_q\ : std_logic;
SIGNAL \RAM8|ram~276_q\ : std_logic;
SIGNAL \RAM8|ram~284_q\ : std_logic;
SIGNAL \RAM8|ram~564_combout\ : std_logic;
SIGNAL \RAM8|ram~52_q\ : std_logic;
SIGNAL \RAM8|ram~60_q\ : std_logic;
SIGNAL \RAM8|ram~308_q\ : std_logic;
SIGNAL \RAM8|ram~316_q\ : std_logic;
SIGNAL \RAM8|ram~565_combout\ : std_logic;
SIGNAL \RAM8|ram~36_q\ : std_logic;
SIGNAL \RAM8|ram~44_q\ : std_logic;
SIGNAL \RAM8|ram~292_q\ : std_logic;
SIGNAL \RAM8|ram~300_q\ : std_logic;
SIGNAL \RAM8|ram~566_combout\ : std_logic;
SIGNAL \RAM8|ram~68_q\ : std_logic;
SIGNAL \RAM8|ram~76_q\ : std_logic;
SIGNAL \RAM8|ram~324_q\ : std_logic;
SIGNAL \RAM8|ram~332_q\ : std_logic;
SIGNAL \RAM8|ram~567_combout\ : std_logic;
SIGNAL \RAM8|ram~568_combout\ : std_logic;
SIGNAL \RAM8|dado_out[3]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~55_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~71_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~63_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~23_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~39_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~31_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~15_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~120_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~47_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~88_combout\ : std_logic;
SIGNAL \RAM0|ram~212_q\ : std_logic;
SIGNAL \RAM0|ram~228_q\ : std_logic;
SIGNAL \RAM0|ram~244_q\ : std_logic;
SIGNAL \RAM0|ram~260_q\ : std_logic;
SIGNAL \RAM0|ram~559_combout\ : std_logic;
SIGNAL \RAM0|ram~220_q\ : std_logic;
SIGNAL \RAM0|ram~236_q\ : std_logic;
SIGNAL \RAM0|ram~252_q\ : std_logic;
SIGNAL \RAM0|ram~268_q\ : std_logic;
SIGNAL \RAM0|ram~560_combout\ : std_logic;
SIGNAL \RAM0|ram~468_q\ : std_logic;
SIGNAL \RAM0|ram~484_q\ : std_logic;
SIGNAL \RAM0|ram~500_q\ : std_logic;
SIGNAL \RAM0|ram~516_q\ : std_logic;
SIGNAL \RAM0|ram~561_combout\ : std_logic;
SIGNAL \RAM0|ram~476_q\ : std_logic;
SIGNAL \RAM0|ram~492_q\ : std_logic;
SIGNAL \RAM0|ram~508_q\ : std_logic;
SIGNAL \RAM0|ram~524_q\ : std_logic;
SIGNAL \RAM0|ram~562_combout\ : std_logic;
SIGNAL \RAM0|ram~563_combout\ : std_logic;
SIGNAL \RAM0|ram~20_q\ : std_logic;
SIGNAL \RAM0|ram~28_q\ : std_logic;
SIGNAL \RAM0|ram~276_q\ : std_logic;
SIGNAL \RAM0|ram~284_q\ : std_logic;
SIGNAL \RAM0|ram~564_combout\ : std_logic;
SIGNAL \RAM0|ram~52_q\ : std_logic;
SIGNAL \RAM0|ram~60_q\ : std_logic;
SIGNAL \RAM0|ram~308_q\ : std_logic;
SIGNAL \RAM0|ram~316_q\ : std_logic;
SIGNAL \RAM0|ram~565_combout\ : std_logic;
SIGNAL \RAM0|ram~36_q\ : std_logic;
SIGNAL \RAM0|ram~44_q\ : std_logic;
SIGNAL \RAM0|ram~292_q\ : std_logic;
SIGNAL \RAM0|ram~300_q\ : std_logic;
SIGNAL \RAM0|ram~566_combout\ : std_logic;
SIGNAL \RAM0|ram~68_q\ : std_logic;
SIGNAL \RAM0|ram~76_q\ : std_logic;
SIGNAL \RAM0|ram~324_q\ : std_logic;
SIGNAL \RAM0|ram~332_q\ : std_logic;
SIGNAL \RAM0|ram~567_combout\ : std_logic;
SIGNAL \RAM0|ram~568_combout\ : std_logic;
SIGNAL \RAM0|dado_out[3]~16_combout\ : std_logic;
SIGNAL \RAM0|dado_out[3]~17_combout\ : std_logic;
SIGNAL \RAM4|ram~213_q\ : std_logic;
SIGNAL \RAM4|ram~229_q\ : std_logic;
SIGNAL \RAM4|ram~245_q\ : std_logic;
SIGNAL \RAM4|ram~261_q\ : std_logic;
SIGNAL \RAM4|ram~569_combout\ : std_logic;
SIGNAL \RAM4|ram~221_q\ : std_logic;
SIGNAL \RAM4|ram~237_q\ : std_logic;
SIGNAL \RAM4|ram~253_q\ : std_logic;
SIGNAL \RAM4|ram~269_q\ : std_logic;
SIGNAL \RAM4|ram~570_combout\ : std_logic;
SIGNAL \RAM4|ram~469_q\ : std_logic;
SIGNAL \RAM4|ram~485_q\ : std_logic;
SIGNAL \RAM4|ram~501_q\ : std_logic;
SIGNAL \RAM4|ram~517_q\ : std_logic;
SIGNAL \RAM4|ram~571_combout\ : std_logic;
SIGNAL \RAM4|ram~477_q\ : std_logic;
SIGNAL \RAM4|ram~493_q\ : std_logic;
SIGNAL \RAM4|ram~509_q\ : std_logic;
SIGNAL \RAM4|ram~525_q\ : std_logic;
SIGNAL \RAM4|ram~572_combout\ : std_logic;
SIGNAL \RAM4|ram~573_combout\ : std_logic;
SIGNAL \RAM4|ram~21_q\ : std_logic;
SIGNAL \RAM4|ram~29_q\ : std_logic;
SIGNAL \RAM4|ram~277_q\ : std_logic;
SIGNAL \RAM4|ram~285_q\ : std_logic;
SIGNAL \RAM4|ram~574_combout\ : std_logic;
SIGNAL \RAM4|ram~53_q\ : std_logic;
SIGNAL \RAM4|ram~61_q\ : std_logic;
SIGNAL \RAM4|ram~309_q\ : std_logic;
SIGNAL \RAM4|ram~317_q\ : std_logic;
SIGNAL \RAM4|ram~575_combout\ : std_logic;
SIGNAL \RAM4|ram~37_q\ : std_logic;
SIGNAL \RAM4|ram~45_q\ : std_logic;
SIGNAL \RAM4|ram~293_q\ : std_logic;
SIGNAL \RAM4|ram~301_q\ : std_logic;
SIGNAL \RAM4|ram~576_combout\ : std_logic;
SIGNAL \RAM4|ram~69_q\ : std_logic;
SIGNAL \RAM4|ram~77_q\ : std_logic;
SIGNAL \RAM4|ram~325_q\ : std_logic;
SIGNAL \RAM4|ram~333_q\ : std_logic;
SIGNAL \RAM4|ram~577_combout\ : std_logic;
SIGNAL \RAM4|ram~578_combout\ : std_logic;
SIGNAL \RAM4|dado_out[4]~5_combout\ : std_logic;
SIGNAL \RAM8|ram~213_q\ : std_logic;
SIGNAL \RAM8|ram~229_q\ : std_logic;
SIGNAL \RAM8|ram~245_q\ : std_logic;
SIGNAL \RAM8|ram~261_q\ : std_logic;
SIGNAL \RAM8|ram~569_combout\ : std_logic;
SIGNAL \RAM8|ram~221_q\ : std_logic;
SIGNAL \RAM8|ram~237_q\ : std_logic;
SIGNAL \RAM8|ram~253_q\ : std_logic;
SIGNAL \RAM8|ram~269_q\ : std_logic;
SIGNAL \RAM8|ram~570_combout\ : std_logic;
SIGNAL \RAM8|ram~469_q\ : std_logic;
SIGNAL \RAM8|ram~485_q\ : std_logic;
SIGNAL \RAM8|ram~501_q\ : std_logic;
SIGNAL \RAM8|ram~517_q\ : std_logic;
SIGNAL \RAM8|ram~571_combout\ : std_logic;
SIGNAL \RAM8|ram~477_q\ : std_logic;
SIGNAL \RAM8|ram~493_q\ : std_logic;
SIGNAL \RAM8|ram~509_q\ : std_logic;
SIGNAL \RAM8|ram~525_q\ : std_logic;
SIGNAL \RAM8|ram~572_combout\ : std_logic;
SIGNAL \RAM8|ram~573_combout\ : std_logic;
SIGNAL \RAM8|ram~21_q\ : std_logic;
SIGNAL \RAM8|ram~29_q\ : std_logic;
SIGNAL \RAM8|ram~277_q\ : std_logic;
SIGNAL \RAM8|ram~285_q\ : std_logic;
SIGNAL \RAM8|ram~574_combout\ : std_logic;
SIGNAL \RAM8|ram~53_q\ : std_logic;
SIGNAL \RAM8|ram~61_q\ : std_logic;
SIGNAL \RAM8|ram~309_q\ : std_logic;
SIGNAL \RAM8|ram~317_q\ : std_logic;
SIGNAL \RAM8|ram~575_combout\ : std_logic;
SIGNAL \RAM8|ram~37_q\ : std_logic;
SIGNAL \RAM8|ram~45_q\ : std_logic;
SIGNAL \RAM8|ram~293_q\ : std_logic;
SIGNAL \RAM8|ram~301_q\ : std_logic;
SIGNAL \RAM8|ram~576_combout\ : std_logic;
SIGNAL \RAM8|ram~69_q\ : std_logic;
SIGNAL \RAM8|ram~77_q\ : std_logic;
SIGNAL \RAM8|ram~325_q\ : std_logic;
SIGNAL \RAM8|ram~333_q\ : std_logic;
SIGNAL \RAM8|ram~577_combout\ : std_logic;
SIGNAL \RAM8|ram~578_combout\ : std_logic;
SIGNAL \RAM8|dado_out[4]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~56_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~72_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~64_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~24_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~40_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~32_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~16_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~124_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~48_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~92_combout\ : std_logic;
SIGNAL \RAM0|ram~213_q\ : std_logic;
SIGNAL \RAM0|ram~229_q\ : std_logic;
SIGNAL \RAM0|ram~245_q\ : std_logic;
SIGNAL \RAM0|ram~261_q\ : std_logic;
SIGNAL \RAM0|ram~569_combout\ : std_logic;
SIGNAL \RAM0|ram~221_q\ : std_logic;
SIGNAL \RAM0|ram~237_q\ : std_logic;
SIGNAL \RAM0|ram~253_q\ : std_logic;
SIGNAL \RAM0|ram~269_q\ : std_logic;
SIGNAL \RAM0|ram~570_combout\ : std_logic;
SIGNAL \RAM0|ram~469_q\ : std_logic;
SIGNAL \RAM0|ram~485_q\ : std_logic;
SIGNAL \RAM0|ram~501_q\ : std_logic;
SIGNAL \RAM0|ram~517_q\ : std_logic;
SIGNAL \RAM0|ram~571_combout\ : std_logic;
SIGNAL \RAM0|ram~477_q\ : std_logic;
SIGNAL \RAM0|ram~493_q\ : std_logic;
SIGNAL \RAM0|ram~509_q\ : std_logic;
SIGNAL \RAM0|ram~525_q\ : std_logic;
SIGNAL \RAM0|ram~572_combout\ : std_logic;
SIGNAL \RAM0|ram~573_combout\ : std_logic;
SIGNAL \RAM0|ram~21_q\ : std_logic;
SIGNAL \RAM0|ram~29_q\ : std_logic;
SIGNAL \RAM0|ram~277_q\ : std_logic;
SIGNAL \RAM0|ram~285_q\ : std_logic;
SIGNAL \RAM0|ram~574_combout\ : std_logic;
SIGNAL \RAM0|ram~53_q\ : std_logic;
SIGNAL \RAM0|ram~61_q\ : std_logic;
SIGNAL \RAM0|ram~309_q\ : std_logic;
SIGNAL \RAM0|ram~317_q\ : std_logic;
SIGNAL \RAM0|ram~575_combout\ : std_logic;
SIGNAL \RAM0|ram~37_q\ : std_logic;
SIGNAL \RAM0|ram~45_q\ : std_logic;
SIGNAL \RAM0|ram~293_q\ : std_logic;
SIGNAL \RAM0|ram~301_q\ : std_logic;
SIGNAL \RAM0|ram~576_combout\ : std_logic;
SIGNAL \RAM0|ram~69_q\ : std_logic;
SIGNAL \RAM0|ram~77_q\ : std_logic;
SIGNAL \RAM0|ram~325_q\ : std_logic;
SIGNAL \RAM0|ram~333_q\ : std_logic;
SIGNAL \RAM0|ram~577_combout\ : std_logic;
SIGNAL \RAM0|ram~578_combout\ : std_logic;
SIGNAL \RAM0|dado_out[4]~18_combout\ : std_logic;
SIGNAL \RAM0|dado_out[4]~19_combout\ : std_logic;
SIGNAL \RAM4|ram~214_q\ : std_logic;
SIGNAL \RAM4|ram~230_q\ : std_logic;
SIGNAL \RAM4|ram~246_q\ : std_logic;
SIGNAL \RAM4|ram~262_q\ : std_logic;
SIGNAL \RAM4|ram~579_combout\ : std_logic;
SIGNAL \RAM4|ram~222_q\ : std_logic;
SIGNAL \RAM4|ram~238_q\ : std_logic;
SIGNAL \RAM4|ram~254_q\ : std_logic;
SIGNAL \RAM4|ram~270_q\ : std_logic;
SIGNAL \RAM4|ram~580_combout\ : std_logic;
SIGNAL \RAM4|ram~470_q\ : std_logic;
SIGNAL \RAM4|ram~486_q\ : std_logic;
SIGNAL \RAM4|ram~502_q\ : std_logic;
SIGNAL \RAM4|ram~518_q\ : std_logic;
SIGNAL \RAM4|ram~581_combout\ : std_logic;
SIGNAL \RAM4|ram~478_q\ : std_logic;
SIGNAL \RAM4|ram~494_q\ : std_logic;
SIGNAL \RAM4|ram~510_q\ : std_logic;
SIGNAL \RAM4|ram~526_q\ : std_logic;
SIGNAL \RAM4|ram~582_combout\ : std_logic;
SIGNAL \RAM4|ram~583_combout\ : std_logic;
SIGNAL \RAM4|ram~22_q\ : std_logic;
SIGNAL \RAM4|ram~30_q\ : std_logic;
SIGNAL \RAM4|ram~278_q\ : std_logic;
SIGNAL \RAM4|ram~286_q\ : std_logic;
SIGNAL \RAM4|ram~584_combout\ : std_logic;
SIGNAL \RAM4|ram~54_q\ : std_logic;
SIGNAL \RAM4|ram~62_q\ : std_logic;
SIGNAL \RAM4|ram~310_q\ : std_logic;
SIGNAL \RAM4|ram~318_q\ : std_logic;
SIGNAL \RAM4|ram~585_combout\ : std_logic;
SIGNAL \RAM4|ram~38_q\ : std_logic;
SIGNAL \RAM4|ram~46_q\ : std_logic;
SIGNAL \RAM4|ram~294_q\ : std_logic;
SIGNAL \RAM4|ram~302_q\ : std_logic;
SIGNAL \RAM4|ram~586_combout\ : std_logic;
SIGNAL \RAM4|ram~70_q\ : std_logic;
SIGNAL \RAM4|ram~78_q\ : std_logic;
SIGNAL \RAM4|ram~326_q\ : std_logic;
SIGNAL \RAM4|ram~334_q\ : std_logic;
SIGNAL \RAM4|ram~587_combout\ : std_logic;
SIGNAL \RAM4|ram~588_combout\ : std_logic;
SIGNAL \RAM4|dado_out[5]~6_combout\ : std_logic;
SIGNAL \RAM8|ram~214_q\ : std_logic;
SIGNAL \RAM8|ram~230_q\ : std_logic;
SIGNAL \RAM8|ram~246_q\ : std_logic;
SIGNAL \RAM8|ram~262_q\ : std_logic;
SIGNAL \RAM8|ram~579_combout\ : std_logic;
SIGNAL \RAM8|ram~222_q\ : std_logic;
SIGNAL \RAM8|ram~238_q\ : std_logic;
SIGNAL \RAM8|ram~254_q\ : std_logic;
SIGNAL \RAM8|ram~270_q\ : std_logic;
SIGNAL \RAM8|ram~580_combout\ : std_logic;
SIGNAL \RAM8|ram~470_q\ : std_logic;
SIGNAL \RAM8|ram~486_q\ : std_logic;
SIGNAL \RAM8|ram~502_q\ : std_logic;
SIGNAL \RAM8|ram~518_q\ : std_logic;
SIGNAL \RAM8|ram~581_combout\ : std_logic;
SIGNAL \RAM8|ram~478_q\ : std_logic;
SIGNAL \RAM8|ram~494_q\ : std_logic;
SIGNAL \RAM8|ram~510_q\ : std_logic;
SIGNAL \RAM8|ram~526_q\ : std_logic;
SIGNAL \RAM8|ram~582_combout\ : std_logic;
SIGNAL \RAM8|ram~583_combout\ : std_logic;
SIGNAL \RAM8|ram~22_q\ : std_logic;
SIGNAL \RAM8|ram~30_q\ : std_logic;
SIGNAL \RAM8|ram~278_q\ : std_logic;
SIGNAL \RAM8|ram~286_q\ : std_logic;
SIGNAL \RAM8|ram~584_combout\ : std_logic;
SIGNAL \RAM8|ram~54_q\ : std_logic;
SIGNAL \RAM8|ram~62_q\ : std_logic;
SIGNAL \RAM8|ram~310_q\ : std_logic;
SIGNAL \RAM8|ram~318_q\ : std_logic;
SIGNAL \RAM8|ram~585_combout\ : std_logic;
SIGNAL \RAM8|ram~38_q\ : std_logic;
SIGNAL \RAM8|ram~46_q\ : std_logic;
SIGNAL \RAM8|ram~294_q\ : std_logic;
SIGNAL \RAM8|ram~302_q\ : std_logic;
SIGNAL \RAM8|ram~586_combout\ : std_logic;
SIGNAL \RAM8|ram~70_q\ : std_logic;
SIGNAL \RAM8|ram~78_q\ : std_logic;
SIGNAL \RAM8|ram~326_q\ : std_logic;
SIGNAL \RAM8|ram~334_q\ : std_logic;
SIGNAL \RAM8|ram~587_combout\ : std_logic;
SIGNAL \RAM8|ram~588_combout\ : std_logic;
SIGNAL \RAM8|dado_out[5]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~57_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~73_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~65_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~25_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~41_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~33_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~17_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~128_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~49_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~96_combout\ : std_logic;
SIGNAL \RAM0|ram~214_q\ : std_logic;
SIGNAL \RAM0|ram~230_q\ : std_logic;
SIGNAL \RAM0|ram~246_q\ : std_logic;
SIGNAL \RAM0|ram~262_q\ : std_logic;
SIGNAL \RAM0|ram~579_combout\ : std_logic;
SIGNAL \RAM0|ram~222_q\ : std_logic;
SIGNAL \RAM0|ram~238_q\ : std_logic;
SIGNAL \RAM0|ram~254_q\ : std_logic;
SIGNAL \RAM0|ram~270_q\ : std_logic;
SIGNAL \RAM0|ram~580_combout\ : std_logic;
SIGNAL \RAM0|ram~470_q\ : std_logic;
SIGNAL \RAM0|ram~486_q\ : std_logic;
SIGNAL \RAM0|ram~502_q\ : std_logic;
SIGNAL \RAM0|ram~518_q\ : std_logic;
SIGNAL \RAM0|ram~581_combout\ : std_logic;
SIGNAL \RAM0|ram~478_q\ : std_logic;
SIGNAL \RAM0|ram~494_q\ : std_logic;
SIGNAL \RAM0|ram~510_q\ : std_logic;
SIGNAL \RAM0|ram~526_q\ : std_logic;
SIGNAL \RAM0|ram~582_combout\ : std_logic;
SIGNAL \RAM0|ram~583_combout\ : std_logic;
SIGNAL \RAM0|ram~22_q\ : std_logic;
SIGNAL \RAM0|ram~30_q\ : std_logic;
SIGNAL \RAM0|ram~278_q\ : std_logic;
SIGNAL \RAM0|ram~286_q\ : std_logic;
SIGNAL \RAM0|ram~584_combout\ : std_logic;
SIGNAL \RAM0|ram~54_q\ : std_logic;
SIGNAL \RAM0|ram~62_q\ : std_logic;
SIGNAL \RAM0|ram~310_q\ : std_logic;
SIGNAL \RAM0|ram~318_q\ : std_logic;
SIGNAL \RAM0|ram~585_combout\ : std_logic;
SIGNAL \RAM0|ram~38_q\ : std_logic;
SIGNAL \RAM0|ram~46_q\ : std_logic;
SIGNAL \RAM0|ram~294_q\ : std_logic;
SIGNAL \RAM0|ram~302_q\ : std_logic;
SIGNAL \RAM0|ram~586_combout\ : std_logic;
SIGNAL \RAM0|ram~70_q\ : std_logic;
SIGNAL \RAM0|ram~78_q\ : std_logic;
SIGNAL \RAM0|ram~326_q\ : std_logic;
SIGNAL \RAM0|ram~334_q\ : std_logic;
SIGNAL \RAM0|ram~587_combout\ : std_logic;
SIGNAL \RAM0|ram~588_combout\ : std_logic;
SIGNAL \RAM0|dado_out[5]~20_combout\ : std_logic;
SIGNAL \RAM0|dado_out[5]~21_combout\ : std_logic;
SIGNAL \RAM4|ram~215_q\ : std_logic;
SIGNAL \RAM4|ram~231_q\ : std_logic;
SIGNAL \RAM4|ram~247_q\ : std_logic;
SIGNAL \RAM4|ram~263_q\ : std_logic;
SIGNAL \RAM4|ram~589_combout\ : std_logic;
SIGNAL \RAM4|ram~223_q\ : std_logic;
SIGNAL \RAM4|ram~239_q\ : std_logic;
SIGNAL \RAM4|ram~255_q\ : std_logic;
SIGNAL \RAM4|ram~271_q\ : std_logic;
SIGNAL \RAM4|ram~590_combout\ : std_logic;
SIGNAL \RAM4|ram~471_q\ : std_logic;
SIGNAL \RAM4|ram~487_q\ : std_logic;
SIGNAL \RAM4|ram~503_q\ : std_logic;
SIGNAL \RAM4|ram~519_q\ : std_logic;
SIGNAL \RAM4|ram~591_combout\ : std_logic;
SIGNAL \RAM4|ram~479_q\ : std_logic;
SIGNAL \RAM4|ram~495_q\ : std_logic;
SIGNAL \RAM4|ram~511_q\ : std_logic;
SIGNAL \RAM4|ram~527_q\ : std_logic;
SIGNAL \RAM4|ram~592_combout\ : std_logic;
SIGNAL \RAM4|ram~593_combout\ : std_logic;
SIGNAL \RAM4|ram~23_q\ : std_logic;
SIGNAL \RAM4|ram~31_q\ : std_logic;
SIGNAL \RAM4|ram~279_q\ : std_logic;
SIGNAL \RAM4|ram~287_q\ : std_logic;
SIGNAL \RAM4|ram~594_combout\ : std_logic;
SIGNAL \RAM4|ram~55_q\ : std_logic;
SIGNAL \RAM4|ram~63_q\ : std_logic;
SIGNAL \RAM4|ram~311_q\ : std_logic;
SIGNAL \RAM4|ram~319_q\ : std_logic;
SIGNAL \RAM4|ram~595_combout\ : std_logic;
SIGNAL \RAM4|ram~39_q\ : std_logic;
SIGNAL \RAM4|ram~47_q\ : std_logic;
SIGNAL \RAM4|ram~295_q\ : std_logic;
SIGNAL \RAM4|ram~303_q\ : std_logic;
SIGNAL \RAM4|ram~596_combout\ : std_logic;
SIGNAL \RAM4|ram~71_q\ : std_logic;
SIGNAL \RAM4|ram~79_q\ : std_logic;
SIGNAL \RAM4|ram~327_q\ : std_logic;
SIGNAL \RAM4|ram~335_q\ : std_logic;
SIGNAL \RAM4|ram~597_combout\ : std_logic;
SIGNAL \RAM4|ram~598_combout\ : std_logic;
SIGNAL \RAM4|dado_out[6]~7_combout\ : std_logic;
SIGNAL \RAM8|ram~215_q\ : std_logic;
SIGNAL \RAM8|ram~231_q\ : std_logic;
SIGNAL \RAM8|ram~247_q\ : std_logic;
SIGNAL \RAM8|ram~263_q\ : std_logic;
SIGNAL \RAM8|ram~589_combout\ : std_logic;
SIGNAL \RAM8|ram~223_q\ : std_logic;
SIGNAL \RAM8|ram~239_q\ : std_logic;
SIGNAL \RAM8|ram~255_q\ : std_logic;
SIGNAL \RAM8|ram~271_q\ : std_logic;
SIGNAL \RAM8|ram~590_combout\ : std_logic;
SIGNAL \RAM8|ram~471_q\ : std_logic;
SIGNAL \RAM8|ram~487_q\ : std_logic;
SIGNAL \RAM8|ram~503_q\ : std_logic;
SIGNAL \RAM8|ram~519_q\ : std_logic;
SIGNAL \RAM8|ram~591_combout\ : std_logic;
SIGNAL \RAM8|ram~479_q\ : std_logic;
SIGNAL \RAM8|ram~495_q\ : std_logic;
SIGNAL \RAM8|ram~511_q\ : std_logic;
SIGNAL \RAM8|ram~527_q\ : std_logic;
SIGNAL \RAM8|ram~592_combout\ : std_logic;
SIGNAL \RAM8|ram~593_combout\ : std_logic;
SIGNAL \RAM8|ram~23_q\ : std_logic;
SIGNAL \RAM8|ram~31_q\ : std_logic;
SIGNAL \RAM8|ram~279_q\ : std_logic;
SIGNAL \RAM8|ram~287_q\ : std_logic;
SIGNAL \RAM8|ram~594_combout\ : std_logic;
SIGNAL \RAM8|ram~55_q\ : std_logic;
SIGNAL \RAM8|ram~63_q\ : std_logic;
SIGNAL \RAM8|ram~311_q\ : std_logic;
SIGNAL \RAM8|ram~319_q\ : std_logic;
SIGNAL \RAM8|ram~595_combout\ : std_logic;
SIGNAL \RAM8|ram~39_q\ : std_logic;
SIGNAL \RAM8|ram~47_q\ : std_logic;
SIGNAL \RAM8|ram~295_q\ : std_logic;
SIGNAL \RAM8|ram~303_q\ : std_logic;
SIGNAL \RAM8|ram~596_combout\ : std_logic;
SIGNAL \RAM8|ram~71_q\ : std_logic;
SIGNAL \RAM8|ram~79_q\ : std_logic;
SIGNAL \RAM8|ram~327_q\ : std_logic;
SIGNAL \RAM8|ram~335_q\ : std_logic;
SIGNAL \RAM8|ram~597_combout\ : std_logic;
SIGNAL \RAM8|ram~598_combout\ : std_logic;
SIGNAL \RAM8|dado_out[6]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~58_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~74_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~66_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~26_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~42_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~34_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~18_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~132_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~50_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~100_combout\ : std_logic;
SIGNAL \RAM0|ram~215_q\ : std_logic;
SIGNAL \RAM0|ram~231_q\ : std_logic;
SIGNAL \RAM0|ram~247_q\ : std_logic;
SIGNAL \RAM0|ram~263_q\ : std_logic;
SIGNAL \RAM0|ram~589_combout\ : std_logic;
SIGNAL \RAM0|ram~223_q\ : std_logic;
SIGNAL \RAM0|ram~239_q\ : std_logic;
SIGNAL \RAM0|ram~255_q\ : std_logic;
SIGNAL \RAM0|ram~271_q\ : std_logic;
SIGNAL \RAM0|ram~590_combout\ : std_logic;
SIGNAL \RAM0|ram~471_q\ : std_logic;
SIGNAL \RAM0|ram~487_q\ : std_logic;
SIGNAL \RAM0|ram~503_q\ : std_logic;
SIGNAL \RAM0|ram~519_q\ : std_logic;
SIGNAL \RAM0|ram~591_combout\ : std_logic;
SIGNAL \RAM0|ram~479_q\ : std_logic;
SIGNAL \RAM0|ram~495_q\ : std_logic;
SIGNAL \RAM0|ram~511_q\ : std_logic;
SIGNAL \RAM0|ram~527_q\ : std_logic;
SIGNAL \RAM0|ram~592_combout\ : std_logic;
SIGNAL \RAM0|ram~593_combout\ : std_logic;
SIGNAL \RAM0|ram~23_q\ : std_logic;
SIGNAL \RAM0|ram~31_q\ : std_logic;
SIGNAL \RAM0|ram~279_q\ : std_logic;
SIGNAL \RAM0|ram~287_q\ : std_logic;
SIGNAL \RAM0|ram~594_combout\ : std_logic;
SIGNAL \RAM0|ram~55_q\ : std_logic;
SIGNAL \RAM0|ram~63_q\ : std_logic;
SIGNAL \RAM0|ram~311_q\ : std_logic;
SIGNAL \RAM0|ram~319_q\ : std_logic;
SIGNAL \RAM0|ram~595_combout\ : std_logic;
SIGNAL \RAM0|ram~39_q\ : std_logic;
SIGNAL \RAM0|ram~47_q\ : std_logic;
SIGNAL \RAM0|ram~295_q\ : std_logic;
SIGNAL \RAM0|ram~303_q\ : std_logic;
SIGNAL \RAM0|ram~596_combout\ : std_logic;
SIGNAL \RAM0|ram~71_q\ : std_logic;
SIGNAL \RAM0|ram~79_q\ : std_logic;
SIGNAL \RAM0|ram~327_q\ : std_logic;
SIGNAL \RAM0|ram~335_q\ : std_logic;
SIGNAL \RAM0|ram~597_combout\ : std_logic;
SIGNAL \RAM0|ram~598_combout\ : std_logic;
SIGNAL \RAM0|dado_out[6]~22_combout\ : std_logic;
SIGNAL \RAM0|dado_out[6]~23_combout\ : std_logic;
SIGNAL \RAM4|ram~216_q\ : std_logic;
SIGNAL \RAM4|ram~232_q\ : std_logic;
SIGNAL \RAM4|ram~248_q\ : std_logic;
SIGNAL \RAM4|ram~264_q\ : std_logic;
SIGNAL \RAM4|ram~599_combout\ : std_logic;
SIGNAL \RAM4|ram~224_q\ : std_logic;
SIGNAL \RAM4|ram~240_q\ : std_logic;
SIGNAL \RAM4|ram~256_q\ : std_logic;
SIGNAL \RAM4|ram~272_q\ : std_logic;
SIGNAL \RAM4|ram~600_combout\ : std_logic;
SIGNAL \RAM4|ram~472_q\ : std_logic;
SIGNAL \RAM4|ram~488_q\ : std_logic;
SIGNAL \RAM4|ram~504_q\ : std_logic;
SIGNAL \RAM4|ram~520_q\ : std_logic;
SIGNAL \RAM4|ram~601_combout\ : std_logic;
SIGNAL \RAM4|ram~480_q\ : std_logic;
SIGNAL \RAM4|ram~496_q\ : std_logic;
SIGNAL \RAM4|ram~512_q\ : std_logic;
SIGNAL \RAM4|ram~528_q\ : std_logic;
SIGNAL \RAM4|ram~602_combout\ : std_logic;
SIGNAL \RAM4|ram~603_combout\ : std_logic;
SIGNAL \RAM4|ram~24_q\ : std_logic;
SIGNAL \RAM4|ram~32_q\ : std_logic;
SIGNAL \RAM4|ram~280_q\ : std_logic;
SIGNAL \RAM4|ram~288_q\ : std_logic;
SIGNAL \RAM4|ram~604_combout\ : std_logic;
SIGNAL \RAM4|ram~56_q\ : std_logic;
SIGNAL \RAM4|ram~64_q\ : std_logic;
SIGNAL \RAM4|ram~312_q\ : std_logic;
SIGNAL \RAM4|ram~320_q\ : std_logic;
SIGNAL \RAM4|ram~605_combout\ : std_logic;
SIGNAL \RAM4|ram~40_q\ : std_logic;
SIGNAL \RAM4|ram~48_q\ : std_logic;
SIGNAL \RAM4|ram~296_q\ : std_logic;
SIGNAL \RAM4|ram~304_q\ : std_logic;
SIGNAL \RAM4|ram~606_combout\ : std_logic;
SIGNAL \RAM4|ram~72_q\ : std_logic;
SIGNAL \RAM4|ram~80_q\ : std_logic;
SIGNAL \RAM4|ram~328_q\ : std_logic;
SIGNAL \RAM4|ram~336_q\ : std_logic;
SIGNAL \RAM4|ram~607_combout\ : std_logic;
SIGNAL \RAM4|ram~608_combout\ : std_logic;
SIGNAL \RAM4|dado_out[7]~8_combout\ : std_logic;
SIGNAL \RAM8|ram~216_q\ : std_logic;
SIGNAL \RAM8|ram~232_q\ : std_logic;
SIGNAL \RAM8|ram~248_q\ : std_logic;
SIGNAL \RAM8|ram~264_q\ : std_logic;
SIGNAL \RAM8|ram~599_combout\ : std_logic;
SIGNAL \RAM8|ram~224_q\ : std_logic;
SIGNAL \RAM8|ram~240_q\ : std_logic;
SIGNAL \RAM8|ram~256_q\ : std_logic;
SIGNAL \RAM8|ram~272_q\ : std_logic;
SIGNAL \RAM8|ram~600_combout\ : std_logic;
SIGNAL \RAM8|ram~472_q\ : std_logic;
SIGNAL \RAM8|ram~488_q\ : std_logic;
SIGNAL \RAM8|ram~504_q\ : std_logic;
SIGNAL \RAM8|ram~520_q\ : std_logic;
SIGNAL \RAM8|ram~601_combout\ : std_logic;
SIGNAL \RAM8|ram~480_q\ : std_logic;
SIGNAL \RAM8|ram~496_q\ : std_logic;
SIGNAL \RAM8|ram~512_q\ : std_logic;
SIGNAL \RAM8|ram~528_q\ : std_logic;
SIGNAL \RAM8|ram~602_combout\ : std_logic;
SIGNAL \RAM8|ram~603_combout\ : std_logic;
SIGNAL \RAM8|ram~24_q\ : std_logic;
SIGNAL \RAM8|ram~32_q\ : std_logic;
SIGNAL \RAM8|ram~280_q\ : std_logic;
SIGNAL \RAM8|ram~288_q\ : std_logic;
SIGNAL \RAM8|ram~604_combout\ : std_logic;
SIGNAL \RAM8|ram~56_q\ : std_logic;
SIGNAL \RAM8|ram~64_q\ : std_logic;
SIGNAL \RAM8|ram~312_q\ : std_logic;
SIGNAL \RAM8|ram~320_q\ : std_logic;
SIGNAL \RAM8|ram~605_combout\ : std_logic;
SIGNAL \RAM8|ram~40_q\ : std_logic;
SIGNAL \RAM8|ram~48_q\ : std_logic;
SIGNAL \RAM8|ram~296_q\ : std_logic;
SIGNAL \RAM8|ram~304_q\ : std_logic;
SIGNAL \RAM8|ram~606_combout\ : std_logic;
SIGNAL \RAM8|ram~72_q\ : std_logic;
SIGNAL \RAM8|ram~80_q\ : std_logic;
SIGNAL \RAM8|ram~328_q\ : std_logic;
SIGNAL \RAM8|ram~336_q\ : std_logic;
SIGNAL \RAM8|ram~607_combout\ : std_logic;
SIGNAL \RAM8|ram~608_combout\ : std_logic;
SIGNAL \RAM8|dado_out[7]~8_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~59_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~75_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~67_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~27_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~43_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~35_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~19_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~136_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~51_q\ : std_logic;
SIGNAL \CPU|REGS|registrador~104_combout\ : std_logic;
SIGNAL \RAM0|ram~216_q\ : std_logic;
SIGNAL \RAM0|ram~232_q\ : std_logic;
SIGNAL \RAM0|ram~248_q\ : std_logic;
SIGNAL \RAM0|ram~264_q\ : std_logic;
SIGNAL \RAM0|ram~599_combout\ : std_logic;
SIGNAL \RAM0|ram~224_q\ : std_logic;
SIGNAL \RAM0|ram~240_q\ : std_logic;
SIGNAL \RAM0|ram~256_q\ : std_logic;
SIGNAL \RAM0|ram~272_q\ : std_logic;
SIGNAL \RAM0|ram~600_combout\ : std_logic;
SIGNAL \RAM0|ram~472_q\ : std_logic;
SIGNAL \RAM0|ram~488_q\ : std_logic;
SIGNAL \RAM0|ram~504_q\ : std_logic;
SIGNAL \RAM0|ram~520_q\ : std_logic;
SIGNAL \RAM0|ram~601_combout\ : std_logic;
SIGNAL \RAM0|ram~480_q\ : std_logic;
SIGNAL \RAM0|ram~496_q\ : std_logic;
SIGNAL \RAM0|ram~512_q\ : std_logic;
SIGNAL \RAM0|ram~528_q\ : std_logic;
SIGNAL \RAM0|ram~602_combout\ : std_logic;
SIGNAL \RAM0|ram~603_combout\ : std_logic;
SIGNAL \RAM0|ram~24_q\ : std_logic;
SIGNAL \RAM0|ram~32_q\ : std_logic;
SIGNAL \RAM0|ram~280_q\ : std_logic;
SIGNAL \RAM0|ram~288_q\ : std_logic;
SIGNAL \RAM0|ram~604_combout\ : std_logic;
SIGNAL \RAM0|ram~56_q\ : std_logic;
SIGNAL \RAM0|ram~64_q\ : std_logic;
SIGNAL \RAM0|ram~312_q\ : std_logic;
SIGNAL \RAM0|ram~320_q\ : std_logic;
SIGNAL \RAM0|ram~605_combout\ : std_logic;
SIGNAL \RAM0|ram~40_q\ : std_logic;
SIGNAL \RAM0|ram~48_q\ : std_logic;
SIGNAL \RAM0|ram~296_q\ : std_logic;
SIGNAL \RAM0|ram~304_q\ : std_logic;
SIGNAL \RAM0|ram~606_combout\ : std_logic;
SIGNAL \RAM0|ram~72_q\ : std_logic;
SIGNAL \RAM0|ram~80_q\ : std_logic;
SIGNAL \RAM0|ram~328_q\ : std_logic;
SIGNAL \RAM0|ram~336_q\ : std_logic;
SIGNAL \RAM0|ram~607_combout\ : std_logic;
SIGNAL \RAM0|ram~608_combout\ : std_logic;
SIGNAL \RAM0|dado_out[7]~24_combout\ : std_logic;
SIGNAL \RAM0|dado_out[7]~25_combout\ : std_logic;
SIGNAL \DEC2|Mux7~0_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC2|Mux7~1_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC2|Mux7~2_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC2|Mux7~3_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC2|Mux7~4_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DEC2|Mux7~5_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \conv5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \reg4b5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg4b1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGS|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~136_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~75_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~132_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~74_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~128_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~73_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~124_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~72_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~120_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~71_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~116_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~70_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~112_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~108_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~104_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~100_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~96_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~92_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~88_combout\ : std_logic;
SIGNAL \reg4b5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4b0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGS|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~9_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \CPU|LDESV|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[1]~2_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[1]~2_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[1]~12_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[0]~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[0]~1_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[2]~3_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[2]~3_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[2]~14_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[4]~18_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[3]~4_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[3]~4_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[3]~16_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[5]~6_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[5]~20_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[4]~5_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[4]~5_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[6]~7_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~527_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[6]~7_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~527_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[6]~22_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~527_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[5]~6_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_dado_out[7]~8_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~528_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_dado_out[7]~8_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~528_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM4|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[7]~24_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~528_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM8|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \DEC2|ALT_INV_Mux7~6_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~143_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~140_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[5]~4_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~84_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~80_combout\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~76_combout\ : std_logic;

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
\CPU|REGS|ALT_INV_registrador~30_q\ <= NOT \CPU|REGS|registrador~30_q\;
\CPU|REGS|ALT_INV_registrador~14_q\ <= NOT \CPU|REGS|registrador~14_q\;
\CPU|REGS|ALT_INV_registrador~38_q\ <= NOT \CPU|REGS|registrador~38_q\;
\CPU|REGS|ALT_INV_registrador~22_q\ <= NOT \CPU|REGS|registrador~22_q\;
\CPU|REGS|ALT_INV_registrador~29_q\ <= NOT \CPU|REGS|registrador~29_q\;
\CPU|REGS|ALT_INV_registrador~13_q\ <= NOT \CPU|REGS|registrador~13_q\;
\CPU|REGS|ALT_INV_registrador~37_q\ <= NOT \CPU|REGS|registrador~37_q\;
\CPU|REGS|ALT_INV_registrador~21_q\ <= NOT \CPU|REGS|registrador~21_q\;
\CPU|REGS|ALT_INV_registrador~28_q\ <= NOT \CPU|REGS|registrador~28_q\;
\CPU|REGS|ALT_INV_registrador~12_q\ <= NOT \CPU|REGS|registrador~12_q\;
\CPU|REGS|ALT_INV_registrador~36_q\ <= NOT \CPU|REGS|registrador~36_q\;
\CPU|REGS|ALT_INV_registrador~20_q\ <= NOT \CPU|REGS|registrador~20_q\;
\CPU|REGS|ALT_INV_registrador~67_q\ <= NOT \CPU|REGS|registrador~67_q\;
\CPU|REGS|ALT_INV_registrador~136_combout\ <= NOT \CPU|REGS|registrador~136_combout\;
\CPU|REGS|ALT_INV_registrador~51_q\ <= NOT \CPU|REGS|registrador~51_q\;
\CPU|REGS|ALT_INV_registrador~75_q\ <= NOT \CPU|REGS|registrador~75_q\;
\CPU|REGS|ALT_INV_registrador~59_q\ <= NOT \CPU|REGS|registrador~59_q\;
\CPU|REGS|ALT_INV_registrador~66_q\ <= NOT \CPU|REGS|registrador~66_q\;
\CPU|REGS|ALT_INV_registrador~132_combout\ <= NOT \CPU|REGS|registrador~132_combout\;
\CPU|REGS|ALT_INV_registrador~50_q\ <= NOT \CPU|REGS|registrador~50_q\;
\CPU|REGS|ALT_INV_registrador~74_q\ <= NOT \CPU|REGS|registrador~74_q\;
\CPU|REGS|ALT_INV_registrador~58_q\ <= NOT \CPU|REGS|registrador~58_q\;
\CPU|REGS|ALT_INV_registrador~65_q\ <= NOT \CPU|REGS|registrador~65_q\;
\CPU|REGS|ALT_INV_registrador~128_combout\ <= NOT \CPU|REGS|registrador~128_combout\;
\CPU|REGS|ALT_INV_registrador~49_q\ <= NOT \CPU|REGS|registrador~49_q\;
\CPU|REGS|ALT_INV_registrador~73_q\ <= NOT \CPU|REGS|registrador~73_q\;
\CPU|REGS|ALT_INV_registrador~57_q\ <= NOT \CPU|REGS|registrador~57_q\;
\CPU|REGS|ALT_INV_registrador~64_q\ <= NOT \CPU|REGS|registrador~64_q\;
\CPU|REGS|ALT_INV_registrador~124_combout\ <= NOT \CPU|REGS|registrador~124_combout\;
\CPU|REGS|ALT_INV_registrador~48_q\ <= NOT \CPU|REGS|registrador~48_q\;
\CPU|REGS|ALT_INV_registrador~72_q\ <= NOT \CPU|REGS|registrador~72_q\;
\CPU|REGS|ALT_INV_registrador~56_q\ <= NOT \CPU|REGS|registrador~56_q\;
\CPU|REGS|ALT_INV_registrador~63_q\ <= NOT \CPU|REGS|registrador~63_q\;
\CPU|REGS|ALT_INV_registrador~120_combout\ <= NOT \CPU|REGS|registrador~120_combout\;
\CPU|REGS|ALT_INV_registrador~47_q\ <= NOT \CPU|REGS|registrador~47_q\;
\CPU|REGS|ALT_INV_registrador~71_q\ <= NOT \CPU|REGS|registrador~71_q\;
\CPU|REGS|ALT_INV_registrador~55_q\ <= NOT \CPU|REGS|registrador~55_q\;
\CPU|REGS|ALT_INV_registrador~62_q\ <= NOT \CPU|REGS|registrador~62_q\;
\CPU|REGS|ALT_INV_registrador~116_combout\ <= NOT \CPU|REGS|registrador~116_combout\;
\CPU|REGS|ALT_INV_registrador~46_q\ <= NOT \CPU|REGS|registrador~46_q\;
\CPU|REGS|ALT_INV_registrador~70_q\ <= NOT \CPU|REGS|registrador~70_q\;
\CPU|REGS|ALT_INV_registrador~54_q\ <= NOT \CPU|REGS|registrador~54_q\;
\CPU|REGS|ALT_INV_registrador~61_q\ <= NOT \CPU|REGS|registrador~61_q\;
\CPU|REGS|ALT_INV_registrador~112_combout\ <= NOT \CPU|REGS|registrador~112_combout\;
\CPU|REGS|ALT_INV_registrador~45_q\ <= NOT \CPU|REGS|registrador~45_q\;
\CPU|REGS|ALT_INV_registrador~69_q\ <= NOT \CPU|REGS|registrador~69_q\;
\CPU|REGS|ALT_INV_registrador~53_q\ <= NOT \CPU|REGS|registrador~53_q\;
\CPU|REGS|ALT_INV_registrador~60_q\ <= NOT \CPU|REGS|registrador~60_q\;
\CPU|REGS|ALT_INV_registrador~108_combout\ <= NOT \CPU|REGS|registrador~108_combout\;
\CPU|REGS|ALT_INV_registrador~44_q\ <= NOT \CPU|REGS|registrador~44_q\;
\CPU|REGS|ALT_INV_registrador~68_q\ <= NOT \CPU|REGS|registrador~68_q\;
\CPU|REGS|ALT_INV_registrador~52_q\ <= NOT \CPU|REGS|registrador~52_q\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|REGS|ALT_INV_registrador~104_combout\ <= NOT \CPU|REGS|registrador~104_combout\;
\CPU|REGS|ALT_INV_registrador~100_combout\ <= NOT \CPU|REGS|registrador~100_combout\;
\CPU|REGS|ALT_INV_registrador~96_combout\ <= NOT \CPU|REGS|registrador~96_combout\;
\CPU|REGS|ALT_INV_registrador~92_combout\ <= NOT \CPU|REGS|registrador~92_combout\;
\CPU|REGS|ALT_INV_registrador~88_combout\ <= NOT \CPU|REGS|registrador~88_combout\;
\reg4b5|ALT_INV_DOUT\(2) <= NOT \reg4b5|DOUT\(2);
\reg4b5|ALT_INV_DOUT\(1) <= NOT \reg4b5|DOUT\(1);
\reg4b5|ALT_INV_DOUT\(3) <= NOT \reg4b5|DOUT\(3);
\reg4b5|ALT_INV_DOUT\(0) <= NOT \reg4b5|DOUT\(0);
\reg4b4|ALT_INV_DOUT\(2) <= NOT \reg4b4|DOUT\(2);
\reg4b4|ALT_INV_DOUT\(1) <= NOT \reg4b4|DOUT\(1);
\reg4b4|ALT_INV_DOUT\(3) <= NOT \reg4b4|DOUT\(3);
\reg4b4|ALT_INV_DOUT\(0) <= NOT \reg4b4|DOUT\(0);
\reg4b3|ALT_INV_DOUT\(2) <= NOT \reg4b3|DOUT\(2);
\reg4b3|ALT_INV_DOUT\(1) <= NOT \reg4b3|DOUT\(1);
\reg4b3|ALT_INV_DOUT\(3) <= NOT \reg4b3|DOUT\(3);
\reg4b3|ALT_INV_DOUT\(0) <= NOT \reg4b3|DOUT\(0);
\reg4b2|ALT_INV_DOUT\(2) <= NOT \reg4b2|DOUT\(2);
\reg4b2|ALT_INV_DOUT\(1) <= NOT \reg4b2|DOUT\(1);
\reg4b2|ALT_INV_DOUT\(3) <= NOT \reg4b2|DOUT\(3);
\reg4b2|ALT_INV_DOUT\(0) <= NOT \reg4b2|DOUT\(0);
\reg4b1|ALT_INV_DOUT\(2) <= NOT \reg4b1|DOUT\(2);
\reg4b1|ALT_INV_DOUT\(1) <= NOT \reg4b1|DOUT\(1);
\reg4b1|ALT_INV_DOUT\(3) <= NOT \reg4b1|DOUT\(3);
\reg4b1|ALT_INV_DOUT\(0) <= NOT \reg4b1|DOUT\(0);
\reg4b0|ALT_INV_DOUT\(2) <= NOT \reg4b0|DOUT\(2);
\reg4b0|ALT_INV_DOUT\(1) <= NOT \reg4b0|DOUT\(1);
\reg4b0|ALT_INV_DOUT\(3) <= NOT \reg4b0|DOUT\(3);
\reg4b0|ALT_INV_DOUT\(0) <= NOT \reg4b0|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGS|ALT_INV_registrador~35_q\ <= NOT \CPU|REGS|registrador~35_q\;
\CPU|REGS|ALT_INV_registrador~19_q\ <= NOT \CPU|REGS|registrador~19_q\;
\CPU|REGS|ALT_INV_registrador~43_q\ <= NOT \CPU|REGS|registrador~43_q\;
\CPU|REGS|ALT_INV_registrador~27_q\ <= NOT \CPU|REGS|registrador~27_q\;
\CPU|REGS|ALT_INV_registrador~34_q\ <= NOT \CPU|REGS|registrador~34_q\;
\CPU|REGS|ALT_INV_registrador~18_q\ <= NOT \CPU|REGS|registrador~18_q\;
\CPU|REGS|ALT_INV_registrador~42_q\ <= NOT \CPU|REGS|registrador~42_q\;
\CPU|REGS|ALT_INV_registrador~26_q\ <= NOT \CPU|REGS|registrador~26_q\;
\CPU|REGS|ALT_INV_registrador~33_q\ <= NOT \CPU|REGS|registrador~33_q\;
\CPU|REGS|ALT_INV_registrador~17_q\ <= NOT \CPU|REGS|registrador~17_q\;
\CPU|REGS|ALT_INV_registrador~41_q\ <= NOT \CPU|REGS|registrador~41_q\;
\CPU|REGS|ALT_INV_registrador~25_q\ <= NOT \CPU|REGS|registrador~25_q\;
\CPU|REGS|ALT_INV_registrador~32_q\ <= NOT \CPU|REGS|registrador~32_q\;
\CPU|REGS|ALT_INV_registrador~16_q\ <= NOT \CPU|REGS|registrador~16_q\;
\CPU|REGS|ALT_INV_registrador~40_q\ <= NOT \CPU|REGS|registrador~40_q\;
\CPU|REGS|ALT_INV_registrador~24_q\ <= NOT \CPU|REGS|registrador~24_q\;
\CPU|REGS|ALT_INV_registrador~31_q\ <= NOT \CPU|REGS|registrador~31_q\;
\CPU|REGS|ALT_INV_registrador~15_q\ <= NOT \CPU|REGS|registrador~15_q\;
\CPU|REGS|ALT_INV_registrador~39_q\ <= NOT \CPU|REGS|registrador~39_q\;
\CPU|REGS|ALT_INV_registrador~23_q\ <= NOT \CPU|REGS|registrador~23_q\;
\RAM8|ALT_INV_ram~473_q\ <= NOT \RAM8|ram~473_q\;
\RAM8|ALT_INV_ram~531_combout\ <= NOT \RAM8|ram~531_combout\;
\RAM8|ALT_INV_ram~513_q\ <= NOT \RAM8|ram~513_q\;
\RAM8|ALT_INV_ram~497_q\ <= NOT \RAM8|ram~497_q\;
\RAM8|ALT_INV_ram~481_q\ <= NOT \RAM8|ram~481_q\;
\RAM8|ALT_INV_ram~465_q\ <= NOT \RAM8|ram~465_q\;
\RAM8|ALT_INV_ram~530_combout\ <= NOT \RAM8|ram~530_combout\;
\RAM8|ALT_INV_ram~265_q\ <= NOT \RAM8|ram~265_q\;
\RAM8|ALT_INV_ram~249_q\ <= NOT \RAM8|ram~249_q\;
\RAM8|ALT_INV_ram~233_q\ <= NOT \RAM8|ram~233_q\;
\RAM8|ALT_INV_ram~217_q\ <= NOT \RAM8|ram~217_q\;
\RAM8|ALT_INV_ram~529_combout\ <= NOT \RAM8|ram~529_combout\;
\RAM8|ALT_INV_ram~257_q\ <= NOT \RAM8|ram~257_q\;
\RAM8|ALT_INV_ram~241_q\ <= NOT \RAM8|ram~241_q\;
\RAM8|ALT_INV_ram~225_q\ <= NOT \RAM8|ram~225_q\;
\RAM8|ALT_INV_ram~209_q\ <= NOT \RAM8|ram~209_q\;
\RAM4|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM4|dado_out[0]~1_combout\;
\RAM4|ALT_INV_dado_out~0_combout\ <= NOT \RAM4|dado_out~0_combout\;
\RAM4|ALT_INV_ram~538_combout\ <= NOT \RAM4|ram~538_combout\;
\RAM4|ALT_INV_ram~537_combout\ <= NOT \RAM4|ram~537_combout\;
\RAM4|ALT_INV_ram~329_q\ <= NOT \RAM4|ram~329_q\;
\RAM4|ALT_INV_ram~321_q\ <= NOT \RAM4|ram~321_q\;
\RAM4|ALT_INV_ram~73_q\ <= NOT \RAM4|ram~73_q\;
\RAM4|ALT_INV_ram~65_q\ <= NOT \RAM4|ram~65_q\;
\RAM4|ALT_INV_ram~536_combout\ <= NOT \RAM4|ram~536_combout\;
\RAM4|ALT_INV_ram~297_q\ <= NOT \RAM4|ram~297_q\;
\RAM4|ALT_INV_ram~289_q\ <= NOT \RAM4|ram~289_q\;
\RAM4|ALT_INV_ram~41_q\ <= NOT \RAM4|ram~41_q\;
\RAM4|ALT_INV_ram~33_q\ <= NOT \RAM4|ram~33_q\;
\RAM4|ALT_INV_ram~535_combout\ <= NOT \RAM4|ram~535_combout\;
\RAM4|ALT_INV_ram~313_q\ <= NOT \RAM4|ram~313_q\;
\RAM4|ALT_INV_ram~305_q\ <= NOT \RAM4|ram~305_q\;
\RAM4|ALT_INV_ram~57_q\ <= NOT \RAM4|ram~57_q\;
\RAM4|ALT_INV_ram~49_q\ <= NOT \RAM4|ram~49_q\;
\RAM4|ALT_INV_ram~534_combout\ <= NOT \RAM4|ram~534_combout\;
\RAM4|ALT_INV_ram~281_q\ <= NOT \RAM4|ram~281_q\;
\RAM4|ALT_INV_ram~273_q\ <= NOT \RAM4|ram~273_q\;
\RAM4|ALT_INV_ram~25_q\ <= NOT \RAM4|ram~25_q\;
\RAM4|ALT_INV_ram~17_q\ <= NOT \RAM4|ram~17_q\;
\RAM4|ALT_INV_ram~533_combout\ <= NOT \RAM4|ram~533_combout\;
\RAM4|ALT_INV_ram~532_combout\ <= NOT \RAM4|ram~532_combout\;
\RAM4|ALT_INV_ram~521_q\ <= NOT \RAM4|ram~521_q\;
\RAM4|ALT_INV_ram~505_q\ <= NOT \RAM4|ram~505_q\;
\RAM4|ALT_INV_ram~489_q\ <= NOT \RAM4|ram~489_q\;
\RAM4|ALT_INV_ram~473_q\ <= NOT \RAM4|ram~473_q\;
\RAM4|ALT_INV_ram~531_combout\ <= NOT \RAM4|ram~531_combout\;
\RAM4|ALT_INV_ram~513_q\ <= NOT \RAM4|ram~513_q\;
\RAM4|ALT_INV_ram~497_q\ <= NOT \RAM4|ram~497_q\;
\RAM4|ALT_INV_ram~481_q\ <= NOT \RAM4|ram~481_q\;
\RAM4|ALT_INV_ram~465_q\ <= NOT \RAM4|ram~465_q\;
\RAM4|ALT_INV_ram~530_combout\ <= NOT \RAM4|ram~530_combout\;
\RAM4|ALT_INV_ram~265_q\ <= NOT \RAM4|ram~265_q\;
\RAM4|ALT_INV_ram~249_q\ <= NOT \RAM4|ram~249_q\;
\RAM4|ALT_INV_ram~233_q\ <= NOT \RAM4|ram~233_q\;
\RAM4|ALT_INV_ram~217_q\ <= NOT \RAM4|ram~217_q\;
\RAM4|ALT_INV_ram~529_combout\ <= NOT \RAM4|ram~529_combout\;
\RAM4|ALT_INV_ram~257_q\ <= NOT \RAM4|ram~257_q\;
\RAM4|ALT_INV_ram~241_q\ <= NOT \RAM4|ram~241_q\;
\RAM4|ALT_INV_ram~225_q\ <= NOT \RAM4|ram~225_q\;
\RAM4|ALT_INV_ram~209_q\ <= NOT \RAM4|ram~209_q\;
\RAM0|ALT_INV_dado_out[0]~9_combout\ <= NOT \RAM0|dado_out[0]~9_combout\;
\RAM0|ALT_INV_ram~538_combout\ <= NOT \RAM0|ram~538_combout\;
\RAM0|ALT_INV_ram~537_combout\ <= NOT \RAM0|ram~537_combout\;
\RAM0|ALT_INV_ram~329_q\ <= NOT \RAM0|ram~329_q\;
\RAM0|ALT_INV_ram~73_q\ <= NOT \RAM0|ram~73_q\;
\RAM0|ALT_INV_ram~313_q\ <= NOT \RAM0|ram~313_q\;
\RAM0|ALT_INV_ram~57_q\ <= NOT \RAM0|ram~57_q\;
\RAM0|ALT_INV_ram~536_combout\ <= NOT \RAM0|ram~536_combout\;
\RAM0|ALT_INV_ram~321_q\ <= NOT \RAM0|ram~321_q\;
\RAM0|ALT_INV_ram~65_q\ <= NOT \RAM0|ram~65_q\;
\RAM0|ALT_INV_ram~305_q\ <= NOT \RAM0|ram~305_q\;
\RAM0|ALT_INV_ram~49_q\ <= NOT \RAM0|ram~49_q\;
\RAM0|ALT_INV_ram~535_combout\ <= NOT \RAM0|ram~535_combout\;
\RAM0|ALT_INV_ram~297_q\ <= NOT \RAM0|ram~297_q\;
\RAM0|ALT_INV_ram~41_q\ <= NOT \RAM0|ram~41_q\;
\RAM0|ALT_INV_ram~281_q\ <= NOT \RAM0|ram~281_q\;
\RAM0|ALT_INV_ram~25_q\ <= NOT \RAM0|ram~25_q\;
\RAM0|ALT_INV_ram~534_combout\ <= NOT \RAM0|ram~534_combout\;
\RAM0|ALT_INV_ram~289_q\ <= NOT \RAM0|ram~289_q\;
\RAM0|ALT_INV_ram~33_q\ <= NOT \RAM0|ram~33_q\;
\RAM0|ALT_INV_ram~273_q\ <= NOT \RAM0|ram~273_q\;
\RAM0|ALT_INV_ram~17_q\ <= NOT \RAM0|ram~17_q\;
\RAM0|ALT_INV_ram~533_combout\ <= NOT \RAM0|ram~533_combout\;
\RAM0|ALT_INV_ram~532_combout\ <= NOT \RAM0|ram~532_combout\;
\RAM0|ALT_INV_ram~521_q\ <= NOT \RAM0|ram~521_q\;
\RAM0|ALT_INV_ram~505_q\ <= NOT \RAM0|ram~505_q\;
\RAM0|ALT_INV_ram~489_q\ <= NOT \RAM0|ram~489_q\;
\RAM0|ALT_INV_ram~473_q\ <= NOT \RAM0|ram~473_q\;
\RAM0|ALT_INV_ram~531_combout\ <= NOT \RAM0|ram~531_combout\;
\RAM0|ALT_INV_ram~513_q\ <= NOT \RAM0|ram~513_q\;
\RAM0|ALT_INV_ram~497_q\ <= NOT \RAM0|ram~497_q\;
\RAM0|ALT_INV_ram~481_q\ <= NOT \RAM0|ram~481_q\;
\RAM0|ALT_INV_ram~465_q\ <= NOT \RAM0|ram~465_q\;
\RAM0|ALT_INV_ram~530_combout\ <= NOT \RAM0|ram~530_combout\;
\RAM0|ALT_INV_ram~265_q\ <= NOT \RAM0|ram~265_q\;
\RAM0|ALT_INV_ram~249_q\ <= NOT \RAM0|ram~249_q\;
\RAM0|ALT_INV_ram~233_q\ <= NOT \RAM0|ram~233_q\;
\RAM0|ALT_INV_ram~217_q\ <= NOT \RAM0|ram~217_q\;
\RAM0|ALT_INV_ram~529_combout\ <= NOT \RAM0|ram~529_combout\;
\RAM0|ALT_INV_ram~257_q\ <= NOT \RAM0|ram~257_q\;
\RAM0|ALT_INV_ram~241_q\ <= NOT \RAM0|ram~241_q\;
\RAM0|ALT_INV_ram~225_q\ <= NOT \RAM0|ram~225_q\;
\RAM0|ALT_INV_ram~209_q\ <= NOT \RAM0|ram~209_q\;
\RAM0|ALT_INV_dado_out~8_combout\ <= NOT \RAM0|dado_out~8_combout\;
\CPU|decoderInstru|ALT_INV_saida[1]~0_combout\ <= NOT \CPU|decoderInstru|saida[1]~0_combout\;
\CPU|decoderInstru|ALT_INV_Equal11~0_combout\ <= NOT \CPU|decoderInstru|Equal11~0_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\CPU|LDESV|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|LDESV|saida[0]~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\RAM8|ALT_INV_dado_out[1]~2_combout\ <= NOT \RAM8|dado_out[1]~2_combout\;
\RAM8|ALT_INV_ram~548_combout\ <= NOT \RAM8|ram~548_combout\;
\RAM8|ALT_INV_ram~547_combout\ <= NOT \RAM8|ram~547_combout\;
\RAM8|ALT_INV_ram~330_q\ <= NOT \RAM8|ram~330_q\;
\RAM8|ALT_INV_ram~322_q\ <= NOT \RAM8|ram~322_q\;
\RAM8|ALT_INV_ram~74_q\ <= NOT \RAM8|ram~74_q\;
\RAM8|ALT_INV_ram~66_q\ <= NOT \RAM8|ram~66_q\;
\RAM8|ALT_INV_ram~546_combout\ <= NOT \RAM8|ram~546_combout\;
\RAM8|ALT_INV_ram~298_q\ <= NOT \RAM8|ram~298_q\;
\RAM8|ALT_INV_ram~290_q\ <= NOT \RAM8|ram~290_q\;
\RAM8|ALT_INV_ram~42_q\ <= NOT \RAM8|ram~42_q\;
\RAM8|ALT_INV_ram~34_q\ <= NOT \RAM8|ram~34_q\;
\RAM8|ALT_INV_ram~545_combout\ <= NOT \RAM8|ram~545_combout\;
\RAM8|ALT_INV_ram~314_q\ <= NOT \RAM8|ram~314_q\;
\RAM8|ALT_INV_ram~306_q\ <= NOT \RAM8|ram~306_q\;
\RAM8|ALT_INV_ram~58_q\ <= NOT \RAM8|ram~58_q\;
\RAM8|ALT_INV_ram~50_q\ <= NOT \RAM8|ram~50_q\;
\RAM8|ALT_INV_ram~544_combout\ <= NOT \RAM8|ram~544_combout\;
\RAM8|ALT_INV_ram~282_q\ <= NOT \RAM8|ram~282_q\;
\RAM8|ALT_INV_ram~274_q\ <= NOT \RAM8|ram~274_q\;
\RAM8|ALT_INV_ram~26_q\ <= NOT \RAM8|ram~26_q\;
\RAM8|ALT_INV_ram~18_q\ <= NOT \RAM8|ram~18_q\;
\RAM8|ALT_INV_ram~543_combout\ <= NOT \RAM8|ram~543_combout\;
\RAM8|ALT_INV_ram~542_combout\ <= NOT \RAM8|ram~542_combout\;
\RAM8|ALT_INV_ram~522_q\ <= NOT \RAM8|ram~522_q\;
\RAM8|ALT_INV_ram~506_q\ <= NOT \RAM8|ram~506_q\;
\RAM8|ALT_INV_ram~490_q\ <= NOT \RAM8|ram~490_q\;
\RAM8|ALT_INV_ram~474_q\ <= NOT \RAM8|ram~474_q\;
\RAM8|ALT_INV_ram~541_combout\ <= NOT \RAM8|ram~541_combout\;
\RAM8|ALT_INV_ram~514_q\ <= NOT \RAM8|ram~514_q\;
\RAM8|ALT_INV_ram~498_q\ <= NOT \RAM8|ram~498_q\;
\RAM8|ALT_INV_ram~482_q\ <= NOT \RAM8|ram~482_q\;
\RAM8|ALT_INV_ram~466_q\ <= NOT \RAM8|ram~466_q\;
\RAM8|ALT_INV_ram~540_combout\ <= NOT \RAM8|ram~540_combout\;
\RAM8|ALT_INV_ram~266_q\ <= NOT \RAM8|ram~266_q\;
\RAM8|ALT_INV_ram~250_q\ <= NOT \RAM8|ram~250_q\;
\RAM8|ALT_INV_ram~234_q\ <= NOT \RAM8|ram~234_q\;
\RAM8|ALT_INV_ram~218_q\ <= NOT \RAM8|ram~218_q\;
\RAM8|ALT_INV_ram~539_combout\ <= NOT \RAM8|ram~539_combout\;
\RAM8|ALT_INV_ram~258_q\ <= NOT \RAM8|ram~258_q\;
\RAM8|ALT_INV_ram~242_q\ <= NOT \RAM8|ram~242_q\;
\RAM8|ALT_INV_ram~226_q\ <= NOT \RAM8|ram~226_q\;
\RAM8|ALT_INV_ram~210_q\ <= NOT \RAM8|ram~210_q\;
\RAM4|ALT_INV_dado_out[1]~2_combout\ <= NOT \RAM4|dado_out[1]~2_combout\;
\RAM4|ALT_INV_ram~548_combout\ <= NOT \RAM4|ram~548_combout\;
\RAM4|ALT_INV_ram~547_combout\ <= NOT \RAM4|ram~547_combout\;
\RAM4|ALT_INV_ram~330_q\ <= NOT \RAM4|ram~330_q\;
\RAM4|ALT_INV_ram~322_q\ <= NOT \RAM4|ram~322_q\;
\RAM4|ALT_INV_ram~74_q\ <= NOT \RAM4|ram~74_q\;
\RAM4|ALT_INV_ram~66_q\ <= NOT \RAM4|ram~66_q\;
\RAM4|ALT_INV_ram~546_combout\ <= NOT \RAM4|ram~546_combout\;
\RAM4|ALT_INV_ram~298_q\ <= NOT \RAM4|ram~298_q\;
\RAM4|ALT_INV_ram~290_q\ <= NOT \RAM4|ram~290_q\;
\RAM4|ALT_INV_ram~42_q\ <= NOT \RAM4|ram~42_q\;
\RAM4|ALT_INV_ram~34_q\ <= NOT \RAM4|ram~34_q\;
\RAM4|ALT_INV_ram~545_combout\ <= NOT \RAM4|ram~545_combout\;
\RAM4|ALT_INV_ram~314_q\ <= NOT \RAM4|ram~314_q\;
\RAM4|ALT_INV_ram~306_q\ <= NOT \RAM4|ram~306_q\;
\RAM4|ALT_INV_ram~58_q\ <= NOT \RAM4|ram~58_q\;
\RAM4|ALT_INV_ram~50_q\ <= NOT \RAM4|ram~50_q\;
\RAM4|ALT_INV_ram~544_combout\ <= NOT \RAM4|ram~544_combout\;
\RAM4|ALT_INV_ram~282_q\ <= NOT \RAM4|ram~282_q\;
\RAM4|ALT_INV_ram~274_q\ <= NOT \RAM4|ram~274_q\;
\RAM4|ALT_INV_ram~26_q\ <= NOT \RAM4|ram~26_q\;
\RAM4|ALT_INV_ram~18_q\ <= NOT \RAM4|ram~18_q\;
\RAM4|ALT_INV_ram~543_combout\ <= NOT \RAM4|ram~543_combout\;
\RAM4|ALT_INV_ram~542_combout\ <= NOT \RAM4|ram~542_combout\;
\RAM4|ALT_INV_ram~522_q\ <= NOT \RAM4|ram~522_q\;
\RAM4|ALT_INV_ram~506_q\ <= NOT \RAM4|ram~506_q\;
\RAM4|ALT_INV_ram~490_q\ <= NOT \RAM4|ram~490_q\;
\RAM4|ALT_INV_ram~474_q\ <= NOT \RAM4|ram~474_q\;
\RAM4|ALT_INV_ram~541_combout\ <= NOT \RAM4|ram~541_combout\;
\RAM4|ALT_INV_ram~514_q\ <= NOT \RAM4|ram~514_q\;
\RAM4|ALT_INV_ram~498_q\ <= NOT \RAM4|ram~498_q\;
\RAM4|ALT_INV_ram~482_q\ <= NOT \RAM4|ram~482_q\;
\RAM4|ALT_INV_ram~466_q\ <= NOT \RAM4|ram~466_q\;
\RAM4|ALT_INV_ram~540_combout\ <= NOT \RAM4|ram~540_combout\;
\RAM4|ALT_INV_ram~266_q\ <= NOT \RAM4|ram~266_q\;
\RAM4|ALT_INV_ram~250_q\ <= NOT \RAM4|ram~250_q\;
\RAM4|ALT_INV_ram~234_q\ <= NOT \RAM4|ram~234_q\;
\RAM4|ALT_INV_ram~218_q\ <= NOT \RAM4|ram~218_q\;
\RAM4|ALT_INV_ram~539_combout\ <= NOT \RAM4|ram~539_combout\;
\RAM4|ALT_INV_ram~258_q\ <= NOT \RAM4|ram~258_q\;
\RAM4|ALT_INV_ram~242_q\ <= NOT \RAM4|ram~242_q\;
\RAM4|ALT_INV_ram~226_q\ <= NOT \RAM4|ram~226_q\;
\RAM4|ALT_INV_ram~210_q\ <= NOT \RAM4|ram~210_q\;
\RAM0|ALT_INV_dado_out[1]~12_combout\ <= NOT \RAM0|dado_out[1]~12_combout\;
\RAM0|ALT_INV_ram~548_combout\ <= NOT \RAM0|ram~548_combout\;
\RAM0|ALT_INV_ram~547_combout\ <= NOT \RAM0|ram~547_combout\;
\RAM0|ALT_INV_ram~330_q\ <= NOT \RAM0|ram~330_q\;
\RAM0|ALT_INV_ram~322_q\ <= NOT \RAM0|ram~322_q\;
\RAM0|ALT_INV_ram~74_q\ <= NOT \RAM0|ram~74_q\;
\RAM0|ALT_INV_ram~66_q\ <= NOT \RAM0|ram~66_q\;
\RAM0|ALT_INV_ram~546_combout\ <= NOT \RAM0|ram~546_combout\;
\RAM0|ALT_INV_ram~298_q\ <= NOT \RAM0|ram~298_q\;
\RAM0|ALT_INV_ram~290_q\ <= NOT \RAM0|ram~290_q\;
\RAM0|ALT_INV_ram~42_q\ <= NOT \RAM0|ram~42_q\;
\RAM0|ALT_INV_ram~34_q\ <= NOT \RAM0|ram~34_q\;
\RAM0|ALT_INV_ram~545_combout\ <= NOT \RAM0|ram~545_combout\;
\RAM0|ALT_INV_ram~314_q\ <= NOT \RAM0|ram~314_q\;
\RAM0|ALT_INV_ram~306_q\ <= NOT \RAM0|ram~306_q\;
\RAM0|ALT_INV_ram~58_q\ <= NOT \RAM0|ram~58_q\;
\RAM0|ALT_INV_ram~50_q\ <= NOT \RAM0|ram~50_q\;
\RAM0|ALT_INV_ram~544_combout\ <= NOT \RAM0|ram~544_combout\;
\RAM0|ALT_INV_ram~282_q\ <= NOT \RAM0|ram~282_q\;
\RAM0|ALT_INV_ram~274_q\ <= NOT \RAM0|ram~274_q\;
\RAM0|ALT_INV_ram~26_q\ <= NOT \RAM0|ram~26_q\;
\RAM0|ALT_INV_ram~18_q\ <= NOT \RAM0|ram~18_q\;
\RAM0|ALT_INV_ram~543_combout\ <= NOT \RAM0|ram~543_combout\;
\RAM0|ALT_INV_ram~542_combout\ <= NOT \RAM0|ram~542_combout\;
\RAM0|ALT_INV_ram~522_q\ <= NOT \RAM0|ram~522_q\;
\RAM0|ALT_INV_ram~506_q\ <= NOT \RAM0|ram~506_q\;
\RAM0|ALT_INV_ram~490_q\ <= NOT \RAM0|ram~490_q\;
\RAM0|ALT_INV_ram~474_q\ <= NOT \RAM0|ram~474_q\;
\RAM0|ALT_INV_ram~541_combout\ <= NOT \RAM0|ram~541_combout\;
\RAM0|ALT_INV_ram~514_q\ <= NOT \RAM0|ram~514_q\;
\RAM0|ALT_INV_ram~498_q\ <= NOT \RAM0|ram~498_q\;
\RAM0|ALT_INV_ram~482_q\ <= NOT \RAM0|ram~482_q\;
\RAM0|ALT_INV_ram~466_q\ <= NOT \RAM0|ram~466_q\;
\RAM0|ALT_INV_ram~540_combout\ <= NOT \RAM0|ram~540_combout\;
\RAM0|ALT_INV_ram~266_q\ <= NOT \RAM0|ram~266_q\;
\RAM0|ALT_INV_ram~250_q\ <= NOT \RAM0|ram~250_q\;
\RAM0|ALT_INV_ram~234_q\ <= NOT \RAM0|ram~234_q\;
\RAM0|ALT_INV_ram~218_q\ <= NOT \RAM0|ram~218_q\;
\RAM0|ALT_INV_ram~539_combout\ <= NOT \RAM0|ram~539_combout\;
\RAM0|ALT_INV_ram~258_q\ <= NOT \RAM0|ram~258_q\;
\RAM0|ALT_INV_ram~242_q\ <= NOT \RAM0|ram~242_q\;
\RAM0|ALT_INV_ram~226_q\ <= NOT \RAM0|ram~226_q\;
\RAM0|ALT_INV_ram~210_q\ <= NOT \RAM0|ram~210_q\;
\RAM0|ALT_INV_dado_out[0]~11_combout\ <= NOT \RAM0|dado_out[0]~11_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\RAM8|ALT_INV_dado_out[0]~1_combout\ <= NOT \RAM8|dado_out[0]~1_combout\;
\RAM8|ALT_INV_dado_out~0_combout\ <= NOT \RAM8|dado_out~0_combout\;
\RAM8|ALT_INV_ram~538_combout\ <= NOT \RAM8|ram~538_combout\;
\RAM8|ALT_INV_ram~537_combout\ <= NOT \RAM8|ram~537_combout\;
\RAM8|ALT_INV_ram~329_q\ <= NOT \RAM8|ram~329_q\;
\RAM8|ALT_INV_ram~321_q\ <= NOT \RAM8|ram~321_q\;
\RAM8|ALT_INV_ram~73_q\ <= NOT \RAM8|ram~73_q\;
\RAM8|ALT_INV_ram~65_q\ <= NOT \RAM8|ram~65_q\;
\RAM8|ALT_INV_ram~536_combout\ <= NOT \RAM8|ram~536_combout\;
\RAM8|ALT_INV_ram~297_q\ <= NOT \RAM8|ram~297_q\;
\RAM8|ALT_INV_ram~289_q\ <= NOT \RAM8|ram~289_q\;
\RAM8|ALT_INV_ram~41_q\ <= NOT \RAM8|ram~41_q\;
\RAM8|ALT_INV_ram~33_q\ <= NOT \RAM8|ram~33_q\;
\RAM8|ALT_INV_ram~535_combout\ <= NOT \RAM8|ram~535_combout\;
\RAM8|ALT_INV_ram~313_q\ <= NOT \RAM8|ram~313_q\;
\RAM8|ALT_INV_ram~305_q\ <= NOT \RAM8|ram~305_q\;
\RAM8|ALT_INV_ram~57_q\ <= NOT \RAM8|ram~57_q\;
\RAM8|ALT_INV_ram~49_q\ <= NOT \RAM8|ram~49_q\;
\RAM8|ALT_INV_ram~534_combout\ <= NOT \RAM8|ram~534_combout\;
\RAM8|ALT_INV_ram~281_q\ <= NOT \RAM8|ram~281_q\;
\RAM8|ALT_INV_ram~273_q\ <= NOT \RAM8|ram~273_q\;
\RAM8|ALT_INV_ram~25_q\ <= NOT \RAM8|ram~25_q\;
\RAM8|ALT_INV_ram~17_q\ <= NOT \RAM8|ram~17_q\;
\RAM8|ALT_INV_ram~533_combout\ <= NOT \RAM8|ram~533_combout\;
\RAM8|ALT_INV_ram~532_combout\ <= NOT \RAM8|ram~532_combout\;
\RAM8|ALT_INV_ram~521_q\ <= NOT \RAM8|ram~521_q\;
\RAM8|ALT_INV_ram~505_q\ <= NOT \RAM8|ram~505_q\;
\RAM8|ALT_INV_ram~489_q\ <= NOT \RAM8|ram~489_q\;
\RAM0|ALT_INV_ram~292_q\ <= NOT \RAM0|ram~292_q\;
\RAM0|ALT_INV_ram~44_q\ <= NOT \RAM0|ram~44_q\;
\RAM0|ALT_INV_ram~36_q\ <= NOT \RAM0|ram~36_q\;
\RAM0|ALT_INV_ram~565_combout\ <= NOT \RAM0|ram~565_combout\;
\RAM0|ALT_INV_ram~316_q\ <= NOT \RAM0|ram~316_q\;
\RAM0|ALT_INV_ram~308_q\ <= NOT \RAM0|ram~308_q\;
\RAM0|ALT_INV_ram~60_q\ <= NOT \RAM0|ram~60_q\;
\RAM0|ALT_INV_ram~52_q\ <= NOT \RAM0|ram~52_q\;
\RAM0|ALT_INV_ram~564_combout\ <= NOT \RAM0|ram~564_combout\;
\RAM0|ALT_INV_ram~284_q\ <= NOT \RAM0|ram~284_q\;
\RAM0|ALT_INV_ram~276_q\ <= NOT \RAM0|ram~276_q\;
\RAM0|ALT_INV_ram~28_q\ <= NOT \RAM0|ram~28_q\;
\RAM0|ALT_INV_ram~20_q\ <= NOT \RAM0|ram~20_q\;
\RAM0|ALT_INV_ram~563_combout\ <= NOT \RAM0|ram~563_combout\;
\RAM0|ALT_INV_ram~562_combout\ <= NOT \RAM0|ram~562_combout\;
\RAM0|ALT_INV_ram~524_q\ <= NOT \RAM0|ram~524_q\;
\RAM0|ALT_INV_ram~508_q\ <= NOT \RAM0|ram~508_q\;
\RAM0|ALT_INV_ram~492_q\ <= NOT \RAM0|ram~492_q\;
\RAM0|ALT_INV_ram~476_q\ <= NOT \RAM0|ram~476_q\;
\RAM0|ALT_INV_ram~561_combout\ <= NOT \RAM0|ram~561_combout\;
\RAM0|ALT_INV_ram~516_q\ <= NOT \RAM0|ram~516_q\;
\RAM0|ALT_INV_ram~500_q\ <= NOT \RAM0|ram~500_q\;
\RAM0|ALT_INV_ram~484_q\ <= NOT \RAM0|ram~484_q\;
\RAM0|ALT_INV_ram~468_q\ <= NOT \RAM0|ram~468_q\;
\RAM0|ALT_INV_ram~560_combout\ <= NOT \RAM0|ram~560_combout\;
\RAM0|ALT_INV_ram~268_q\ <= NOT \RAM0|ram~268_q\;
\RAM0|ALT_INV_ram~252_q\ <= NOT \RAM0|ram~252_q\;
\RAM0|ALT_INV_ram~236_q\ <= NOT \RAM0|ram~236_q\;
\RAM0|ALT_INV_ram~220_q\ <= NOT \RAM0|ram~220_q\;
\RAM0|ALT_INV_ram~559_combout\ <= NOT \RAM0|ram~559_combout\;
\RAM0|ALT_INV_ram~260_q\ <= NOT \RAM0|ram~260_q\;
\RAM0|ALT_INV_ram~244_q\ <= NOT \RAM0|ram~244_q\;
\RAM0|ALT_INV_ram~228_q\ <= NOT \RAM0|ram~228_q\;
\RAM0|ALT_INV_ram~212_q\ <= NOT \RAM0|ram~212_q\;
\RAM8|ALT_INV_dado_out[2]~3_combout\ <= NOT \RAM8|dado_out[2]~3_combout\;
\RAM8|ALT_INV_ram~558_combout\ <= NOT \RAM8|ram~558_combout\;
\RAM8|ALT_INV_ram~557_combout\ <= NOT \RAM8|ram~557_combout\;
\RAM8|ALT_INV_ram~331_q\ <= NOT \RAM8|ram~331_q\;
\RAM8|ALT_INV_ram~323_q\ <= NOT \RAM8|ram~323_q\;
\RAM8|ALT_INV_ram~75_q\ <= NOT \RAM8|ram~75_q\;
\RAM8|ALT_INV_ram~67_q\ <= NOT \RAM8|ram~67_q\;
\RAM8|ALT_INV_ram~556_combout\ <= NOT \RAM8|ram~556_combout\;
\RAM8|ALT_INV_ram~299_q\ <= NOT \RAM8|ram~299_q\;
\RAM8|ALT_INV_ram~291_q\ <= NOT \RAM8|ram~291_q\;
\RAM8|ALT_INV_ram~43_q\ <= NOT \RAM8|ram~43_q\;
\RAM8|ALT_INV_ram~35_q\ <= NOT \RAM8|ram~35_q\;
\RAM8|ALT_INV_ram~555_combout\ <= NOT \RAM8|ram~555_combout\;
\RAM8|ALT_INV_ram~315_q\ <= NOT \RAM8|ram~315_q\;
\RAM8|ALT_INV_ram~307_q\ <= NOT \RAM8|ram~307_q\;
\RAM8|ALT_INV_ram~59_q\ <= NOT \RAM8|ram~59_q\;
\RAM8|ALT_INV_ram~51_q\ <= NOT \RAM8|ram~51_q\;
\RAM8|ALT_INV_ram~554_combout\ <= NOT \RAM8|ram~554_combout\;
\RAM8|ALT_INV_ram~283_q\ <= NOT \RAM8|ram~283_q\;
\RAM8|ALT_INV_ram~275_q\ <= NOT \RAM8|ram~275_q\;
\RAM8|ALT_INV_ram~27_q\ <= NOT \RAM8|ram~27_q\;
\RAM8|ALT_INV_ram~19_q\ <= NOT \RAM8|ram~19_q\;
\RAM8|ALT_INV_ram~553_combout\ <= NOT \RAM8|ram~553_combout\;
\RAM8|ALT_INV_ram~552_combout\ <= NOT \RAM8|ram~552_combout\;
\RAM8|ALT_INV_ram~523_q\ <= NOT \RAM8|ram~523_q\;
\RAM8|ALT_INV_ram~507_q\ <= NOT \RAM8|ram~507_q\;
\RAM8|ALT_INV_ram~491_q\ <= NOT \RAM8|ram~491_q\;
\RAM8|ALT_INV_ram~475_q\ <= NOT \RAM8|ram~475_q\;
\RAM8|ALT_INV_ram~551_combout\ <= NOT \RAM8|ram~551_combout\;
\RAM8|ALT_INV_ram~515_q\ <= NOT \RAM8|ram~515_q\;
\RAM8|ALT_INV_ram~499_q\ <= NOT \RAM8|ram~499_q\;
\RAM8|ALT_INV_ram~483_q\ <= NOT \RAM8|ram~483_q\;
\RAM8|ALT_INV_ram~467_q\ <= NOT \RAM8|ram~467_q\;
\RAM8|ALT_INV_ram~550_combout\ <= NOT \RAM8|ram~550_combout\;
\RAM8|ALT_INV_ram~267_q\ <= NOT \RAM8|ram~267_q\;
\RAM8|ALT_INV_ram~251_q\ <= NOT \RAM8|ram~251_q\;
\RAM8|ALT_INV_ram~235_q\ <= NOT \RAM8|ram~235_q\;
\RAM8|ALT_INV_ram~219_q\ <= NOT \RAM8|ram~219_q\;
\RAM8|ALT_INV_ram~549_combout\ <= NOT \RAM8|ram~549_combout\;
\RAM8|ALT_INV_ram~259_q\ <= NOT \RAM8|ram~259_q\;
\RAM8|ALT_INV_ram~243_q\ <= NOT \RAM8|ram~243_q\;
\RAM8|ALT_INV_ram~227_q\ <= NOT \RAM8|ram~227_q\;
\RAM8|ALT_INV_ram~211_q\ <= NOT \RAM8|ram~211_q\;
\RAM4|ALT_INV_dado_out[2]~3_combout\ <= NOT \RAM4|dado_out[2]~3_combout\;
\RAM4|ALT_INV_ram~558_combout\ <= NOT \RAM4|ram~558_combout\;
\RAM4|ALT_INV_ram~557_combout\ <= NOT \RAM4|ram~557_combout\;
\RAM4|ALT_INV_ram~331_q\ <= NOT \RAM4|ram~331_q\;
\RAM4|ALT_INV_ram~323_q\ <= NOT \RAM4|ram~323_q\;
\RAM4|ALT_INV_ram~75_q\ <= NOT \RAM4|ram~75_q\;
\RAM4|ALT_INV_ram~67_q\ <= NOT \RAM4|ram~67_q\;
\RAM4|ALT_INV_ram~556_combout\ <= NOT \RAM4|ram~556_combout\;
\RAM4|ALT_INV_ram~299_q\ <= NOT \RAM4|ram~299_q\;
\RAM4|ALT_INV_ram~291_q\ <= NOT \RAM4|ram~291_q\;
\RAM4|ALT_INV_ram~43_q\ <= NOT \RAM4|ram~43_q\;
\RAM4|ALT_INV_ram~35_q\ <= NOT \RAM4|ram~35_q\;
\RAM4|ALT_INV_ram~555_combout\ <= NOT \RAM4|ram~555_combout\;
\RAM4|ALT_INV_ram~315_q\ <= NOT \RAM4|ram~315_q\;
\RAM4|ALT_INV_ram~307_q\ <= NOT \RAM4|ram~307_q\;
\RAM4|ALT_INV_ram~59_q\ <= NOT \RAM4|ram~59_q\;
\RAM4|ALT_INV_ram~51_q\ <= NOT \RAM4|ram~51_q\;
\RAM4|ALT_INV_ram~554_combout\ <= NOT \RAM4|ram~554_combout\;
\RAM4|ALT_INV_ram~283_q\ <= NOT \RAM4|ram~283_q\;
\RAM4|ALT_INV_ram~275_q\ <= NOT \RAM4|ram~275_q\;
\RAM4|ALT_INV_ram~27_q\ <= NOT \RAM4|ram~27_q\;
\RAM4|ALT_INV_ram~19_q\ <= NOT \RAM4|ram~19_q\;
\RAM4|ALT_INV_ram~553_combout\ <= NOT \RAM4|ram~553_combout\;
\RAM4|ALT_INV_ram~552_combout\ <= NOT \RAM4|ram~552_combout\;
\RAM4|ALT_INV_ram~523_q\ <= NOT \RAM4|ram~523_q\;
\RAM4|ALT_INV_ram~507_q\ <= NOT \RAM4|ram~507_q\;
\RAM4|ALT_INV_ram~491_q\ <= NOT \RAM4|ram~491_q\;
\RAM4|ALT_INV_ram~475_q\ <= NOT \RAM4|ram~475_q\;
\RAM4|ALT_INV_ram~551_combout\ <= NOT \RAM4|ram~551_combout\;
\RAM4|ALT_INV_ram~515_q\ <= NOT \RAM4|ram~515_q\;
\RAM4|ALT_INV_ram~499_q\ <= NOT \RAM4|ram~499_q\;
\RAM4|ALT_INV_ram~483_q\ <= NOT \RAM4|ram~483_q\;
\RAM4|ALT_INV_ram~467_q\ <= NOT \RAM4|ram~467_q\;
\RAM4|ALT_INV_ram~550_combout\ <= NOT \RAM4|ram~550_combout\;
\RAM4|ALT_INV_ram~267_q\ <= NOT \RAM4|ram~267_q\;
\RAM4|ALT_INV_ram~251_q\ <= NOT \RAM4|ram~251_q\;
\RAM4|ALT_INV_ram~235_q\ <= NOT \RAM4|ram~235_q\;
\RAM4|ALT_INV_ram~219_q\ <= NOT \RAM4|ram~219_q\;
\RAM4|ALT_INV_ram~549_combout\ <= NOT \RAM4|ram~549_combout\;
\RAM4|ALT_INV_ram~259_q\ <= NOT \RAM4|ram~259_q\;
\RAM4|ALT_INV_ram~243_q\ <= NOT \RAM4|ram~243_q\;
\RAM4|ALT_INV_ram~227_q\ <= NOT \RAM4|ram~227_q\;
\RAM4|ALT_INV_ram~211_q\ <= NOT \RAM4|ram~211_q\;
\RAM0|ALT_INV_dado_out[2]~14_combout\ <= NOT \RAM0|dado_out[2]~14_combout\;
\RAM0|ALT_INV_ram~558_combout\ <= NOT \RAM0|ram~558_combout\;
\RAM0|ALT_INV_ram~557_combout\ <= NOT \RAM0|ram~557_combout\;
\RAM0|ALT_INV_ram~331_q\ <= NOT \RAM0|ram~331_q\;
\RAM0|ALT_INV_ram~323_q\ <= NOT \RAM0|ram~323_q\;
\RAM0|ALT_INV_ram~75_q\ <= NOT \RAM0|ram~75_q\;
\RAM0|ALT_INV_ram~67_q\ <= NOT \RAM0|ram~67_q\;
\RAM0|ALT_INV_ram~556_combout\ <= NOT \RAM0|ram~556_combout\;
\RAM0|ALT_INV_ram~299_q\ <= NOT \RAM0|ram~299_q\;
\RAM0|ALT_INV_ram~291_q\ <= NOT \RAM0|ram~291_q\;
\RAM0|ALT_INV_ram~43_q\ <= NOT \RAM0|ram~43_q\;
\RAM0|ALT_INV_ram~35_q\ <= NOT \RAM0|ram~35_q\;
\RAM0|ALT_INV_ram~555_combout\ <= NOT \RAM0|ram~555_combout\;
\RAM0|ALT_INV_ram~315_q\ <= NOT \RAM0|ram~315_q\;
\RAM0|ALT_INV_ram~307_q\ <= NOT \RAM0|ram~307_q\;
\RAM0|ALT_INV_ram~59_q\ <= NOT \RAM0|ram~59_q\;
\RAM0|ALT_INV_ram~51_q\ <= NOT \RAM0|ram~51_q\;
\RAM0|ALT_INV_ram~554_combout\ <= NOT \RAM0|ram~554_combout\;
\RAM0|ALT_INV_ram~283_q\ <= NOT \RAM0|ram~283_q\;
\RAM0|ALT_INV_ram~275_q\ <= NOT \RAM0|ram~275_q\;
\RAM0|ALT_INV_ram~27_q\ <= NOT \RAM0|ram~27_q\;
\RAM0|ALT_INV_ram~19_q\ <= NOT \RAM0|ram~19_q\;
\RAM0|ALT_INV_ram~553_combout\ <= NOT \RAM0|ram~553_combout\;
\RAM0|ALT_INV_ram~552_combout\ <= NOT \RAM0|ram~552_combout\;
\RAM0|ALT_INV_ram~523_q\ <= NOT \RAM0|ram~523_q\;
\RAM0|ALT_INV_ram~507_q\ <= NOT \RAM0|ram~507_q\;
\RAM0|ALT_INV_ram~491_q\ <= NOT \RAM0|ram~491_q\;
\RAM0|ALT_INV_ram~475_q\ <= NOT \RAM0|ram~475_q\;
\RAM0|ALT_INV_ram~551_combout\ <= NOT \RAM0|ram~551_combout\;
\RAM0|ALT_INV_ram~515_q\ <= NOT \RAM0|ram~515_q\;
\RAM0|ALT_INV_ram~499_q\ <= NOT \RAM0|ram~499_q\;
\RAM0|ALT_INV_ram~483_q\ <= NOT \RAM0|ram~483_q\;
\RAM0|ALT_INV_ram~467_q\ <= NOT \RAM0|ram~467_q\;
\RAM0|ALT_INV_ram~550_combout\ <= NOT \RAM0|ram~550_combout\;
\RAM0|ALT_INV_ram~267_q\ <= NOT \RAM0|ram~267_q\;
\RAM0|ALT_INV_ram~251_q\ <= NOT \RAM0|ram~251_q\;
\RAM0|ALT_INV_ram~235_q\ <= NOT \RAM0|ram~235_q\;
\RAM0|ALT_INV_ram~219_q\ <= NOT \RAM0|ram~219_q\;
\RAM0|ALT_INV_ram~549_combout\ <= NOT \RAM0|ram~549_combout\;
\RAM0|ALT_INV_ram~259_q\ <= NOT \RAM0|ram~259_q\;
\RAM0|ALT_INV_ram~243_q\ <= NOT \RAM0|ram~243_q\;
\RAM0|ALT_INV_ram~227_q\ <= NOT \RAM0|ram~227_q\;
\RAM0|ALT_INV_ram~211_q\ <= NOT \RAM0|ram~211_q\;
\RAM4|ALT_INV_ram~277_q\ <= NOT \RAM4|ram~277_q\;
\RAM4|ALT_INV_ram~29_q\ <= NOT \RAM4|ram~29_q\;
\RAM4|ALT_INV_ram~21_q\ <= NOT \RAM4|ram~21_q\;
\RAM4|ALT_INV_ram~573_combout\ <= NOT \RAM4|ram~573_combout\;
\RAM4|ALT_INV_ram~572_combout\ <= NOT \RAM4|ram~572_combout\;
\RAM4|ALT_INV_ram~525_q\ <= NOT \RAM4|ram~525_q\;
\RAM4|ALT_INV_ram~509_q\ <= NOT \RAM4|ram~509_q\;
\RAM4|ALT_INV_ram~493_q\ <= NOT \RAM4|ram~493_q\;
\RAM4|ALT_INV_ram~477_q\ <= NOT \RAM4|ram~477_q\;
\RAM4|ALT_INV_ram~571_combout\ <= NOT \RAM4|ram~571_combout\;
\RAM4|ALT_INV_ram~517_q\ <= NOT \RAM4|ram~517_q\;
\RAM4|ALT_INV_ram~501_q\ <= NOT \RAM4|ram~501_q\;
\RAM4|ALT_INV_ram~485_q\ <= NOT \RAM4|ram~485_q\;
\RAM4|ALT_INV_ram~469_q\ <= NOT \RAM4|ram~469_q\;
\RAM4|ALT_INV_ram~570_combout\ <= NOT \RAM4|ram~570_combout\;
\RAM4|ALT_INV_ram~269_q\ <= NOT \RAM4|ram~269_q\;
\RAM4|ALT_INV_ram~253_q\ <= NOT \RAM4|ram~253_q\;
\RAM4|ALT_INV_ram~237_q\ <= NOT \RAM4|ram~237_q\;
\RAM4|ALT_INV_ram~221_q\ <= NOT \RAM4|ram~221_q\;
\RAM4|ALT_INV_ram~569_combout\ <= NOT \RAM4|ram~569_combout\;
\RAM4|ALT_INV_ram~261_q\ <= NOT \RAM4|ram~261_q\;
\RAM4|ALT_INV_ram~245_q\ <= NOT \RAM4|ram~245_q\;
\RAM4|ALT_INV_ram~229_q\ <= NOT \RAM4|ram~229_q\;
\RAM4|ALT_INV_ram~213_q\ <= NOT \RAM4|ram~213_q\;
\RAM0|ALT_INV_dado_out[4]~18_combout\ <= NOT \RAM0|dado_out[4]~18_combout\;
\RAM0|ALT_INV_ram~578_combout\ <= NOT \RAM0|ram~578_combout\;
\RAM0|ALT_INV_ram~577_combout\ <= NOT \RAM0|ram~577_combout\;
\RAM0|ALT_INV_ram~333_q\ <= NOT \RAM0|ram~333_q\;
\RAM0|ALT_INV_ram~325_q\ <= NOT \RAM0|ram~325_q\;
\RAM0|ALT_INV_ram~77_q\ <= NOT \RAM0|ram~77_q\;
\RAM0|ALT_INV_ram~69_q\ <= NOT \RAM0|ram~69_q\;
\RAM0|ALT_INV_ram~576_combout\ <= NOT \RAM0|ram~576_combout\;
\RAM0|ALT_INV_ram~301_q\ <= NOT \RAM0|ram~301_q\;
\RAM0|ALT_INV_ram~293_q\ <= NOT \RAM0|ram~293_q\;
\RAM0|ALT_INV_ram~45_q\ <= NOT \RAM0|ram~45_q\;
\RAM0|ALT_INV_ram~37_q\ <= NOT \RAM0|ram~37_q\;
\RAM0|ALT_INV_ram~575_combout\ <= NOT \RAM0|ram~575_combout\;
\RAM0|ALT_INV_ram~317_q\ <= NOT \RAM0|ram~317_q\;
\RAM0|ALT_INV_ram~309_q\ <= NOT \RAM0|ram~309_q\;
\RAM0|ALT_INV_ram~61_q\ <= NOT \RAM0|ram~61_q\;
\RAM0|ALT_INV_ram~53_q\ <= NOT \RAM0|ram~53_q\;
\RAM0|ALT_INV_ram~574_combout\ <= NOT \RAM0|ram~574_combout\;
\RAM0|ALT_INV_ram~285_q\ <= NOT \RAM0|ram~285_q\;
\RAM0|ALT_INV_ram~277_q\ <= NOT \RAM0|ram~277_q\;
\RAM0|ALT_INV_ram~29_q\ <= NOT \RAM0|ram~29_q\;
\RAM0|ALT_INV_ram~21_q\ <= NOT \RAM0|ram~21_q\;
\RAM0|ALT_INV_ram~573_combout\ <= NOT \RAM0|ram~573_combout\;
\RAM0|ALT_INV_ram~572_combout\ <= NOT \RAM0|ram~572_combout\;
\RAM0|ALT_INV_ram~525_q\ <= NOT \RAM0|ram~525_q\;
\RAM0|ALT_INV_ram~509_q\ <= NOT \RAM0|ram~509_q\;
\RAM0|ALT_INV_ram~493_q\ <= NOT \RAM0|ram~493_q\;
\RAM0|ALT_INV_ram~477_q\ <= NOT \RAM0|ram~477_q\;
\RAM0|ALT_INV_ram~571_combout\ <= NOT \RAM0|ram~571_combout\;
\RAM0|ALT_INV_ram~517_q\ <= NOT \RAM0|ram~517_q\;
\RAM0|ALT_INV_ram~501_q\ <= NOT \RAM0|ram~501_q\;
\RAM0|ALT_INV_ram~485_q\ <= NOT \RAM0|ram~485_q\;
\RAM0|ALT_INV_ram~469_q\ <= NOT \RAM0|ram~469_q\;
\RAM0|ALT_INV_ram~570_combout\ <= NOT \RAM0|ram~570_combout\;
\RAM0|ALT_INV_ram~269_q\ <= NOT \RAM0|ram~269_q\;
\RAM0|ALT_INV_ram~253_q\ <= NOT \RAM0|ram~253_q\;
\RAM0|ALT_INV_ram~237_q\ <= NOT \RAM0|ram~237_q\;
\RAM0|ALT_INV_ram~221_q\ <= NOT \RAM0|ram~221_q\;
\RAM0|ALT_INV_ram~569_combout\ <= NOT \RAM0|ram~569_combout\;
\RAM0|ALT_INV_ram~261_q\ <= NOT \RAM0|ram~261_q\;
\RAM0|ALT_INV_ram~245_q\ <= NOT \RAM0|ram~245_q\;
\RAM0|ALT_INV_ram~229_q\ <= NOT \RAM0|ram~229_q\;
\RAM0|ALT_INV_ram~213_q\ <= NOT \RAM0|ram~213_q\;
\RAM8|ALT_INV_dado_out[3]~4_combout\ <= NOT \RAM8|dado_out[3]~4_combout\;
\RAM8|ALT_INV_ram~568_combout\ <= NOT \RAM8|ram~568_combout\;
\RAM8|ALT_INV_ram~567_combout\ <= NOT \RAM8|ram~567_combout\;
\RAM8|ALT_INV_ram~332_q\ <= NOT \RAM8|ram~332_q\;
\RAM8|ALT_INV_ram~324_q\ <= NOT \RAM8|ram~324_q\;
\RAM8|ALT_INV_ram~76_q\ <= NOT \RAM8|ram~76_q\;
\RAM8|ALT_INV_ram~68_q\ <= NOT \RAM8|ram~68_q\;
\RAM8|ALT_INV_ram~566_combout\ <= NOT \RAM8|ram~566_combout\;
\RAM8|ALT_INV_ram~300_q\ <= NOT \RAM8|ram~300_q\;
\RAM8|ALT_INV_ram~292_q\ <= NOT \RAM8|ram~292_q\;
\RAM8|ALT_INV_ram~44_q\ <= NOT \RAM8|ram~44_q\;
\RAM8|ALT_INV_ram~36_q\ <= NOT \RAM8|ram~36_q\;
\RAM8|ALT_INV_ram~565_combout\ <= NOT \RAM8|ram~565_combout\;
\RAM8|ALT_INV_ram~316_q\ <= NOT \RAM8|ram~316_q\;
\RAM8|ALT_INV_ram~308_q\ <= NOT \RAM8|ram~308_q\;
\RAM8|ALT_INV_ram~60_q\ <= NOT \RAM8|ram~60_q\;
\RAM8|ALT_INV_ram~52_q\ <= NOT \RAM8|ram~52_q\;
\RAM8|ALT_INV_ram~564_combout\ <= NOT \RAM8|ram~564_combout\;
\RAM8|ALT_INV_ram~284_q\ <= NOT \RAM8|ram~284_q\;
\RAM8|ALT_INV_ram~276_q\ <= NOT \RAM8|ram~276_q\;
\RAM8|ALT_INV_ram~28_q\ <= NOT \RAM8|ram~28_q\;
\RAM8|ALT_INV_ram~20_q\ <= NOT \RAM8|ram~20_q\;
\RAM8|ALT_INV_ram~563_combout\ <= NOT \RAM8|ram~563_combout\;
\RAM8|ALT_INV_ram~562_combout\ <= NOT \RAM8|ram~562_combout\;
\RAM8|ALT_INV_ram~524_q\ <= NOT \RAM8|ram~524_q\;
\RAM8|ALT_INV_ram~508_q\ <= NOT \RAM8|ram~508_q\;
\RAM8|ALT_INV_ram~492_q\ <= NOT \RAM8|ram~492_q\;
\RAM8|ALT_INV_ram~476_q\ <= NOT \RAM8|ram~476_q\;
\RAM8|ALT_INV_ram~561_combout\ <= NOT \RAM8|ram~561_combout\;
\RAM8|ALT_INV_ram~516_q\ <= NOT \RAM8|ram~516_q\;
\RAM8|ALT_INV_ram~500_q\ <= NOT \RAM8|ram~500_q\;
\RAM8|ALT_INV_ram~484_q\ <= NOT \RAM8|ram~484_q\;
\RAM8|ALT_INV_ram~468_q\ <= NOT \RAM8|ram~468_q\;
\RAM8|ALT_INV_ram~560_combout\ <= NOT \RAM8|ram~560_combout\;
\RAM8|ALT_INV_ram~268_q\ <= NOT \RAM8|ram~268_q\;
\RAM8|ALT_INV_ram~252_q\ <= NOT \RAM8|ram~252_q\;
\RAM8|ALT_INV_ram~236_q\ <= NOT \RAM8|ram~236_q\;
\RAM8|ALT_INV_ram~220_q\ <= NOT \RAM8|ram~220_q\;
\RAM8|ALT_INV_ram~559_combout\ <= NOT \RAM8|ram~559_combout\;
\RAM8|ALT_INV_ram~260_q\ <= NOT \RAM8|ram~260_q\;
\RAM8|ALT_INV_ram~244_q\ <= NOT \RAM8|ram~244_q\;
\RAM8|ALT_INV_ram~228_q\ <= NOT \RAM8|ram~228_q\;
\RAM8|ALT_INV_ram~212_q\ <= NOT \RAM8|ram~212_q\;
\RAM4|ALT_INV_dado_out[3]~4_combout\ <= NOT \RAM4|dado_out[3]~4_combout\;
\RAM4|ALT_INV_ram~568_combout\ <= NOT \RAM4|ram~568_combout\;
\RAM4|ALT_INV_ram~567_combout\ <= NOT \RAM4|ram~567_combout\;
\RAM4|ALT_INV_ram~332_q\ <= NOT \RAM4|ram~332_q\;
\RAM4|ALT_INV_ram~324_q\ <= NOT \RAM4|ram~324_q\;
\RAM4|ALT_INV_ram~76_q\ <= NOT \RAM4|ram~76_q\;
\RAM4|ALT_INV_ram~68_q\ <= NOT \RAM4|ram~68_q\;
\RAM4|ALT_INV_ram~566_combout\ <= NOT \RAM4|ram~566_combout\;
\RAM4|ALT_INV_ram~300_q\ <= NOT \RAM4|ram~300_q\;
\RAM4|ALT_INV_ram~292_q\ <= NOT \RAM4|ram~292_q\;
\RAM4|ALT_INV_ram~44_q\ <= NOT \RAM4|ram~44_q\;
\RAM4|ALT_INV_ram~36_q\ <= NOT \RAM4|ram~36_q\;
\RAM4|ALT_INV_ram~565_combout\ <= NOT \RAM4|ram~565_combout\;
\RAM4|ALT_INV_ram~316_q\ <= NOT \RAM4|ram~316_q\;
\RAM4|ALT_INV_ram~308_q\ <= NOT \RAM4|ram~308_q\;
\RAM4|ALT_INV_ram~60_q\ <= NOT \RAM4|ram~60_q\;
\RAM4|ALT_INV_ram~52_q\ <= NOT \RAM4|ram~52_q\;
\RAM4|ALT_INV_ram~564_combout\ <= NOT \RAM4|ram~564_combout\;
\RAM4|ALT_INV_ram~284_q\ <= NOT \RAM4|ram~284_q\;
\RAM4|ALT_INV_ram~276_q\ <= NOT \RAM4|ram~276_q\;
\RAM4|ALT_INV_ram~28_q\ <= NOT \RAM4|ram~28_q\;
\RAM4|ALT_INV_ram~20_q\ <= NOT \RAM4|ram~20_q\;
\RAM4|ALT_INV_ram~563_combout\ <= NOT \RAM4|ram~563_combout\;
\RAM4|ALT_INV_ram~562_combout\ <= NOT \RAM4|ram~562_combout\;
\RAM4|ALT_INV_ram~524_q\ <= NOT \RAM4|ram~524_q\;
\RAM4|ALT_INV_ram~508_q\ <= NOT \RAM4|ram~508_q\;
\RAM4|ALT_INV_ram~492_q\ <= NOT \RAM4|ram~492_q\;
\RAM4|ALT_INV_ram~476_q\ <= NOT \RAM4|ram~476_q\;
\RAM4|ALT_INV_ram~561_combout\ <= NOT \RAM4|ram~561_combout\;
\RAM4|ALT_INV_ram~516_q\ <= NOT \RAM4|ram~516_q\;
\RAM4|ALT_INV_ram~500_q\ <= NOT \RAM4|ram~500_q\;
\RAM4|ALT_INV_ram~484_q\ <= NOT \RAM4|ram~484_q\;
\RAM4|ALT_INV_ram~468_q\ <= NOT \RAM4|ram~468_q\;
\RAM4|ALT_INV_ram~560_combout\ <= NOT \RAM4|ram~560_combout\;
\RAM4|ALT_INV_ram~268_q\ <= NOT \RAM4|ram~268_q\;
\RAM4|ALT_INV_ram~252_q\ <= NOT \RAM4|ram~252_q\;
\RAM4|ALT_INV_ram~236_q\ <= NOT \RAM4|ram~236_q\;
\RAM4|ALT_INV_ram~220_q\ <= NOT \RAM4|ram~220_q\;
\RAM4|ALT_INV_ram~559_combout\ <= NOT \RAM4|ram~559_combout\;
\RAM4|ALT_INV_ram~260_q\ <= NOT \RAM4|ram~260_q\;
\RAM4|ALT_INV_ram~244_q\ <= NOT \RAM4|ram~244_q\;
\RAM4|ALT_INV_ram~228_q\ <= NOT \RAM4|ram~228_q\;
\RAM4|ALT_INV_ram~212_q\ <= NOT \RAM4|ram~212_q\;
\RAM0|ALT_INV_dado_out[3]~16_combout\ <= NOT \RAM0|dado_out[3]~16_combout\;
\RAM0|ALT_INV_ram~568_combout\ <= NOT \RAM0|ram~568_combout\;
\RAM0|ALT_INV_ram~567_combout\ <= NOT \RAM0|ram~567_combout\;
\RAM0|ALT_INV_ram~332_q\ <= NOT \RAM0|ram~332_q\;
\RAM0|ALT_INV_ram~324_q\ <= NOT \RAM0|ram~324_q\;
\RAM0|ALT_INV_ram~76_q\ <= NOT \RAM0|ram~76_q\;
\RAM0|ALT_INV_ram~68_q\ <= NOT \RAM0|ram~68_q\;
\RAM0|ALT_INV_ram~566_combout\ <= NOT \RAM0|ram~566_combout\;
\RAM0|ALT_INV_ram~300_q\ <= NOT \RAM0|ram~300_q\;
\RAM8|ALT_INV_ram~518_q\ <= NOT \RAM8|ram~518_q\;
\RAM8|ALT_INV_ram~502_q\ <= NOT \RAM8|ram~502_q\;
\RAM8|ALT_INV_ram~486_q\ <= NOT \RAM8|ram~486_q\;
\RAM8|ALT_INV_ram~470_q\ <= NOT \RAM8|ram~470_q\;
\RAM8|ALT_INV_ram~580_combout\ <= NOT \RAM8|ram~580_combout\;
\RAM8|ALT_INV_ram~270_q\ <= NOT \RAM8|ram~270_q\;
\RAM8|ALT_INV_ram~254_q\ <= NOT \RAM8|ram~254_q\;
\RAM8|ALT_INV_ram~238_q\ <= NOT \RAM8|ram~238_q\;
\RAM8|ALT_INV_ram~222_q\ <= NOT \RAM8|ram~222_q\;
\RAM8|ALT_INV_ram~579_combout\ <= NOT \RAM8|ram~579_combout\;
\RAM8|ALT_INV_ram~262_q\ <= NOT \RAM8|ram~262_q\;
\RAM8|ALT_INV_ram~246_q\ <= NOT \RAM8|ram~246_q\;
\RAM8|ALT_INV_ram~230_q\ <= NOT \RAM8|ram~230_q\;
\RAM8|ALT_INV_ram~214_q\ <= NOT \RAM8|ram~214_q\;
\RAM4|ALT_INV_dado_out[5]~6_combout\ <= NOT \RAM4|dado_out[5]~6_combout\;
\RAM4|ALT_INV_ram~588_combout\ <= NOT \RAM4|ram~588_combout\;
\RAM4|ALT_INV_ram~587_combout\ <= NOT \RAM4|ram~587_combout\;
\RAM4|ALT_INV_ram~334_q\ <= NOT \RAM4|ram~334_q\;
\RAM4|ALT_INV_ram~326_q\ <= NOT \RAM4|ram~326_q\;
\RAM4|ALT_INV_ram~78_q\ <= NOT \RAM4|ram~78_q\;
\RAM4|ALT_INV_ram~70_q\ <= NOT \RAM4|ram~70_q\;
\RAM4|ALT_INV_ram~586_combout\ <= NOT \RAM4|ram~586_combout\;
\RAM4|ALT_INV_ram~302_q\ <= NOT \RAM4|ram~302_q\;
\RAM4|ALT_INV_ram~294_q\ <= NOT \RAM4|ram~294_q\;
\RAM4|ALT_INV_ram~46_q\ <= NOT \RAM4|ram~46_q\;
\RAM4|ALT_INV_ram~38_q\ <= NOT \RAM4|ram~38_q\;
\RAM4|ALT_INV_ram~585_combout\ <= NOT \RAM4|ram~585_combout\;
\RAM4|ALT_INV_ram~318_q\ <= NOT \RAM4|ram~318_q\;
\RAM4|ALT_INV_ram~310_q\ <= NOT \RAM4|ram~310_q\;
\RAM4|ALT_INV_ram~62_q\ <= NOT \RAM4|ram~62_q\;
\RAM4|ALT_INV_ram~54_q\ <= NOT \RAM4|ram~54_q\;
\RAM4|ALT_INV_ram~584_combout\ <= NOT \RAM4|ram~584_combout\;
\RAM4|ALT_INV_ram~286_q\ <= NOT \RAM4|ram~286_q\;
\RAM4|ALT_INV_ram~278_q\ <= NOT \RAM4|ram~278_q\;
\RAM4|ALT_INV_ram~30_q\ <= NOT \RAM4|ram~30_q\;
\RAM4|ALT_INV_ram~22_q\ <= NOT \RAM4|ram~22_q\;
\RAM4|ALT_INV_ram~583_combout\ <= NOT \RAM4|ram~583_combout\;
\RAM4|ALT_INV_ram~582_combout\ <= NOT \RAM4|ram~582_combout\;
\RAM4|ALT_INV_ram~526_q\ <= NOT \RAM4|ram~526_q\;
\RAM4|ALT_INV_ram~510_q\ <= NOT \RAM4|ram~510_q\;
\RAM4|ALT_INV_ram~494_q\ <= NOT \RAM4|ram~494_q\;
\RAM4|ALT_INV_ram~478_q\ <= NOT \RAM4|ram~478_q\;
\RAM4|ALT_INV_ram~581_combout\ <= NOT \RAM4|ram~581_combout\;
\RAM4|ALT_INV_ram~518_q\ <= NOT \RAM4|ram~518_q\;
\RAM4|ALT_INV_ram~502_q\ <= NOT \RAM4|ram~502_q\;
\RAM4|ALT_INV_ram~486_q\ <= NOT \RAM4|ram~486_q\;
\RAM4|ALT_INV_ram~470_q\ <= NOT \RAM4|ram~470_q\;
\RAM4|ALT_INV_ram~580_combout\ <= NOT \RAM4|ram~580_combout\;
\RAM4|ALT_INV_ram~270_q\ <= NOT \RAM4|ram~270_q\;
\RAM4|ALT_INV_ram~254_q\ <= NOT \RAM4|ram~254_q\;
\RAM4|ALT_INV_ram~238_q\ <= NOT \RAM4|ram~238_q\;
\RAM4|ALT_INV_ram~222_q\ <= NOT \RAM4|ram~222_q\;
\RAM4|ALT_INV_ram~579_combout\ <= NOT \RAM4|ram~579_combout\;
\RAM4|ALT_INV_ram~262_q\ <= NOT \RAM4|ram~262_q\;
\RAM4|ALT_INV_ram~246_q\ <= NOT \RAM4|ram~246_q\;
\RAM4|ALT_INV_ram~230_q\ <= NOT \RAM4|ram~230_q\;
\RAM4|ALT_INV_ram~214_q\ <= NOT \RAM4|ram~214_q\;
\RAM0|ALT_INV_dado_out[5]~20_combout\ <= NOT \RAM0|dado_out[5]~20_combout\;
\RAM0|ALT_INV_ram~588_combout\ <= NOT \RAM0|ram~588_combout\;
\RAM0|ALT_INV_ram~587_combout\ <= NOT \RAM0|ram~587_combout\;
\RAM0|ALT_INV_ram~334_q\ <= NOT \RAM0|ram~334_q\;
\RAM0|ALT_INV_ram~326_q\ <= NOT \RAM0|ram~326_q\;
\RAM0|ALT_INV_ram~78_q\ <= NOT \RAM0|ram~78_q\;
\RAM0|ALT_INV_ram~70_q\ <= NOT \RAM0|ram~70_q\;
\RAM0|ALT_INV_ram~586_combout\ <= NOT \RAM0|ram~586_combout\;
\RAM0|ALT_INV_ram~302_q\ <= NOT \RAM0|ram~302_q\;
\RAM0|ALT_INV_ram~294_q\ <= NOT \RAM0|ram~294_q\;
\RAM0|ALT_INV_ram~46_q\ <= NOT \RAM0|ram~46_q\;
\RAM0|ALT_INV_ram~38_q\ <= NOT \RAM0|ram~38_q\;
\RAM0|ALT_INV_ram~585_combout\ <= NOT \RAM0|ram~585_combout\;
\RAM0|ALT_INV_ram~318_q\ <= NOT \RAM0|ram~318_q\;
\RAM0|ALT_INV_ram~310_q\ <= NOT \RAM0|ram~310_q\;
\RAM0|ALT_INV_ram~62_q\ <= NOT \RAM0|ram~62_q\;
\RAM0|ALT_INV_ram~54_q\ <= NOT \RAM0|ram~54_q\;
\RAM0|ALT_INV_ram~584_combout\ <= NOT \RAM0|ram~584_combout\;
\RAM0|ALT_INV_ram~286_q\ <= NOT \RAM0|ram~286_q\;
\RAM0|ALT_INV_ram~278_q\ <= NOT \RAM0|ram~278_q\;
\RAM0|ALT_INV_ram~30_q\ <= NOT \RAM0|ram~30_q\;
\RAM0|ALT_INV_ram~22_q\ <= NOT \RAM0|ram~22_q\;
\RAM0|ALT_INV_ram~583_combout\ <= NOT \RAM0|ram~583_combout\;
\RAM0|ALT_INV_ram~582_combout\ <= NOT \RAM0|ram~582_combout\;
\RAM0|ALT_INV_ram~526_q\ <= NOT \RAM0|ram~526_q\;
\RAM0|ALT_INV_ram~510_q\ <= NOT \RAM0|ram~510_q\;
\RAM0|ALT_INV_ram~494_q\ <= NOT \RAM0|ram~494_q\;
\RAM0|ALT_INV_ram~478_q\ <= NOT \RAM0|ram~478_q\;
\RAM0|ALT_INV_ram~581_combout\ <= NOT \RAM0|ram~581_combout\;
\RAM0|ALT_INV_ram~518_q\ <= NOT \RAM0|ram~518_q\;
\RAM0|ALT_INV_ram~502_q\ <= NOT \RAM0|ram~502_q\;
\RAM0|ALT_INV_ram~486_q\ <= NOT \RAM0|ram~486_q\;
\RAM0|ALT_INV_ram~470_q\ <= NOT \RAM0|ram~470_q\;
\RAM0|ALT_INV_ram~580_combout\ <= NOT \RAM0|ram~580_combout\;
\RAM0|ALT_INV_ram~270_q\ <= NOT \RAM0|ram~270_q\;
\RAM0|ALT_INV_ram~254_q\ <= NOT \RAM0|ram~254_q\;
\RAM0|ALT_INV_ram~238_q\ <= NOT \RAM0|ram~238_q\;
\RAM0|ALT_INV_ram~222_q\ <= NOT \RAM0|ram~222_q\;
\RAM0|ALT_INV_ram~579_combout\ <= NOT \RAM0|ram~579_combout\;
\RAM0|ALT_INV_ram~262_q\ <= NOT \RAM0|ram~262_q\;
\RAM0|ALT_INV_ram~246_q\ <= NOT \RAM0|ram~246_q\;
\RAM0|ALT_INV_ram~230_q\ <= NOT \RAM0|ram~230_q\;
\RAM0|ALT_INV_ram~214_q\ <= NOT \RAM0|ram~214_q\;
\RAM8|ALT_INV_dado_out[4]~5_combout\ <= NOT \RAM8|dado_out[4]~5_combout\;
\RAM8|ALT_INV_ram~578_combout\ <= NOT \RAM8|ram~578_combout\;
\RAM8|ALT_INV_ram~577_combout\ <= NOT \RAM8|ram~577_combout\;
\RAM8|ALT_INV_ram~333_q\ <= NOT \RAM8|ram~333_q\;
\RAM8|ALT_INV_ram~325_q\ <= NOT \RAM8|ram~325_q\;
\RAM8|ALT_INV_ram~77_q\ <= NOT \RAM8|ram~77_q\;
\RAM8|ALT_INV_ram~69_q\ <= NOT \RAM8|ram~69_q\;
\RAM8|ALT_INV_ram~576_combout\ <= NOT \RAM8|ram~576_combout\;
\RAM8|ALT_INV_ram~301_q\ <= NOT \RAM8|ram~301_q\;
\RAM8|ALT_INV_ram~293_q\ <= NOT \RAM8|ram~293_q\;
\RAM8|ALT_INV_ram~45_q\ <= NOT \RAM8|ram~45_q\;
\RAM8|ALT_INV_ram~37_q\ <= NOT \RAM8|ram~37_q\;
\RAM8|ALT_INV_ram~575_combout\ <= NOT \RAM8|ram~575_combout\;
\RAM8|ALT_INV_ram~317_q\ <= NOT \RAM8|ram~317_q\;
\RAM8|ALT_INV_ram~309_q\ <= NOT \RAM8|ram~309_q\;
\RAM8|ALT_INV_ram~61_q\ <= NOT \RAM8|ram~61_q\;
\RAM8|ALT_INV_ram~53_q\ <= NOT \RAM8|ram~53_q\;
\RAM8|ALT_INV_ram~574_combout\ <= NOT \RAM8|ram~574_combout\;
\RAM8|ALT_INV_ram~285_q\ <= NOT \RAM8|ram~285_q\;
\RAM8|ALT_INV_ram~277_q\ <= NOT \RAM8|ram~277_q\;
\RAM8|ALT_INV_ram~29_q\ <= NOT \RAM8|ram~29_q\;
\RAM8|ALT_INV_ram~21_q\ <= NOT \RAM8|ram~21_q\;
\RAM8|ALT_INV_ram~573_combout\ <= NOT \RAM8|ram~573_combout\;
\RAM8|ALT_INV_ram~572_combout\ <= NOT \RAM8|ram~572_combout\;
\RAM8|ALT_INV_ram~525_q\ <= NOT \RAM8|ram~525_q\;
\RAM8|ALT_INV_ram~509_q\ <= NOT \RAM8|ram~509_q\;
\RAM8|ALT_INV_ram~493_q\ <= NOT \RAM8|ram~493_q\;
\RAM8|ALT_INV_ram~477_q\ <= NOT \RAM8|ram~477_q\;
\RAM8|ALT_INV_ram~571_combout\ <= NOT \RAM8|ram~571_combout\;
\RAM8|ALT_INV_ram~517_q\ <= NOT \RAM8|ram~517_q\;
\RAM8|ALT_INV_ram~501_q\ <= NOT \RAM8|ram~501_q\;
\RAM8|ALT_INV_ram~485_q\ <= NOT \RAM8|ram~485_q\;
\RAM8|ALT_INV_ram~469_q\ <= NOT \RAM8|ram~469_q\;
\RAM8|ALT_INV_ram~570_combout\ <= NOT \RAM8|ram~570_combout\;
\RAM8|ALT_INV_ram~269_q\ <= NOT \RAM8|ram~269_q\;
\RAM8|ALT_INV_ram~253_q\ <= NOT \RAM8|ram~253_q\;
\RAM8|ALT_INV_ram~237_q\ <= NOT \RAM8|ram~237_q\;
\RAM8|ALT_INV_ram~221_q\ <= NOT \RAM8|ram~221_q\;
\RAM8|ALT_INV_ram~569_combout\ <= NOT \RAM8|ram~569_combout\;
\RAM8|ALT_INV_ram~261_q\ <= NOT \RAM8|ram~261_q\;
\RAM8|ALT_INV_ram~245_q\ <= NOT \RAM8|ram~245_q\;
\RAM8|ALT_INV_ram~229_q\ <= NOT \RAM8|ram~229_q\;
\RAM8|ALT_INV_ram~213_q\ <= NOT \RAM8|ram~213_q\;
\RAM4|ALT_INV_dado_out[4]~5_combout\ <= NOT \RAM4|dado_out[4]~5_combout\;
\RAM4|ALT_INV_ram~578_combout\ <= NOT \RAM4|ram~578_combout\;
\RAM4|ALT_INV_ram~577_combout\ <= NOT \RAM4|ram~577_combout\;
\RAM4|ALT_INV_ram~333_q\ <= NOT \RAM4|ram~333_q\;
\RAM4|ALT_INV_ram~325_q\ <= NOT \RAM4|ram~325_q\;
\RAM4|ALT_INV_ram~77_q\ <= NOT \RAM4|ram~77_q\;
\RAM4|ALT_INV_ram~69_q\ <= NOT \RAM4|ram~69_q\;
\RAM4|ALT_INV_ram~576_combout\ <= NOT \RAM4|ram~576_combout\;
\RAM4|ALT_INV_ram~301_q\ <= NOT \RAM4|ram~301_q\;
\RAM4|ALT_INV_ram~293_q\ <= NOT \RAM4|ram~293_q\;
\RAM4|ALT_INV_ram~45_q\ <= NOT \RAM4|ram~45_q\;
\RAM4|ALT_INV_ram~37_q\ <= NOT \RAM4|ram~37_q\;
\RAM4|ALT_INV_ram~575_combout\ <= NOT \RAM4|ram~575_combout\;
\RAM4|ALT_INV_ram~317_q\ <= NOT \RAM4|ram~317_q\;
\RAM4|ALT_INV_ram~309_q\ <= NOT \RAM4|ram~309_q\;
\RAM4|ALT_INV_ram~61_q\ <= NOT \RAM4|ram~61_q\;
\RAM4|ALT_INV_ram~53_q\ <= NOT \RAM4|ram~53_q\;
\RAM4|ALT_INV_ram~574_combout\ <= NOT \RAM4|ram~574_combout\;
\RAM4|ALT_INV_ram~285_q\ <= NOT \RAM4|ram~285_q\;
\RAM0|ALT_INV_ram~232_q\ <= NOT \RAM0|ram~232_q\;
\RAM0|ALT_INV_ram~216_q\ <= NOT \RAM0|ram~216_q\;
\RAM8|ALT_INV_dado_out[6]~7_combout\ <= NOT \RAM8|dado_out[6]~7_combout\;
\RAM8|ALT_INV_ram~598_combout\ <= NOT \RAM8|ram~598_combout\;
\RAM8|ALT_INV_ram~597_combout\ <= NOT \RAM8|ram~597_combout\;
\RAM8|ALT_INV_ram~335_q\ <= NOT \RAM8|ram~335_q\;
\RAM8|ALT_INV_ram~327_q\ <= NOT \RAM8|ram~327_q\;
\RAM8|ALT_INV_ram~79_q\ <= NOT \RAM8|ram~79_q\;
\RAM8|ALT_INV_ram~71_q\ <= NOT \RAM8|ram~71_q\;
\RAM8|ALT_INV_ram~596_combout\ <= NOT \RAM8|ram~596_combout\;
\RAM8|ALT_INV_ram~303_q\ <= NOT \RAM8|ram~303_q\;
\RAM8|ALT_INV_ram~295_q\ <= NOT \RAM8|ram~295_q\;
\RAM8|ALT_INV_ram~47_q\ <= NOT \RAM8|ram~47_q\;
\RAM8|ALT_INV_ram~39_q\ <= NOT \RAM8|ram~39_q\;
\RAM8|ALT_INV_ram~595_combout\ <= NOT \RAM8|ram~595_combout\;
\RAM8|ALT_INV_ram~319_q\ <= NOT \RAM8|ram~319_q\;
\RAM8|ALT_INV_ram~311_q\ <= NOT \RAM8|ram~311_q\;
\RAM8|ALT_INV_ram~63_q\ <= NOT \RAM8|ram~63_q\;
\RAM8|ALT_INV_ram~55_q\ <= NOT \RAM8|ram~55_q\;
\RAM8|ALT_INV_ram~594_combout\ <= NOT \RAM8|ram~594_combout\;
\RAM8|ALT_INV_ram~287_q\ <= NOT \RAM8|ram~287_q\;
\RAM8|ALT_INV_ram~279_q\ <= NOT \RAM8|ram~279_q\;
\RAM8|ALT_INV_ram~31_q\ <= NOT \RAM8|ram~31_q\;
\RAM8|ALT_INV_ram~23_q\ <= NOT \RAM8|ram~23_q\;
\RAM8|ALT_INV_ram~593_combout\ <= NOT \RAM8|ram~593_combout\;
\RAM8|ALT_INV_ram~592_combout\ <= NOT \RAM8|ram~592_combout\;
\RAM8|ALT_INV_ram~527_q\ <= NOT \RAM8|ram~527_q\;
\RAM8|ALT_INV_ram~511_q\ <= NOT \RAM8|ram~511_q\;
\RAM8|ALT_INV_ram~495_q\ <= NOT \RAM8|ram~495_q\;
\RAM8|ALT_INV_ram~479_q\ <= NOT \RAM8|ram~479_q\;
\RAM8|ALT_INV_ram~591_combout\ <= NOT \RAM8|ram~591_combout\;
\RAM8|ALT_INV_ram~519_q\ <= NOT \RAM8|ram~519_q\;
\RAM8|ALT_INV_ram~503_q\ <= NOT \RAM8|ram~503_q\;
\RAM8|ALT_INV_ram~487_q\ <= NOT \RAM8|ram~487_q\;
\RAM8|ALT_INV_ram~471_q\ <= NOT \RAM8|ram~471_q\;
\RAM8|ALT_INV_ram~590_combout\ <= NOT \RAM8|ram~590_combout\;
\RAM8|ALT_INV_ram~271_q\ <= NOT \RAM8|ram~271_q\;
\RAM8|ALT_INV_ram~255_q\ <= NOT \RAM8|ram~255_q\;
\RAM8|ALT_INV_ram~239_q\ <= NOT \RAM8|ram~239_q\;
\RAM8|ALT_INV_ram~223_q\ <= NOT \RAM8|ram~223_q\;
\RAM8|ALT_INV_ram~589_combout\ <= NOT \RAM8|ram~589_combout\;
\RAM8|ALT_INV_ram~263_q\ <= NOT \RAM8|ram~263_q\;
\RAM8|ALT_INV_ram~247_q\ <= NOT \RAM8|ram~247_q\;
\RAM8|ALT_INV_ram~231_q\ <= NOT \RAM8|ram~231_q\;
\RAM8|ALT_INV_ram~215_q\ <= NOT \RAM8|ram~215_q\;
\RAM4|ALT_INV_dado_out[6]~7_combout\ <= NOT \RAM4|dado_out[6]~7_combout\;
\RAM4|ALT_INV_ram~598_combout\ <= NOT \RAM4|ram~598_combout\;
\RAM4|ALT_INV_ram~597_combout\ <= NOT \RAM4|ram~597_combout\;
\RAM4|ALT_INV_ram~335_q\ <= NOT \RAM4|ram~335_q\;
\RAM4|ALT_INV_ram~327_q\ <= NOT \RAM4|ram~327_q\;
\RAM4|ALT_INV_ram~79_q\ <= NOT \RAM4|ram~79_q\;
\RAM4|ALT_INV_ram~71_q\ <= NOT \RAM4|ram~71_q\;
\RAM4|ALT_INV_ram~596_combout\ <= NOT \RAM4|ram~596_combout\;
\RAM4|ALT_INV_ram~303_q\ <= NOT \RAM4|ram~303_q\;
\RAM4|ALT_INV_ram~295_q\ <= NOT \RAM4|ram~295_q\;
\RAM4|ALT_INV_ram~47_q\ <= NOT \RAM4|ram~47_q\;
\RAM4|ALT_INV_ram~39_q\ <= NOT \RAM4|ram~39_q\;
\RAM4|ALT_INV_ram~595_combout\ <= NOT \RAM4|ram~595_combout\;
\RAM4|ALT_INV_ram~319_q\ <= NOT \RAM4|ram~319_q\;
\RAM4|ALT_INV_ram~311_q\ <= NOT \RAM4|ram~311_q\;
\RAM4|ALT_INV_ram~63_q\ <= NOT \RAM4|ram~63_q\;
\RAM4|ALT_INV_ram~55_q\ <= NOT \RAM4|ram~55_q\;
\RAM4|ALT_INV_ram~594_combout\ <= NOT \RAM4|ram~594_combout\;
\RAM4|ALT_INV_ram~287_q\ <= NOT \RAM4|ram~287_q\;
\RAM4|ALT_INV_ram~279_q\ <= NOT \RAM4|ram~279_q\;
\RAM4|ALT_INV_ram~31_q\ <= NOT \RAM4|ram~31_q\;
\RAM4|ALT_INV_ram~23_q\ <= NOT \RAM4|ram~23_q\;
\RAM4|ALT_INV_ram~593_combout\ <= NOT \RAM4|ram~593_combout\;
\RAM4|ALT_INV_ram~592_combout\ <= NOT \RAM4|ram~592_combout\;
\RAM4|ALT_INV_ram~527_q\ <= NOT \RAM4|ram~527_q\;
\RAM4|ALT_INV_ram~511_q\ <= NOT \RAM4|ram~511_q\;
\RAM4|ALT_INV_ram~495_q\ <= NOT \RAM4|ram~495_q\;
\RAM4|ALT_INV_ram~479_q\ <= NOT \RAM4|ram~479_q\;
\RAM4|ALT_INV_ram~591_combout\ <= NOT \RAM4|ram~591_combout\;
\RAM4|ALT_INV_ram~519_q\ <= NOT \RAM4|ram~519_q\;
\RAM4|ALT_INV_ram~503_q\ <= NOT \RAM4|ram~503_q\;
\RAM4|ALT_INV_ram~487_q\ <= NOT \RAM4|ram~487_q\;
\RAM4|ALT_INV_ram~471_q\ <= NOT \RAM4|ram~471_q\;
\RAM4|ALT_INV_ram~590_combout\ <= NOT \RAM4|ram~590_combout\;
\RAM4|ALT_INV_ram~271_q\ <= NOT \RAM4|ram~271_q\;
\RAM4|ALT_INV_ram~255_q\ <= NOT \RAM4|ram~255_q\;
\RAM4|ALT_INV_ram~239_q\ <= NOT \RAM4|ram~239_q\;
\RAM4|ALT_INV_ram~223_q\ <= NOT \RAM4|ram~223_q\;
\RAM4|ALT_INV_ram~589_combout\ <= NOT \RAM4|ram~589_combout\;
\RAM4|ALT_INV_ram~263_q\ <= NOT \RAM4|ram~263_q\;
\RAM4|ALT_INV_ram~247_q\ <= NOT \RAM4|ram~247_q\;
\RAM4|ALT_INV_ram~231_q\ <= NOT \RAM4|ram~231_q\;
\RAM4|ALT_INV_ram~215_q\ <= NOT \RAM4|ram~215_q\;
\RAM0|ALT_INV_dado_out[6]~22_combout\ <= NOT \RAM0|dado_out[6]~22_combout\;
\RAM0|ALT_INV_ram~598_combout\ <= NOT \RAM0|ram~598_combout\;
\RAM0|ALT_INV_ram~597_combout\ <= NOT \RAM0|ram~597_combout\;
\RAM0|ALT_INV_ram~335_q\ <= NOT \RAM0|ram~335_q\;
\RAM0|ALT_INV_ram~327_q\ <= NOT \RAM0|ram~327_q\;
\RAM0|ALT_INV_ram~79_q\ <= NOT \RAM0|ram~79_q\;
\RAM0|ALT_INV_ram~71_q\ <= NOT \RAM0|ram~71_q\;
\RAM0|ALT_INV_ram~596_combout\ <= NOT \RAM0|ram~596_combout\;
\RAM0|ALT_INV_ram~303_q\ <= NOT \RAM0|ram~303_q\;
\RAM0|ALT_INV_ram~295_q\ <= NOT \RAM0|ram~295_q\;
\RAM0|ALT_INV_ram~47_q\ <= NOT \RAM0|ram~47_q\;
\RAM0|ALT_INV_ram~39_q\ <= NOT \RAM0|ram~39_q\;
\RAM0|ALT_INV_ram~595_combout\ <= NOT \RAM0|ram~595_combout\;
\RAM0|ALT_INV_ram~319_q\ <= NOT \RAM0|ram~319_q\;
\RAM0|ALT_INV_ram~311_q\ <= NOT \RAM0|ram~311_q\;
\RAM0|ALT_INV_ram~63_q\ <= NOT \RAM0|ram~63_q\;
\RAM0|ALT_INV_ram~55_q\ <= NOT \RAM0|ram~55_q\;
\RAM0|ALT_INV_ram~594_combout\ <= NOT \RAM0|ram~594_combout\;
\RAM0|ALT_INV_ram~287_q\ <= NOT \RAM0|ram~287_q\;
\RAM0|ALT_INV_ram~279_q\ <= NOT \RAM0|ram~279_q\;
\RAM0|ALT_INV_ram~31_q\ <= NOT \RAM0|ram~31_q\;
\RAM0|ALT_INV_ram~23_q\ <= NOT \RAM0|ram~23_q\;
\RAM0|ALT_INV_ram~593_combout\ <= NOT \RAM0|ram~593_combout\;
\RAM0|ALT_INV_ram~592_combout\ <= NOT \RAM0|ram~592_combout\;
\RAM0|ALT_INV_ram~527_q\ <= NOT \RAM0|ram~527_q\;
\RAM0|ALT_INV_ram~511_q\ <= NOT \RAM0|ram~511_q\;
\RAM0|ALT_INV_ram~495_q\ <= NOT \RAM0|ram~495_q\;
\RAM0|ALT_INV_ram~479_q\ <= NOT \RAM0|ram~479_q\;
\RAM0|ALT_INV_ram~591_combout\ <= NOT \RAM0|ram~591_combout\;
\RAM0|ALT_INV_ram~519_q\ <= NOT \RAM0|ram~519_q\;
\RAM0|ALT_INV_ram~503_q\ <= NOT \RAM0|ram~503_q\;
\RAM0|ALT_INV_ram~487_q\ <= NOT \RAM0|ram~487_q\;
\RAM0|ALT_INV_ram~471_q\ <= NOT \RAM0|ram~471_q\;
\RAM0|ALT_INV_ram~590_combout\ <= NOT \RAM0|ram~590_combout\;
\RAM0|ALT_INV_ram~271_q\ <= NOT \RAM0|ram~271_q\;
\RAM0|ALT_INV_ram~255_q\ <= NOT \RAM0|ram~255_q\;
\RAM0|ALT_INV_ram~239_q\ <= NOT \RAM0|ram~239_q\;
\RAM0|ALT_INV_ram~223_q\ <= NOT \RAM0|ram~223_q\;
\RAM0|ALT_INV_ram~589_combout\ <= NOT \RAM0|ram~589_combout\;
\RAM0|ALT_INV_ram~263_q\ <= NOT \RAM0|ram~263_q\;
\RAM0|ALT_INV_ram~247_q\ <= NOT \RAM0|ram~247_q\;
\RAM0|ALT_INV_ram~231_q\ <= NOT \RAM0|ram~231_q\;
\RAM0|ALT_INV_ram~215_q\ <= NOT \RAM0|ram~215_q\;
\RAM8|ALT_INV_dado_out[5]~6_combout\ <= NOT \RAM8|dado_out[5]~6_combout\;
\RAM8|ALT_INV_ram~588_combout\ <= NOT \RAM8|ram~588_combout\;
\RAM8|ALT_INV_ram~587_combout\ <= NOT \RAM8|ram~587_combout\;
\RAM8|ALT_INV_ram~334_q\ <= NOT \RAM8|ram~334_q\;
\RAM8|ALT_INV_ram~326_q\ <= NOT \RAM8|ram~326_q\;
\RAM8|ALT_INV_ram~78_q\ <= NOT \RAM8|ram~78_q\;
\RAM8|ALT_INV_ram~70_q\ <= NOT \RAM8|ram~70_q\;
\RAM8|ALT_INV_ram~586_combout\ <= NOT \RAM8|ram~586_combout\;
\RAM8|ALT_INV_ram~302_q\ <= NOT \RAM8|ram~302_q\;
\RAM8|ALT_INV_ram~294_q\ <= NOT \RAM8|ram~294_q\;
\RAM8|ALT_INV_ram~46_q\ <= NOT \RAM8|ram~46_q\;
\RAM8|ALT_INV_ram~38_q\ <= NOT \RAM8|ram~38_q\;
\RAM8|ALT_INV_ram~585_combout\ <= NOT \RAM8|ram~585_combout\;
\RAM8|ALT_INV_ram~318_q\ <= NOT \RAM8|ram~318_q\;
\RAM8|ALT_INV_ram~310_q\ <= NOT \RAM8|ram~310_q\;
\RAM8|ALT_INV_ram~62_q\ <= NOT \RAM8|ram~62_q\;
\RAM8|ALT_INV_ram~54_q\ <= NOT \RAM8|ram~54_q\;
\RAM8|ALT_INV_ram~584_combout\ <= NOT \RAM8|ram~584_combout\;
\RAM8|ALT_INV_ram~286_q\ <= NOT \RAM8|ram~286_q\;
\RAM8|ALT_INV_ram~278_q\ <= NOT \RAM8|ram~278_q\;
\RAM8|ALT_INV_ram~30_q\ <= NOT \RAM8|ram~30_q\;
\RAM8|ALT_INV_ram~22_q\ <= NOT \RAM8|ram~22_q\;
\RAM8|ALT_INV_ram~583_combout\ <= NOT \RAM8|ram~583_combout\;
\RAM8|ALT_INV_ram~582_combout\ <= NOT \RAM8|ram~582_combout\;
\RAM8|ALT_INV_ram~526_q\ <= NOT \RAM8|ram~526_q\;
\RAM8|ALT_INV_ram~510_q\ <= NOT \RAM8|ram~510_q\;
\RAM8|ALT_INV_ram~494_q\ <= NOT \RAM8|ram~494_q\;
\RAM8|ALT_INV_ram~478_q\ <= NOT \RAM8|ram~478_q\;
\RAM8|ALT_INV_ram~581_combout\ <= NOT \RAM8|ram~581_combout\;
\RAM0|ALT_INV_ram~627_combout\ <= NOT \RAM0|ram~627_combout\;
\RAM0|ALT_INV_ram~625_combout\ <= NOT \RAM0|ram~625_combout\;
\RAM0|ALT_INV_ram~623_combout\ <= NOT \RAM0|ram~623_combout\;
\RAM0|ALT_INV_ram~621_combout\ <= NOT \RAM0|ram~621_combout\;
\RAM0|ALT_INV_ram~619_combout\ <= NOT \RAM0|ram~619_combout\;
\RAM0|ALT_INV_ram~617_combout\ <= NOT \RAM0|ram~617_combout\;
\RAM0|ALT_INV_ram~615_combout\ <= NOT \RAM0|ram~615_combout\;
\RAM0|ALT_INV_ram~613_combout\ <= NOT \RAM0|ram~613_combout\;
\RAM0|ALT_INV_ram~611_combout\ <= NOT \RAM0|ram~611_combout\;
\RAM0|ALT_INV_process_0~0_combout\ <= NOT \RAM0|process_0~0_combout\;
\RAM0|ALT_INV_ram~609_combout\ <= NOT \RAM0|ram~609_combout\;
\RAM8|ALT_INV_dado_out[7]~8_combout\ <= NOT \RAM8|dado_out[7]~8_combout\;
\RAM8|ALT_INV_ram~608_combout\ <= NOT \RAM8|ram~608_combout\;
\RAM8|ALT_INV_ram~607_combout\ <= NOT \RAM8|ram~607_combout\;
\RAM8|ALT_INV_ram~336_q\ <= NOT \RAM8|ram~336_q\;
\RAM8|ALT_INV_ram~328_q\ <= NOT \RAM8|ram~328_q\;
\RAM8|ALT_INV_ram~80_q\ <= NOT \RAM8|ram~80_q\;
\RAM8|ALT_INV_ram~72_q\ <= NOT \RAM8|ram~72_q\;
\RAM8|ALT_INV_ram~606_combout\ <= NOT \RAM8|ram~606_combout\;
\RAM8|ALT_INV_ram~304_q\ <= NOT \RAM8|ram~304_q\;
\RAM8|ALT_INV_ram~296_q\ <= NOT \RAM8|ram~296_q\;
\RAM8|ALT_INV_ram~48_q\ <= NOT \RAM8|ram~48_q\;
\RAM8|ALT_INV_ram~40_q\ <= NOT \RAM8|ram~40_q\;
\RAM8|ALT_INV_ram~605_combout\ <= NOT \RAM8|ram~605_combout\;
\RAM8|ALT_INV_ram~320_q\ <= NOT \RAM8|ram~320_q\;
\RAM8|ALT_INV_ram~312_q\ <= NOT \RAM8|ram~312_q\;
\RAM8|ALT_INV_ram~64_q\ <= NOT \RAM8|ram~64_q\;
\RAM8|ALT_INV_ram~56_q\ <= NOT \RAM8|ram~56_q\;
\RAM8|ALT_INV_ram~604_combout\ <= NOT \RAM8|ram~604_combout\;
\RAM8|ALT_INV_ram~288_q\ <= NOT \RAM8|ram~288_q\;
\RAM8|ALT_INV_ram~280_q\ <= NOT \RAM8|ram~280_q\;
\RAM8|ALT_INV_ram~32_q\ <= NOT \RAM8|ram~32_q\;
\RAM8|ALT_INV_ram~24_q\ <= NOT \RAM8|ram~24_q\;
\RAM8|ALT_INV_ram~603_combout\ <= NOT \RAM8|ram~603_combout\;
\RAM8|ALT_INV_ram~602_combout\ <= NOT \RAM8|ram~602_combout\;
\RAM8|ALT_INV_ram~528_q\ <= NOT \RAM8|ram~528_q\;
\RAM8|ALT_INV_ram~512_q\ <= NOT \RAM8|ram~512_q\;
\RAM8|ALT_INV_ram~496_q\ <= NOT \RAM8|ram~496_q\;
\RAM8|ALT_INV_ram~480_q\ <= NOT \RAM8|ram~480_q\;
\RAM8|ALT_INV_ram~601_combout\ <= NOT \RAM8|ram~601_combout\;
\RAM8|ALT_INV_ram~520_q\ <= NOT \RAM8|ram~520_q\;
\RAM8|ALT_INV_ram~504_q\ <= NOT \RAM8|ram~504_q\;
\RAM8|ALT_INV_ram~488_q\ <= NOT \RAM8|ram~488_q\;
\RAM8|ALT_INV_ram~472_q\ <= NOT \RAM8|ram~472_q\;
\RAM8|ALT_INV_ram~600_combout\ <= NOT \RAM8|ram~600_combout\;
\RAM8|ALT_INV_ram~272_q\ <= NOT \RAM8|ram~272_q\;
\RAM8|ALT_INV_ram~256_q\ <= NOT \RAM8|ram~256_q\;
\RAM8|ALT_INV_ram~240_q\ <= NOT \RAM8|ram~240_q\;
\RAM8|ALT_INV_ram~224_q\ <= NOT \RAM8|ram~224_q\;
\RAM8|ALT_INV_ram~599_combout\ <= NOT \RAM8|ram~599_combout\;
\RAM8|ALT_INV_ram~264_q\ <= NOT \RAM8|ram~264_q\;
\RAM8|ALT_INV_ram~248_q\ <= NOT \RAM8|ram~248_q\;
\RAM8|ALT_INV_ram~232_q\ <= NOT \RAM8|ram~232_q\;
\RAM8|ALT_INV_ram~216_q\ <= NOT \RAM8|ram~216_q\;
\RAM4|ALT_INV_dado_out[7]~8_combout\ <= NOT \RAM4|dado_out[7]~8_combout\;
\RAM4|ALT_INV_ram~608_combout\ <= NOT \RAM4|ram~608_combout\;
\RAM4|ALT_INV_ram~607_combout\ <= NOT \RAM4|ram~607_combout\;
\RAM4|ALT_INV_ram~336_q\ <= NOT \RAM4|ram~336_q\;
\RAM4|ALT_INV_ram~328_q\ <= NOT \RAM4|ram~328_q\;
\RAM4|ALT_INV_ram~80_q\ <= NOT \RAM4|ram~80_q\;
\RAM4|ALT_INV_ram~72_q\ <= NOT \RAM4|ram~72_q\;
\RAM4|ALT_INV_ram~606_combout\ <= NOT \RAM4|ram~606_combout\;
\RAM4|ALT_INV_ram~304_q\ <= NOT \RAM4|ram~304_q\;
\RAM4|ALT_INV_ram~296_q\ <= NOT \RAM4|ram~296_q\;
\RAM4|ALT_INV_ram~48_q\ <= NOT \RAM4|ram~48_q\;
\RAM4|ALT_INV_ram~40_q\ <= NOT \RAM4|ram~40_q\;
\RAM4|ALT_INV_ram~605_combout\ <= NOT \RAM4|ram~605_combout\;
\RAM4|ALT_INV_ram~320_q\ <= NOT \RAM4|ram~320_q\;
\RAM4|ALT_INV_ram~312_q\ <= NOT \RAM4|ram~312_q\;
\RAM4|ALT_INV_ram~64_q\ <= NOT \RAM4|ram~64_q\;
\RAM4|ALT_INV_ram~56_q\ <= NOT \RAM4|ram~56_q\;
\RAM4|ALT_INV_ram~604_combout\ <= NOT \RAM4|ram~604_combout\;
\RAM4|ALT_INV_ram~288_q\ <= NOT \RAM4|ram~288_q\;
\RAM4|ALT_INV_ram~280_q\ <= NOT \RAM4|ram~280_q\;
\RAM4|ALT_INV_ram~32_q\ <= NOT \RAM4|ram~32_q\;
\RAM4|ALT_INV_ram~24_q\ <= NOT \RAM4|ram~24_q\;
\RAM4|ALT_INV_ram~603_combout\ <= NOT \RAM4|ram~603_combout\;
\RAM4|ALT_INV_ram~602_combout\ <= NOT \RAM4|ram~602_combout\;
\RAM4|ALT_INV_ram~528_q\ <= NOT \RAM4|ram~528_q\;
\RAM4|ALT_INV_ram~512_q\ <= NOT \RAM4|ram~512_q\;
\RAM4|ALT_INV_ram~496_q\ <= NOT \RAM4|ram~496_q\;
\RAM4|ALT_INV_ram~480_q\ <= NOT \RAM4|ram~480_q\;
\RAM4|ALT_INV_ram~601_combout\ <= NOT \RAM4|ram~601_combout\;
\RAM4|ALT_INV_ram~520_q\ <= NOT \RAM4|ram~520_q\;
\RAM4|ALT_INV_ram~504_q\ <= NOT \RAM4|ram~504_q\;
\RAM4|ALT_INV_ram~488_q\ <= NOT \RAM4|ram~488_q\;
\RAM4|ALT_INV_ram~472_q\ <= NOT \RAM4|ram~472_q\;
\RAM4|ALT_INV_ram~600_combout\ <= NOT \RAM4|ram~600_combout\;
\RAM4|ALT_INV_ram~272_q\ <= NOT \RAM4|ram~272_q\;
\RAM4|ALT_INV_ram~256_q\ <= NOT \RAM4|ram~256_q\;
\RAM4|ALT_INV_ram~240_q\ <= NOT \RAM4|ram~240_q\;
\RAM4|ALT_INV_ram~224_q\ <= NOT \RAM4|ram~224_q\;
\RAM4|ALT_INV_ram~599_combout\ <= NOT \RAM4|ram~599_combout\;
\RAM4|ALT_INV_ram~264_q\ <= NOT \RAM4|ram~264_q\;
\RAM4|ALT_INV_ram~248_q\ <= NOT \RAM4|ram~248_q\;
\RAM4|ALT_INV_ram~232_q\ <= NOT \RAM4|ram~232_q\;
\RAM4|ALT_INV_ram~216_q\ <= NOT \RAM4|ram~216_q\;
\RAM0|ALT_INV_dado_out[7]~24_combout\ <= NOT \RAM0|dado_out[7]~24_combout\;
\RAM0|ALT_INV_ram~608_combout\ <= NOT \RAM0|ram~608_combout\;
\RAM0|ALT_INV_ram~607_combout\ <= NOT \RAM0|ram~607_combout\;
\RAM0|ALT_INV_ram~336_q\ <= NOT \RAM0|ram~336_q\;
\RAM0|ALT_INV_ram~328_q\ <= NOT \RAM0|ram~328_q\;
\RAM0|ALT_INV_ram~80_q\ <= NOT \RAM0|ram~80_q\;
\RAM0|ALT_INV_ram~72_q\ <= NOT \RAM0|ram~72_q\;
\RAM0|ALT_INV_ram~606_combout\ <= NOT \RAM0|ram~606_combout\;
\RAM0|ALT_INV_ram~304_q\ <= NOT \RAM0|ram~304_q\;
\RAM0|ALT_INV_ram~296_q\ <= NOT \RAM0|ram~296_q\;
\RAM0|ALT_INV_ram~48_q\ <= NOT \RAM0|ram~48_q\;
\RAM0|ALT_INV_ram~40_q\ <= NOT \RAM0|ram~40_q\;
\RAM0|ALT_INV_ram~605_combout\ <= NOT \RAM0|ram~605_combout\;
\RAM0|ALT_INV_ram~320_q\ <= NOT \RAM0|ram~320_q\;
\RAM0|ALT_INV_ram~312_q\ <= NOT \RAM0|ram~312_q\;
\RAM0|ALT_INV_ram~64_q\ <= NOT \RAM0|ram~64_q\;
\RAM0|ALT_INV_ram~56_q\ <= NOT \RAM0|ram~56_q\;
\RAM0|ALT_INV_ram~604_combout\ <= NOT \RAM0|ram~604_combout\;
\RAM0|ALT_INV_ram~288_q\ <= NOT \RAM0|ram~288_q\;
\RAM0|ALT_INV_ram~280_q\ <= NOT \RAM0|ram~280_q\;
\RAM0|ALT_INV_ram~32_q\ <= NOT \RAM0|ram~32_q\;
\RAM0|ALT_INV_ram~24_q\ <= NOT \RAM0|ram~24_q\;
\RAM0|ALT_INV_ram~603_combout\ <= NOT \RAM0|ram~603_combout\;
\RAM0|ALT_INV_ram~602_combout\ <= NOT \RAM0|ram~602_combout\;
\RAM0|ALT_INV_ram~528_q\ <= NOT \RAM0|ram~528_q\;
\RAM0|ALT_INV_ram~512_q\ <= NOT \RAM0|ram~512_q\;
\RAM0|ALT_INV_ram~496_q\ <= NOT \RAM0|ram~496_q\;
\RAM0|ALT_INV_ram~480_q\ <= NOT \RAM0|ram~480_q\;
\RAM0|ALT_INV_ram~601_combout\ <= NOT \RAM0|ram~601_combout\;
\RAM0|ALT_INV_ram~520_q\ <= NOT \RAM0|ram~520_q\;
\RAM0|ALT_INV_ram~504_q\ <= NOT \RAM0|ram~504_q\;
\RAM0|ALT_INV_ram~488_q\ <= NOT \RAM0|ram~488_q\;
\RAM0|ALT_INV_ram~472_q\ <= NOT \RAM0|ram~472_q\;
\RAM0|ALT_INV_ram~600_combout\ <= NOT \RAM0|ram~600_combout\;
\RAM0|ALT_INV_ram~272_q\ <= NOT \RAM0|ram~272_q\;
\RAM0|ALT_INV_ram~256_q\ <= NOT \RAM0|ram~256_q\;
\RAM0|ALT_INV_ram~240_q\ <= NOT \RAM0|ram~240_q\;
\RAM0|ALT_INV_ram~224_q\ <= NOT \RAM0|ram~224_q\;
\RAM0|ALT_INV_ram~599_combout\ <= NOT \RAM0|ram~599_combout\;
\RAM0|ALT_INV_ram~264_q\ <= NOT \RAM0|ram~264_q\;
\RAM0|ALT_INV_ram~248_q\ <= NOT \RAM0|ram~248_q\;
\RAM8|ALT_INV_process_0~0_combout\ <= NOT \RAM8|process_0~0_combout\;
\DEC2|ALT_INV_Mux7~6_combout\ <= NOT \DEC2|Mux7~6_combout\;
\RAM0|ALT_INV_ram~671_combout\ <= NOT \RAM0|ram~671_combout\;
\RAM0|ALT_INV_ram~669_combout\ <= NOT \RAM0|ram~669_combout\;
\RAM0|ALT_INV_ram~667_combout\ <= NOT \RAM0|ram~667_combout\;
\RAM0|ALT_INV_ram~665_combout\ <= NOT \RAM0|ram~665_combout\;
\RAM0|ALT_INV_ram~663_combout\ <= NOT \RAM0|ram~663_combout\;
\RAM0|ALT_INV_ram~661_combout\ <= NOT \RAM0|ram~661_combout\;
\RAM0|ALT_INV_ram~659_combout\ <= NOT \RAM0|ram~659_combout\;
\RAM0|ALT_INV_ram~657_combout\ <= NOT \RAM0|ram~657_combout\;
\RAM0|ALT_INV_ram~655_combout\ <= NOT \RAM0|ram~655_combout\;
\RAM0|ALT_INV_ram~653_combout\ <= NOT \RAM0|ram~653_combout\;
\RAM0|ALT_INV_ram~651_combout\ <= NOT \RAM0|ram~651_combout\;
\RAM0|ALT_INV_ram~649_combout\ <= NOT \RAM0|ram~649_combout\;
\RAM0|ALT_INV_ram~647_combout\ <= NOT \RAM0|ram~647_combout\;
\RAM0|ALT_INV_ram~645_combout\ <= NOT \RAM0|ram~645_combout\;
\RAM0|ALT_INV_ram~643_combout\ <= NOT \RAM0|ram~643_combout\;
\RAM0|ALT_INV_ram~641_combout\ <= NOT \RAM0|ram~641_combout\;
\RAM0|ALT_INV_ram~639_combout\ <= NOT \RAM0|ram~639_combout\;
\RAM0|ALT_INV_ram~637_combout\ <= NOT \RAM0|ram~637_combout\;
\RAM0|ALT_INV_ram~635_combout\ <= NOT \RAM0|ram~635_combout\;
\RAM0|ALT_INV_ram~633_combout\ <= NOT \RAM0|ram~633_combout\;
\RAM0|ALT_INV_ram~631_combout\ <= NOT \RAM0|ram~631_combout\;
\RAM0|ALT_INV_ram~629_combout\ <= NOT \RAM0|ram~629_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~7_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~1_combout\;
\CPU|REGS|ALT_INV_registrador~143_combout\ <= NOT \CPU|REGS|registrador~143_combout\;
\CPU|REGS|ALT_INV_registrador~140_combout\ <= NOT \CPU|REGS|registrador~140_combout\;
\CPU|decoderInstru|ALT_INV_saida[5]~4_combout\ <= NOT \CPU|decoderInstru|saida[5]~4_combout\;
\CPU|decoderInstru|ALT_INV_saida[4]~3_combout\ <= NOT \CPU|decoderInstru|saida[4]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida~2_combout\ <= NOT \CPU|decoderInstru|saida~2_combout\;
\CPU|decoderInstru|ALT_INV_saida~1_combout\ <= NOT \CPU|decoderInstru|saida~1_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\CPU|REGS|ALT_INV_registrador~84_combout\ <= NOT \CPU|REGS|registrador~84_combout\;
\CPU|REGS|ALT_INV_registrador~80_combout\ <= NOT \CPU|REGS|registrador~80_combout\;
\CPU|REGS|ALT_INV_registrador~76_combout\ <= NOT \CPU|REGS|registrador~76_combout\;

\MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM0|dado_out[0]~10_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[1]~13_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[2]~15_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[3]~17_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[4]~19_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[5]~21_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[6]~23_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \RAM0|dado_out[7]~25_combout\,
	oe => \RAM0|dado_out[0]~11_combout\,
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
	i => \conv0|rascSaida7seg[0]~0_combout\,
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
	i => \conv0|rascSaida7seg[1]~1_combout\,
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
	i => \conv0|rascSaida7seg[2]~2_combout\,
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
	i => \conv0|rascSaida7seg[3]~3_combout\,
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
	i => \conv0|rascSaida7seg[4]~4_combout\,
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
	i => \conv0|rascSaida7seg[5]~5_combout\,
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
	i => \conv0|rascSaida7seg[6]~6_combout\,
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
	i => \conv1|rascSaida7seg[0]~0_combout\,
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
	i => \conv1|rascSaida7seg[1]~1_combout\,
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
	i => \conv1|rascSaida7seg[2]~2_combout\,
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
	i => \conv1|rascSaida7seg[3]~3_combout\,
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
	i => \conv1|rascSaida7seg[4]~4_combout\,
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
	i => \conv1|rascSaida7seg[5]~5_combout\,
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
	i => \conv1|rascSaida7seg[6]~6_combout\,
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
	i => \conv2|rascSaida7seg[0]~0_combout\,
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
	i => \conv2|rascSaida7seg[1]~1_combout\,
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
	i => \conv2|rascSaida7seg[2]~2_combout\,
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
	i => \conv2|rascSaida7seg[3]~3_combout\,
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
	i => \conv2|rascSaida7seg[4]~4_combout\,
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
	i => \conv2|rascSaida7seg[5]~5_combout\,
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
	i => \conv2|rascSaida7seg[6]~6_combout\,
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
	i => \conv3|rascSaida7seg[0]~0_combout\,
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
	i => \conv3|rascSaida7seg[1]~1_combout\,
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
	i => \conv3|rascSaida7seg[2]~2_combout\,
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
	i => \conv3|rascSaida7seg[3]~3_combout\,
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
	i => \conv3|rascSaida7seg[4]~4_combout\,
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
	i => \conv3|rascSaida7seg[5]~5_combout\,
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
	i => \conv3|rascSaida7seg[6]~6_combout\,
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
	i => \conv4|rascSaida7seg[0]~0_combout\,
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
	i => \conv4|rascSaida7seg[1]~1_combout\,
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
	i => \conv4|rascSaida7seg[2]~2_combout\,
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
	i => \conv4|rascSaida7seg[3]~3_combout\,
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
	i => \conv4|rascSaida7seg[4]~4_combout\,
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
	i => \conv4|rascSaida7seg[5]~5_combout\,
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
	i => \conv4|rascSaida7seg[6]~6_combout\,
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
	i => \conv5|rascSaida7seg[0]~0_combout\,
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
	i => \conv5|rascSaida7seg[1]~1_combout\,
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
	i => \conv5|rascSaida7seg[2]~2_combout\,
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
	i => \conv5|rascSaida7seg[3]~3_combout\,
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
	i => \conv5|rascSaida7seg[4]~4_combout\,
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
	i => \conv5|rascSaida7seg[5]~5_combout\,
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
	i => \conv5|rascSaida7seg[6]~6_combout\,
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
	i => \CPU|REGS|registrador~76_combout\,
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
	i => \CPU|REGS|registrador~80_combout\,
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
	i => \CPU|REGS|registrador~84_combout\,
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
	i => \CPU|REGS|registrador~88_combout\,
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
	i => \CPU|REGS|registrador~92_combout\,
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
	i => \CPU|REGS|registrador~96_combout\,
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
	i => \CPU|REGS|registrador~100_combout\,
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
	i => \CPU|REGS|registrador~104_combout\,
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
	i => \ROM1|memROM~1_combout\,
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
	i => \ROM1|memROM~2_combout\,
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
	i => \ROM1|memROM~3_combout\,
	devoe => ww_devoe,
	o => \adrs[2]~output_o\);

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

\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (!\ROM1|memROM~8_combout\ & (\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101100001000001110110000100000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

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

\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (!\ROM1|memROM~8_combout\ & ((\CPU|incrementaPC|Add0~29_sumout\)))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~12_combout\ & \ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~15_combout\);

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

\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|incrementaPC|Add0~21_sumout\)) # (\ROM1|memROM~8_combout\))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111010001111100111101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (!\ROM1|memROM~8_combout\ & ((\CPU|incrementaPC|Add0~25_sumout\)))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|MUX2|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(5) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010000001000001101000000100000110100000010000011010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~21_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~21_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~21_combout\,
	combout => \ROM1|memROM~10_combout\);

\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|incrementaPC|Add0~9_sumout\)) # (\ROM1|memROM~8_combout\))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111010001111100111101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010111000010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~9_combout\);

\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (((\CPU|incrementaPC|Add0~5_sumout\)) # (\ROM1|memROM~8_combout\))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111010001111100111101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & 
-- !\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100011000110011000000000011111111000110001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000100100000000000000000010010000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~7_combout\);

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( (\CPU|incrementaPC|Add0~1_sumout\) # (\ROM1|memROM~0_combout\) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~7_combout\ & ( 
-- (\CPU|incrementaPC|Add0~1_sumout\ & ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~5_combout\) # (\ROM1|memROM~4_combout\)))) ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( (\CPU|incrementaPC|Add0~1_sumout\) # (\ROM1|memROM~0_combout\) 
-- ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~7_combout\ & ( \CPU|incrementaPC|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101011111111100000000111110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0)))))) 
-- # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110110010000011011000000000000111101100100000110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~4_combout\);

\CPU|LDESV|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LDESV|saida[0]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|LDESV|saida[0]~0_combout\);

\CPU|MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (!\ROM1|memROM~8_combout\ & ((\CPU|incrementaPC|Add0~17_sumout\)))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|MUX2|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~8_combout\);

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

\CPU|MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = (!\CPU|LDESV|saida[0]~0_combout\ & (!\ROM1|memROM~8_combout\ & ((\CPU|incrementaPC|Add0~33_sumout\)))) # (\CPU|LDESV|saida[0]~0_combout\ & (((\ROM1|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \CPU|LDESV|ALT_INV_saida[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX2|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000000000001001100000000000100110000000000010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~11_combout\ & \ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~13_combout\);

\CPU|decoderInstru|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[1]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)) ) ) # ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & 
-- (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010100000000000000010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|decoderInstru|saida[1]~0_combout\);

\RAM0|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out~8_combout\ = ( \CPU|decoderInstru|saida[1]~0_combout\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~11_combout\ & !\ROM1|memROM~14_combout\))) # (\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011101110100000000000000001111110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida[1]~0_combout\,
	combout => \RAM0|dado_out~8_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~20_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~19_combout\);

\CPU|decoderInstru|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~2_combout\ = (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~18_combout\ & (!\ROM1|memROM~19_combout\ & !\ROM1|memROM~20_combout\))) # (\ROM1|memROM~8_combout\ & (!\ROM1|memROM~18_combout\ & (\ROM1|memROM~19_combout\ & 
-- \ROM1|memROM~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \CPU|decoderInstru|saida~2_combout\);

\CPU|decoderInstru|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[4]~3_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( (((\ROM1|memROM~19_combout\) # (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~18_combout\)) # (\ROM1|memROM~20_combout\) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- (\ROM1|memROM~20_combout\ & (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000011111111111111101000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|decoderInstru|saida[4]~3_combout\);

\CPU|decoderInstru|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~1_combout\ = (!\ROM1|memROM~18_combout\ & (\ROM1|memROM~19_combout\ & (!\ROM1|memROM~8_combout\ $ (\ROM1|memROM~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \ROM1|ALT_INV_memROM~20_combout\,
	combout => \CPU|decoderInstru|saida~1_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001101110100001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~16_combout\);

\CPU|decoderInstru|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal11~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|decoderInstru|Equal11~0_combout\);

\DEC2|Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~6_combout\ = (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & \CPU|decoderInstru|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~6_combout\);

\RAM0|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~609_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~609_combout\);

\RAM4|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~609_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~609_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~609_combout\,
	combout => \RAM4|ram~609_combout\);

\RAM4|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~209_q\);

\RAM0|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~611_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~611_combout\);

\RAM4|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~610_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~611_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~611_combout\,
	combout => \RAM4|ram~610_combout\);

\RAM4|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~225_q\);

\RAM0|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~613_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~613_combout\);

\RAM4|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~611_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~613_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~613_combout\,
	combout => \RAM4|ram~611_combout\);

\RAM4|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~241_q\);

\RAM0|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~615_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~615_combout\);

\RAM4|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~612_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~615_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~615_combout\,
	combout => \RAM4|ram~612_combout\);

\RAM4|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~257_q\);

\RAM4|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~529_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~257_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~241_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~225_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~209_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~209_q\,
	datab => \RAM4|ALT_INV_ram~225_q\,
	datac => \RAM4|ALT_INV_ram~241_q\,
	datad => \RAM4|ALT_INV_ram~257_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~529_combout\);

\RAM0|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~617_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~617_combout\);

\RAM4|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~613_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~617_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~617_combout\,
	combout => \RAM4|ram~613_combout\);

\RAM4|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~217_q\);

\RAM0|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~619_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~619_combout\);

\RAM4|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~614_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~619_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~619_combout\,
	combout => \RAM4|ram~614_combout\);

\RAM4|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~233_q\);

\RAM0|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~621_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~621_combout\);

\RAM4|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~615_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~621_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~621_combout\,
	combout => \RAM4|ram~615_combout\);

\RAM4|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~249_q\);

\RAM0|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~623_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~623_combout\);

\RAM4|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~616_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~623_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~623_combout\,
	combout => \RAM4|ram~616_combout\);

\RAM4|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~265_q\);

\RAM4|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~530_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~265_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~249_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~233_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~217_q\,
	datab => \RAM4|ALT_INV_ram~233_q\,
	datac => \RAM4|ALT_INV_ram~249_q\,
	datad => \RAM4|ALT_INV_ram~265_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~530_combout\);

\RAM0|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~625_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~625_combout\);

\RAM4|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~617_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~625_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~625_combout\,
	combout => \RAM4|ram~617_combout\);

\RAM4|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~465_q\);

\RAM0|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~627_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~627_combout\);

\RAM4|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~618_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~627_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~627_combout\,
	combout => \RAM4|ram~618_combout\);

\RAM4|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~481_q\);

\RAM0|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~629_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~629_combout\);

\RAM4|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~619_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~629_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~629_combout\,
	combout => \RAM4|ram~619_combout\);

\RAM4|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~497_q\);

\RAM0|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~631_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~631_combout\);

\RAM4|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~620_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~631_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~631_combout\,
	combout => \RAM4|ram~620_combout\);

\RAM4|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~513_q\);

\RAM4|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~531_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~513_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~497_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~481_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~465_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~465_q\,
	datab => \RAM4|ALT_INV_ram~481_q\,
	datac => \RAM4|ALT_INV_ram~497_q\,
	datad => \RAM4|ALT_INV_ram~513_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~531_combout\);

\RAM0|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~633_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~633_combout\);

\RAM4|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~621_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~633_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~633_combout\,
	combout => \RAM4|ram~621_combout\);

\RAM4|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~473_q\);

\RAM0|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~635_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~635_combout\);

\RAM4|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~622_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~635_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~635_combout\,
	combout => \RAM4|ram~622_combout\);

\RAM4|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~489_q\);

\RAM0|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~637_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~637_combout\);

\RAM4|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~623_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~637_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~637_combout\,
	combout => \RAM4|ram~623_combout\);

\RAM4|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~505_q\);

\RAM0|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~639_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & \ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~639_combout\);

\RAM4|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~624_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~639_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~639_combout\,
	combout => \RAM4|ram~624_combout\);

\RAM4|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~521_q\);

\RAM4|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~532_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~521_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~505_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~489_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~473_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~473_q\,
	datab => \RAM4|ALT_INV_ram~489_q\,
	datac => \RAM4|ALT_INV_ram~505_q\,
	datad => \RAM4|ALT_INV_ram~521_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~532_combout\);

\RAM4|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~533_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~532_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~531_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~529_combout\,
	datab => \RAM4|ALT_INV_ram~530_combout\,
	datac => \RAM4|ALT_INV_ram~531_combout\,
	datad => \RAM4|ALT_INV_ram~532_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~533_combout\);

\RAM0|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~641_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~641_combout\);

\RAM4|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~625_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~641_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~641_combout\,
	combout => \RAM4|ram~625_combout\);

\RAM4|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~17_q\);

\RAM0|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~649_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~649_combout\);

\RAM4|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~626_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~649_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~649_combout\,
	combout => \RAM4|ram~626_combout\);

\RAM4|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~25_q\);

\RAM0|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~643_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~643_combout\);

\RAM4|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~627_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~643_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~643_combout\,
	combout => \RAM4|ram~627_combout\);

\RAM4|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~273_q\);

\RAM0|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~651_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~651_combout\);

\RAM4|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~628_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~651_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~651_combout\,
	combout => \RAM4|ram~628_combout\);

\RAM4|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~281_q\);

\RAM4|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~534_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~281_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~273_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~25_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~17_q\,
	datab => \RAM4|ALT_INV_ram~25_q\,
	datac => \RAM4|ALT_INV_ram~273_q\,
	datad => \RAM4|ALT_INV_ram~281_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~534_combout\);

\RAM0|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~657_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~657_combout\);

\RAM4|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~629_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~657_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~657_combout\,
	combout => \RAM4|ram~629_combout\);

\RAM4|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~49_q\);

\RAM0|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~665_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~665_combout\);

\RAM4|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~630_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~665_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~665_combout\,
	combout => \RAM4|ram~630_combout\);

\RAM4|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~57_q\);

\RAM0|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~659_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~659_combout\);

\RAM4|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~631_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~659_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~659_combout\,
	combout => \RAM4|ram~631_combout\);

\RAM4|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~305_q\);

\RAM0|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~667_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~667_combout\);

\RAM4|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~632_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~667_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~667_combout\,
	combout => \RAM4|ram~632_combout\);

\RAM4|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~313_q\);

\RAM4|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~535_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~313_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~305_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~57_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~49_q\,
	datab => \RAM4|ALT_INV_ram~57_q\,
	datac => \RAM4|ALT_INV_ram~305_q\,
	datad => \RAM4|ALT_INV_ram~313_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~535_combout\);

\RAM0|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~645_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~645_combout\);

\RAM4|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~633_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~645_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~645_combout\,
	combout => \RAM4|ram~633_combout\);

\RAM4|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~33_q\);

\RAM0|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~653_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~653_combout\);

\RAM4|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~634_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~653_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~653_combout\,
	combout => \RAM4|ram~634_combout\);

\RAM4|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~41_q\);

\RAM0|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~647_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~647_combout\);

\RAM4|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~635_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~647_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~647_combout\,
	combout => \RAM4|ram~635_combout\);

\RAM4|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~289_q\);

\RAM0|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~655_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~655_combout\);

\RAM4|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~636_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~655_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~655_combout\,
	combout => \RAM4|ram~636_combout\);

\RAM4|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~297_q\);

\RAM4|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~536_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~297_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~289_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~41_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~33_q\,
	datab => \RAM4|ALT_INV_ram~41_q\,
	datac => \RAM4|ALT_INV_ram~289_q\,
	datad => \RAM4|ALT_INV_ram~297_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~536_combout\);

\RAM0|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~661_combout\ = ( !\ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~661_combout\);

\RAM4|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~637_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~661_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~661_combout\,
	combout => \RAM4|ram~637_combout\);

\RAM4|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~65_q\);

\RAM0|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~669_combout\ = ( !\ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~669_combout\);

\RAM4|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~638_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~669_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~669_combout\,
	combout => \RAM4|ram~638_combout\);

\RAM4|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~73_q\);

\RAM0|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~663_combout\ = ( \ROM1|memROM~15_combout\ & ( (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~663_combout\);

\RAM4|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~639_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~663_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~663_combout\,
	combout => \RAM4|ram~639_combout\);

\RAM4|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~321_q\);

\RAM0|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~671_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~16_combout\ & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~671_combout\);

\RAM4|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~640_combout\ = (\DEC2|Mux7~6_combout\ & \RAM0|ram~671_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DEC2|ALT_INV_Mux7~6_combout\,
	datab => \RAM0|ALT_INV_ram~671_combout\,
	combout => \RAM4|ram~640_combout\);

\RAM4|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~329_q\);

\RAM4|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~537_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~329_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~321_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~73_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~65_q\,
	datab => \RAM4|ALT_INV_ram~73_q\,
	datac => \RAM4|ALT_INV_ram~321_q\,
	datad => \RAM4|ALT_INV_ram~329_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~537_combout\);

\RAM4|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~538_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~536_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~534_combout\,
	datab => \RAM4|ALT_INV_ram~535_combout\,
	datac => \RAM4|ALT_INV_ram~536_combout\,
	datad => \RAM4|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~538_combout\);

\RAM4|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out~0_combout\ = (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~15_combout\ & \CPU|decoderInstru|saida[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~0_combout\,
	combout => \RAM4|dado_out~0_combout\);

\RAM4|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[0]~1_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~538_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~533_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000001110010000000000111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_ram~533_combout\,
	datac => \RAM4|ALT_INV_ram~538_combout\,
	datad => \RAM4|ALT_INV_dado_out~0_combout\,
	combout => \RAM4|dado_out[0]~1_combout\);

\RAM8|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|process_0~0_combout\ = (\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~15_combout\ & \CPU|decoderInstru|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \RAM8|process_0~0_combout\);

\RAM8|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~609_combout\ = (\RAM0|ram~609_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~609_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~609_combout\);

\RAM8|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~209_q\);

\RAM8|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~610_combout\ = (\RAM0|ram~611_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~611_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~610_combout\);

\RAM8|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~225_q\);

\RAM8|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~611_combout\ = (\RAM0|ram~613_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~613_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~611_combout\);

\RAM8|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~241_q\);

\RAM8|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~612_combout\ = (\RAM0|ram~615_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~615_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~612_combout\);

\RAM8|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~257_q\);

\RAM8|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~529_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~257_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~241_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~225_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~209_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~209_q\,
	datab => \RAM8|ALT_INV_ram~225_q\,
	datac => \RAM8|ALT_INV_ram~241_q\,
	datad => \RAM8|ALT_INV_ram~257_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~529_combout\);

\RAM8|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~613_combout\ = (\RAM0|ram~617_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~617_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~613_combout\);

\RAM8|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~217_q\);

\RAM8|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~614_combout\ = (\RAM0|ram~619_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~619_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~614_combout\);

\RAM8|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~233_q\);

\RAM8|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~615_combout\ = (\RAM0|ram~621_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~621_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~615_combout\);

\RAM8|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~249_q\);

\RAM8|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~616_combout\ = (\RAM0|ram~623_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~623_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~616_combout\);

\RAM8|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~265_q\);

\RAM8|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~530_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~265_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~249_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~233_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~217_q\,
	datab => \RAM8|ALT_INV_ram~233_q\,
	datac => \RAM8|ALT_INV_ram~249_q\,
	datad => \RAM8|ALT_INV_ram~265_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~530_combout\);

\RAM8|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~617_combout\ = (\RAM0|ram~625_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~625_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~617_combout\);

\RAM8|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~465_q\);

\RAM8|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~618_combout\ = (\RAM0|ram~627_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~627_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~618_combout\);

\RAM8|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~481_q\);

\RAM8|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~619_combout\ = (\RAM0|ram~629_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~629_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~619_combout\);

\RAM8|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~497_q\);

\RAM8|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~620_combout\ = (\RAM0|ram~631_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~631_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~620_combout\);

\RAM8|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~513_q\);

\RAM8|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~531_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~513_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~497_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~481_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~465_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~465_q\,
	datab => \RAM8|ALT_INV_ram~481_q\,
	datac => \RAM8|ALT_INV_ram~497_q\,
	datad => \RAM8|ALT_INV_ram~513_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~531_combout\);

\RAM8|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~621_combout\ = (\RAM0|ram~633_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~633_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~621_combout\);

\RAM8|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~473_q\);

\RAM8|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~622_combout\ = (\RAM0|ram~635_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~635_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~622_combout\);

\RAM8|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~489_q\);

\RAM8|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~623_combout\ = (\RAM0|ram~637_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~637_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~623_combout\);

\RAM8|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~505_q\);

\RAM8|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~624_combout\ = (\RAM0|ram~639_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~639_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~624_combout\);

\RAM8|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~521_q\);

\RAM8|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~532_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~521_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~505_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~489_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~473_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~473_q\,
	datab => \RAM8|ALT_INV_ram~489_q\,
	datac => \RAM8|ALT_INV_ram~505_q\,
	datad => \RAM8|ALT_INV_ram~521_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~532_combout\);

\RAM8|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~533_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~532_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~531_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~529_combout\,
	datab => \RAM8|ALT_INV_ram~530_combout\,
	datac => \RAM8|ALT_INV_ram~531_combout\,
	datad => \RAM8|ALT_INV_ram~532_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~533_combout\);

\RAM8|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~625_combout\ = (\RAM0|ram~641_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~641_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~625_combout\);

\RAM8|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~17_q\);

\RAM8|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~626_combout\ = (\RAM0|ram~649_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~649_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~626_combout\);

\RAM8|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~25_q\);

\RAM8|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~627_combout\ = (\RAM0|ram~643_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~643_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~627_combout\);

\RAM8|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~273_q\);

\RAM8|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~628_combout\ = (\RAM0|ram~651_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~651_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~628_combout\);

\RAM8|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~281_q\);

\RAM8|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~534_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~281_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~273_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~25_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~17_q\,
	datab => \RAM8|ALT_INV_ram~25_q\,
	datac => \RAM8|ALT_INV_ram~273_q\,
	datad => \RAM8|ALT_INV_ram~281_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~534_combout\);

\RAM8|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~629_combout\ = (\RAM0|ram~657_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~657_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~629_combout\);

\RAM8|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~49_q\);

\RAM8|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~630_combout\ = (\RAM0|ram~665_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~665_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~630_combout\);

\RAM8|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~57_q\);

\RAM8|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~631_combout\ = (\RAM0|ram~659_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~659_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~631_combout\);

\RAM8|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~305_q\);

\RAM8|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~632_combout\ = (\RAM0|ram~667_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~667_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~632_combout\);

\RAM8|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~313_q\);

\RAM8|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~535_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~313_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~305_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~57_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~49_q\,
	datab => \RAM8|ALT_INV_ram~57_q\,
	datac => \RAM8|ALT_INV_ram~305_q\,
	datad => \RAM8|ALT_INV_ram~313_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~535_combout\);

\RAM8|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~633_combout\ = (\RAM0|ram~645_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~645_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~633_combout\);

\RAM8|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~33_q\);

\RAM8|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~634_combout\ = (\RAM0|ram~653_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~653_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~634_combout\);

\RAM8|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~41_q\);

\RAM8|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~635_combout\ = (\RAM0|ram~647_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~647_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~635_combout\);

\RAM8|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~289_q\);

\RAM8|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~636_combout\ = (\RAM0|ram~655_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~655_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~636_combout\);

\RAM8|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~297_q\);

\RAM8|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~536_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~297_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~289_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~41_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~33_q\,
	datab => \RAM8|ALT_INV_ram~41_q\,
	datac => \RAM8|ALT_INV_ram~289_q\,
	datad => \RAM8|ALT_INV_ram~297_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~536_combout\);

\RAM8|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~637_combout\ = (\RAM0|ram~661_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~661_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~637_combout\);

\RAM8|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~65_q\);

\RAM8|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~638_combout\ = (\RAM0|ram~669_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~669_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~638_combout\);

\RAM8|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~73_q\);

\RAM8|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~639_combout\ = (\RAM0|ram~663_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~663_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~639_combout\);

\RAM8|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~321_q\);

\RAM8|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~640_combout\ = (\RAM0|ram~671_combout\ & \RAM8|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~671_combout\,
	datab => \RAM8|ALT_INV_process_0~0_combout\,
	combout => \RAM8|ram~640_combout\);

\RAM8|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~329_q\);

\RAM8|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~537_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~329_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~321_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~73_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~65_q\,
	datab => \RAM8|ALT_INV_ram~73_q\,
	datac => \RAM8|ALT_INV_ram~321_q\,
	datad => \RAM8|ALT_INV_ram~329_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~537_combout\);

\RAM8|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~538_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~536_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~534_combout\,
	datab => \RAM8|ALT_INV_ram~535_combout\,
	datac => \RAM8|ALT_INV_ram~536_combout\,
	datad => \RAM8|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~538_combout\);

\RAM8|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out~0_combout\ = (\ROM1|memROM~11_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~15_combout\ & \CPU|decoderInstru|saida[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[1]~0_combout\,
	combout => \RAM8|dado_out~0_combout\);

\RAM8|dado_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[0]~1_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~538_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~533_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000001110010000000000111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_ram~533_combout\,
	datac => \RAM8|ALT_INV_ram~538_combout\,
	datad => \RAM8|ALT_INV_dado_out~0_combout\,
	combout => \RAM8|dado_out[0]~1_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~17_combout\);

\RAM0|dado_out[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~11_combout\ = ( \ROM1|memROM~14_combout\ & ( \CPU|decoderInstru|saida[1]~0_combout\ ) ) # ( !\ROM1|memROM~14_combout\ & ( \CPU|decoderInstru|saida[1]~0_combout\ & ( (((!\ROM1|memROM~17_combout\) # (!\ROM1|memROM~11_combout\)) # 
-- (\CPU|PC|DOUT\(8))) # (\CPU|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida[1]~0_combout\,
	combout => \RAM0|dado_out[0]~11_combout\);

\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \RAM8|dado_out[0]~1_combout\ & ( \RAM0|dado_out[0]~11_combout\ & ( (\ROM1|memROM~16_combout\ & \CPU|decoderInstru|saida~2_combout\) ) ) ) # ( !\RAM8|dado_out[0]~1_combout\ & ( \RAM0|dado_out[0]~11_combout\ & ( 
-- (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~9_combout\ & !\RAM4|dado_out[0]~1_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~16_combout\)) ) ) ) # ( \RAM8|dado_out[0]~1_combout\ & ( !\RAM0|dado_out[0]~11_combout\ & ( 
-- (!\CPU|decoderInstru|saida~2_combout\) # (\ROM1|memROM~16_combout\) ) ) ) # ( !\RAM8|dado_out[0]~1_combout\ & ( !\RAM0|dado_out[0]~11_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\) # (\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~9_combout\,
	datad => \RAM4|ALT_INV_dado_out[0]~1_combout\,
	datae => \RAM8|ALT_INV_dado_out[0]~1_combout\,
	dataf => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoderInstru|saida~1_combout\) # (\CPU|decoderInstru|saida[4]~3_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGS|registrador~76_combout\ ) + ( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGS|registrador~76_combout\ ) + ( !\CPU|MUX1|saida_MUX[0]~0_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~76_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = (\CPU|MUX1|saida_MUX[0]~0_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~76_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\CPU|PC|DOUT\(2) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) $ (((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110001110000000000000000000000001100011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ 
-- (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001000110000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~1_combout\);

\CPU|decoderInstru|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[5]~4_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( (!\ROM1|memROM~20_combout\ & (!\ROM1|memROM~18_combout\ & (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~19_combout\))) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- (((!\ROM1|memROM~20_combout\ & !\ROM1|memROM~19_combout\)) # (\ROM1|memROM~8_combout\)) # (\ROM1|memROM~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111111100000000000000010111111001111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~20_combout\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~19_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|decoderInstru|saida[5]~4_combout\);

\CPU|REGS|registrador~140\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~140_combout\ = (\ROM1|memROM~1_combout\ & !\CPU|decoderInstru|saida[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[5]~4_combout\,
	combout => \CPU|REGS|registrador~140_combout\);

\CPU|REGS|registrador~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~141_combout\ = (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~140_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~140_combout\,
	combout => \CPU|REGS|registrador~141_combout\);

\CPU|REGS|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~52_q\);

\CPU|REGS|registrador~142\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~142_combout\ = (\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~140_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~140_combout\,
	combout => \CPU|REGS|registrador~142_combout\);

\CPU|REGS|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~68_q\);

\CPU|REGS|registrador~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~143_combout\ = (!\ROM1|memROM~1_combout\ & !\CPU|decoderInstru|saida[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[5]~4_combout\,
	combout => \CPU|REGS|registrador~143_combout\);

\CPU|REGS|registrador~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~145_combout\ = (\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~143_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~143_combout\,
	combout => \CPU|REGS|registrador~145_combout\);

\CPU|REGS|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~60_q\);

\CPU|REGS|registrador~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~146_combout\ = (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~140_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~140_combout\,
	combout => \CPU|REGS|registrador~146_combout\);

\CPU|REGS|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~20_q\);

\CPU|REGS|registrador~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~147_combout\ = (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~140_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~140_combout\,
	combout => \CPU|REGS|registrador~147_combout\);

\CPU|REGS|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~36_q\);

\CPU|REGS|registrador~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~149_combout\ = (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~143_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~143_combout\,
	combout => \CPU|REGS|registrador~149_combout\);

\CPU|REGS|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~28_q\);

\CPU|REGS|registrador~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~148_combout\ = (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~143_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~143_combout\,
	combout => \CPU|REGS|registrador~148_combout\);

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
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~12_q\);

\CPU|REGS|registrador~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~108_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~12_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~20_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~28_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~36_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~20_q\,
	datab => \CPU|REGS|ALT_INV_registrador~36_q\,
	datac => \CPU|REGS|ALT_INV_registrador~28_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~12_q\,
	combout => \CPU|REGS|registrador~108_combout\);

\CPU|REGS|registrador~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~144_combout\ = (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ & \CPU|REGS|registrador~143_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|REGS|ALT_INV_registrador~143_combout\,
	combout => \CPU|REGS|registrador~144_combout\);

\CPU|REGS|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~44_q\);

\CPU|REGS|registrador~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~76_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~108_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~108_combout\ & ((\CPU|REGS|registrador~44_q\))) # 
-- (\CPU|REGS|registrador~108_combout\ & (\CPU|REGS|registrador~52_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~108_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~108_combout\ & 
-- ((\CPU|REGS|registrador~60_q\))) # (\CPU|REGS|registrador~108_combout\ & (\CPU|REGS|registrador~68_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~52_q\,
	datab => \CPU|REGS|ALT_INV_registrador~68_q\,
	datac => \CPU|REGS|ALT_INV_registrador~60_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~108_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~44_q\,
	combout => \CPU|REGS|registrador~76_combout\);

\RAM0|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|process_0~0_combout\ = ( \CPU|decoderInstru|Equal11~0_combout\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~11_combout\ & !\ROM1|memROM~14_combout\))) # (\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011101110100000000000000001111110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \RAM0|process_0~0_combout\);

\RAM0|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~610_combout\ = (\RAM0|ram~609_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~609_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~610_combout\);

\RAM0|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~209_q\);

\RAM0|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~612_combout\ = (\RAM0|ram~611_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~611_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~612_combout\);

\RAM0|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~225_q\);

\RAM0|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~614_combout\ = (\RAM0|ram~613_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~613_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~614_combout\);

\RAM0|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~241_q\);

\RAM0|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~616_combout\ = (\RAM0|ram~615_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~615_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~616_combout\);

\RAM0|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~257_q\);

\RAM0|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~529_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~257_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~241_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~225_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~209_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~209_q\,
	datab => \RAM0|ALT_INV_ram~225_q\,
	datac => \RAM0|ALT_INV_ram~241_q\,
	datad => \RAM0|ALT_INV_ram~257_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~529_combout\);

\RAM0|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~618_combout\ = (\RAM0|ram~617_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~617_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~618_combout\);

\RAM0|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~217_q\);

\RAM0|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~620_combout\ = (\RAM0|ram~619_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~619_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~620_combout\);

\RAM0|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~233_q\);

\RAM0|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~622_combout\ = (\RAM0|ram~621_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~621_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~622_combout\);

\RAM0|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~249_q\);

\RAM0|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~624_combout\ = (\RAM0|ram~623_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~623_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~624_combout\);

\RAM0|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~265_q\);

\RAM0|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~530_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~265_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~249_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~233_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~217_q\,
	datab => \RAM0|ALT_INV_ram~233_q\,
	datac => \RAM0|ALT_INV_ram~249_q\,
	datad => \RAM0|ALT_INV_ram~265_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~530_combout\);

\RAM0|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~626_combout\ = (\RAM0|ram~625_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~625_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~626_combout\);

\RAM0|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~465_q\);

\RAM0|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~628_combout\ = (\RAM0|ram~627_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~627_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~628_combout\);

\RAM0|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~481_q\);

\RAM0|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~630_combout\ = (\RAM0|ram~629_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~629_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~630_combout\);

\RAM0|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~497_q\);

\RAM0|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~632_combout\ = (\RAM0|ram~631_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~631_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~632_combout\);

\RAM0|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~513_q\);

\RAM0|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~531_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~513_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~497_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~481_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~465_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~465_q\,
	datab => \RAM0|ALT_INV_ram~481_q\,
	datac => \RAM0|ALT_INV_ram~497_q\,
	datad => \RAM0|ALT_INV_ram~513_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~531_combout\);

\RAM0|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~634_combout\ = (\RAM0|ram~633_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~633_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~634_combout\);

\RAM0|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~473_q\);

\RAM0|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~636_combout\ = (\RAM0|ram~635_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~635_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~636_combout\);

\RAM0|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~489_q\);

\RAM0|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~638_combout\ = (\RAM0|ram~637_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~637_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~638_combout\);

\RAM0|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~505_q\);

\RAM0|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~640_combout\ = (\RAM0|ram~639_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~639_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~640_combout\);

\RAM0|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~521_q\);

\RAM0|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~532_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~521_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~505_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~489_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~473_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~473_q\,
	datab => \RAM0|ALT_INV_ram~489_q\,
	datac => \RAM0|ALT_INV_ram~505_q\,
	datad => \RAM0|ALT_INV_ram~521_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~532_combout\);

\RAM0|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~533_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~532_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~531_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~529_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~529_combout\,
	datab => \RAM0|ALT_INV_ram~530_combout\,
	datac => \RAM0|ALT_INV_ram~531_combout\,
	datad => \RAM0|ALT_INV_ram~532_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~533_combout\);

\RAM0|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~642_combout\ = (\RAM0|ram~641_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~641_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~642_combout\);

\RAM0|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~17_q\);

\RAM0|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~644_combout\ = (\RAM0|ram~643_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~643_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~644_combout\);

\RAM0|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~273_q\);

\RAM0|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~646_combout\ = (\RAM0|ram~645_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~645_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~646_combout\);

\RAM0|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~33_q\);

\RAM0|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~648_combout\ = (\RAM0|ram~647_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~647_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~648_combout\);

\RAM0|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~289_q\);

\RAM0|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~534_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~289_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~33_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM0|ram~273_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~17_q\,
	datab => \RAM0|ALT_INV_ram~273_q\,
	datac => \RAM0|ALT_INV_ram~33_q\,
	datad => \RAM0|ALT_INV_ram~289_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~534_combout\);

\RAM0|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~650_combout\ = (\RAM0|ram~649_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~649_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~650_combout\);

\RAM0|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~25_q\);

\RAM0|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~652_combout\ = (\RAM0|ram~651_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~651_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~652_combout\);

\RAM0|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~281_q\);

\RAM0|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~654_combout\ = (\RAM0|ram~653_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~653_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~654_combout\);

\RAM0|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~41_q\);

\RAM0|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~656_combout\ = (\RAM0|ram~655_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~655_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~656_combout\);

\RAM0|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~297_q\);

\RAM0|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~535_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~297_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~41_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM0|ram~281_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~25_q\,
	datab => \RAM0|ALT_INV_ram~281_q\,
	datac => \RAM0|ALT_INV_ram~41_q\,
	datad => \RAM0|ALT_INV_ram~297_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~535_combout\);

\RAM0|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~658_combout\ = (\RAM0|ram~657_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~657_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~658_combout\);

\RAM0|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~49_q\);

\RAM0|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~660_combout\ = (\RAM0|ram~659_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~659_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~660_combout\);

\RAM0|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~305_q\);

\RAM0|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~662_combout\ = (\RAM0|ram~661_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~661_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~662_combout\);

\RAM0|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~65_q\);

\RAM0|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~664_combout\ = (\RAM0|ram~663_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~663_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~664_combout\);

\RAM0|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~321_q\);

\RAM0|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~536_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~321_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~65_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM0|ram~305_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~49_q\,
	datab => \RAM0|ALT_INV_ram~305_q\,
	datac => \RAM0|ALT_INV_ram~65_q\,
	datad => \RAM0|ALT_INV_ram~321_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~536_combout\);

\RAM0|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~666_combout\ = (\RAM0|ram~665_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~665_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~666_combout\);

\RAM0|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~57_q\);

\RAM0|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~668_combout\ = (\RAM0|ram~667_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~667_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~668_combout\);

\RAM0|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~313_q\);

\RAM0|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~670_combout\ = (\RAM0|ram~669_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~669_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~670_combout\);

\RAM0|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~73_q\);

\RAM0|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~672_combout\ = (\RAM0|ram~671_combout\ & \RAM0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~671_combout\,
	datab => \RAM0|ALT_INV_process_0~0_combout\,
	combout => \RAM0|ram~672_combout\);

\RAM0|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~329_q\);

\RAM0|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~537_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~329_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~73_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( 
-- \RAM0|ram~313_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~57_q\,
	datab => \RAM0|ALT_INV_ram~313_q\,
	datac => \RAM0|ALT_INV_ram~73_q\,
	datad => \RAM0|ALT_INV_ram~329_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~537_combout\);

\RAM0|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~538_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~536_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~10_combout\ & ( \RAM0|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~534_combout\,
	datab => \RAM0|ALT_INV_ram~535_combout\,
	datac => \RAM0|ALT_INV_ram~536_combout\,
	datad => \RAM0|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~538_combout\);

\RAM0|dado_out[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~9_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~538_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~533_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~533_combout\,
	datad => \RAM0|ALT_INV_ram~538_combout\,
	combout => \RAM0|dado_out[0]~9_combout\);

\RAM0|dado_out[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[0]~10_combout\ = (!\RAM0|dado_out[0]~9_combout\ & (!\RAM4|dado_out[0]~1_combout\ & !\RAM8|dado_out[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[0]~9_combout\,
	datab => \RAM4|ALT_INV_dado_out[0]~1_combout\,
	datac => \RAM8|ALT_INV_dado_out[0]~1_combout\,
	combout => \RAM0|dado_out[0]~10_combout\);

\RAM4|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~210_q\);

\RAM4|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~226_q\);

\RAM4|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~242_q\);

\RAM4|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~258_q\);

\RAM4|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~539_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~258_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~242_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~226_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~210_q\,
	datab => \RAM4|ALT_INV_ram~226_q\,
	datac => \RAM4|ALT_INV_ram~242_q\,
	datad => \RAM4|ALT_INV_ram~258_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~539_combout\);

\RAM4|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~218_q\);

\RAM4|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~234_q\);

\RAM4|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~250_q\);

\RAM4|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~266_q\);

\RAM4|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~540_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~266_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~250_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~234_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~218_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~218_q\,
	datab => \RAM4|ALT_INV_ram~234_q\,
	datac => \RAM4|ALT_INV_ram~250_q\,
	datad => \RAM4|ALT_INV_ram~266_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~540_combout\);

\RAM4|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~466_q\);

\RAM4|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~482_q\);

\RAM4|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~498_q\);

\RAM4|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~514_q\);

\RAM4|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~541_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~514_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~498_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~482_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~466_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~466_q\,
	datab => \RAM4|ALT_INV_ram~482_q\,
	datac => \RAM4|ALT_INV_ram~498_q\,
	datad => \RAM4|ALT_INV_ram~514_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~541_combout\);

\RAM4|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~474_q\);

\RAM4|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~490_q\);

\RAM4|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~506_q\);

\RAM4|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~522_q\);

\RAM4|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~542_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~522_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~506_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~490_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~474_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~474_q\,
	datab => \RAM4|ALT_INV_ram~490_q\,
	datac => \RAM4|ALT_INV_ram~506_q\,
	datad => \RAM4|ALT_INV_ram~522_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~542_combout\);

\RAM4|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~543_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~542_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~541_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~539_combout\,
	datab => \RAM4|ALT_INV_ram~540_combout\,
	datac => \RAM4|ALT_INV_ram~541_combout\,
	datad => \RAM4|ALT_INV_ram~542_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~543_combout\);

\RAM4|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~18_q\);

\RAM4|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~26_q\);

\RAM4|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~274_q\);

\RAM4|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~282_q\);

\RAM4|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~544_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~282_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~274_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~26_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~18_q\,
	datab => \RAM4|ALT_INV_ram~26_q\,
	datac => \RAM4|ALT_INV_ram~274_q\,
	datad => \RAM4|ALT_INV_ram~282_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~544_combout\);

\RAM4|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~50_q\);

\RAM4|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~58_q\);

\RAM4|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~306_q\);

\RAM4|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~314_q\);

\RAM4|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~545_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~314_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~306_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~58_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~50_q\,
	datab => \RAM4|ALT_INV_ram~58_q\,
	datac => \RAM4|ALT_INV_ram~306_q\,
	datad => \RAM4|ALT_INV_ram~314_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~545_combout\);

\RAM4|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~34_q\);

\RAM4|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~42_q\);

\RAM4|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~290_q\);

\RAM4|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~298_q\);

\RAM4|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~546_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~298_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~290_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~42_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~34_q\,
	datab => \RAM4|ALT_INV_ram~42_q\,
	datac => \RAM4|ALT_INV_ram~290_q\,
	datad => \RAM4|ALT_INV_ram~298_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~546_combout\);

\RAM4|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~66_q\);

\RAM4|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~74_q\);

\RAM4|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~322_q\);

\RAM4|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~330_q\);

\RAM4|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~547_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~330_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~322_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~74_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~66_q\,
	datab => \RAM4|ALT_INV_ram~74_q\,
	datac => \RAM4|ALT_INV_ram~322_q\,
	datad => \RAM4|ALT_INV_ram~330_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~547_combout\);

\RAM4|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~548_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~547_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~546_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~545_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~544_combout\,
	datab => \RAM4|ALT_INV_ram~545_combout\,
	datac => \RAM4|ALT_INV_ram~546_combout\,
	datad => \RAM4|ALT_INV_ram~547_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~548_combout\);

\RAM4|dado_out[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[1]~2_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~548_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~543_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~543_combout\,
	datad => \RAM4|ALT_INV_ram~548_combout\,
	combout => \RAM4|dado_out[1]~2_combout\);

\RAM8|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~210_q\);

\RAM8|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~226_q\);

\RAM8|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~242_q\);

\RAM8|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~258_q\);

\RAM8|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~539_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~258_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~242_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~226_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~210_q\,
	datab => \RAM8|ALT_INV_ram~226_q\,
	datac => \RAM8|ALT_INV_ram~242_q\,
	datad => \RAM8|ALT_INV_ram~258_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~539_combout\);

\RAM8|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~218_q\);

\RAM8|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~234_q\);

\RAM8|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~250_q\);

\RAM8|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~266_q\);

\RAM8|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~540_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~266_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~250_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~234_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~218_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~218_q\,
	datab => \RAM8|ALT_INV_ram~234_q\,
	datac => \RAM8|ALT_INV_ram~250_q\,
	datad => \RAM8|ALT_INV_ram~266_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~540_combout\);

\RAM8|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~466_q\);

\RAM8|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~482_q\);

\RAM8|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~498_q\);

\RAM8|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~514_q\);

\RAM8|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~541_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~514_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~498_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~482_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~466_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~466_q\,
	datab => \RAM8|ALT_INV_ram~482_q\,
	datac => \RAM8|ALT_INV_ram~498_q\,
	datad => \RAM8|ALT_INV_ram~514_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~541_combout\);

\RAM8|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~474_q\);

\RAM8|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~490_q\);

\RAM8|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~506_q\);

\RAM8|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~522_q\);

\RAM8|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~542_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~522_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~506_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~490_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~474_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~474_q\,
	datab => \RAM8|ALT_INV_ram~490_q\,
	datac => \RAM8|ALT_INV_ram~506_q\,
	datad => \RAM8|ALT_INV_ram~522_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~542_combout\);

\RAM8|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~543_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~542_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~541_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~539_combout\,
	datab => \RAM8|ALT_INV_ram~540_combout\,
	datac => \RAM8|ALT_INV_ram~541_combout\,
	datad => \RAM8|ALT_INV_ram~542_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~543_combout\);

\RAM8|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~18_q\);

\RAM8|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~26_q\);

\RAM8|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~274_q\);

\RAM8|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~282_q\);

\RAM8|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~544_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~282_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~274_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~26_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~18_q\,
	datab => \RAM8|ALT_INV_ram~26_q\,
	datac => \RAM8|ALT_INV_ram~274_q\,
	datad => \RAM8|ALT_INV_ram~282_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~544_combout\);

\RAM8|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~50_q\);

\RAM8|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~58_q\);

\RAM8|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~306_q\);

\RAM8|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~314_q\);

\RAM8|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~545_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~314_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~306_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~58_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~50_q\,
	datab => \RAM8|ALT_INV_ram~58_q\,
	datac => \RAM8|ALT_INV_ram~306_q\,
	datad => \RAM8|ALT_INV_ram~314_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~545_combout\);

\RAM8|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~34_q\);

\RAM8|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~42_q\);

\RAM8|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~290_q\);

\RAM8|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~298_q\);

\RAM8|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~546_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~298_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~290_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~42_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~34_q\,
	datab => \RAM8|ALT_INV_ram~42_q\,
	datac => \RAM8|ALT_INV_ram~290_q\,
	datad => \RAM8|ALT_INV_ram~298_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~546_combout\);

\RAM8|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~66_q\);

\RAM8|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~74_q\);

\RAM8|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~322_q\);

\RAM8|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~330_q\);

\RAM8|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~547_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~330_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~322_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~74_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~66_q\,
	datab => \RAM8|ALT_INV_ram~74_q\,
	datac => \RAM8|ALT_INV_ram~322_q\,
	datad => \RAM8|ALT_INV_ram~330_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~547_combout\);

\RAM8|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~548_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~547_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~546_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~545_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~544_combout\,
	datab => \RAM8|ALT_INV_ram~545_combout\,
	datac => \RAM8|ALT_INV_ram~546_combout\,
	datad => \RAM8|ALT_INV_ram~547_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~548_combout\);

\RAM8|dado_out[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[1]~2_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~548_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~543_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~543_combout\,
	datad => \RAM8|ALT_INV_ram~548_combout\,
	combout => \RAM8|dado_out[1]~2_combout\);

\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \RAM4|dado_out[1]~2_combout\ & ( \RAM8|dado_out[1]~2_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # 
-- ( !\RAM4|dado_out[1]~2_combout\ & ( \RAM8|dado_out[1]~2_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( \RAM4|dado_out[1]~2_combout\ & ( 
-- !\RAM8|dado_out[1]~2_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~9_combout\)) ) ) ) # ( !\RAM4|dado_out[1]~2_combout\ & ( !\RAM8|dado_out[1]~2_combout\ & ( 
-- (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[1]~12_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[1]~12_combout\,
	datae => \RAM4|ALT_INV_dado_out[1]~2_combout\,
	dataf => \RAM8|ALT_INV_dado_out[1]~2_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGS|registrador~80_combout\ ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGS|registrador~80_combout\ ) + ( !\CPU|MUX1|saida_MUX[1]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~80_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = (\CPU|MUX1|saida_MUX[1]~1_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~80_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGS|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~53_q\);

\CPU|REGS|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~69_q\);

\CPU|REGS|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~61_q\);

\CPU|REGS|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~21_q\);

\CPU|REGS|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~37_q\);

\CPU|REGS|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~29_q\);

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
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~13_q\);

\CPU|REGS|registrador~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~112_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~13_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~21_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~29_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~37_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~21_q\,
	datab => \CPU|REGS|ALT_INV_registrador~37_q\,
	datac => \CPU|REGS|ALT_INV_registrador~29_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~13_q\,
	combout => \CPU|REGS|registrador~112_combout\);

\CPU|REGS|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~45_q\);

\CPU|REGS|registrador~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~80_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~112_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~112_combout\ & ((\CPU|REGS|registrador~45_q\))) # 
-- (\CPU|REGS|registrador~112_combout\ & (\CPU|REGS|registrador~53_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~112_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~112_combout\ & 
-- ((\CPU|REGS|registrador~61_q\))) # (\CPU|REGS|registrador~112_combout\ & (\CPU|REGS|registrador~69_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~53_q\,
	datab => \CPU|REGS|ALT_INV_registrador~69_q\,
	datac => \CPU|REGS|ALT_INV_registrador~61_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~112_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~45_q\,
	combout => \CPU|REGS|registrador~80_combout\);

\RAM0|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~210_q\);

\RAM0|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~226_q\);

\RAM0|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~242_q\);

\RAM0|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~258_q\);

\RAM0|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~539_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~258_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~242_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~226_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~210_q\,
	datab => \RAM0|ALT_INV_ram~226_q\,
	datac => \RAM0|ALT_INV_ram~242_q\,
	datad => \RAM0|ALT_INV_ram~258_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~539_combout\);

\RAM0|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~218_q\);

\RAM0|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~234_q\);

\RAM0|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~250_q\);

\RAM0|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~266_q\);

\RAM0|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~540_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~266_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~250_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~234_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~218_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~218_q\,
	datab => \RAM0|ALT_INV_ram~234_q\,
	datac => \RAM0|ALT_INV_ram~250_q\,
	datad => \RAM0|ALT_INV_ram~266_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~540_combout\);

\RAM0|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~466_q\);

\RAM0|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~482_q\);

\RAM0|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~498_q\);

\RAM0|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~514_q\);

\RAM0|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~541_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~514_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~498_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~482_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~466_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~466_q\,
	datab => \RAM0|ALT_INV_ram~482_q\,
	datac => \RAM0|ALT_INV_ram~498_q\,
	datad => \RAM0|ALT_INV_ram~514_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~541_combout\);

\RAM0|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~474_q\);

\RAM0|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~490_q\);

\RAM0|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~506_q\);

\RAM0|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~522_q\);

\RAM0|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~542_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~522_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~506_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~490_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~474_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~474_q\,
	datab => \RAM0|ALT_INV_ram~490_q\,
	datac => \RAM0|ALT_INV_ram~506_q\,
	datad => \RAM0|ALT_INV_ram~522_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~542_combout\);

\RAM0|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~543_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~542_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~541_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~539_combout\,
	datab => \RAM0|ALT_INV_ram~540_combout\,
	datac => \RAM0|ALT_INV_ram~541_combout\,
	datad => \RAM0|ALT_INV_ram~542_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~543_combout\);

\RAM0|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~18_q\);

\RAM0|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~26_q\);

\RAM0|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~274_q\);

\RAM0|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~282_q\);

\RAM0|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~544_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~282_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~274_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~26_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~18_q\,
	datab => \RAM0|ALT_INV_ram~26_q\,
	datac => \RAM0|ALT_INV_ram~274_q\,
	datad => \RAM0|ALT_INV_ram~282_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~544_combout\);

\RAM0|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~50_q\);

\RAM0|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~58_q\);

\RAM0|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~306_q\);

\RAM0|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~314_q\);

\RAM0|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~545_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~314_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~306_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~58_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~50_q\,
	datab => \RAM0|ALT_INV_ram~58_q\,
	datac => \RAM0|ALT_INV_ram~306_q\,
	datad => \RAM0|ALT_INV_ram~314_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~545_combout\);

\RAM0|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~34_q\);

\RAM0|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~42_q\);

\RAM0|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~290_q\);

\RAM0|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~298_q\);

\RAM0|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~546_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~298_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~290_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~42_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~34_q\,
	datab => \RAM0|ALT_INV_ram~42_q\,
	datac => \RAM0|ALT_INV_ram~290_q\,
	datad => \RAM0|ALT_INV_ram~298_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~546_combout\);

\RAM0|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~66_q\);

\RAM0|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~74_q\);

\RAM0|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~322_q\);

\RAM0|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~330_q\);

\RAM0|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~547_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~330_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~322_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~74_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~66_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~66_q\,
	datab => \RAM0|ALT_INV_ram~74_q\,
	datac => \RAM0|ALT_INV_ram~322_q\,
	datad => \RAM0|ALT_INV_ram~330_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~547_combout\);

\RAM0|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~548_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~547_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~546_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~545_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~544_combout\,
	datab => \RAM0|ALT_INV_ram~545_combout\,
	datac => \RAM0|ALT_INV_ram~546_combout\,
	datad => \RAM0|ALT_INV_ram~547_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~548_combout\);

\RAM0|dado_out[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[1]~12_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~548_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~543_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~543_combout\,
	datad => \RAM0|ALT_INV_ram~548_combout\,
	combout => \RAM0|dado_out[1]~12_combout\);

\RAM0|dado_out[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[1]~13_combout\ = (!\RAM0|dado_out[1]~12_combout\ & (!\RAM4|dado_out[1]~2_combout\ & !\RAM8|dado_out[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[1]~12_combout\,
	datab => \RAM4|ALT_INV_dado_out[1]~2_combout\,
	datac => \RAM8|ALT_INV_dado_out[1]~2_combout\,
	combout => \RAM0|dado_out[1]~13_combout\);

\RAM4|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~211_q\);

\RAM4|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~227_q\);

\RAM4|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~243_q\);

\RAM4|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~259_q\);

\RAM4|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~549_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~259_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~243_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~227_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~211_q\,
	datab => \RAM4|ALT_INV_ram~227_q\,
	datac => \RAM4|ALT_INV_ram~243_q\,
	datad => \RAM4|ALT_INV_ram~259_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~549_combout\);

\RAM4|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~219_q\);

\RAM4|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~235_q\);

\RAM4|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~251_q\);

\RAM4|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~267_q\);

\RAM4|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~550_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~267_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~251_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~235_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~219_q\,
	datab => \RAM4|ALT_INV_ram~235_q\,
	datac => \RAM4|ALT_INV_ram~251_q\,
	datad => \RAM4|ALT_INV_ram~267_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~550_combout\);

\RAM4|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~467_q\);

\RAM4|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~483_q\);

\RAM4|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~499_q\);

\RAM4|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~515_q\);

\RAM4|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~551_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~515_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~499_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~483_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~467_q\,
	datab => \RAM4|ALT_INV_ram~483_q\,
	datac => \RAM4|ALT_INV_ram~499_q\,
	datad => \RAM4|ALT_INV_ram~515_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~551_combout\);

\RAM4|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~475_q\);

\RAM4|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~491_q\);

\RAM4|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~507_q\);

\RAM4|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~523_q\);

\RAM4|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~552_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~523_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~507_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~491_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~475_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~475_q\,
	datab => \RAM4|ALT_INV_ram~491_q\,
	datac => \RAM4|ALT_INV_ram~507_q\,
	datad => \RAM4|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~552_combout\);

\RAM4|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~553_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~551_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~550_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~549_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~549_combout\,
	datab => \RAM4|ALT_INV_ram~550_combout\,
	datac => \RAM4|ALT_INV_ram~551_combout\,
	datad => \RAM4|ALT_INV_ram~552_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~553_combout\);

\RAM4|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~19_q\);

\RAM4|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~27_q\);

\RAM4|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~275_q\);

\RAM4|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~283_q\);

\RAM4|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~554_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~283_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~275_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~27_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~19_q\,
	datab => \RAM4|ALT_INV_ram~27_q\,
	datac => \RAM4|ALT_INV_ram~275_q\,
	datad => \RAM4|ALT_INV_ram~283_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~554_combout\);

\RAM4|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~51_q\);

\RAM4|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~59_q\);

\RAM4|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~307_q\);

\RAM4|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~315_q\);

\RAM4|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~555_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~315_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~307_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~59_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~51_q\,
	datab => \RAM4|ALT_INV_ram~59_q\,
	datac => \RAM4|ALT_INV_ram~307_q\,
	datad => \RAM4|ALT_INV_ram~315_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~555_combout\);

\RAM4|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~35_q\);

\RAM4|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~43_q\);

\RAM4|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~291_q\);

\RAM4|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~299_q\);

\RAM4|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~556_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~299_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~291_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~43_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~35_q\,
	datab => \RAM4|ALT_INV_ram~43_q\,
	datac => \RAM4|ALT_INV_ram~291_q\,
	datad => \RAM4|ALT_INV_ram~299_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~556_combout\);

\RAM4|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~67_q\);

\RAM4|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~75_q\);

\RAM4|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~323_q\);

\RAM4|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~331_q\);

\RAM4|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~557_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~331_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~323_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~75_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~67_q\,
	datab => \RAM4|ALT_INV_ram~75_q\,
	datac => \RAM4|ALT_INV_ram~323_q\,
	datad => \RAM4|ALT_INV_ram~331_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~557_combout\);

\RAM4|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~558_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~557_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~556_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~554_combout\,
	datab => \RAM4|ALT_INV_ram~555_combout\,
	datac => \RAM4|ALT_INV_ram~556_combout\,
	datad => \RAM4|ALT_INV_ram~557_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~558_combout\);

\RAM4|dado_out[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[2]~3_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~558_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~553_combout\,
	datad => \RAM4|ALT_INV_ram~558_combout\,
	combout => \RAM4|dado_out[2]~3_combout\);

\RAM8|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~211_q\);

\RAM8|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~227_q\);

\RAM8|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~243_q\);

\RAM8|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~259_q\);

\RAM8|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~549_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~259_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~243_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~227_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~211_q\,
	datab => \RAM8|ALT_INV_ram~227_q\,
	datac => \RAM8|ALT_INV_ram~243_q\,
	datad => \RAM8|ALT_INV_ram~259_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~549_combout\);

\RAM8|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~219_q\);

\RAM8|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~235_q\);

\RAM8|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~251_q\);

\RAM8|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~267_q\);

\RAM8|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~550_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~267_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~251_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~235_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~219_q\,
	datab => \RAM8|ALT_INV_ram~235_q\,
	datac => \RAM8|ALT_INV_ram~251_q\,
	datad => \RAM8|ALT_INV_ram~267_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~550_combout\);

\RAM8|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~467_q\);

\RAM8|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~483_q\);

\RAM8|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~499_q\);

\RAM8|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~515_q\);

\RAM8|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~551_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~515_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~499_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~483_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~467_q\,
	datab => \RAM8|ALT_INV_ram~483_q\,
	datac => \RAM8|ALT_INV_ram~499_q\,
	datad => \RAM8|ALT_INV_ram~515_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~551_combout\);

\RAM8|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~475_q\);

\RAM8|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~491_q\);

\RAM8|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~507_q\);

\RAM8|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~523_q\);

\RAM8|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~552_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~523_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~507_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~491_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~475_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~475_q\,
	datab => \RAM8|ALT_INV_ram~491_q\,
	datac => \RAM8|ALT_INV_ram~507_q\,
	datad => \RAM8|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~552_combout\);

\RAM8|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~553_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~551_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~550_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~549_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~549_combout\,
	datab => \RAM8|ALT_INV_ram~550_combout\,
	datac => \RAM8|ALT_INV_ram~551_combout\,
	datad => \RAM8|ALT_INV_ram~552_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~553_combout\);

\RAM8|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~19_q\);

\RAM8|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~27_q\);

\RAM8|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~275_q\);

\RAM8|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~283_q\);

\RAM8|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~554_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~283_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~275_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~27_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~19_q\,
	datab => \RAM8|ALT_INV_ram~27_q\,
	datac => \RAM8|ALT_INV_ram~275_q\,
	datad => \RAM8|ALT_INV_ram~283_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~554_combout\);

\RAM8|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~51_q\);

\RAM8|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~59_q\);

\RAM8|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~307_q\);

\RAM8|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~315_q\);

\RAM8|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~555_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~315_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~307_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~59_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~51_q\,
	datab => \RAM8|ALT_INV_ram~59_q\,
	datac => \RAM8|ALT_INV_ram~307_q\,
	datad => \RAM8|ALT_INV_ram~315_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~555_combout\);

\RAM8|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~35_q\);

\RAM8|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~43_q\);

\RAM8|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~291_q\);

\RAM8|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~299_q\);

\RAM8|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~556_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~299_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~291_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~43_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~35_q\,
	datab => \RAM8|ALT_INV_ram~43_q\,
	datac => \RAM8|ALT_INV_ram~291_q\,
	datad => \RAM8|ALT_INV_ram~299_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~556_combout\);

\RAM8|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~67_q\);

\RAM8|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~75_q\);

\RAM8|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~323_q\);

\RAM8|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~331_q\);

\RAM8|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~557_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~331_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~323_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~75_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~67_q\,
	datab => \RAM8|ALT_INV_ram~75_q\,
	datac => \RAM8|ALT_INV_ram~323_q\,
	datad => \RAM8|ALT_INV_ram~331_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~557_combout\);

\RAM8|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~558_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~557_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~556_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~554_combout\,
	datab => \RAM8|ALT_INV_ram~555_combout\,
	datac => \RAM8|ALT_INV_ram~556_combout\,
	datad => \RAM8|ALT_INV_ram~557_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~558_combout\);

\RAM8|dado_out[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[2]~3_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~558_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~553_combout\,
	datad => \RAM8|ALT_INV_ram~558_combout\,
	combout => \RAM8|dado_out[2]~3_combout\);

\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = ( \RAM4|dado_out[2]~3_combout\ & ( \RAM8|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~10_combout\)) ) ) ) 
-- # ( !\RAM4|dado_out[2]~3_combout\ & ( \RAM8|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~10_combout\)) ) ) ) # ( \RAM4|dado_out[2]~3_combout\ 
-- & ( !\RAM8|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~10_combout\)) ) ) ) # ( !\RAM4|dado_out[2]~3_combout\ & ( 
-- !\RAM8|dado_out[2]~3_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[2]~14_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[2]~14_combout\,
	datae => \RAM4|ALT_INV_dado_out[2]~3_combout\,
	dataf => \RAM8|ALT_INV_dado_out[2]~3_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGS|registrador~84_combout\ ) + ( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGS|registrador~84_combout\ ) + ( !\CPU|MUX1|saida_MUX[2]~2_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~84_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = (\CPU|MUX1|saida_MUX[2]~2_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~84_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGS|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~54_q\);

\CPU|REGS|registrador~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~70_q\);

\CPU|REGS|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~62_q\);

\CPU|REGS|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~22_q\);

\CPU|REGS|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~38_q\);

\CPU|REGS|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~30_q\);

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
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~14_q\);

\CPU|REGS|registrador~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~116_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~14_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~22_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~30_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~38_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~22_q\,
	datab => \CPU|REGS|ALT_INV_registrador~38_q\,
	datac => \CPU|REGS|ALT_INV_registrador~30_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~14_q\,
	combout => \CPU|REGS|registrador~116_combout\);

\CPU|REGS|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~46_q\);

\CPU|REGS|registrador~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~84_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~116_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~116_combout\ & ((\CPU|REGS|registrador~46_q\))) # 
-- (\CPU|REGS|registrador~116_combout\ & (\CPU|REGS|registrador~54_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~116_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~116_combout\ & 
-- ((\CPU|REGS|registrador~62_q\))) # (\CPU|REGS|registrador~116_combout\ & (\CPU|REGS|registrador~70_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~54_q\,
	datab => \CPU|REGS|ALT_INV_registrador~70_q\,
	datac => \CPU|REGS|ALT_INV_registrador~62_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~116_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~46_q\,
	combout => \CPU|REGS|registrador~84_combout\);

\RAM0|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~211_q\);

\RAM0|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~227_q\);

\RAM0|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~243_q\);

\RAM0|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~259_q\);

\RAM0|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~549_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~259_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~243_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~227_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~211_q\,
	datab => \RAM0|ALT_INV_ram~227_q\,
	datac => \RAM0|ALT_INV_ram~243_q\,
	datad => \RAM0|ALT_INV_ram~259_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~549_combout\);

\RAM0|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~219_q\);

\RAM0|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~235_q\);

\RAM0|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~251_q\);

\RAM0|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~267_q\);

\RAM0|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~550_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~267_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~251_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~235_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~219_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~219_q\,
	datab => \RAM0|ALT_INV_ram~235_q\,
	datac => \RAM0|ALT_INV_ram~251_q\,
	datad => \RAM0|ALT_INV_ram~267_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~550_combout\);

\RAM0|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~467_q\);

\RAM0|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~483_q\);

\RAM0|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~499_q\);

\RAM0|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~515_q\);

\RAM0|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~551_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~515_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~499_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~483_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~467_q\,
	datab => \RAM0|ALT_INV_ram~483_q\,
	datac => \RAM0|ALT_INV_ram~499_q\,
	datad => \RAM0|ALT_INV_ram~515_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~551_combout\);

\RAM0|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~475_q\);

\RAM0|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~491_q\);

\RAM0|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~507_q\);

\RAM0|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~523_q\);

\RAM0|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~552_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~523_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~507_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~491_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~475_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~475_q\,
	datab => \RAM0|ALT_INV_ram~491_q\,
	datac => \RAM0|ALT_INV_ram~507_q\,
	datad => \RAM0|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~552_combout\);

\RAM0|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~553_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~552_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~551_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~550_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~549_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~549_combout\,
	datab => \RAM0|ALT_INV_ram~550_combout\,
	datac => \RAM0|ALT_INV_ram~551_combout\,
	datad => \RAM0|ALT_INV_ram~552_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~553_combout\);

\RAM0|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~19_q\);

\RAM0|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~27_q\);

\RAM0|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~275_q\);

\RAM0|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~283_q\);

\RAM0|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~554_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~283_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~275_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~27_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~19_q\,
	datab => \RAM0|ALT_INV_ram~27_q\,
	datac => \RAM0|ALT_INV_ram~275_q\,
	datad => \RAM0|ALT_INV_ram~283_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~554_combout\);

\RAM0|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~51_q\);

\RAM0|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~59_q\);

\RAM0|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~307_q\);

\RAM0|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~315_q\);

\RAM0|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~555_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~315_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~307_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~59_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~51_q\,
	datab => \RAM0|ALT_INV_ram~59_q\,
	datac => \RAM0|ALT_INV_ram~307_q\,
	datad => \RAM0|ALT_INV_ram~315_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~555_combout\);

\RAM0|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~35_q\);

\RAM0|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~43_q\);

\RAM0|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~291_q\);

\RAM0|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~299_q\);

\RAM0|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~556_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~299_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~291_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~43_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~35_q\,
	datab => \RAM0|ALT_INV_ram~43_q\,
	datac => \RAM0|ALT_INV_ram~291_q\,
	datad => \RAM0|ALT_INV_ram~299_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~556_combout\);

\RAM0|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~67_q\);

\RAM0|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~75_q\);

\RAM0|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~323_q\);

\RAM0|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~331_q\);

\RAM0|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~557_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~331_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~323_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~75_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~67_q\,
	datab => \RAM0|ALT_INV_ram~75_q\,
	datac => \RAM0|ALT_INV_ram~323_q\,
	datad => \RAM0|ALT_INV_ram~331_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~557_combout\);

\RAM0|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~558_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~557_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~556_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~555_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~554_combout\,
	datab => \RAM0|ALT_INV_ram~555_combout\,
	datac => \RAM0|ALT_INV_ram~556_combout\,
	datad => \RAM0|ALT_INV_ram~557_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~558_combout\);

\RAM0|dado_out[2]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[2]~14_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~558_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~553_combout\,
	datad => \RAM0|ALT_INV_ram~558_combout\,
	combout => \RAM0|dado_out[2]~14_combout\);

\RAM0|dado_out[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[2]~15_combout\ = (!\RAM0|dado_out[2]~14_combout\ & (!\RAM4|dado_out[2]~3_combout\ & !\RAM8|dado_out[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[2]~14_combout\,
	datab => \RAM4|ALT_INV_dado_out[2]~3_combout\,
	datac => \RAM8|ALT_INV_dado_out[2]~3_combout\,
	combout => \RAM0|dado_out[2]~15_combout\);

\RAM4|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~212_q\);

\RAM4|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~228_q\);

\RAM4|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~244_q\);

\RAM4|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~260_q\);

\RAM4|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~559_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~260_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~244_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~228_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~212_q\,
	datab => \RAM4|ALT_INV_ram~228_q\,
	datac => \RAM4|ALT_INV_ram~244_q\,
	datad => \RAM4|ALT_INV_ram~260_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~559_combout\);

\RAM4|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~220_q\);

\RAM4|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~236_q\);

\RAM4|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~252_q\);

\RAM4|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~268_q\);

\RAM4|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~560_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~268_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~252_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~236_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~220_q\,
	datab => \RAM4|ALT_INV_ram~236_q\,
	datac => \RAM4|ALT_INV_ram~252_q\,
	datad => \RAM4|ALT_INV_ram~268_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~560_combout\);

\RAM4|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~468_q\);

\RAM4|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~484_q\);

\RAM4|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~500_q\);

\RAM4|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~516_q\);

\RAM4|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~561_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~516_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~500_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~484_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~468_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~468_q\,
	datab => \RAM4|ALT_INV_ram~484_q\,
	datac => \RAM4|ALT_INV_ram~500_q\,
	datad => \RAM4|ALT_INV_ram~516_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~561_combout\);

\RAM4|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~476_q\);

\RAM4|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~492_q\);

\RAM4|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~508_q\);

\RAM4|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~524_q\);

\RAM4|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~562_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~524_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~508_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~492_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~476_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~476_q\,
	datab => \RAM4|ALT_INV_ram~492_q\,
	datac => \RAM4|ALT_INV_ram~508_q\,
	datad => \RAM4|ALT_INV_ram~524_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~562_combout\);

\RAM4|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~563_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~562_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~561_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~560_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~559_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~559_combout\,
	datab => \RAM4|ALT_INV_ram~560_combout\,
	datac => \RAM4|ALT_INV_ram~561_combout\,
	datad => \RAM4|ALT_INV_ram~562_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~563_combout\);

\RAM4|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~20_q\);

\RAM4|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~28_q\);

\RAM4|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~276_q\);

\RAM4|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~284_q\);

\RAM4|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~564_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~284_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~276_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~28_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~20_q\,
	datab => \RAM4|ALT_INV_ram~28_q\,
	datac => \RAM4|ALT_INV_ram~276_q\,
	datad => \RAM4|ALT_INV_ram~284_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~564_combout\);

\RAM4|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~52_q\);

\RAM4|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~60_q\);

\RAM4|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~308_q\);

\RAM4|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~316_q\);

\RAM4|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~565_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~316_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~308_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~60_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~52_q\,
	datab => \RAM4|ALT_INV_ram~60_q\,
	datac => \RAM4|ALT_INV_ram~308_q\,
	datad => \RAM4|ALT_INV_ram~316_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~565_combout\);

\RAM4|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~36_q\);

\RAM4|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~44_q\);

\RAM4|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~292_q\);

\RAM4|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~300_q\);

\RAM4|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~566_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~300_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~292_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~44_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~36_q\,
	datab => \RAM4|ALT_INV_ram~44_q\,
	datac => \RAM4|ALT_INV_ram~292_q\,
	datad => \RAM4|ALT_INV_ram~300_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~566_combout\);

\RAM4|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~68_q\);

\RAM4|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~76_q\);

\RAM4|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~324_q\);

\RAM4|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~332_q\);

\RAM4|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~567_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~332_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~324_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~76_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~68_q\,
	datab => \RAM4|ALT_INV_ram~76_q\,
	datac => \RAM4|ALT_INV_ram~324_q\,
	datad => \RAM4|ALT_INV_ram~332_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~567_combout\);

\RAM4|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~568_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~567_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~566_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~565_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~564_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~564_combout\,
	datab => \RAM4|ALT_INV_ram~565_combout\,
	datac => \RAM4|ALT_INV_ram~566_combout\,
	datad => \RAM4|ALT_INV_ram~567_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~568_combout\);

\RAM4|dado_out[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[3]~4_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~568_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~563_combout\,
	datad => \RAM4|ALT_INV_ram~568_combout\,
	combout => \RAM4|dado_out[3]~4_combout\);

\RAM8|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~212_q\);

\RAM8|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~228_q\);

\RAM8|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~244_q\);

\RAM8|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~260_q\);

\RAM8|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~559_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~260_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~244_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~228_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~212_q\,
	datab => \RAM8|ALT_INV_ram~228_q\,
	datac => \RAM8|ALT_INV_ram~244_q\,
	datad => \RAM8|ALT_INV_ram~260_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~559_combout\);

\RAM8|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~220_q\);

\RAM8|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~236_q\);

\RAM8|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~252_q\);

\RAM8|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~268_q\);

\RAM8|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~560_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~268_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~252_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~236_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~220_q\,
	datab => \RAM8|ALT_INV_ram~236_q\,
	datac => \RAM8|ALT_INV_ram~252_q\,
	datad => \RAM8|ALT_INV_ram~268_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~560_combout\);

\RAM8|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~468_q\);

\RAM8|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~484_q\);

\RAM8|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~500_q\);

\RAM8|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~516_q\);

\RAM8|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~561_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~516_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~500_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~484_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~468_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~468_q\,
	datab => \RAM8|ALT_INV_ram~484_q\,
	datac => \RAM8|ALT_INV_ram~500_q\,
	datad => \RAM8|ALT_INV_ram~516_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~561_combout\);

\RAM8|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~476_q\);

\RAM8|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~492_q\);

\RAM8|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~508_q\);

\RAM8|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~524_q\);

\RAM8|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~562_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~524_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~508_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~492_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~476_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~476_q\,
	datab => \RAM8|ALT_INV_ram~492_q\,
	datac => \RAM8|ALT_INV_ram~508_q\,
	datad => \RAM8|ALT_INV_ram~524_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~562_combout\);

\RAM8|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~563_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~562_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~561_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~560_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~559_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~559_combout\,
	datab => \RAM8|ALT_INV_ram~560_combout\,
	datac => \RAM8|ALT_INV_ram~561_combout\,
	datad => \RAM8|ALT_INV_ram~562_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~563_combout\);

\RAM8|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~20_q\);

\RAM8|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~28_q\);

\RAM8|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~276_q\);

\RAM8|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~284_q\);

\RAM8|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~564_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~284_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~276_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~28_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~20_q\,
	datab => \RAM8|ALT_INV_ram~28_q\,
	datac => \RAM8|ALT_INV_ram~276_q\,
	datad => \RAM8|ALT_INV_ram~284_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~564_combout\);

\RAM8|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~52_q\);

\RAM8|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~60_q\);

\RAM8|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~308_q\);

\RAM8|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~316_q\);

\RAM8|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~565_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~316_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~308_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~60_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~52_q\,
	datab => \RAM8|ALT_INV_ram~60_q\,
	datac => \RAM8|ALT_INV_ram~308_q\,
	datad => \RAM8|ALT_INV_ram~316_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~565_combout\);

\RAM8|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~36_q\);

\RAM8|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~44_q\);

\RAM8|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~292_q\);

\RAM8|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~300_q\);

\RAM8|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~566_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~300_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~292_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~44_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~36_q\,
	datab => \RAM8|ALT_INV_ram~44_q\,
	datac => \RAM8|ALT_INV_ram~292_q\,
	datad => \RAM8|ALT_INV_ram~300_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~566_combout\);

\RAM8|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~68_q\);

\RAM8|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~76_q\);

\RAM8|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~324_q\);

\RAM8|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~332_q\);

\RAM8|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~567_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~332_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~324_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~76_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~68_q\,
	datab => \RAM8|ALT_INV_ram~76_q\,
	datac => \RAM8|ALT_INV_ram~324_q\,
	datad => \RAM8|ALT_INV_ram~332_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~567_combout\);

\RAM8|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~568_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~567_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~566_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~565_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~564_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~564_combout\,
	datab => \RAM8|ALT_INV_ram~565_combout\,
	datac => \RAM8|ALT_INV_ram~566_combout\,
	datad => \RAM8|ALT_INV_ram~567_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~568_combout\);

\RAM8|dado_out[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[3]~4_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~568_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~563_combout\,
	datad => \RAM8|ALT_INV_ram~568_combout\,
	combout => \RAM8|dado_out[3]~4_combout\);

\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = ( \RAM4|dado_out[3]~4_combout\ & ( \RAM8|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) 
-- # ( !\RAM4|dado_out[3]~4_combout\ & ( \RAM8|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( \RAM4|dado_out[3]~4_combout\ 
-- & ( !\RAM8|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( !\RAM4|dado_out[3]~4_combout\ & ( 
-- !\RAM8|dado_out[3]~4_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[3]~16_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[3]~16_combout\,
	datae => \RAM4|ALT_INV_dado_out[3]~4_combout\,
	dataf => \RAM8|ALT_INV_dado_out[3]~4_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGS|registrador~88_combout\ ) + ( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGS|registrador~88_combout\ ) + ( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~88_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (\CPU|MUX1|saida_MUX[3]~3_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~88_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGS|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~55_q\);

\CPU|REGS|registrador~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~71_q\);

\CPU|REGS|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~63_q\);

\CPU|REGS|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~23_q\);

\CPU|REGS|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~39_q\);

\CPU|REGS|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~31_q\);

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
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~15_q\);

\CPU|REGS|registrador~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~120_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~15_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~23_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~31_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~39_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~23_q\,
	datab => \CPU|REGS|ALT_INV_registrador~39_q\,
	datac => \CPU|REGS|ALT_INV_registrador~31_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~15_q\,
	combout => \CPU|REGS|registrador~120_combout\);

\CPU|REGS|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~47_q\);

\CPU|REGS|registrador~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~88_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~120_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~120_combout\ & ((\CPU|REGS|registrador~47_q\))) # 
-- (\CPU|REGS|registrador~120_combout\ & (\CPU|REGS|registrador~55_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~120_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~120_combout\ & 
-- ((\CPU|REGS|registrador~63_q\))) # (\CPU|REGS|registrador~120_combout\ & (\CPU|REGS|registrador~71_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~55_q\,
	datab => \CPU|REGS|ALT_INV_registrador~71_q\,
	datac => \CPU|REGS|ALT_INV_registrador~63_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~120_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~47_q\,
	combout => \CPU|REGS|registrador~88_combout\);

\RAM0|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~212_q\);

\RAM0|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~228_q\);

\RAM0|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~244_q\);

\RAM0|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~260_q\);

\RAM0|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~559_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~260_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~244_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~228_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~212_q\,
	datab => \RAM0|ALT_INV_ram~228_q\,
	datac => \RAM0|ALT_INV_ram~244_q\,
	datad => \RAM0|ALT_INV_ram~260_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~559_combout\);

\RAM0|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~220_q\);

\RAM0|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~236_q\);

\RAM0|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~252_q\);

\RAM0|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~268_q\);

\RAM0|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~560_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~268_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~252_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~236_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~220_q\,
	datab => \RAM0|ALT_INV_ram~236_q\,
	datac => \RAM0|ALT_INV_ram~252_q\,
	datad => \RAM0|ALT_INV_ram~268_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~560_combout\);

\RAM0|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~468_q\);

\RAM0|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~484_q\);

\RAM0|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~500_q\);

\RAM0|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~516_q\);

\RAM0|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~561_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~516_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~500_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~484_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~468_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~468_q\,
	datab => \RAM0|ALT_INV_ram~484_q\,
	datac => \RAM0|ALT_INV_ram~500_q\,
	datad => \RAM0|ALT_INV_ram~516_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~561_combout\);

\RAM0|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~476_q\);

\RAM0|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~492_q\);

\RAM0|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~508_q\);

\RAM0|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~524_q\);

\RAM0|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~562_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~524_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~508_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~492_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~476_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~476_q\,
	datab => \RAM0|ALT_INV_ram~492_q\,
	datac => \RAM0|ALT_INV_ram~508_q\,
	datad => \RAM0|ALT_INV_ram~524_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~562_combout\);

\RAM0|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~563_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~562_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~561_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~560_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~559_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~559_combout\,
	datab => \RAM0|ALT_INV_ram~560_combout\,
	datac => \RAM0|ALT_INV_ram~561_combout\,
	datad => \RAM0|ALT_INV_ram~562_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~563_combout\);

\RAM0|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~20_q\);

\RAM0|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~28_q\);

\RAM0|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~276_q\);

\RAM0|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~284_q\);

\RAM0|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~564_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~284_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~276_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~28_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~20_q\,
	datab => \RAM0|ALT_INV_ram~28_q\,
	datac => \RAM0|ALT_INV_ram~276_q\,
	datad => \RAM0|ALT_INV_ram~284_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~564_combout\);

\RAM0|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~52_q\);

\RAM0|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~60_q\);

\RAM0|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~308_q\);

\RAM0|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~316_q\);

\RAM0|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~565_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~316_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~308_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~60_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~52_q\,
	datab => \RAM0|ALT_INV_ram~60_q\,
	datac => \RAM0|ALT_INV_ram~308_q\,
	datad => \RAM0|ALT_INV_ram~316_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~565_combout\);

\RAM0|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~36_q\);

\RAM0|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~44_q\);

\RAM0|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~292_q\);

\RAM0|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~300_q\);

\RAM0|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~566_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~300_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~292_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~44_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~36_q\,
	datab => \RAM0|ALT_INV_ram~44_q\,
	datac => \RAM0|ALT_INV_ram~292_q\,
	datad => \RAM0|ALT_INV_ram~300_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~566_combout\);

\RAM0|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~68_q\);

\RAM0|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~76_q\);

\RAM0|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~324_q\);

\RAM0|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~332_q\);

\RAM0|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~567_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~332_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~324_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~76_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~68_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~68_q\,
	datab => \RAM0|ALT_INV_ram~76_q\,
	datac => \RAM0|ALT_INV_ram~324_q\,
	datad => \RAM0|ALT_INV_ram~332_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~567_combout\);

\RAM0|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~568_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~567_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~566_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~565_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~564_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~564_combout\,
	datab => \RAM0|ALT_INV_ram~565_combout\,
	datac => \RAM0|ALT_INV_ram~566_combout\,
	datad => \RAM0|ALT_INV_ram~567_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~568_combout\);

\RAM0|dado_out[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[3]~16_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~568_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~563_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~563_combout\,
	datad => \RAM0|ALT_INV_ram~568_combout\,
	combout => \RAM0|dado_out[3]~16_combout\);

\RAM0|dado_out[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[3]~17_combout\ = (!\RAM0|dado_out[3]~16_combout\ & (!\RAM4|dado_out[3]~4_combout\ & !\RAM8|dado_out[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[3]~16_combout\,
	datab => \RAM4|ALT_INV_dado_out[3]~4_combout\,
	datac => \RAM8|ALT_INV_dado_out[3]~4_combout\,
	combout => \RAM0|dado_out[3]~17_combout\);

\RAM4|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~213_q\);

\RAM4|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~229_q\);

\RAM4|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~245_q\);

\RAM4|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~261_q\);

\RAM4|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~569_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~261_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~245_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~229_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~213_q\,
	datab => \RAM4|ALT_INV_ram~229_q\,
	datac => \RAM4|ALT_INV_ram~245_q\,
	datad => \RAM4|ALT_INV_ram~261_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~569_combout\);

\RAM4|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~221_q\);

\RAM4|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~237_q\);

\RAM4|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~253_q\);

\RAM4|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~269_q\);

\RAM4|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~570_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~269_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~253_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~237_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~221_q\,
	datab => \RAM4|ALT_INV_ram~237_q\,
	datac => \RAM4|ALT_INV_ram~253_q\,
	datad => \RAM4|ALT_INV_ram~269_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~570_combout\);

\RAM4|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~469_q\);

\RAM4|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~485_q\);

\RAM4|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~501_q\);

\RAM4|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~517_q\);

\RAM4|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~571_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~517_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~501_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~485_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~469_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~469_q\,
	datab => \RAM4|ALT_INV_ram~485_q\,
	datac => \RAM4|ALT_INV_ram~501_q\,
	datad => \RAM4|ALT_INV_ram~517_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~571_combout\);

\RAM4|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~477_q\);

\RAM4|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~493_q\);

\RAM4|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~509_q\);

\RAM4|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~525_q\);

\RAM4|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~572_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~525_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~509_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~493_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~477_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~477_q\,
	datab => \RAM4|ALT_INV_ram~493_q\,
	datac => \RAM4|ALT_INV_ram~509_q\,
	datad => \RAM4|ALT_INV_ram~525_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~572_combout\);

\RAM4|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~573_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~572_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~571_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~570_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~569_combout\,
	datab => \RAM4|ALT_INV_ram~570_combout\,
	datac => \RAM4|ALT_INV_ram~571_combout\,
	datad => \RAM4|ALT_INV_ram~572_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~573_combout\);

\RAM4|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~21_q\);

\RAM4|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~29_q\);

\RAM4|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~277_q\);

\RAM4|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~285_q\);

\RAM4|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~574_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~285_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~277_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~29_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~21_q\,
	datab => \RAM4|ALT_INV_ram~29_q\,
	datac => \RAM4|ALT_INV_ram~277_q\,
	datad => \RAM4|ALT_INV_ram~285_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~574_combout\);

\RAM4|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~53_q\);

\RAM4|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~61_q\);

\RAM4|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~309_q\);

\RAM4|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~317_q\);

\RAM4|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~575_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~317_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~309_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~61_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~53_q\,
	datab => \RAM4|ALT_INV_ram~61_q\,
	datac => \RAM4|ALT_INV_ram~309_q\,
	datad => \RAM4|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~575_combout\);

\RAM4|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~37_q\);

\RAM4|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~45_q\);

\RAM4|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~293_q\);

\RAM4|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~301_q\);

\RAM4|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~576_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~301_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~293_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~45_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~37_q\,
	datab => \RAM4|ALT_INV_ram~45_q\,
	datac => \RAM4|ALT_INV_ram~293_q\,
	datad => \RAM4|ALT_INV_ram~301_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~576_combout\);

\RAM4|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~69_q\);

\RAM4|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~77_q\);

\RAM4|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~325_q\);

\RAM4|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~333_q\);

\RAM4|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~577_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~333_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~325_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~77_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~69_q\,
	datab => \RAM4|ALT_INV_ram~77_q\,
	datac => \RAM4|ALT_INV_ram~325_q\,
	datad => \RAM4|ALT_INV_ram~333_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~577_combout\);

\RAM4|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~578_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~577_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~576_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~575_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~574_combout\,
	datab => \RAM4|ALT_INV_ram~575_combout\,
	datac => \RAM4|ALT_INV_ram~576_combout\,
	datad => \RAM4|ALT_INV_ram~577_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~578_combout\);

\RAM4|dado_out[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[4]~5_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~578_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~573_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~573_combout\,
	datad => \RAM4|ALT_INV_ram~578_combout\,
	combout => \RAM4|dado_out[4]~5_combout\);

\RAM8|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~213_q\);

\RAM8|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~229_q\);

\RAM8|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~245_q\);

\RAM8|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~261_q\);

\RAM8|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~569_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~261_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~245_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~229_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~213_q\,
	datab => \RAM8|ALT_INV_ram~229_q\,
	datac => \RAM8|ALT_INV_ram~245_q\,
	datad => \RAM8|ALT_INV_ram~261_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~569_combout\);

\RAM8|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~221_q\);

\RAM8|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~237_q\);

\RAM8|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~253_q\);

\RAM8|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~269_q\);

\RAM8|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~570_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~269_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~253_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~237_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~221_q\,
	datab => \RAM8|ALT_INV_ram~237_q\,
	datac => \RAM8|ALT_INV_ram~253_q\,
	datad => \RAM8|ALT_INV_ram~269_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~570_combout\);

\RAM8|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~469_q\);

\RAM8|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~485_q\);

\RAM8|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~501_q\);

\RAM8|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~517_q\);

\RAM8|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~571_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~517_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~501_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~485_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~469_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~469_q\,
	datab => \RAM8|ALT_INV_ram~485_q\,
	datac => \RAM8|ALT_INV_ram~501_q\,
	datad => \RAM8|ALT_INV_ram~517_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~571_combout\);

\RAM8|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~477_q\);

\RAM8|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~493_q\);

\RAM8|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~509_q\);

\RAM8|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~525_q\);

\RAM8|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~572_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~525_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~509_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~493_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~477_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~477_q\,
	datab => \RAM8|ALT_INV_ram~493_q\,
	datac => \RAM8|ALT_INV_ram~509_q\,
	datad => \RAM8|ALT_INV_ram~525_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~572_combout\);

\RAM8|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~573_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~572_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~571_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~570_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~569_combout\,
	datab => \RAM8|ALT_INV_ram~570_combout\,
	datac => \RAM8|ALT_INV_ram~571_combout\,
	datad => \RAM8|ALT_INV_ram~572_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~573_combout\);

\RAM8|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~21_q\);

\RAM8|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~29_q\);

\RAM8|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~277_q\);

\RAM8|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~285_q\);

\RAM8|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~574_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~285_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~277_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~29_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~21_q\,
	datab => \RAM8|ALT_INV_ram~29_q\,
	datac => \RAM8|ALT_INV_ram~277_q\,
	datad => \RAM8|ALT_INV_ram~285_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~574_combout\);

\RAM8|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~53_q\);

\RAM8|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~61_q\);

\RAM8|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~309_q\);

\RAM8|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~317_q\);

\RAM8|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~575_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~317_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~309_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~61_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~53_q\,
	datab => \RAM8|ALT_INV_ram~61_q\,
	datac => \RAM8|ALT_INV_ram~309_q\,
	datad => \RAM8|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~575_combout\);

\RAM8|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~37_q\);

\RAM8|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~45_q\);

\RAM8|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~293_q\);

\RAM8|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~301_q\);

\RAM8|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~576_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~301_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~293_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~45_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~37_q\,
	datab => \RAM8|ALT_INV_ram~45_q\,
	datac => \RAM8|ALT_INV_ram~293_q\,
	datad => \RAM8|ALT_INV_ram~301_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~576_combout\);

\RAM8|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~69_q\);

\RAM8|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~77_q\);

\RAM8|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~325_q\);

\RAM8|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~333_q\);

\RAM8|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~577_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~333_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~325_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~77_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~69_q\,
	datab => \RAM8|ALT_INV_ram~77_q\,
	datac => \RAM8|ALT_INV_ram~325_q\,
	datad => \RAM8|ALT_INV_ram~333_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~577_combout\);

\RAM8|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~578_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~577_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~576_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~575_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~574_combout\,
	datab => \RAM8|ALT_INV_ram~575_combout\,
	datac => \RAM8|ALT_INV_ram~576_combout\,
	datad => \RAM8|ALT_INV_ram~577_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~578_combout\);

\RAM8|dado_out[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[4]~5_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~578_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~573_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~573_combout\,
	datad => \RAM8|ALT_INV_ram~578_combout\,
	combout => \RAM8|dado_out[4]~5_combout\);

\CPU|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~4_combout\ = ( \RAM4|dado_out[4]~5_combout\ & ( \RAM8|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) 
-- # ( !\RAM4|dado_out[4]~5_combout\ & ( \RAM8|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( \RAM4|dado_out[4]~5_combout\ 
-- & ( !\RAM8|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( !\RAM4|dado_out[4]~5_combout\ & ( 
-- !\RAM8|dado_out[4]~5_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[4]~18_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[4]~18_combout\,
	datae => \RAM4|ALT_INV_dado_out[4]~5_combout\,
	dataf => \RAM8|ALT_INV_dado_out[4]~5_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~4_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGS|registrador~92_combout\ ) + ( !\CPU|MUX1|saida_MUX[4]~4_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGS|registrador~92_combout\ ) + ( !\CPU|MUX1|saida_MUX[4]~4_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~92_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (\CPU|MUX1|saida_MUX[4]~4_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~92_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGS|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~56_q\);

\CPU|REGS|registrador~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~72_q\);

\CPU|REGS|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~64_q\);

\CPU|REGS|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~24_q\);

\CPU|REGS|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~40_q\);

\CPU|REGS|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~32_q\);

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
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~16_q\);

\CPU|REGS|registrador~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~124_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~16_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~24_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~32_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~40_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~24_q\,
	datab => \CPU|REGS|ALT_INV_registrador~40_q\,
	datac => \CPU|REGS|ALT_INV_registrador~32_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~16_q\,
	combout => \CPU|REGS|registrador~124_combout\);

\CPU|REGS|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~48_q\);

\CPU|REGS|registrador~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~92_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~124_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~124_combout\ & ((\CPU|REGS|registrador~48_q\))) # 
-- (\CPU|REGS|registrador~124_combout\ & (\CPU|REGS|registrador~56_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~124_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~124_combout\ & 
-- ((\CPU|REGS|registrador~64_q\))) # (\CPU|REGS|registrador~124_combout\ & (\CPU|REGS|registrador~72_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~56_q\,
	datab => \CPU|REGS|ALT_INV_registrador~72_q\,
	datac => \CPU|REGS|ALT_INV_registrador~64_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~124_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~48_q\,
	combout => \CPU|REGS|registrador~92_combout\);

\RAM0|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~213_q\);

\RAM0|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~229_q\);

\RAM0|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~245_q\);

\RAM0|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~261_q\);

\RAM0|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~569_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~261_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~245_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~229_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~213_q\,
	datab => \RAM0|ALT_INV_ram~229_q\,
	datac => \RAM0|ALT_INV_ram~245_q\,
	datad => \RAM0|ALT_INV_ram~261_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~569_combout\);

\RAM0|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~221_q\);

\RAM0|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~237_q\);

\RAM0|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~253_q\);

\RAM0|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~269_q\);

\RAM0|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~570_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~269_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~253_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~237_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~221_q\,
	datab => \RAM0|ALT_INV_ram~237_q\,
	datac => \RAM0|ALT_INV_ram~253_q\,
	datad => \RAM0|ALT_INV_ram~269_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~570_combout\);

\RAM0|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~469_q\);

\RAM0|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~485_q\);

\RAM0|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~501_q\);

\RAM0|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~517_q\);

\RAM0|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~571_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~517_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~501_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~485_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~469_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~469_q\,
	datab => \RAM0|ALT_INV_ram~485_q\,
	datac => \RAM0|ALT_INV_ram~501_q\,
	datad => \RAM0|ALT_INV_ram~517_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~571_combout\);

\RAM0|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~477_q\);

\RAM0|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~493_q\);

\RAM0|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~509_q\);

\RAM0|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~525_q\);

\RAM0|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~572_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~525_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~509_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~493_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~477_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~477_q\,
	datab => \RAM0|ALT_INV_ram~493_q\,
	datac => \RAM0|ALT_INV_ram~509_q\,
	datad => \RAM0|ALT_INV_ram~525_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~572_combout\);

\RAM0|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~573_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~572_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~571_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~570_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~569_combout\,
	datab => \RAM0|ALT_INV_ram~570_combout\,
	datac => \RAM0|ALT_INV_ram~571_combout\,
	datad => \RAM0|ALT_INV_ram~572_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~573_combout\);

\RAM0|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~21_q\);

\RAM0|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~29_q\);

\RAM0|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~277_q\);

\RAM0|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~285_q\);

\RAM0|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~574_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~285_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~277_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~29_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~21_q\,
	datab => \RAM0|ALT_INV_ram~29_q\,
	datac => \RAM0|ALT_INV_ram~277_q\,
	datad => \RAM0|ALT_INV_ram~285_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~574_combout\);

\RAM0|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~53_q\);

\RAM0|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~61_q\);

\RAM0|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~309_q\);

\RAM0|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~317_q\);

\RAM0|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~575_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~317_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~309_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~61_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~53_q\,
	datab => \RAM0|ALT_INV_ram~61_q\,
	datac => \RAM0|ALT_INV_ram~309_q\,
	datad => \RAM0|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~575_combout\);

\RAM0|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~37_q\);

\RAM0|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~45_q\);

\RAM0|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~293_q\);

\RAM0|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~301_q\);

\RAM0|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~576_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~301_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~293_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~45_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~37_q\,
	datab => \RAM0|ALT_INV_ram~45_q\,
	datac => \RAM0|ALT_INV_ram~293_q\,
	datad => \RAM0|ALT_INV_ram~301_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~576_combout\);

\RAM0|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~69_q\);

\RAM0|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~77_q\);

\RAM0|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~325_q\);

\RAM0|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~92_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~333_q\);

\RAM0|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~577_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~333_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~325_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~77_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~69_q\,
	datab => \RAM0|ALT_INV_ram~77_q\,
	datac => \RAM0|ALT_INV_ram~325_q\,
	datad => \RAM0|ALT_INV_ram~333_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~577_combout\);

\RAM0|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~578_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~577_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~576_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~575_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~574_combout\,
	datab => \RAM0|ALT_INV_ram~575_combout\,
	datac => \RAM0|ALT_INV_ram~576_combout\,
	datad => \RAM0|ALT_INV_ram~577_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~578_combout\);

\RAM0|dado_out[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[4]~18_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~578_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~573_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~573_combout\,
	datad => \RAM0|ALT_INV_ram~578_combout\,
	combout => \RAM0|dado_out[4]~18_combout\);

\RAM0|dado_out[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[4]~19_combout\ = (!\RAM0|dado_out[4]~18_combout\ & (!\RAM4|dado_out[4]~5_combout\ & !\RAM8|dado_out[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[4]~18_combout\,
	datab => \RAM4|ALT_INV_dado_out[4]~5_combout\,
	datac => \RAM8|ALT_INV_dado_out[4]~5_combout\,
	combout => \RAM0|dado_out[4]~19_combout\);

\RAM4|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~214_q\);

\RAM4|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~230_q\);

\RAM4|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~246_q\);

\RAM4|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~262_q\);

\RAM4|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~579_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~262_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~246_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~230_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~214_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~214_q\,
	datab => \RAM4|ALT_INV_ram~230_q\,
	datac => \RAM4|ALT_INV_ram~246_q\,
	datad => \RAM4|ALT_INV_ram~262_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~579_combout\);

\RAM4|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~222_q\);

\RAM4|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~238_q\);

\RAM4|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~254_q\);

\RAM4|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~270_q\);

\RAM4|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~580_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~270_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~254_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~238_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~222_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~222_q\,
	datab => \RAM4|ALT_INV_ram~238_q\,
	datac => \RAM4|ALT_INV_ram~254_q\,
	datad => \RAM4|ALT_INV_ram~270_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~580_combout\);

\RAM4|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~470_q\);

\RAM4|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~486_q\);

\RAM4|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~502_q\);

\RAM4|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~518_q\);

\RAM4|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~581_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~518_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~502_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~486_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~470_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~470_q\,
	datab => \RAM4|ALT_INV_ram~486_q\,
	datac => \RAM4|ALT_INV_ram~502_q\,
	datad => \RAM4|ALT_INV_ram~518_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~581_combout\);

\RAM4|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~478_q\);

\RAM4|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~494_q\);

\RAM4|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~510_q\);

\RAM4|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~526_q\);

\RAM4|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~582_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~526_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~510_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~494_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~478_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~478_q\,
	datab => \RAM4|ALT_INV_ram~494_q\,
	datac => \RAM4|ALT_INV_ram~510_q\,
	datad => \RAM4|ALT_INV_ram~526_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~582_combout\);

\RAM4|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~583_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~582_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~581_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~580_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~579_combout\,
	datab => \RAM4|ALT_INV_ram~580_combout\,
	datac => \RAM4|ALT_INV_ram~581_combout\,
	datad => \RAM4|ALT_INV_ram~582_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~583_combout\);

\RAM4|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~22_q\);

\RAM4|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~30_q\);

\RAM4|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~278_q\);

\RAM4|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~286_q\);

\RAM4|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~584_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~286_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~278_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~30_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~22_q\,
	datab => \RAM4|ALT_INV_ram~30_q\,
	datac => \RAM4|ALT_INV_ram~278_q\,
	datad => \RAM4|ALT_INV_ram~286_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~584_combout\);

\RAM4|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~54_q\);

\RAM4|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~62_q\);

\RAM4|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~310_q\);

\RAM4|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~318_q\);

\RAM4|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~585_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~318_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~310_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~62_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~54_q\,
	datab => \RAM4|ALT_INV_ram~62_q\,
	datac => \RAM4|ALT_INV_ram~310_q\,
	datad => \RAM4|ALT_INV_ram~318_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~585_combout\);

\RAM4|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~38_q\);

\RAM4|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~46_q\);

\RAM4|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~294_q\);

\RAM4|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~302_q\);

\RAM4|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~586_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~302_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~294_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~46_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~38_q\,
	datab => \RAM4|ALT_INV_ram~46_q\,
	datac => \RAM4|ALT_INV_ram~294_q\,
	datad => \RAM4|ALT_INV_ram~302_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~586_combout\);

\RAM4|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~70_q\);

\RAM4|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~78_q\);

\RAM4|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~326_q\);

\RAM4|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~334_q\);

\RAM4|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~587_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~334_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~326_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~78_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~70_q\,
	datab => \RAM4|ALT_INV_ram~78_q\,
	datac => \RAM4|ALT_INV_ram~326_q\,
	datad => \RAM4|ALT_INV_ram~334_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~587_combout\);

\RAM4|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~588_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~587_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~586_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~585_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~584_combout\,
	datab => \RAM4|ALT_INV_ram~585_combout\,
	datac => \RAM4|ALT_INV_ram~586_combout\,
	datad => \RAM4|ALT_INV_ram~587_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~588_combout\);

\RAM4|dado_out[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[5]~6_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~588_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~583_combout\,
	datad => \RAM4|ALT_INV_ram~588_combout\,
	combout => \RAM4|dado_out[5]~6_combout\);

\RAM8|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~214_q\);

\RAM8|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~230_q\);

\RAM8|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~246_q\);

\RAM8|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~262_q\);

\RAM8|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~579_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~262_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~246_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~230_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~214_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~214_q\,
	datab => \RAM8|ALT_INV_ram~230_q\,
	datac => \RAM8|ALT_INV_ram~246_q\,
	datad => \RAM8|ALT_INV_ram~262_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~579_combout\);

\RAM8|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~222_q\);

\RAM8|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~238_q\);

\RAM8|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~254_q\);

\RAM8|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~270_q\);

\RAM8|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~580_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~270_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~254_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~238_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~222_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~222_q\,
	datab => \RAM8|ALT_INV_ram~238_q\,
	datac => \RAM8|ALT_INV_ram~254_q\,
	datad => \RAM8|ALT_INV_ram~270_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~580_combout\);

\RAM8|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~470_q\);

\RAM8|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~486_q\);

\RAM8|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~502_q\);

\RAM8|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~518_q\);

\RAM8|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~581_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~518_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~502_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~486_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~470_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~470_q\,
	datab => \RAM8|ALT_INV_ram~486_q\,
	datac => \RAM8|ALT_INV_ram~502_q\,
	datad => \RAM8|ALT_INV_ram~518_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~581_combout\);

\RAM8|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~478_q\);

\RAM8|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~494_q\);

\RAM8|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~510_q\);

\RAM8|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~526_q\);

\RAM8|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~582_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~526_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~510_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~494_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~478_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~478_q\,
	datab => \RAM8|ALT_INV_ram~494_q\,
	datac => \RAM8|ALT_INV_ram~510_q\,
	datad => \RAM8|ALT_INV_ram~526_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~582_combout\);

\RAM8|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~583_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~582_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~581_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~580_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~579_combout\,
	datab => \RAM8|ALT_INV_ram~580_combout\,
	datac => \RAM8|ALT_INV_ram~581_combout\,
	datad => \RAM8|ALT_INV_ram~582_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~583_combout\);

\RAM8|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~22_q\);

\RAM8|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~30_q\);

\RAM8|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~278_q\);

\RAM8|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~286_q\);

\RAM8|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~584_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~286_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~278_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~30_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~22_q\,
	datab => \RAM8|ALT_INV_ram~30_q\,
	datac => \RAM8|ALT_INV_ram~278_q\,
	datad => \RAM8|ALT_INV_ram~286_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~584_combout\);

\RAM8|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~54_q\);

\RAM8|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~62_q\);

\RAM8|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~310_q\);

\RAM8|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~318_q\);

\RAM8|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~585_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~318_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~310_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~62_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~54_q\,
	datab => \RAM8|ALT_INV_ram~62_q\,
	datac => \RAM8|ALT_INV_ram~310_q\,
	datad => \RAM8|ALT_INV_ram~318_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~585_combout\);

\RAM8|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~38_q\);

\RAM8|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~46_q\);

\RAM8|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~294_q\);

\RAM8|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~302_q\);

\RAM8|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~586_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~302_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~294_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~46_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~38_q\,
	datab => \RAM8|ALT_INV_ram~46_q\,
	datac => \RAM8|ALT_INV_ram~294_q\,
	datad => \RAM8|ALT_INV_ram~302_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~586_combout\);

\RAM8|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~70_q\);

\RAM8|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~78_q\);

\RAM8|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~326_q\);

\RAM8|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~334_q\);

\RAM8|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~587_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~334_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~326_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~78_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~70_q\,
	datab => \RAM8|ALT_INV_ram~78_q\,
	datac => \RAM8|ALT_INV_ram~326_q\,
	datad => \RAM8|ALT_INV_ram~334_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~587_combout\);

\RAM8|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~588_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~587_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~586_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~585_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~584_combout\,
	datab => \RAM8|ALT_INV_ram~585_combout\,
	datac => \RAM8|ALT_INV_ram~586_combout\,
	datad => \RAM8|ALT_INV_ram~587_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~588_combout\);

\RAM8|dado_out[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[5]~6_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~588_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~583_combout\,
	datad => \RAM8|ALT_INV_ram~588_combout\,
	combout => \RAM8|dado_out[5]~6_combout\);

\CPU|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~5_combout\ = ( \RAM4|dado_out[5]~6_combout\ & ( \RAM8|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~15_combout\)) ) ) ) 
-- # ( !\RAM4|dado_out[5]~6_combout\ & ( \RAM8|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~15_combout\)) ) ) ) # ( \RAM4|dado_out[5]~6_combout\ 
-- & ( !\RAM8|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~15_combout\)) ) ) ) # ( !\RAM4|dado_out[5]~6_combout\ & ( 
-- !\RAM8|dado_out[5]~6_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[5]~20_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[5]~20_combout\,
	datae => \RAM4|ALT_INV_dado_out[5]~6_combout\,
	dataf => \RAM8|ALT_INV_dado_out[5]~6_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~5_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGS|registrador~96_combout\ ) + ( !\CPU|MUX1|saida_MUX[5]~5_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGS|registrador~96_combout\ ) + ( !\CPU|MUX1|saida_MUX[5]~5_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~96_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = (\CPU|MUX1|saida_MUX[5]~5_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~96_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGS|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~57_q\);

\CPU|REGS|registrador~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~73_q\);

\CPU|REGS|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~65_q\);

\CPU|REGS|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~25_q\);

\CPU|REGS|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~41_q\);

\CPU|REGS|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~33_q\);

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
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~17_q\);

\CPU|REGS|registrador~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~128_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~17_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~25_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~33_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~25_q\,
	datab => \CPU|REGS|ALT_INV_registrador~41_q\,
	datac => \CPU|REGS|ALT_INV_registrador~33_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~17_q\,
	combout => \CPU|REGS|registrador~128_combout\);

\CPU|REGS|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~49_q\);

\CPU|REGS|registrador~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~96_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~128_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~128_combout\ & ((\CPU|REGS|registrador~49_q\))) # 
-- (\CPU|REGS|registrador~128_combout\ & (\CPU|REGS|registrador~57_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~128_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~128_combout\ & 
-- ((\CPU|REGS|registrador~65_q\))) # (\CPU|REGS|registrador~128_combout\ & (\CPU|REGS|registrador~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~57_q\,
	datab => \CPU|REGS|ALT_INV_registrador~73_q\,
	datac => \CPU|REGS|ALT_INV_registrador~65_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~128_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~49_q\,
	combout => \CPU|REGS|registrador~96_combout\);

\RAM0|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~214_q\);

\RAM0|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~230_q\);

\RAM0|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~246_q\);

\RAM0|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~262_q\);

\RAM0|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~579_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~262_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~246_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~230_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~214_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~214_q\,
	datab => \RAM0|ALT_INV_ram~230_q\,
	datac => \RAM0|ALT_INV_ram~246_q\,
	datad => \RAM0|ALT_INV_ram~262_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~579_combout\);

\RAM0|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~222_q\);

\RAM0|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~238_q\);

\RAM0|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~254_q\);

\RAM0|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~270_q\);

\RAM0|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~580_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~270_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~254_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~238_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~222_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~222_q\,
	datab => \RAM0|ALT_INV_ram~238_q\,
	datac => \RAM0|ALT_INV_ram~254_q\,
	datad => \RAM0|ALT_INV_ram~270_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~580_combout\);

\RAM0|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~470_q\);

\RAM0|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~486_q\);

\RAM0|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~502_q\);

\RAM0|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~518_q\);

\RAM0|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~581_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~518_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~502_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~486_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~470_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~470_q\,
	datab => \RAM0|ALT_INV_ram~486_q\,
	datac => \RAM0|ALT_INV_ram~502_q\,
	datad => \RAM0|ALT_INV_ram~518_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~581_combout\);

\RAM0|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~478_q\);

\RAM0|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~494_q\);

\RAM0|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~510_q\);

\RAM0|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~526_q\);

\RAM0|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~582_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~526_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~510_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~494_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~478_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~478_q\,
	datab => \RAM0|ALT_INV_ram~494_q\,
	datac => \RAM0|ALT_INV_ram~510_q\,
	datad => \RAM0|ALT_INV_ram~526_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~582_combout\);

\RAM0|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~583_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~582_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~581_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~580_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~579_combout\,
	datab => \RAM0|ALT_INV_ram~580_combout\,
	datac => \RAM0|ALT_INV_ram~581_combout\,
	datad => \RAM0|ALT_INV_ram~582_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~583_combout\);

\RAM0|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~22_q\);

\RAM0|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~30_q\);

\RAM0|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~278_q\);

\RAM0|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~286_q\);

\RAM0|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~584_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~286_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~278_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~30_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~22_q\,
	datab => \RAM0|ALT_INV_ram~30_q\,
	datac => \RAM0|ALT_INV_ram~278_q\,
	datad => \RAM0|ALT_INV_ram~286_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~584_combout\);

\RAM0|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~54_q\);

\RAM0|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~62_q\);

\RAM0|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~310_q\);

\RAM0|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~318_q\);

\RAM0|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~585_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~318_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~310_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~62_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~54_q\,
	datab => \RAM0|ALT_INV_ram~62_q\,
	datac => \RAM0|ALT_INV_ram~310_q\,
	datad => \RAM0|ALT_INV_ram~318_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~585_combout\);

\RAM0|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~38_q\);

\RAM0|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~46_q\);

\RAM0|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~294_q\);

\RAM0|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~302_q\);

\RAM0|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~586_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~302_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~294_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~46_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~38_q\,
	datab => \RAM0|ALT_INV_ram~46_q\,
	datac => \RAM0|ALT_INV_ram~294_q\,
	datad => \RAM0|ALT_INV_ram~302_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~586_combout\);

\RAM0|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~70_q\);

\RAM0|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~78_q\);

\RAM0|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~326_q\);

\RAM0|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~96_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~334_q\);

\RAM0|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~587_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~334_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~326_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~78_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~70_q\,
	datab => \RAM0|ALT_INV_ram~78_q\,
	datac => \RAM0|ALT_INV_ram~326_q\,
	datad => \RAM0|ALT_INV_ram~334_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~587_combout\);

\RAM0|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~588_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~587_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~586_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~585_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~584_combout\,
	datab => \RAM0|ALT_INV_ram~585_combout\,
	datac => \RAM0|ALT_INV_ram~586_combout\,
	datad => \RAM0|ALT_INV_ram~587_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~588_combout\);

\RAM0|dado_out[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[5]~20_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~588_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~583_combout\,
	datad => \RAM0|ALT_INV_ram~588_combout\,
	combout => \RAM0|dado_out[5]~20_combout\);

\RAM0|dado_out[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[5]~21_combout\ = (!\RAM0|dado_out[5]~20_combout\ & (!\RAM4|dado_out[5]~6_combout\ & !\RAM8|dado_out[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[5]~20_combout\,
	datab => \RAM4|ALT_INV_dado_out[5]~6_combout\,
	datac => \RAM8|ALT_INV_dado_out[5]~6_combout\,
	combout => \RAM0|dado_out[5]~21_combout\);

\RAM4|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~215_q\);

\RAM4|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~231_q\);

\RAM4|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~247_q\);

\RAM4|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~263_q\);

\RAM4|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~589_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~263_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~247_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~231_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~215_q\,
	datab => \RAM4|ALT_INV_ram~231_q\,
	datac => \RAM4|ALT_INV_ram~247_q\,
	datad => \RAM4|ALT_INV_ram~263_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~589_combout\);

\RAM4|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~223_q\);

\RAM4|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~239_q\);

\RAM4|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~255_q\);

\RAM4|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~271_q\);

\RAM4|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~590_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~271_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~255_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~239_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~223_q\,
	datab => \RAM4|ALT_INV_ram~239_q\,
	datac => \RAM4|ALT_INV_ram~255_q\,
	datad => \RAM4|ALT_INV_ram~271_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~590_combout\);

\RAM4|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~471_q\);

\RAM4|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~487_q\);

\RAM4|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~503_q\);

\RAM4|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~519_q\);

\RAM4|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~591_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~519_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~503_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~487_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~471_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~471_q\,
	datab => \RAM4|ALT_INV_ram~487_q\,
	datac => \RAM4|ALT_INV_ram~503_q\,
	datad => \RAM4|ALT_INV_ram~519_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~591_combout\);

\RAM4|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~479_q\);

\RAM4|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~495_q\);

\RAM4|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~511_q\);

\RAM4|ram~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~527_q\);

\RAM4|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~592_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~527_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~511_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~495_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~479_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~479_q\,
	datab => \RAM4|ALT_INV_ram~495_q\,
	datac => \RAM4|ALT_INV_ram~511_q\,
	datad => \RAM4|ALT_INV_ram~527_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~592_combout\);

\RAM4|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~593_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~592_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~591_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~590_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~589_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~589_combout\,
	datab => \RAM4|ALT_INV_ram~590_combout\,
	datac => \RAM4|ALT_INV_ram~591_combout\,
	datad => \RAM4|ALT_INV_ram~592_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~593_combout\);

\RAM4|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~23_q\);

\RAM4|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~31_q\);

\RAM4|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~279_q\);

\RAM4|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~287_q\);

\RAM4|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~594_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~287_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~279_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~31_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~23_q\,
	datab => \RAM4|ALT_INV_ram~31_q\,
	datac => \RAM4|ALT_INV_ram~279_q\,
	datad => \RAM4|ALT_INV_ram~287_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~594_combout\);

\RAM4|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~55_q\);

\RAM4|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~63_q\);

\RAM4|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~311_q\);

\RAM4|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~319_q\);

\RAM4|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~595_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~319_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~311_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~63_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~55_q\,
	datab => \RAM4|ALT_INV_ram~63_q\,
	datac => \RAM4|ALT_INV_ram~311_q\,
	datad => \RAM4|ALT_INV_ram~319_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~595_combout\);

\RAM4|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~39_q\);

\RAM4|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~47_q\);

\RAM4|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~295_q\);

\RAM4|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~303_q\);

\RAM4|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~596_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~303_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~295_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~47_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~39_q\,
	datab => \RAM4|ALT_INV_ram~47_q\,
	datac => \RAM4|ALT_INV_ram~295_q\,
	datad => \RAM4|ALT_INV_ram~303_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~596_combout\);

\RAM4|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~71_q\);

\RAM4|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~79_q\);

\RAM4|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~327_q\);

\RAM4|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~335_q\);

\RAM4|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~597_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~335_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~327_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~79_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~71_q\,
	datab => \RAM4|ALT_INV_ram~79_q\,
	datac => \RAM4|ALT_INV_ram~327_q\,
	datad => \RAM4|ALT_INV_ram~335_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~597_combout\);

\RAM4|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~598_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~597_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~596_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~595_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~594_combout\,
	datab => \RAM4|ALT_INV_ram~595_combout\,
	datac => \RAM4|ALT_INV_ram~596_combout\,
	datad => \RAM4|ALT_INV_ram~597_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~598_combout\);

\RAM4|dado_out[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[6]~7_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~598_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~593_combout\,
	datad => \RAM4|ALT_INV_ram~598_combout\,
	combout => \RAM4|dado_out[6]~7_combout\);

\RAM8|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~215_q\);

\RAM8|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~231_q\);

\RAM8|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~247_q\);

\RAM8|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~263_q\);

\RAM8|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~589_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~263_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~247_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~231_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~215_q\,
	datab => \RAM8|ALT_INV_ram~231_q\,
	datac => \RAM8|ALT_INV_ram~247_q\,
	datad => \RAM8|ALT_INV_ram~263_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~589_combout\);

\RAM8|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~223_q\);

\RAM8|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~239_q\);

\RAM8|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~255_q\);

\RAM8|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~271_q\);

\RAM8|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~590_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~271_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~255_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~239_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~223_q\,
	datab => \RAM8|ALT_INV_ram~239_q\,
	datac => \RAM8|ALT_INV_ram~255_q\,
	datad => \RAM8|ALT_INV_ram~271_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~590_combout\);

\RAM8|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~471_q\);

\RAM8|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~487_q\);

\RAM8|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~503_q\);

\RAM8|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~519_q\);

\RAM8|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~591_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~519_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~503_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~487_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~471_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~471_q\,
	datab => \RAM8|ALT_INV_ram~487_q\,
	datac => \RAM8|ALT_INV_ram~503_q\,
	datad => \RAM8|ALT_INV_ram~519_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~591_combout\);

\RAM8|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~479_q\);

\RAM8|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~495_q\);

\RAM8|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~511_q\);

\RAM8|ram~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~527_q\);

\RAM8|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~592_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~527_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~511_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~495_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~479_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~479_q\,
	datab => \RAM8|ALT_INV_ram~495_q\,
	datac => \RAM8|ALT_INV_ram~511_q\,
	datad => \RAM8|ALT_INV_ram~527_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~592_combout\);

\RAM8|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~593_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~592_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~591_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~590_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~589_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~589_combout\,
	datab => \RAM8|ALT_INV_ram~590_combout\,
	datac => \RAM8|ALT_INV_ram~591_combout\,
	datad => \RAM8|ALT_INV_ram~592_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~593_combout\);

\RAM8|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~23_q\);

\RAM8|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~31_q\);

\RAM8|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~279_q\);

\RAM8|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~287_q\);

\RAM8|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~594_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~287_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~279_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~31_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~23_q\,
	datab => \RAM8|ALT_INV_ram~31_q\,
	datac => \RAM8|ALT_INV_ram~279_q\,
	datad => \RAM8|ALT_INV_ram~287_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~594_combout\);

\RAM8|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~55_q\);

\RAM8|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~63_q\);

\RAM8|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~311_q\);

\RAM8|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~319_q\);

\RAM8|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~595_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~319_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~311_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~63_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~55_q\,
	datab => \RAM8|ALT_INV_ram~63_q\,
	datac => \RAM8|ALT_INV_ram~311_q\,
	datad => \RAM8|ALT_INV_ram~319_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~595_combout\);

\RAM8|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~39_q\);

\RAM8|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~47_q\);

\RAM8|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~295_q\);

\RAM8|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~303_q\);

\RAM8|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~596_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~303_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~295_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~47_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~39_q\,
	datab => \RAM8|ALT_INV_ram~47_q\,
	datac => \RAM8|ALT_INV_ram~295_q\,
	datad => \RAM8|ALT_INV_ram~303_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~596_combout\);

\RAM8|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~71_q\);

\RAM8|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~79_q\);

\RAM8|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~327_q\);

\RAM8|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~335_q\);

\RAM8|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~597_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~335_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~327_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~79_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~71_q\,
	datab => \RAM8|ALT_INV_ram~79_q\,
	datac => \RAM8|ALT_INV_ram~327_q\,
	datad => \RAM8|ALT_INV_ram~335_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~597_combout\);

\RAM8|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~598_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~597_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~596_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~595_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~594_combout\,
	datab => \RAM8|ALT_INV_ram~595_combout\,
	datac => \RAM8|ALT_INV_ram~596_combout\,
	datad => \RAM8|ALT_INV_ram~597_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~598_combout\);

\RAM8|dado_out[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[6]~7_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~598_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~593_combout\,
	datad => \RAM8|ALT_INV_ram~598_combout\,
	combout => \RAM8|dado_out[6]~7_combout\);

\CPU|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~6_combout\ = ( \RAM4|dado_out[6]~7_combout\ & ( \RAM8|dado_out[6]~7_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) 
-- # ( !\RAM4|dado_out[6]~7_combout\ & ( \RAM8|dado_out[6]~7_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( \RAM4|dado_out[6]~7_combout\ 
-- & ( !\RAM8|dado_out[6]~7_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( !\RAM4|dado_out[6]~7_combout\ & ( 
-- !\RAM8|dado_out[6]~7_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[6]~22_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[6]~22_combout\,
	datae => \RAM4|ALT_INV_dado_out[6]~7_combout\,
	dataf => \RAM8|ALT_INV_dado_out[6]~7_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~6_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGS|registrador~100_combout\ ) + ( !\CPU|MUX1|saida_MUX[6]~6_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGS|registrador~100_combout\ ) + ( !\CPU|MUX1|saida_MUX[6]~6_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~100_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (\CPU|MUX1|saida_MUX[6]~6_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~100_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REGS|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~58_q\);

\CPU|REGS|registrador~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~74_q\);

\CPU|REGS|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~66_q\);

\CPU|REGS|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~26_q\);

\CPU|REGS|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~42_q\);

\CPU|REGS|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~34_q\);

\CPU|REGS|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~18_q\);

\CPU|REGS|registrador~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~132_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~18_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~26_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~34_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~26_q\,
	datab => \CPU|REGS|ALT_INV_registrador~42_q\,
	datac => \CPU|REGS|ALT_INV_registrador~34_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~18_q\,
	combout => \CPU|REGS|registrador~132_combout\);

\CPU|REGS|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~50_q\);

\CPU|REGS|registrador~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~100_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~132_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~132_combout\ & ((\CPU|REGS|registrador~50_q\))) # 
-- (\CPU|REGS|registrador~132_combout\ & (\CPU|REGS|registrador~58_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~132_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~132_combout\ & 
-- ((\CPU|REGS|registrador~66_q\))) # (\CPU|REGS|registrador~132_combout\ & (\CPU|REGS|registrador~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~58_q\,
	datab => \CPU|REGS|ALT_INV_registrador~74_q\,
	datac => \CPU|REGS|ALT_INV_registrador~66_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~132_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~50_q\,
	combout => \CPU|REGS|registrador~100_combout\);

\RAM0|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~215_q\);

\RAM0|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~231_q\);

\RAM0|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~247_q\);

\RAM0|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~263_q\);

\RAM0|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~589_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~263_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~247_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~231_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~215_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~215_q\,
	datab => \RAM0|ALT_INV_ram~231_q\,
	datac => \RAM0|ALT_INV_ram~247_q\,
	datad => \RAM0|ALT_INV_ram~263_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~589_combout\);

\RAM0|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~223_q\);

\RAM0|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~239_q\);

\RAM0|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~255_q\);

\RAM0|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~271_q\);

\RAM0|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~590_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~271_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~255_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~239_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~223_q\,
	datab => \RAM0|ALT_INV_ram~239_q\,
	datac => \RAM0|ALT_INV_ram~255_q\,
	datad => \RAM0|ALT_INV_ram~271_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~590_combout\);

\RAM0|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~471_q\);

\RAM0|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~487_q\);

\RAM0|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~503_q\);

\RAM0|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~519_q\);

\RAM0|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~591_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~519_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~503_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~487_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~471_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~471_q\,
	datab => \RAM0|ALT_INV_ram~487_q\,
	datac => \RAM0|ALT_INV_ram~503_q\,
	datad => \RAM0|ALT_INV_ram~519_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~591_combout\);

\RAM0|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~479_q\);

\RAM0|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~495_q\);

\RAM0|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~511_q\);

\RAM0|ram~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~527_q\);

\RAM0|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~592_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~527_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~511_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~495_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~479_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~479_q\,
	datab => \RAM0|ALT_INV_ram~495_q\,
	datac => \RAM0|ALT_INV_ram~511_q\,
	datad => \RAM0|ALT_INV_ram~527_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~592_combout\);

\RAM0|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~593_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~592_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~591_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~590_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~589_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~589_combout\,
	datab => \RAM0|ALT_INV_ram~590_combout\,
	datac => \RAM0|ALT_INV_ram~591_combout\,
	datad => \RAM0|ALT_INV_ram~592_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~593_combout\);

\RAM0|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~23_q\);

\RAM0|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~31_q\);

\RAM0|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~279_q\);

\RAM0|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~287_q\);

\RAM0|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~594_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~287_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~279_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~31_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~23_q\,
	datab => \RAM0|ALT_INV_ram~31_q\,
	datac => \RAM0|ALT_INV_ram~279_q\,
	datad => \RAM0|ALT_INV_ram~287_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~594_combout\);

\RAM0|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~55_q\);

\RAM0|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~63_q\);

\RAM0|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~311_q\);

\RAM0|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~319_q\);

\RAM0|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~595_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~319_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~311_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~63_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~55_q\,
	datab => \RAM0|ALT_INV_ram~63_q\,
	datac => \RAM0|ALT_INV_ram~311_q\,
	datad => \RAM0|ALT_INV_ram~319_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~595_combout\);

\RAM0|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~39_q\);

\RAM0|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~47_q\);

\RAM0|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~295_q\);

\RAM0|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~303_q\);

\RAM0|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~596_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~303_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~295_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~47_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~39_q\,
	datab => \RAM0|ALT_INV_ram~47_q\,
	datac => \RAM0|ALT_INV_ram~295_q\,
	datad => \RAM0|ALT_INV_ram~303_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~596_combout\);

\RAM0|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~71_q\);

\RAM0|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~79_q\);

\RAM0|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~327_q\);

\RAM0|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~100_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~335_q\);

\RAM0|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~597_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~335_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~327_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~79_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~71_q\,
	datab => \RAM0|ALT_INV_ram~79_q\,
	datac => \RAM0|ALT_INV_ram~327_q\,
	datad => \RAM0|ALT_INV_ram~335_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~597_combout\);

\RAM0|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~598_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~597_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~596_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~595_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~594_combout\,
	datab => \RAM0|ALT_INV_ram~595_combout\,
	datac => \RAM0|ALT_INV_ram~596_combout\,
	datad => \RAM0|ALT_INV_ram~597_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~598_combout\);

\RAM0|dado_out[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[6]~22_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~598_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~593_combout\,
	datad => \RAM0|ALT_INV_ram~598_combout\,
	combout => \RAM0|dado_out[6]~22_combout\);

\RAM0|dado_out[6]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[6]~23_combout\ = (!\RAM0|dado_out[6]~22_combout\ & (!\RAM4|dado_out[6]~7_combout\ & !\RAM8|dado_out[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[6]~22_combout\,
	datab => \RAM4|ALT_INV_dado_out[6]~7_combout\,
	datac => \RAM8|ALT_INV_dado_out[6]~7_combout\,
	combout => \RAM0|dado_out[6]~23_combout\);

\RAM4|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~216_q\);

\RAM4|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~232_q\);

\RAM4|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~248_q\);

\RAM4|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~264_q\);

\RAM4|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~599_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~264_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~248_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~232_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~216_q\,
	datab => \RAM4|ALT_INV_ram~232_q\,
	datac => \RAM4|ALT_INV_ram~248_q\,
	datad => \RAM4|ALT_INV_ram~264_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~599_combout\);

\RAM4|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~224_q\);

\RAM4|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~240_q\);

\RAM4|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~256_q\);

\RAM4|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~272_q\);

\RAM4|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~600_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~272_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~256_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~240_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~224_q\,
	datab => \RAM4|ALT_INV_ram~240_q\,
	datac => \RAM4|ALT_INV_ram~256_q\,
	datad => \RAM4|ALT_INV_ram~272_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~600_combout\);

\RAM4|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~472_q\);

\RAM4|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~488_q\);

\RAM4|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~504_q\);

\RAM4|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~520_q\);

\RAM4|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~601_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~520_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~504_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~488_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~472_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~472_q\,
	datab => \RAM4|ALT_INV_ram~488_q\,
	datac => \RAM4|ALT_INV_ram~504_q\,
	datad => \RAM4|ALT_INV_ram~520_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~601_combout\);

\RAM4|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~480_q\);

\RAM4|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~496_q\);

\RAM4|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~512_q\);

\RAM4|ram~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~528_q\);

\RAM4|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~602_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~528_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM4|ram~512_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM4|ram~496_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM4|ram~480_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~480_q\,
	datab => \RAM4|ALT_INV_ram~496_q\,
	datac => \RAM4|ALT_INV_ram~512_q\,
	datad => \RAM4|ALT_INV_ram~528_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM4|ram~602_combout\);

\RAM4|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~603_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~602_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~601_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM4|ram~600_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~599_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~599_combout\,
	datab => \RAM4|ALT_INV_ram~600_combout\,
	datac => \RAM4|ALT_INV_ram~601_combout\,
	datad => \RAM4|ALT_INV_ram~602_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~603_combout\);

\RAM4|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~24_q\);

\RAM4|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~32_q\);

\RAM4|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~280_q\);

\RAM4|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~288_q\);

\RAM4|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~604_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~288_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~280_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~32_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~24_q\,
	datab => \RAM4|ALT_INV_ram~32_q\,
	datac => \RAM4|ALT_INV_ram~280_q\,
	datad => \RAM4|ALT_INV_ram~288_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~604_combout\);

\RAM4|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~56_q\);

\RAM4|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~64_q\);

\RAM4|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~312_q\);

\RAM4|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~320_q\);

\RAM4|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~605_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~320_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~312_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~64_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~56_q\,
	datab => \RAM4|ALT_INV_ram~64_q\,
	datac => \RAM4|ALT_INV_ram~312_q\,
	datad => \RAM4|ALT_INV_ram~320_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~605_combout\);

\RAM4|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~40_q\);

\RAM4|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~48_q\);

\RAM4|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~296_q\);

\RAM4|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~304_q\);

\RAM4|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~606_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~304_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~296_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~48_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~40_q\,
	datab => \RAM4|ALT_INV_ram~48_q\,
	datac => \RAM4|ALT_INV_ram~296_q\,
	datad => \RAM4|ALT_INV_ram~304_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~606_combout\);

\RAM4|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~72_q\);

\RAM4|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~80_q\);

\RAM4|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~328_q\);

\RAM4|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM4|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM4|ram~336_q\);

\RAM4|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~607_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~336_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM4|ram~328_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM4|ram~80_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM4|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~72_q\,
	datab => \RAM4|ALT_INV_ram~80_q\,
	datac => \RAM4|ALT_INV_ram~328_q\,
	datad => \RAM4|ALT_INV_ram~336_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM4|ram~607_combout\);

\RAM4|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|ram~608_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~607_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM4|ram~606_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM4|ram~605_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM4|ram~604_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM4|ALT_INV_ram~604_combout\,
	datab => \RAM4|ALT_INV_ram~605_combout\,
	datac => \RAM4|ALT_INV_ram~606_combout\,
	datad => \RAM4|ALT_INV_ram~607_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM4|ram~608_combout\);

\RAM4|dado_out[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM4|dado_out[7]~8_combout\ = (\RAM4|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM4|ram~608_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM4|ram~603_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM4|ALT_INV_dado_out~0_combout\,
	datac => \RAM4|ALT_INV_ram~603_combout\,
	datad => \RAM4|ALT_INV_ram~608_combout\,
	combout => \RAM4|dado_out[7]~8_combout\);

\RAM8|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~216_q\);

\RAM8|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~232_q\);

\RAM8|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~248_q\);

\RAM8|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~264_q\);

\RAM8|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~599_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~264_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~248_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~232_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~216_q\,
	datab => \RAM8|ALT_INV_ram~232_q\,
	datac => \RAM8|ALT_INV_ram~248_q\,
	datad => \RAM8|ALT_INV_ram~264_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~599_combout\);

\RAM8|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~224_q\);

\RAM8|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~240_q\);

\RAM8|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~256_q\);

\RAM8|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~272_q\);

\RAM8|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~600_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~272_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~256_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~240_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~224_q\,
	datab => \RAM8|ALT_INV_ram~240_q\,
	datac => \RAM8|ALT_INV_ram~256_q\,
	datad => \RAM8|ALT_INV_ram~272_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~600_combout\);

\RAM8|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~472_q\);

\RAM8|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~488_q\);

\RAM8|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~504_q\);

\RAM8|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~520_q\);

\RAM8|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~601_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~520_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~504_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~488_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~472_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~472_q\,
	datab => \RAM8|ALT_INV_ram~488_q\,
	datac => \RAM8|ALT_INV_ram~504_q\,
	datad => \RAM8|ALT_INV_ram~520_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~601_combout\);

\RAM8|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~480_q\);

\RAM8|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~496_q\);

\RAM8|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~512_q\);

\RAM8|ram~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~528_q\);

\RAM8|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~602_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~528_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM8|ram~512_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM8|ram~496_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM8|ram~480_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~480_q\,
	datab => \RAM8|ALT_INV_ram~496_q\,
	datac => \RAM8|ALT_INV_ram~512_q\,
	datad => \RAM8|ALT_INV_ram~528_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM8|ram~602_combout\);

\RAM8|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~603_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~602_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~601_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM8|ram~600_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~599_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~599_combout\,
	datab => \RAM8|ALT_INV_ram~600_combout\,
	datac => \RAM8|ALT_INV_ram~601_combout\,
	datad => \RAM8|ALT_INV_ram~602_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~603_combout\);

\RAM8|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~24_q\);

\RAM8|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~32_q\);

\RAM8|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~280_q\);

\RAM8|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~288_q\);

\RAM8|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~604_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~288_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~280_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~32_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~24_q\,
	datab => \RAM8|ALT_INV_ram~32_q\,
	datac => \RAM8|ALT_INV_ram~280_q\,
	datad => \RAM8|ALT_INV_ram~288_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~604_combout\);

\RAM8|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~56_q\);

\RAM8|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~64_q\);

\RAM8|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~312_q\);

\RAM8|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~320_q\);

\RAM8|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~605_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~320_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~312_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~64_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~56_q\,
	datab => \RAM8|ALT_INV_ram~64_q\,
	datac => \RAM8|ALT_INV_ram~312_q\,
	datad => \RAM8|ALT_INV_ram~320_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~605_combout\);

\RAM8|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~40_q\);

\RAM8|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~48_q\);

\RAM8|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~296_q\);

\RAM8|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~304_q\);

\RAM8|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~606_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~304_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~296_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~48_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~40_q\,
	datab => \RAM8|ALT_INV_ram~48_q\,
	datac => \RAM8|ALT_INV_ram~296_q\,
	datad => \RAM8|ALT_INV_ram~304_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~606_combout\);

\RAM8|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~72_q\);

\RAM8|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~80_q\);

\RAM8|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~328_q\);

\RAM8|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM8|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM8|ram~336_q\);

\RAM8|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~607_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~336_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM8|ram~328_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM8|ram~80_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM8|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~72_q\,
	datab => \RAM8|ALT_INV_ram~80_q\,
	datac => \RAM8|ALT_INV_ram~328_q\,
	datad => \RAM8|ALT_INV_ram~336_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM8|ram~607_combout\);

\RAM8|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|ram~608_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~607_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM8|ram~606_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM8|ram~605_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM8|ram~604_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM8|ALT_INV_ram~604_combout\,
	datab => \RAM8|ALT_INV_ram~605_combout\,
	datac => \RAM8|ALT_INV_ram~606_combout\,
	datad => \RAM8|ALT_INV_ram~607_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM8|ram~608_combout\);

\RAM8|dado_out[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM8|dado_out[7]~8_combout\ = (\RAM8|dado_out~0_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM8|ram~608_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM8|ram~603_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM8|ALT_INV_dado_out~0_combout\,
	datac => \RAM8|ALT_INV_ram~603_combout\,
	datad => \RAM8|ALT_INV_ram~608_combout\,
	combout => \RAM8|dado_out[7]~8_combout\);

\CPU|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~7_combout\ = ( \RAM4|dado_out[7]~8_combout\ & ( \RAM8|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) 
-- # ( !\RAM4|dado_out[7]~8_combout\ & ( \RAM8|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( \RAM4|dado_out[7]~8_combout\ 
-- & ( !\RAM8|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & ((!\RAM0|dado_out[0]~11_combout\))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) ) # ( !\RAM4|dado_out[7]~8_combout\ & ( 
-- !\RAM8|dado_out[7]~8_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\RAM0|dado_out[0]~11_combout\) # (!\RAM0|dado_out[7]~24_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111010001110100011101000111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datac => \RAM0|ALT_INV_dado_out[0]~11_combout\,
	datad => \RAM0|ALT_INV_dado_out[7]~24_combout\,
	datae => \RAM4|ALT_INV_dado_out[7]~8_combout\,
	dataf => \RAM8|ALT_INV_dado_out[7]~8_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~7_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGS|registrador~104_combout\ ) + ( !\CPU|MUX1|saida_MUX[7]~7_combout\ $ (((!\CPU|decoderInstru|saida[4]~3_combout\ & \CPU|decoderInstru|saida~1_combout\))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~104_combout\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (\CPU|MUX1|saida_MUX[7]~7_combout\ & ((!\CPU|decoderInstru|saida~1_combout\) # (\CPU|REGS|registrador~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~104_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGS|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~141_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~59_q\);

\CPU|REGS|registrador~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~75_q\);

\CPU|REGS|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~67_q\);

\CPU|REGS|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~27_q\);

\CPU|REGS|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~43_q\);

\CPU|REGS|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~35_q\);

\CPU|REGS|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~19_q\);

\CPU|REGS|registrador~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~136_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~19_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~27_q\)))) ) ) 
-- # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\CPU|REGS|registrador~35_q\ & !\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\)) # (\CPU|REGS|registrador~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~27_q\,
	datab => \CPU|REGS|ALT_INV_registrador~43_q\,
	datac => \CPU|REGS|ALT_INV_registrador~35_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~19_q\,
	combout => \CPU|REGS|registrador~136_combout\);

\CPU|REGS|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|decoderInstru|saida[4]~3_combout\,
	ena => \CPU|REGS|registrador~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~51_q\);

\CPU|REGS|registrador~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGS|registrador~104_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~136_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~136_combout\ & ((\CPU|REGS|registrador~51_q\))) # 
-- (\CPU|REGS|registrador~136_combout\ & (\CPU|REGS|registrador~59_q\))))) ) ) # ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~3_combout\ & (((\CPU|REGS|registrador~136_combout\)))) # (\ROM1|memROM~3_combout\ & ((!\CPU|REGS|registrador~136_combout\ & 
-- ((\CPU|REGS|registrador~67_q\))) # (\CPU|REGS|registrador~136_combout\ & (\CPU|REGS|registrador~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~59_q\,
	datab => \CPU|REGS|ALT_INV_registrador~75_q\,
	datac => \CPU|REGS|ALT_INV_registrador~67_q\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|REGS|ALT_INV_registrador~136_combout\,
	datag => \CPU|REGS|ALT_INV_registrador~51_q\,
	combout => \CPU|REGS|registrador~104_combout\);

\RAM0|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~216_q\);

\RAM0|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~232_q\);

\RAM0|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~248_q\);

\RAM0|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~264_q\);

\RAM0|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~599_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~264_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~248_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~232_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~216_q\,
	datab => \RAM0|ALT_INV_ram~232_q\,
	datac => \RAM0|ALT_INV_ram~248_q\,
	datad => \RAM0|ALT_INV_ram~264_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~599_combout\);

\RAM0|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~224_q\);

\RAM0|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~240_q\);

\RAM0|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~256_q\);

\RAM0|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~272_q\);

\RAM0|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~600_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~272_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~256_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~240_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~224_q\,
	datab => \RAM0|ALT_INV_ram~240_q\,
	datac => \RAM0|ALT_INV_ram~256_q\,
	datad => \RAM0|ALT_INV_ram~272_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~600_combout\);

\RAM0|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~472_q\);

\RAM0|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~488_q\);

\RAM0|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~504_q\);

\RAM0|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~520_q\);

\RAM0|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~601_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~520_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~504_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~488_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~472_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~472_q\,
	datab => \RAM0|ALT_INV_ram~488_q\,
	datac => \RAM0|ALT_INV_ram~504_q\,
	datad => \RAM0|ALT_INV_ram~520_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~601_combout\);

\RAM0|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~480_q\);

\RAM0|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~496_q\);

\RAM0|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~512_q\);

\RAM0|ram~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~528_q\);

\RAM0|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~602_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~528_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~10_combout\ & ( \RAM0|ram~512_q\ ) ) ) # ( \ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( 
-- \RAM0|ram~496_q\ ) ) ) # ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~10_combout\ & ( \RAM0|ram~480_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~480_q\,
	datab => \RAM0|ALT_INV_ram~496_q\,
	datac => \RAM0|ALT_INV_ram~512_q\,
	datad => \RAM0|ALT_INV_ram~528_q\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM0|ram~602_combout\);

\RAM0|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~603_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~602_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~601_combout\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( 
-- !\ROM1|memROM~15_combout\ & ( \RAM0|ram~600_combout\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~599_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~599_combout\,
	datab => \RAM0|ALT_INV_ram~600_combout\,
	datac => \RAM0|ALT_INV_ram~601_combout\,
	datad => \RAM0|ALT_INV_ram~602_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~603_combout\);

\RAM0|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~24_q\);

\RAM0|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~32_q\);

\RAM0|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~280_q\);

\RAM0|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~288_q\);

\RAM0|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~604_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~288_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~280_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~32_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~24_q\,
	datab => \RAM0|ALT_INV_ram~32_q\,
	datac => \RAM0|ALT_INV_ram~280_q\,
	datad => \RAM0|ALT_INV_ram~288_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~604_combout\);

\RAM0|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~56_q\);

\RAM0|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~64_q\);

\RAM0|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~312_q\);

\RAM0|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~320_q\);

\RAM0|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~605_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~320_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~312_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~64_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~56_q\,
	datab => \RAM0|ALT_INV_ram~64_q\,
	datac => \RAM0|ALT_INV_ram~312_q\,
	datad => \RAM0|ALT_INV_ram~320_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~605_combout\);

\RAM0|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~40_q\);

\RAM0|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~48_q\);

\RAM0|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~296_q\);

\RAM0|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~304_q\);

\RAM0|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~606_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~304_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~296_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~48_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~40_q\,
	datab => \RAM0|ALT_INV_ram~48_q\,
	datac => \RAM0|ALT_INV_ram~296_q\,
	datad => \RAM0|ALT_INV_ram~304_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~606_combout\);

\RAM0|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~72_q\);

\RAM0|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~80_q\);

\RAM0|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~328_q\);

\RAM0|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~104_combout\,
	ena => \RAM0|ram~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~336_q\);

\RAM0|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~607_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~336_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~15_combout\ & ( \RAM0|ram~328_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & 
-- ( \RAM0|ram~80_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~15_combout\ & ( \RAM0|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~72_q\,
	datab => \RAM0|ALT_INV_ram~80_q\,
	datac => \RAM0|ALT_INV_ram~328_q\,
	datad => \RAM0|ALT_INV_ram~336_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM0|ram~607_combout\);

\RAM0|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~608_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~607_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~9_combout\ & ( \RAM0|ram~606_combout\ ) ) ) # ( \ROM1|memROM~10_combout\ & ( 
-- !\ROM1|memROM~9_combout\ & ( \RAM0|ram~605_combout\ ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~9_combout\ & ( \RAM0|ram~604_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_ram~604_combout\,
	datab => \RAM0|ALT_INV_ram~605_combout\,
	datac => \RAM0|ALT_INV_ram~606_combout\,
	datad => \RAM0|ALT_INV_ram~607_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM0|ram~608_combout\);

\RAM0|dado_out[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[7]~24_combout\ = (\RAM0|dado_out~8_combout\ & ((!\ROM1|memROM~13_combout\ & ((!\RAM0|ram~608_combout\))) # (\ROM1|memROM~13_combout\ & (!\RAM0|ram~603_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM0|ALT_INV_dado_out~8_combout\,
	datac => \RAM0|ALT_INV_ram~603_combout\,
	datad => \RAM0|ALT_INV_ram~608_combout\,
	combout => \RAM0|dado_out[7]~24_combout\);

\RAM0|dado_out[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[7]~25_combout\ = (!\RAM0|dado_out[7]~24_combout\ & (!\RAM4|dado_out[7]~8_combout\ & !\RAM8|dado_out[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|ALT_INV_dado_out[7]~24_combout\,
	datab => \RAM4|ALT_INV_dado_out[7]~8_combout\,
	datac => \RAM8|ALT_INV_dado_out[7]~8_combout\,
	combout => \RAM0|dado_out[7]~25_combout\);

\DEC2|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~0_combout\ = ( !\ROM1|memROM~16_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~0_combout\);

\reg4b0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \DEC2|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(0));

\reg4b0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \DEC2|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(3));

\reg4b0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \DEC2|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(1));

\reg4b0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \DEC2|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b0|DOUT\(2));

\conv0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[0]~0_combout\ = (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(0) $ (!\reg4b0|DOUT\(2))))) # (\reg4b0|DOUT\(3) & (\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(1) $ (!\reg4b0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[0]~0_combout\);

\conv0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[1]~1_combout\ = (!\reg4b0|DOUT\(3) & (\reg4b0|DOUT\(2) & (!\reg4b0|DOUT\(0) $ (!\reg4b0|DOUT\(1))))) # (\reg4b0|DOUT\(3) & ((!\reg4b0|DOUT\(0) & ((\reg4b0|DOUT\(2)))) # (\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[1]~1_combout\);

\conv0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[2]~2_combout\ = (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(1) & !\reg4b0|DOUT\(2)))) # (\reg4b0|DOUT\(3) & (\reg4b0|DOUT\(2) & ((!\reg4b0|DOUT\(0)) # (\reg4b0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[2]~2_combout\);

\conv0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[3]~3_combout\ = (!\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(0) $ (!\reg4b0|DOUT\(2))))) # (\reg4b0|DOUT\(1) & ((!\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(2) & \reg4b0|DOUT\(3))) # (\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(1),
	datac => \reg4b0|ALT_INV_DOUT\(2),
	datad => \reg4b0|ALT_INV_DOUT\(3),
	combout => \conv0|rascSaida7seg[3]~3_combout\);

\conv0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[4]~4_combout\ = (!\reg4b0|DOUT\(1) & ((!\reg4b0|DOUT\(2) & ((\reg4b0|DOUT\(0)))) # (\reg4b0|DOUT\(2) & (!\reg4b0|DOUT\(3))))) # (\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(3) & ((\reg4b0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(3),
	datab => \reg4b0|ALT_INV_DOUT\(1),
	datac => \reg4b0|ALT_INV_DOUT\(2),
	datad => \reg4b0|ALT_INV_DOUT\(0),
	combout => \conv0|rascSaida7seg[4]~4_combout\);

\conv0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[5]~5_combout\ = (!\reg4b0|DOUT\(0) & (\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(2) & !\reg4b0|DOUT\(3)))) # (\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(3) $ (((!\reg4b0|DOUT\(1) & \reg4b0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(1),
	datac => \reg4b0|ALT_INV_DOUT\(2),
	datad => \reg4b0|ALT_INV_DOUT\(3),
	combout => \conv0|rascSaida7seg[5]~5_combout\);

\conv0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv0|rascSaida7seg[6]~6_combout\ = (!\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(1) & (!\reg4b0|DOUT\(3) $ (\reg4b0|DOUT\(2))))) # (\reg4b0|DOUT\(0) & (!\reg4b0|DOUT\(3) & (!\reg4b0|DOUT\(1) $ (\reg4b0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b0|ALT_INV_DOUT\(0),
	datab => \reg4b0|ALT_INV_DOUT\(3),
	datac => \reg4b0|ALT_INV_DOUT\(1),
	datad => \reg4b0|ALT_INV_DOUT\(2),
	combout => \conv0|rascSaida7seg[6]~6_combout\);

\DEC2|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~1_combout\ = ( \ROM1|memROM~16_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~1_combout\);

\reg4b1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \DEC2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(0));

\reg4b1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \DEC2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(3));

\reg4b1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \DEC2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(1));

\reg4b1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \DEC2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b1|DOUT\(2));

\conv1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[0]~0_combout\ = (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(0) $ (!\reg4b1|DOUT\(2))))) # (\reg4b1|DOUT\(3) & (\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(1) $ (!\reg4b1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[0]~0_combout\);

\conv1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[1]~1_combout\ = (!\reg4b1|DOUT\(3) & (\reg4b1|DOUT\(2) & (!\reg4b1|DOUT\(0) $ (!\reg4b1|DOUT\(1))))) # (\reg4b1|DOUT\(3) & ((!\reg4b1|DOUT\(0) & ((\reg4b1|DOUT\(2)))) # (\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[1]~1_combout\);

\conv1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[2]~2_combout\ = (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(1) & !\reg4b1|DOUT\(2)))) # (\reg4b1|DOUT\(3) & (\reg4b1|DOUT\(2) & ((!\reg4b1|DOUT\(0)) # (\reg4b1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[2]~2_combout\);

\conv1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[3]~3_combout\ = (!\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(0) $ (!\reg4b1|DOUT\(2))))) # (\reg4b1|DOUT\(1) & ((!\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(2) & \reg4b1|DOUT\(3))) # (\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(1),
	datac => \reg4b1|ALT_INV_DOUT\(2),
	datad => \reg4b1|ALT_INV_DOUT\(3),
	combout => \conv1|rascSaida7seg[3]~3_combout\);

\conv1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[4]~4_combout\ = (!\reg4b1|DOUT\(1) & ((!\reg4b1|DOUT\(2) & ((\reg4b1|DOUT\(0)))) # (\reg4b1|DOUT\(2) & (!\reg4b1|DOUT\(3))))) # (\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(3) & ((\reg4b1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(3),
	datab => \reg4b1|ALT_INV_DOUT\(1),
	datac => \reg4b1|ALT_INV_DOUT\(2),
	datad => \reg4b1|ALT_INV_DOUT\(0),
	combout => \conv1|rascSaida7seg[4]~4_combout\);

\conv1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[5]~5_combout\ = (!\reg4b1|DOUT\(0) & (\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(2) & !\reg4b1|DOUT\(3)))) # (\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(3) $ (((!\reg4b1|DOUT\(1) & \reg4b1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(1),
	datac => \reg4b1|ALT_INV_DOUT\(2),
	datad => \reg4b1|ALT_INV_DOUT\(3),
	combout => \conv1|rascSaida7seg[5]~5_combout\);

\conv1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv1|rascSaida7seg[6]~6_combout\ = (!\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(1) & (!\reg4b1|DOUT\(3) $ (\reg4b1|DOUT\(2))))) # (\reg4b1|DOUT\(0) & (!\reg4b1|DOUT\(3) & (!\reg4b1|DOUT\(1) $ (\reg4b1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b1|ALT_INV_DOUT\(0),
	datab => \reg4b1|ALT_INV_DOUT\(3),
	datac => \reg4b1|ALT_INV_DOUT\(1),
	datad => \reg4b1|ALT_INV_DOUT\(2),
	combout => \conv1|rascSaida7seg[6]~6_combout\);

\DEC2|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~2_combout\ = ( !\ROM1|memROM~16_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~2_combout\);

\reg4b2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \DEC2|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(0));

\reg4b2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \DEC2|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(3));

\reg4b2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \DEC2|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(1));

\reg4b2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \DEC2|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b2|DOUT\(2));

\conv2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[0]~0_combout\ = (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(0) $ (!\reg4b2|DOUT\(2))))) # (\reg4b2|DOUT\(3) & (\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(1) $ (!\reg4b2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[0]~0_combout\);

\conv2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[1]~1_combout\ = (!\reg4b2|DOUT\(3) & (\reg4b2|DOUT\(2) & (!\reg4b2|DOUT\(0) $ (!\reg4b2|DOUT\(1))))) # (\reg4b2|DOUT\(3) & ((!\reg4b2|DOUT\(0) & ((\reg4b2|DOUT\(2)))) # (\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[1]~1_combout\);

\conv2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[2]~2_combout\ = (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(1) & !\reg4b2|DOUT\(2)))) # (\reg4b2|DOUT\(3) & (\reg4b2|DOUT\(2) & ((!\reg4b2|DOUT\(0)) # (\reg4b2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[2]~2_combout\);

\conv2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[3]~3_combout\ = (!\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(0) $ (!\reg4b2|DOUT\(2))))) # (\reg4b2|DOUT\(1) & ((!\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(2) & \reg4b2|DOUT\(3))) # (\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(1),
	datac => \reg4b2|ALT_INV_DOUT\(2),
	datad => \reg4b2|ALT_INV_DOUT\(3),
	combout => \conv2|rascSaida7seg[3]~3_combout\);

\conv2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[4]~4_combout\ = (!\reg4b2|DOUT\(1) & ((!\reg4b2|DOUT\(2) & ((\reg4b2|DOUT\(0)))) # (\reg4b2|DOUT\(2) & (!\reg4b2|DOUT\(3))))) # (\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(3) & ((\reg4b2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(3),
	datab => \reg4b2|ALT_INV_DOUT\(1),
	datac => \reg4b2|ALT_INV_DOUT\(2),
	datad => \reg4b2|ALT_INV_DOUT\(0),
	combout => \conv2|rascSaida7seg[4]~4_combout\);

\conv2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[5]~5_combout\ = (!\reg4b2|DOUT\(0) & (\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(2) & !\reg4b2|DOUT\(3)))) # (\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(3) $ (((!\reg4b2|DOUT\(1) & \reg4b2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(1),
	datac => \reg4b2|ALT_INV_DOUT\(2),
	datad => \reg4b2|ALT_INV_DOUT\(3),
	combout => \conv2|rascSaida7seg[5]~5_combout\);

\conv2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv2|rascSaida7seg[6]~6_combout\ = (!\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(1) & (!\reg4b2|DOUT\(3) $ (\reg4b2|DOUT\(2))))) # (\reg4b2|DOUT\(0) & (!\reg4b2|DOUT\(3) & (!\reg4b2|DOUT\(1) $ (\reg4b2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b2|ALT_INV_DOUT\(0),
	datab => \reg4b2|ALT_INV_DOUT\(3),
	datac => \reg4b2|ALT_INV_DOUT\(1),
	datad => \reg4b2|ALT_INV_DOUT\(2),
	combout => \conv2|rascSaida7seg[6]~6_combout\);

\DEC2|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~3_combout\ = ( \ROM1|memROM~16_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~3_combout\);

\reg4b3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \DEC2|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(0));

\reg4b3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \DEC2|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(3));

\reg4b3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \DEC2|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(1));

\reg4b3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \DEC2|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b3|DOUT\(2));

\conv3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[0]~0_combout\ = (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(0) $ (!\reg4b3|DOUT\(2))))) # (\reg4b3|DOUT\(3) & (\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(1) $ (!\reg4b3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[0]~0_combout\);

\conv3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[1]~1_combout\ = (!\reg4b3|DOUT\(3) & (\reg4b3|DOUT\(2) & (!\reg4b3|DOUT\(0) $ (!\reg4b3|DOUT\(1))))) # (\reg4b3|DOUT\(3) & ((!\reg4b3|DOUT\(0) & ((\reg4b3|DOUT\(2)))) # (\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[1]~1_combout\);

\conv3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[2]~2_combout\ = (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(1) & !\reg4b3|DOUT\(2)))) # (\reg4b3|DOUT\(3) & (\reg4b3|DOUT\(2) & ((!\reg4b3|DOUT\(0)) # (\reg4b3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[2]~2_combout\);

\conv3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[3]~3_combout\ = (!\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(0) $ (!\reg4b3|DOUT\(2))))) # (\reg4b3|DOUT\(1) & ((!\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(2) & \reg4b3|DOUT\(3))) # (\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(1),
	datac => \reg4b3|ALT_INV_DOUT\(2),
	datad => \reg4b3|ALT_INV_DOUT\(3),
	combout => \conv3|rascSaida7seg[3]~3_combout\);

\conv3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[4]~4_combout\ = (!\reg4b3|DOUT\(1) & ((!\reg4b3|DOUT\(2) & ((\reg4b3|DOUT\(0)))) # (\reg4b3|DOUT\(2) & (!\reg4b3|DOUT\(3))))) # (\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(3) & ((\reg4b3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(3),
	datab => \reg4b3|ALT_INV_DOUT\(1),
	datac => \reg4b3|ALT_INV_DOUT\(2),
	datad => \reg4b3|ALT_INV_DOUT\(0),
	combout => \conv3|rascSaida7seg[4]~4_combout\);

\conv3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[5]~5_combout\ = (!\reg4b3|DOUT\(0) & (\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(2) & !\reg4b3|DOUT\(3)))) # (\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(3) $ (((!\reg4b3|DOUT\(1) & \reg4b3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(1),
	datac => \reg4b3|ALT_INV_DOUT\(2),
	datad => \reg4b3|ALT_INV_DOUT\(3),
	combout => \conv3|rascSaida7seg[5]~5_combout\);

\conv3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv3|rascSaida7seg[6]~6_combout\ = (!\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(1) & (!\reg4b3|DOUT\(3) $ (\reg4b3|DOUT\(2))))) # (\reg4b3|DOUT\(0) & (!\reg4b3|DOUT\(3) & (!\reg4b3|DOUT\(1) $ (\reg4b3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b3|ALT_INV_DOUT\(0),
	datab => \reg4b3|ALT_INV_DOUT\(3),
	datac => \reg4b3|ALT_INV_DOUT\(1),
	datad => \reg4b3|ALT_INV_DOUT\(2),
	combout => \conv3|rascSaida7seg[6]~6_combout\);

\DEC2|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~4_combout\ = ( !\ROM1|memROM~16_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~4_combout\);

\reg4b4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \DEC2|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(0));

\reg4b4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \DEC2|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(3));

\reg4b4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \DEC2|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(1));

\reg4b4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \DEC2|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b4|DOUT\(2));

\conv4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[0]~0_combout\ = (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(0) $ (!\reg4b4|DOUT\(2))))) # (\reg4b4|DOUT\(3) & (\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(1) $ (!\reg4b4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[0]~0_combout\);

\conv4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[1]~1_combout\ = (!\reg4b4|DOUT\(3) & (\reg4b4|DOUT\(2) & (!\reg4b4|DOUT\(0) $ (!\reg4b4|DOUT\(1))))) # (\reg4b4|DOUT\(3) & ((!\reg4b4|DOUT\(0) & ((\reg4b4|DOUT\(2)))) # (\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[1]~1_combout\);

\conv4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[2]~2_combout\ = (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(1) & !\reg4b4|DOUT\(2)))) # (\reg4b4|DOUT\(3) & (\reg4b4|DOUT\(2) & ((!\reg4b4|DOUT\(0)) # (\reg4b4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[2]~2_combout\);

\conv4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[3]~3_combout\ = (!\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(0) $ (!\reg4b4|DOUT\(2))))) # (\reg4b4|DOUT\(1) & ((!\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(2) & \reg4b4|DOUT\(3))) # (\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(1),
	datac => \reg4b4|ALT_INV_DOUT\(2),
	datad => \reg4b4|ALT_INV_DOUT\(3),
	combout => \conv4|rascSaida7seg[3]~3_combout\);

\conv4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[4]~4_combout\ = (!\reg4b4|DOUT\(1) & ((!\reg4b4|DOUT\(2) & ((\reg4b4|DOUT\(0)))) # (\reg4b4|DOUT\(2) & (!\reg4b4|DOUT\(3))))) # (\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(3) & ((\reg4b4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(3),
	datab => \reg4b4|ALT_INV_DOUT\(1),
	datac => \reg4b4|ALT_INV_DOUT\(2),
	datad => \reg4b4|ALT_INV_DOUT\(0),
	combout => \conv4|rascSaida7seg[4]~4_combout\);

\conv4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[5]~5_combout\ = (!\reg4b4|DOUT\(0) & (\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(2) & !\reg4b4|DOUT\(3)))) # (\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(3) $ (((!\reg4b4|DOUT\(1) & \reg4b4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(1),
	datac => \reg4b4|ALT_INV_DOUT\(2),
	datad => \reg4b4|ALT_INV_DOUT\(3),
	combout => \conv4|rascSaida7seg[5]~5_combout\);

\conv4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv4|rascSaida7seg[6]~6_combout\ = (!\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(1) & (!\reg4b4|DOUT\(3) $ (\reg4b4|DOUT\(2))))) # (\reg4b4|DOUT\(0) & (!\reg4b4|DOUT\(3) & (!\reg4b4|DOUT\(1) $ (\reg4b4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b4|ALT_INV_DOUT\(0),
	datab => \reg4b4|ALT_INV_DOUT\(3),
	datac => \reg4b4|ALT_INV_DOUT\(1),
	datad => \reg4b4|ALT_INV_DOUT\(2),
	combout => \conv4|rascSaida7seg[6]~6_combout\);

\DEC2|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC2|Mux7~5_combout\ = ( \ROM1|memROM~16_combout\ & ( \CPU|decoderInstru|Equal11~0_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_Equal11~0_combout\,
	combout => \DEC2|Mux7~5_combout\);

\reg4b5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~76_combout\,
	ena => \DEC2|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(0));

\reg4b5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~88_combout\,
	ena => \DEC2|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(3));

\reg4b5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~80_combout\,
	ena => \DEC2|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(1));

\reg4b5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~84_combout\,
	ena => \DEC2|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4b5|DOUT\(2));

\conv5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[0]~0_combout\ = (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(0) $ (!\reg4b5|DOUT\(2))))) # (\reg4b5|DOUT\(3) & (\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(1) $ (!\reg4b5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[0]~0_combout\);

\conv5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[1]~1_combout\ = (!\reg4b5|DOUT\(3) & (\reg4b5|DOUT\(2) & (!\reg4b5|DOUT\(0) $ (!\reg4b5|DOUT\(1))))) # (\reg4b5|DOUT\(3) & ((!\reg4b5|DOUT\(0) & ((\reg4b5|DOUT\(2)))) # (\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[1]~1_combout\);

\conv5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[2]~2_combout\ = (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(1) & !\reg4b5|DOUT\(2)))) # (\reg4b5|DOUT\(3) & (\reg4b5|DOUT\(2) & ((!\reg4b5|DOUT\(0)) # (\reg4b5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[2]~2_combout\);

\conv5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[3]~3_combout\ = (!\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(0) $ (!\reg4b5|DOUT\(2))))) # (\reg4b5|DOUT\(1) & ((!\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(2) & \reg4b5|DOUT\(3))) # (\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(1),
	datac => \reg4b5|ALT_INV_DOUT\(2),
	datad => \reg4b5|ALT_INV_DOUT\(3),
	combout => \conv5|rascSaida7seg[3]~3_combout\);

\conv5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[4]~4_combout\ = (!\reg4b5|DOUT\(1) & ((!\reg4b5|DOUT\(2) & ((\reg4b5|DOUT\(0)))) # (\reg4b5|DOUT\(2) & (!\reg4b5|DOUT\(3))))) # (\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(3) & ((\reg4b5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(3),
	datab => \reg4b5|ALT_INV_DOUT\(1),
	datac => \reg4b5|ALT_INV_DOUT\(2),
	datad => \reg4b5|ALT_INV_DOUT\(0),
	combout => \conv5|rascSaida7seg[4]~4_combout\);

\conv5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[5]~5_combout\ = (!\reg4b5|DOUT\(0) & (\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(2) & !\reg4b5|DOUT\(3)))) # (\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(3) $ (((!\reg4b5|DOUT\(1) & \reg4b5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(1),
	datac => \reg4b5|ALT_INV_DOUT\(2),
	datad => \reg4b5|ALT_INV_DOUT\(3),
	combout => \conv5|rascSaida7seg[5]~5_combout\);

\conv5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv5|rascSaida7seg[6]~6_combout\ = (!\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(1) & (!\reg4b5|DOUT\(3) $ (\reg4b5|DOUT\(2))))) # (\reg4b5|DOUT\(0) & (!\reg4b5|DOUT\(3) & (!\reg4b5|DOUT\(1) $ (\reg4b5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg4b5|ALT_INV_DOUT\(0),
	datab => \reg4b5|ALT_INV_DOUT\(3),
	datac => \reg4b5|ALT_INV_DOUT\(1),
	datad => \reg4b5|ALT_INV_DOUT\(2),
	combout => \conv5|rascSaida7seg[6]~6_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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
END structure;


