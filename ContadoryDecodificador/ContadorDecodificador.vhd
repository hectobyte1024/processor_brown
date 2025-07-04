library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity step_counter is
    port (
        clk     : in  std_logic;
        Clear   : in  std_logic;  -- Limpieza sincrónica
        w       : in  std_logic;  -- Señal de inicio
        Done    : in  std_logic;  -- Operación completada
        T       : out std_logic_vector(3 downto 0)  -- Salidas de paso
    );
end step_counter;

architecture Behavioral of step_counter is
    signal count : unsigned(1 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if Clear = '1' then
                count <= "00";  -- Reinicio sincrónico
            elsif w = '1' and Done = '0' then
                if count = "11" then
                    count <= "00";
                else
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    -- Decodificador de conteo a one-hot
    with count select
        T <= "0001" when "00",  -- T0
             "0010" when "01",  -- T1
             "0100" when "10",  -- T2
             "1000" when "11",  -- T3
             "0000" when others;
end Behavioral;