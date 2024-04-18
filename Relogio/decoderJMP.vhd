library ieee;
use ieee.std_logic_1164.all;

entity decoderJMP is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 2);
  port (
    entradaA_MUX, entradaB_MUX, entradaC_MUX, entradaD_MUX, flg  : in std_logic;
    saida : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of decoderJMP is
  begin
  saida <= "01" when (entradaA_MUX = '1' or entradaD_MUX = '1' or (entradaB_MUX = '1' and flg = '1')) else
			  "10" when entradaC_MUX = '1' else
			  "11" when (entradaC_MUX = '1' and entradaA_MUX = '1') else
			  "00";

end architecture;