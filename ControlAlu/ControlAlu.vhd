library ieee;
use ieee.std_logic_1164.all;

entity control_alu is
    port (
        T       : in  std_logic_vector(3 downto 0);
        I       : in  std_logic_vector(3 downto 0);
        Ain     : out std_logic;
        Gin     : out std_logic;
        Gout    : out std_logic;
        AddSub  : out std_logic
    );
end control_alu;

architecture Behavioral of control_alu is
begin
--Ain = (I2 + I3)T1
--Gin = (I2 + I3)T2
--Gout = (I2 + I3)T3
--AddSub = I3
    Ain    <= ((I(2) or I(3)) and T(1));
    Gin    <= ((I(2)or I(3)) and T(2));
    Gout   <= ((I(2) or I(3)) and T(3));
	AddSub <= '1' when I(3) = '1' else '0';  -- 1 para Sub, 0 para Add/otros
end Behavioral;
