library ieee;
use ieee.std_logic_1164.all;

entity decoderGenerico3x8 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entrada      : in  std_logic_vector(2 downto 0);
    saida        : out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of decoderGenerico3x8 is
begin
  -- Processo que define o estado das saídas com base na entrada
  process(entrada) is
  begin
    -- Inicialmente, desativa todas as saídas
    saida <= (others => '0');
    
    -- Ativa a saída correspondente ao valor da entrada
    case entrada is
      when "000" =>
        saida(0) <= '1';
      when "001" =>
        saida(1) <= '1';
      when "010" =>
        saida(2) <= '1';
      when "011" =>
        saida(3) <= '1';
      when "100" =>
        saida(4) <= '1';
      when "101" =>
        saida(5) <= '1';
      when "110" =>
        saida(6) <= '1';
      when "111" =>
        saida(7) <= '1';
      when others =>
        saida <= (others => '0'); -- default case to ensure all outputs are low if input is invalid
    end case;
  end process;
end architecture;
