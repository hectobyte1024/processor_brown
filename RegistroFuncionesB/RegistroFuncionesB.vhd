library ieee;
use ieee.std_logic_1164.all;

entity gal2_register_decoder is
    port (
        Rx_in    : in  std_logic_vector(1 downto 0);  -- Desde GAL1 ("00"-"10")
        Ry_in    : in  std_logic_vector(1 downto 0);  -- Desde GAL1 ("00"-"10")
        -- Salidas one-hot (3 bits para R0-R2)
        X        : out std_logic_vector(2 downto 0);  -- X0:R0, X1:R1, X2:R2
        Y        : out std_logic_vector(2 downto 0)   -- Y0:R0, Y1:R1, Y2:R2
    );
end gal2_register_decoder;

architecture Behavioral of gal2_register_decoder is
begin
    -- Decodificador para Rx (3 registros) - versión más clara
    with Rx_in select
        X <= "001" when "00",  -- R0 (bit 0)
             "010" when "01",  -- R1 (bit 1)
             "100" when "10",  -- R2 (bit 2)
             "000" when others;

    -- Decodificador para Ry (3 registros)
    with Ry_in select
        Y <= "001" when "00",  -- R0 (bit 0)
             "010" when "01",  -- R1 (bit 1)
             "100" when "10",  -- R2 (bit 2)
             "000" when others;
end Behavioral;
