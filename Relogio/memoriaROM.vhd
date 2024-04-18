library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant ANDi : std_logic_vector(3 downto 0) := "1011";
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin


		  tmp(0)  := "000" & LDI  &  "000000000"; --320
        tmp(1)  := "000" & STA  &  "000000000"; --288
		  tmp(2)  := "001" & LDI  &  "000000001"; --321
		  tmp(3)  := "001" & STA  &  "000000001";
		  tmp(4)  := "000" & STA  &  "000000010";
		  tmp(5)  := "000" & JSR  &  "000100000";
		  
		  tmp(6)  := "111" & LDA  &  "101100000"; --352
		  tmp(7)  := "111" & ANDi &  "000000001";
        tmp(8)  := "111" & CEQ  &  "000000000";
		  tmp(9)  := "000" & JEQ  &  "000000110";
		  tmp(10) := "000" & JSR  &  "000010000";
		  tmp(11) := "101" & JMP  &  "000000110";
		  
		  tmp(32) := "010" & LDI  &  "111111111";
		  tmp(33) := "010" & STA  &  "111111111";
		  tmp(34) := "010" & LDA  &  "000000010";
		  tmp(35) := "010" & SOMA &  "000000001";
		  tmp(36) := "010" & STA  &  "000000010";
		  tmp(37) := "010" & STA  &  "100100000";
		  tmp(38) := "000" & RET  &  "000000000"; 
		  
		  


		  tmp(64) := "000" & STA  &  "100100000";
		  tmp(65) := "000" & STA  &  "100100001";
		  tmp(66) := "000" & STA  &  "100100010";
		  tmp(67) := "000" & STA  &  "100100011";
		  tmp(68) := "000" & STA  &  "100100100";
		  tmp(69) := "000" & STA  &  "100100101";
		  tmp(70) := "000" & STA  &  "111111111";
		  tmp(71) := "000" & RET  &  "000000000";
		
		
		return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;