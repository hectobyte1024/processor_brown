library ieee;
use ieee.std_logic_1164.all;

entity regn is
    port (
        D   : in  std_logic_vector(1 downto 0);  -- Entrada de datos (desde el bus)
        clk : in  std_logic;                     -- Reloj
        Rin : in  std_logic;                     -- Habilitación de escritura
        Q   : out std_logic_vector(1 downto 0)   -- Salida (hacia el bus o ALU)
    );
end regn;

architecture arqreg of regn is
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if Rin = '1' then  -- Solo se escribe si Rin está activo
                Q <= D;
            end if;
        end if;
    end process;
end arqreg;