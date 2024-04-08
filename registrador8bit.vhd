library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador8bit is
    generic (
        larguraDados : natural := 8  -- Adjusted for 8-bit data width
    );
    port (
        DIN     : in  std_logic_vector(larguraDados-1 downto 0);
        DOUT    : out std_logic_vector(larguraDados-1 downto 0);
        ENABLE  : in  std_logic;
        CLK,RST : in  std_logic
    );
end entity;

architecture comportamento of registrador8bit is
begin
    process(RST, CLK)
    begin
        if (RST = '1') then
            DOUT <= (others => '0');  -- Resets the output to 0 for all 8 bits.
        else
            if (rising_edge(CLK)) then
                if (ENABLE = '1') then
                    DOUT <= DIN;  -- Loads input to output on clock edge if enabled.
                end if;
            end if;
        end if;
    end process;
end architecture;
