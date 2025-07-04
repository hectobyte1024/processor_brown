library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- Para operaciones aritméticas

entity alu is
    port (
        A       : in  std_logic_vector(1 downto 0);  -- Operando A (desde el registro A)
        B       : in  std_logic_vector(1 downto 0);  -- Operando B (desde el bus)
        AddSub  : in  std_logic;                     -- 0: Suma, 1: Resta
        Result  : out std_logic_vector(1 downto 0)   -- Salida (hacia el registro G)
    );
end alu;

architecture Behavioral of alu is
begin
    process (A, B, AddSub)
    begin
        if AddSub = '0' then
            Result <= std_logic_vector(unsigned(A) + unsigned(B));  -- Suma
        else
            Result <= std_logic_vector(unsigned(A) - unsigned(B));  -- Resta (complemento a 2)
        end if;
    end process;
end Behavioral;