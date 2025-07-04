library ieee;
use ieee.std_logic_1164.all;

entity control_unit_1 is
    port (
        -- Entradas
        w       : in  std_logic;                     -- Inicio de operación
        T       : in  std_logic_vector(3 downto 0);  -- T0-T3 del contador
        I       : in  std_logic_vector(3 downto 0);  -- Operación (I0=Load, I1=Move, I2=Add, I3=Sub)
        -- Salidas
        FRin    : out std_logic;                     -- Carga registro de funciones
        Clear   : out std_logic;                     -- Reinicio contador
        Done    : out std_logic;                     -- Operación completada
        Extern  : out std_logic                      -- Habilitación de dato externo
    );
end control_unit_1;

architecture Behavioral of control_unit_1 is
begin
    --FRin = wT0
    FRin <= w and T(0);

    --Clear = 'w T0 + Done
    Clear <= (not w and T(0)) or Done;

    -- Extern = I0T1
    Extern <= I(0) and T(1);
	--Done = (I0 + I1)T1 + (I2 + I3)T3
    Done <=(((I(0) or I(1)) and T(1))or ((I(2) or I(3)) and T(3)));
end Behavioral;
