library ieee;
use ieee.std_logic_1164.all;

entity control_registers is
    port (
        T       : in  std_logic_vector(3 downto 0);
        I       : in  std_logic_vector(3 downto 0);
        X       : in  std_logic_vector(2 downto 0);  -- Registro destino
        Y       : in  std_logic_vector(2 downto 0);  -- Registro fuente
        Rin     : out std_logic_vector(2 downto 0);  -- Escritura
        Rout    : out std_logic_vector(2 downto 0)   -- Lectura
    );
end control_registers;

architecture Behavioral of control_registers is
begin
--R0in = (I0 + I1)T1X0 + (I2 + I3)T3X0
--R0out = I1T1Y0 + (I2 + I3)(T1X0 + T2Y0)
--Las expresiones para R1in y R1out son las mismas que aquellas para t R0in y R0out, excepto que X1
--y Y1 se usan en lugar de X0 y Y0. Las expresiones para R2in, R2out, R3in y R3out se derivan de la t
--misma forma
    -- Rin: en T1 para Load/Move; en T3 para Add
	Rin(0) <= (((I(0) or I(1)) and T(1) and X(0)) or ((I(2) or I(3)) and T(3) and X(0)));
	Rin(1) <= (((I(0) or I(1)) and T(1) and X(1)) or ((I(2) or I(3)) and T(3) and X(1)));
	Rin(2) <= (((I(0) or I(1)) and T(1) and X(2)) or ((I(2) or I(3)) and T(3) and X(2)));

    -- Rout: en T1 para Move (Ry); en T1 y T2 para Add (Rx, Ry)
	Rout(0) <= (I(1) and T(1) and Y(0)) 
        or ((I(2) or I(3)) and ((T(1) and X(0)) or (T(2) and Y(0))));
	Rout(1) <= (I(1) and T(1) and Y(1)) 
        or ((I(2) or I(3)) and ((T(1) and X(1)) or (T(2) and Y(1))));
	Rout(2) <= (I(1) and T(1) and Y(2)) 
        or ((I(2) or I(3)) and ((T(1) and X(2)) or (T(2) and Y(2))));
end Behavioral;
