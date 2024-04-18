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

-- DATE "04/18/2024 14:17:51"

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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~29_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~30_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~31_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~34_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~35_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~36_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[9]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~33_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|LDESV|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~28_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \RAM0|ram~289_combout\ : std_logic;
SIGNAL \RAM0|ram~154_q\ : std_logic;
SIGNAL \RAM0|ram~290_combout\ : std_logic;
SIGNAL \RAM0|ram~26_q\ : std_logic;
SIGNAL \RAM0|ram~275_combout\ : std_logic;
SIGNAL \RAM0|ram~276_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[5]~6_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~13_q\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~12_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM0|ram~27_q\ : std_logic;
SIGNAL \RAM0|ram~155_q\ : std_logic;
SIGNAL \RAM0|ram~277_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|REGS|registrador~14_q\ : std_logic;
SIGNAL \RAM0|dado_out[2]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \RAM0|ram~156_q\ : std_logic;
SIGNAL \RAM0|ram~28_q\ : std_logic;
SIGNAL \RAM0|ram~279_combout\ : std_logic;
SIGNAL \RAM0|ram~280_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REGS|registrador~15_q\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM0|ram~29_q\ : std_logic;
SIGNAL \RAM0|ram~157_q\ : std_logic;
SIGNAL \RAM0|ram~281_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REGS|registrador~16_q\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM0|dado_out[5]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REGS|registrador~17_q\ : std_logic;
SIGNAL \RAM0|ram~30_q\ : std_logic;
SIGNAL \RAM0|ram~158_q\ : std_logic;
SIGNAL \RAM0|ram~283_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM0|dado_out[6]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REGS|registrador~18_q\ : std_logic;
SIGNAL \RAM0|ram~159_q\ : std_logic;
SIGNAL \RAM0|ram~31_q\ : std_logic;
SIGNAL \RAM0|ram~285_combout\ : std_logic;
SIGNAL \RAM0|ram~286_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM0|dado_out[7]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REGS|registrador~19_q\ : std_logic;
SIGNAL \RAM0|ram~32_q\ : std_logic;
SIGNAL \RAM0|ram~160_q\ : std_logic;
SIGNAL \RAM0|ram~287_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~5_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ram~32_q\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \RAM0|ram~153_q\ : std_logic;
SIGNAL \RAM0|ram~25_q\ : std_logic;
SIGNAL \RAM0|ram~273_combout\ : std_logic;
SIGNAL \RAM0|ram~274_combout\ : std_logic;
SIGNAL \RAM0|ram~278_combout\ : std_logic;
SIGNAL \RAM0|ram~282_combout\ : std_logic;
SIGNAL \RAM0|ram~284_combout\ : std_logic;
SIGNAL \RAM0|ram~288_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM0|ALT_INV_ram~275_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~274_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~273_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
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
SIGNAL \CPU|RAM_RET|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|RAM_RET|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \CPU|REGS|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[7]~11_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[6]~10_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[5]~9_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_dado_out[2]~8_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~287_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~286_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~283_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~281_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~279_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~277_combout\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM0|ALT_INV_ram~276_combout\ : std_logic;

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
\RAM0|ALT_INV_ram~275_combout\ <= NOT \RAM0|ram~275_combout\;
\RAM0|ALT_INV_ram~26_q\ <= NOT \RAM0|ram~26_q\;
\RAM0|ALT_INV_ram~154_q\ <= NOT \RAM0|ram~154_q\;
\CPU|decoderInstru|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|decoderInstru|saida[1]~1_combout\;
\RAM0|ALT_INV_ram~274_combout\ <= NOT \RAM0|ram~274_combout\;
\RAM0|ALT_INV_ram~273_combout\ <= NOT \RAM0|ram~273_combout\;
\RAM0|ALT_INV_ram~25_q\ <= NOT \RAM0|ram~25_q\;
\RAM0|ALT_INV_ram~153_q\ <= NOT \RAM0|ram~153_q\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\CPU|decoderInstru|ALT_INV_saida[9]~0_combout\ <= NOT \CPU|decoderInstru|saida[9]~0_combout\;
\CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \CPU|MUX2|saida_MUX[2]~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
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
\CPU|RAM_RET|ALT_INV_ram~36_q\ <= NOT \CPU|RAM_RET|ram~36_q\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|RAM_RET|ALT_INV_ram~35_q\ <= NOT \CPU|RAM_RET|ram~35_q\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|RAM_RET|ALT_INV_ram~34_q\ <= NOT \CPU|RAM_RET|ram~34_q\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|RAM_RET|ALT_INV_ram~33_q\ <= NOT \CPU|RAM_RET|ram~33_q\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|RAM_RET|ALT_INV_ram~32_q\ <= NOT \CPU|RAM_RET|ram~32_q\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|RAM_RET|ALT_INV_ram~31_q\ <= NOT \CPU|RAM_RET|ram~31_q\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|RAM_RET|ALT_INV_ram~30_q\ <= NOT \CPU|RAM_RET|ram~30_q\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|RAM_RET|ALT_INV_ram~29_q\ <= NOT \CPU|RAM_RET|ram~29_q\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|RAM_RET|ALT_INV_ram~28_q\ <= NOT \CPU|RAM_RET|ram~28_q\;
\CPU|REGS|ALT_INV_registrador~19_q\ <= NOT \CPU|REGS|registrador~19_q\;
\CPU|REGS|ALT_INV_registrador~18_q\ <= NOT \CPU|REGS|registrador~18_q\;
\CPU|REGS|ALT_INV_registrador~17_q\ <= NOT \CPU|REGS|registrador~17_q\;
\CPU|REGS|ALT_INV_registrador~16_q\ <= NOT \CPU|REGS|registrador~16_q\;
\CPU|REGS|ALT_INV_registrador~15_q\ <= NOT \CPU|REGS|registrador~15_q\;
\CPU|REGS|ALT_INV_registrador~14_q\ <= NOT \CPU|REGS|registrador~14_q\;
\CPU|REGS|ALT_INV_registrador~13_q\ <= NOT \CPU|REGS|registrador~13_q\;
\CPU|REGS|ALT_INV_registrador~12_q\ <= NOT \CPU|REGS|registrador~12_q\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\RAM0|ALT_INV_dado_out[7]~11_combout\ <= NOT \RAM0|dado_out[7]~11_combout\;
\RAM0|ALT_INV_dado_out[6]~10_combout\ <= NOT \RAM0|dado_out[6]~10_combout\;
\RAM0|ALT_INV_dado_out[5]~9_combout\ <= NOT \RAM0|dado_out[5]~9_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~3_combout\;
\RAM0|ALT_INV_dado_out[2]~8_combout\ <= NOT \RAM0|dado_out[2]~8_combout\;
\CPU|FLAG|ALT_INV_DOUT~4_combout\ <= NOT \CPU|FLAG|DOUT~4_combout\;
\CPU|FLAG|ALT_INV_DOUT~3_combout\ <= NOT \CPU|FLAG|DOUT~3_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~1_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\CPU|FLAG|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FLAG|DOUT~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[2]~5_combout\ <= NOT \CPU|decoderInstru|saida[2]~5_combout\;
\CPU|ULA1|ALT_INV_saida[7]~7_combout\ <= NOT \CPU|ULA1|saida[7]~7_combout\;
\CPU|ULA1|ALT_INV_saida[6]~6_combout\ <= NOT \CPU|ULA1|saida[6]~6_combout\;
\CPU|ULA1|ALT_INV_saida[5]~5_combout\ <= NOT \CPU|ULA1|saida[5]~5_combout\;
\CPU|ULA1|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|ULA1|saida[4]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~0_combout\;
\CPU|ULA1|ALT_INV_saida[3]~3_combout\ <= NOT \CPU|ULA1|saida[3]~3_combout\;
\CPU|ULA1|ALT_INV_saida[2]~2_combout\ <= NOT \CPU|ULA1|saida[2]~2_combout\;
\CPU|decoderInstru|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|decoderInstru|saida[4]~4_combout\;
\CPU|decoderInstru|ALT_INV_saida~3_combout\ <= NOT \CPU|decoderInstru|saida~3_combout\;
\CPU|decoderInstru|ALT_INV_saida~2_combout\ <= NOT \CPU|decoderInstru|saida~2_combout\;
\RAM0|ALT_INV_ram~287_combout\ <= NOT \RAM0|ram~287_combout\;
\RAM0|ALT_INV_ram~160_q\ <= NOT \RAM0|ram~160_q\;
\RAM0|ALT_INV_ram~32_q\ <= NOT \RAM0|ram~32_q\;
\RAM0|ALT_INV_ram~286_combout\ <= NOT \RAM0|ram~286_combout\;
\RAM0|ALT_INV_ram~285_combout\ <= NOT \RAM0|ram~285_combout\;
\RAM0|ALT_INV_ram~31_q\ <= NOT \RAM0|ram~31_q\;
\RAM0|ALT_INV_ram~159_q\ <= NOT \RAM0|ram~159_q\;
\RAM0|ALT_INV_ram~283_combout\ <= NOT \RAM0|ram~283_combout\;
\RAM0|ALT_INV_ram~158_q\ <= NOT \RAM0|ram~158_q\;
\RAM0|ALT_INV_ram~30_q\ <= NOT \RAM0|ram~30_q\;
\RAM0|ALT_INV_ram~281_combout\ <= NOT \RAM0|ram~281_combout\;
\RAM0|ALT_INV_ram~157_q\ <= NOT \RAM0|ram~157_q\;
\RAM0|ALT_INV_ram~29_q\ <= NOT \RAM0|ram~29_q\;
\RAM0|ALT_INV_ram~280_combout\ <= NOT \RAM0|ram~280_combout\;
\RAM0|ALT_INV_ram~279_combout\ <= NOT \RAM0|ram~279_combout\;
\RAM0|ALT_INV_ram~28_q\ <= NOT \RAM0|ram~28_q\;
\RAM0|ALT_INV_ram~156_q\ <= NOT \RAM0|ram~156_q\;
\RAM0|ALT_INV_ram~277_combout\ <= NOT \RAM0|ram~277_combout\;
\RAM0|ALT_INV_ram~155_q\ <= NOT \RAM0|ram~155_q\;
\RAM0|ALT_INV_ram~27_q\ <= NOT \RAM0|ram~27_q\;
\RAM0|ALT_INV_ram~276_combout\ <= NOT \RAM0|ram~276_combout\;

\MEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM0|ram~274_combout\,
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
	i => \RAM0|ram~276_combout\,
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
	i => \RAM0|ram~278_combout\,
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
	i => \RAM0|ram~280_combout\,
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
	i => \RAM0|ram~282_combout\,
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
	i => \RAM0|ram~284_combout\,
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
	i => \RAM0|ram~286_combout\,
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
	i => \RAM0|ram~288_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

\CPU|RAM_RET|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~29_q\);

\CPU|MUX2|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~2_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\) # ((\CPU|RAM_RET|ram~29_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~7_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|RAM_RET|ram~29_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & (((\ROM1|memROM~7_combout\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~29_q\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
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

\CPU|RAM_RET|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~30_q\);

\CPU|MUX2|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~3_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|decoderInstru|saida[9]~0_combout\ & (\CPU|RAM_RET|ram~30_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~30_q\,
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

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

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

\CPU|RAM_RET|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~31_q\);

\CPU|MUX2|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~4_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\) # ((\CPU|RAM_RET|ram~31_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~7_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|RAM_RET|ram~31_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~31_q\,
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

\CPU|RAM_RET|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~34_q\);

\CPU|MUX2|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~7_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|incrementaPC|Add0~25_sumout\))) # (\CPU|decoderInstru|saida[9]~0_combout\ & (\CPU|RAM_RET|ram~34_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~34_q\,
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

\CPU|RAM_RET|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~35_q\);

\CPU|MUX2|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~8_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|incrementaPC|Add0~29_sumout\))) # (\CPU|decoderInstru|saida[9]~0_combout\ & (\CPU|RAM_RET|ram~35_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~35_q\,
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

\CPU|RAM_RET|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~36_q\);

\CPU|MUX2|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~9_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|decoderInstru|saida[9]~0_combout\ & (\CPU|RAM_RET|ram~36_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~36_q\,
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

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000011110000111100000000000010010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000010110000000000001011000000000000101100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~11_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~6_combout\);

\CPU|decoderInstru|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[9]~0_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & \ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|decoderInstru|saida[9]~0_combout\);

\CPU|RAM_RET|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~33_q\);

\CPU|MUX2|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~6_combout\ = (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|incrementaPC|Add0~21_sumout\))) # (\CPU|decoderInstru|saida[9]~0_combout\ & (\CPU|RAM_RET|ram~33_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~33_q\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
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

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000100000000001000010000000000100001000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM1|memROM~10_combout\ & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~3_combout\);

\CPU|LDESV|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LDESV|saida[0]~0_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|LDESV|saida[0]~0_combout\);

\CPU|RAM_RET|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~28_q\);

\CPU|MUX2|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~1_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (((!\CPU|decoderInstru|saida[9]~0_combout\) # (\CPU|RAM_RET|ram~28_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & (\ROM1|memROM~2_combout\)) ) 
-- ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (((\CPU|RAM_RET|ram~28_q\ & \CPU|decoderInstru|saida[9]~0_combout\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & (\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_RET|ALT_INV_ram~28_q\,
	datad => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
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
-- \ROM1|memROM~2_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\CPU|decoderInstru|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[4]~4_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ $ (\ROM1|memROM~6_combout\)))) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & 
-- !\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000010011000000000001001100000000000100110000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|decoderInstru|saida[4]~4_combout\);

\CPU|decoderInstru|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~3_combout\ = (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ $ (\ROM1|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|decoderInstru|saida~3_combout\);

\CPU|decoderInstru|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[1]~1_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~5_combout\ $ (((!\ROM1|memROM~3_combout\ & !\ROM1|memROM~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010100000001010001010000000101000101000000010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|decoderInstru|saida[1]~1_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\CPU|PC|DOUT\(2) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~8_combout\);

\RAM0|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~289_combout\ = ( !\ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ & ( (\CPU|PC|DOUT\(0) & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM0|ram~289_combout\);

\RAM0|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~13_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~154_q\);

\RAM0|ram~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~290_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( (\CPU|PC|DOUT\(0) & (\ROM1|memROM~9_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM0|ram~290_combout\);

\RAM0|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~13_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~26_q\);

\RAM0|ram~275\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~275_combout\ = ( \RAM0|ram~26_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~4_combout\) # (\RAM0|ram~154_q\))) # (\CPU|PC|DOUT\(2)) ) ) # ( !\RAM0|ram~26_q\ & ( (!\CPU|PC|DOUT\(2) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & 
-- \RAM0|ram~154_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM0|ALT_INV_ram~154_q\,
	datae => \RAM0|ALT_INV_ram~26_q\,
	combout => \RAM0|ram~275_combout\);

\RAM0|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~276_combout\ = (\ROM1|memROM~9_combout\ & (\CPU|PC|DOUT\(0) & \RAM0|ram~275_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \RAM0|ALT_INV_ram~275_combout\,
	combout => \RAM0|ram~276_combout\);

\CPU|decoderInstru|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~2_combout\ = (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~3_combout\))) # (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & 
-- \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \CPU|decoderInstru|saida~2_combout\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~13_q\ & \ROM1|memROM~7_combout\) ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~13_q\ & ((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~276_combout\))) ) ) ) # ( \CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( 
-- \ROM1|memROM~7_combout\ ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~276_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111001100110011001101010000010101010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~13_q\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~276_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|decoderInstru|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[5]~6_combout\ = (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~3_combout\ $ (!\ROM1|memROM~2_combout\)))) # (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~5_combout\) # 
-- (\ROM1|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110000000010011011000000001001101100000000100110110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoderInstru|saida[5]~6_combout\);

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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~13_q\);

\CPU|MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~2_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & (((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~276_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101010101110011110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datac => \RAM0|ALT_INV_ram~276_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~2_combout\);

\CPU|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~1_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & (((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~274_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101010101111100110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM0|ALT_INV_ram~274_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~1_combout\);

\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( (!\CPU|decoderInstru|saida~3_combout\) # (\CPU|decoderInstru|saida[4]~4_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGS|registrador~12_q\ ) + ( !\CPU|MUX1|saida_MUX[0]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGS|registrador~12_q\ ) + ( !\CPU|MUX1|saida_MUX[0]~1_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~12_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida~2_combout\ & (((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~274_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & 
-- (\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101010101000000000000000011110011010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM0|ALT_INV_ram~274_combout\,
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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~12_q\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGS|registrador~13_q\ ) + ( !\CPU|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGS|registrador~13_q\ ) + ( !\CPU|MUX1|saida_MUX[1]~2_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~13_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\RAM0|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~14_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~27_q\);

\RAM0|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~14_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~155_q\);

\RAM0|ram~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~277_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM0|ram~155_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM0|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|ALT_INV_ram~27_q\,
	datad => \RAM0|ALT_INV_ram~155_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM0|ram~277_combout\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida[1]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \RAM0|ram~277_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~277_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~14_q\);

\RAM0|dado_out[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[2]~8_combout\ = (!\CPU|decoderInstru|saida[1]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \RAM0|ram~277_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~277_combout\,
	combout => \RAM0|dado_out[2]~8_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGS|registrador~14_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[2]~8_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[2]~8_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGS|registrador~14_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[2]~8_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[2]~8_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~14_q\,
	dataf => \RAM0|ALT_INV_dado_out[2]~8_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|decoderInstru|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[2]~5_combout\ = (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|decoderInstru|saida[2]~5_combout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = (\CPU|FLAG|DOUT~q\ & !\CPU|decoderInstru|saida[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FLAG|ALT_INV_DOUT~q\,
	datab => \CPU|decoderInstru|ALT_INV_saida[2]~5_combout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\RAM0|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~15_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~156_q\);

\RAM0|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~15_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~28_q\);

\RAM0|ram~279\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~279_combout\ = ( \RAM0|ram~28_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~4_combout\) # (\RAM0|ram~156_q\))) # (\CPU|PC|DOUT\(2)) ) ) # ( !\RAM0|ram~28_q\ & ( (!\CPU|PC|DOUT\(2) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & 
-- \RAM0|ram~156_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM0|ALT_INV_ram~156_q\,
	datae => \RAM0|ALT_INV_ram~28_q\,
	combout => \RAM0|ram~279_combout\);

\RAM0|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~280_combout\ = (\ROM1|memROM~9_combout\ & (\CPU|PC|DOUT\(0) & \RAM0|ram~279_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \RAM0|ALT_INV_ram~279_combout\,
	combout => \RAM0|ram~280_combout\);

\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & (((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~280_combout\)))) # (\CPU|decoderInstru|saida~2_combout\ & (\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111101010101110011110101010111001111010101011100111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datac => \RAM0|ALT_INV_ram~280_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGS|registrador~15_q\ ) + ( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGS|registrador~15_q\ ) + ( !\CPU|MUX1|saida_MUX[3]~3_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~15_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~15_q\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|decoderInstru|saida~2_combout\ & ( \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~15_q\ & \ROM1|memROM~7_combout\) ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- \CPU|decoderInstru|saida~3_combout\ & ( (\CPU|REGS|registrador~15_q\ & ((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~280_combout\))) ) ) ) # ( \CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( 
-- \ROM1|memROM~7_combout\ ) ) ) # ( !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~280_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111001100110011001101010000010101010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~15_q\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~280_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\RAM0|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~16_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~29_q\);

\RAM0|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~16_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~157_q\);

\RAM0|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~281_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM0|ram~157_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM0|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|ALT_INV_ram~29_q\,
	datad => \RAM0|ALT_INV_ram~157_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM0|ram~281_combout\);

\CPU|MUX1|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~0_combout\ = ( \RAM0|ram~281_combout\ & ( \CPU|decoderInstru|saida~2_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( !\RAM0|ram~281_combout\ & ( \CPU|decoderInstru|saida~2_combout\ & ( \ROM1|memROM~8_combout\ ) ) ) # ( 
-- \RAM0|ram~281_combout\ & ( !\CPU|decoderInstru|saida~2_combout\ & ( (!\ROM1|memROM~7_combout\) # (!\CPU|decoderInstru|saida[1]~1_combout\) ) ) ) # ( !\RAM0|ram~281_combout\ & ( !\CPU|decoderInstru|saida~2_combout\ & ( 
-- !\CPU|decoderInstru|saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111110101111101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datae => \RAM0|ALT_INV_ram~281_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~0_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGS|registrador~16_q\ ) + ( !\CPU|MUX1|saida_MUX[4]~0_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGS|registrador~16_q\ ) + ( !\CPU|MUX1|saida_MUX[4]~0_combout\ $ (((!\CPU|decoderInstru|saida[4]~4_combout\ & \CPU|decoderInstru|saida~3_combout\))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~16_q\,
	dataf => \CPU|MUX1|ALT_INV_saida_MUX[4]~0_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~16_q\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (\CPU|MUX1|saida_MUX[4]~0_combout\ & ((!\CPU|decoderInstru|saida~3_combout\) # (\CPU|REGS|registrador~16_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~16_q\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|MUX1|ALT_INV_saida_MUX[4]~0_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\RAM0|dado_out[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[5]~9_combout\ = (!\CPU|decoderInstru|saida[1]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \RAM0|ram~283_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~283_combout\,
	combout => \RAM0|dado_out[5]~9_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGS|registrador~17_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[5]~9_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[5]~9_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGS|registrador~17_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[5]~9_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[5]~9_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~17_q\,
	dataf => \RAM0|ALT_INV_dado_out[5]~9_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~17_q\);

\RAM0|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~17_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~30_q\);

\RAM0|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~17_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~158_q\);

\RAM0|ram~283\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~283_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM0|ram~158_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM0|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|ALT_INV_ram~30_q\,
	datad => \RAM0|ALT_INV_ram~158_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM0|ram~283_combout\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida[1]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \RAM0|ram~283_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~283_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\RAM0|dado_out[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[6]~10_combout\ = (!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~286_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datab => \RAM0|ALT_INV_ram~286_combout\,
	combout => \RAM0|dado_out[6]~10_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGS|registrador~18_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[6]~10_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[6]~10_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGS|registrador~18_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[6]~10_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[6]~10_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~18_q\,
	dataf => \RAM0|ALT_INV_dado_out[6]~10_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~18_q\);

\RAM0|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~18_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~159_q\);

\RAM0|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~18_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~31_q\);

\RAM0|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~285_combout\ = ( \RAM0|ram~31_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~4_combout\) # (\RAM0|ram~159_q\))) # (\CPU|PC|DOUT\(2)) ) ) # ( !\RAM0|ram~31_q\ & ( (!\CPU|PC|DOUT\(2) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & 
-- \RAM0|ram~159_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM0|ALT_INV_ram~159_q\,
	datae => \RAM0|ALT_INV_ram~31_q\,
	combout => \RAM0|ram~285_combout\);

\RAM0|ram~286\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~286_combout\ = (\ROM1|memROM~9_combout\ & (\CPU|PC|DOUT\(0) & \RAM0|ram~285_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \RAM0|ALT_INV_ram~285_combout\,
	combout => \RAM0|ram~286_combout\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|decoderInstru|saida~2_combout\ & (!\CPU|decoderInstru|saida~3_combout\ & ((!\CPU|decoderInstru|saida[1]~1_combout\) # (\RAM0|ram~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000010110000000000001011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datab => \RAM0|ALT_INV_ram~286_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\RAM0|dado_out[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|dado_out[7]~11_combout\ = (!\CPU|decoderInstru|saida[1]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \RAM0|ram~287_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~287_combout\,
	combout => \RAM0|dado_out[7]~11_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGS|registrador~19_q\ ) + ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ $ (((!\CPU|decoderInstru|saida~2_combout\ & \RAM0|dado_out[7]~11_combout\))))) # 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\RAM0|dado_out[7]~11_combout\) # (\CPU|decoderInstru|saida~2_combout\)))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datad => \CPU|REGS|ALT_INV_registrador~19_q\,
	dataf => \RAM0|ALT_INV_dado_out[7]~11_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

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
	sload => \CPU|decoderInstru|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGS|registrador~19_q\);

\RAM0|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~19_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~32_q\);

\RAM0|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~19_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~160_q\);

\RAM0|ram~287\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~287_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~8_combout\ & ( \RAM0|ram~160_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM0|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|ALT_INV_ram~32_q\,
	datad => \RAM0|ALT_INV_ram~160_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM0|ram~287_combout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( !\CPU|decoderInstru|saida~2_combout\ & ( !\CPU|decoderInstru|saida~3_combout\ & ( (!\CPU|decoderInstru|saida[1]~1_combout\) # ((!\ROM1|memROM~7_combout\ & \RAM0|ram~287_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~1_combout\,
	datad => \RAM0|ALT_INV_ram~287_combout\,
	datae => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = ( \CPU|ULA1|saida[6]~6_combout\ & ( \CPU|ULA1|saida[7]~7_combout\ & ( (\CPU|decoderInstru|saida[2]~5_combout\ & !\CPU|decoderInstru|saida[4]~4_combout\) ) ) ) # ( !\CPU|ULA1|saida[6]~6_combout\ & ( \CPU|ULA1|saida[7]~7_combout\ 
-- & ( (\CPU|decoderInstru|saida[2]~5_combout\ & !\CPU|decoderInstru|saida[4]~4_combout\) ) ) ) # ( \CPU|ULA1|saida[6]~6_combout\ & ( !\CPU|ULA1|saida[7]~7_combout\ & ( (\CPU|decoderInstru|saida[2]~5_combout\ & !\CPU|decoderInstru|saida[4]~4_combout\) ) ) ) 
-- # ( !\CPU|ULA1|saida[6]~6_combout\ & ( !\CPU|ULA1|saida[7]~7_combout\ & ( (\CPU|decoderInstru|saida[2]~5_combout\ & ((!\CPU|decoderInstru|saida[4]~4_combout\) # ((!\CPU|ULA1|saida[2]~2_combout\ & !\CPU|ULA1|saida[5]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[2]~5_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datac => \CPU|ULA1|ALT_INV_saida[2]~2_combout\,
	datad => \CPU|ULA1|ALT_INV_saida[5]~5_combout\,
	datae => \CPU|ULA1|ALT_INV_saida[6]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[7]~7_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|MUX1|saida_MUX[1]~2_combout\ & ( (\CPU|decoderInstru|saida[4]~4_combout\ & ((!\CPU|decoderInstru|saida~3_combout\) # (\CPU|REGS|registrador~13_q\))) ) ) # ( !\CPU|MUX1|saida_MUX[1]~2_combout\ & ( 
-- (\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|decoderInstru|saida~3_combout\ & \CPU|MUX1|saida_MUX[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000001100010011000100000000001100000011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REGS|ALT_INV_registrador~13_q\,
	datab => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida~3_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datae => \CPU|MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|FLAG|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~3_combout\ = ( \CPU|FLAG|DOUT~1_combout\ & ( !\CPU|FLAG|DOUT~2_combout\ & ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (!\CPU|ULA1|Add0~1_sumout\)) # (\CPU|decoderInstru|saida[4]~4_combout\ & (((!\CPU|ULA1|saida[3]~3_combout\ & 
-- !\CPU|ULA1|saida[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_saida[3]~3_combout\,
	datad => \CPU|ULA1|ALT_INV_saida[4]~4_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAG|DOUT~3_combout\);

\CPU|FLAG|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~4_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( \CPU|ULA1|Add0~29_sumout\ & ( !\CPU|decoderInstru|saida[4]~4_combout\ ) ) ) # ( !\CPU|ULA1|Add0~25_sumout\ & ( \CPU|ULA1|Add0~29_sumout\ & ( !\CPU|decoderInstru|saida[4]~4_combout\ ) ) ) # ( 
-- \CPU|ULA1|Add0~25_sumout\ & ( !\CPU|ULA1|Add0~29_sumout\ & ( !\CPU|decoderInstru|saida[4]~4_combout\ ) ) ) # ( !\CPU|ULA1|Add0~25_sumout\ & ( !\CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|decoderInstru|saida[4]~4_combout\ & (((\CPU|ULA1|Add0~21_sumout\) # 
-- (\CPU|ULA1|Add0~17_sumout\)) # (\CPU|ULA1|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|FLAG|DOUT~4_combout\);

\CPU|FLAG|DOUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~5_combout\ = ( \CPU|FLAG|DOUT~3_combout\ & ( \CPU|FLAG|DOUT~4_combout\ & ( \CPU|FLAG|DOUT~0_combout\ ) ) ) # ( !\CPU|FLAG|DOUT~3_combout\ & ( \CPU|FLAG|DOUT~4_combout\ & ( \CPU|FLAG|DOUT~0_combout\ ) ) ) # ( \CPU|FLAG|DOUT~3_combout\ & ( 
-- !\CPU|FLAG|DOUT~4_combout\ & ( (((!\CPU|ULA1|Add0~5_sumout\ & !\CPU|ULA1|Add0~9_sumout\)) # (\CPU|FLAG|DOUT~0_combout\)) # (\CPU|decoderInstru|saida[4]~4_combout\) ) ) ) # ( !\CPU|FLAG|DOUT~3_combout\ & ( !\CPU|FLAG|DOUT~4_combout\ & ( 
-- \CPU|FLAG|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110101011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[4]~4_combout\,
	datab => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|FLAG|ALT_INV_DOUT~0_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~3_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~4_combout\,
	combout => \CPU|FLAG|DOUT~5_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|FLAG|DOUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|MUX2|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~0_combout\ = ( \CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) # (\ROM1|memROM~2_combout\ & (((!\ROM1|memROM~5_combout\ & 
-- \ROM1|memROM~6_combout\)))) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\ & (\ROM1|memROM~5_combout\ & !\ROM1|memROM~6_combout\))) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~5_combout\ & 
-- \ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100101000000000010010000000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	combout => \CPU|MUX2|saida_MUX[2]~0_combout\);

\CPU|RAM_RET|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|LDESV|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_RET|ram~32_q\);

\CPU|MUX2|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~5_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & ((!\CPU|decoderInstru|saida[9]~0_combout\) # ((\CPU|RAM_RET|ram~32_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~8_combout\)))) ) ) # ( !\CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|MUX2|saida_MUX[2]~0_combout\ & (\CPU|decoderInstru|saida[9]~0_combout\ & ((\CPU|RAM_RET|ram~32_q\)))) # (\CPU|MUX2|saida_MUX[2]~0_combout\ & 
-- (((\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX2|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[9]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \CPU|RAM_RET|ALT_INV_ram~32_q\,
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

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\CPU|PC|DOUT\(4) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~9_combout\);

\RAM0|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~12_q\,
	ena => \RAM0|ram~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~153_q\);

\RAM0|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CPU|REGS|registrador~12_q\,
	ena => \RAM0|ram~290_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM0|ram~25_q\);

\RAM0|ram~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~273_combout\ = ( \RAM0|ram~25_q\ & ( ((!\ROM1|memROM~0_combout\) # ((!\ROM1|memROM~4_combout\) # (\RAM0|ram~153_q\))) # (\CPU|PC|DOUT\(2)) ) ) # ( !\RAM0|ram~25_q\ & ( (!\CPU|PC|DOUT\(2) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & 
-- \RAM0|ram~153_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111011111111100000000000000101111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM0|ALT_INV_ram~153_q\,
	datae => \RAM0|ALT_INV_ram~25_q\,
	combout => \RAM0|ram~273_combout\);

\RAM0|ram~274\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~274_combout\ = (\ROM1|memROM~9_combout\ & (\CPU|PC|DOUT\(0) & \RAM0|ram~273_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \RAM0|ALT_INV_ram~273_combout\,
	combout => \RAM0|ram~274_combout\);

\RAM0|ram~278\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~278_combout\ = (!\ROM1|memROM~7_combout\ & \RAM0|ram~277_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM0|ALT_INV_ram~277_combout\,
	combout => \RAM0|ram~278_combout\);

\RAM0|ram~282\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~282_combout\ = (!\ROM1|memROM~7_combout\ & \RAM0|ram~281_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM0|ALT_INV_ram~281_combout\,
	combout => \RAM0|ram~282_combout\);

\RAM0|ram~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~284_combout\ = (!\ROM1|memROM~7_combout\ & \RAM0|ram~283_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM0|ALT_INV_ram~283_combout\,
	combout => \RAM0|ram~284_combout\);

\RAM0|ram~288\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM0|ram~288_combout\ = (!\ROM1|memROM~7_combout\ & \RAM0|ram~287_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM0|ALT_INV_ram~287_combout\,
	combout => \RAM0|ram~288_combout\);

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
END structure;


