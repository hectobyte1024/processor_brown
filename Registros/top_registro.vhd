library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        clk      : in  std_logic;                     -- Reloj global
        -- Entradas de control
        Rin      : in  std_logic_vector(2 downto 0);      -- Señales de escritura
        -- Salidas de datos
        R0_out   : out std_logic_vector(1 downto 0);  -- Salida directa R0
        R1_out   : out std_logic_vector(1 downto 0);  -- Salida directa R1
        R2_out   : out std_logic_vector(1 downto 0);  -- Salida directa R2
        -- Entrada de bus
        BusWires : in  std_logic_vector(1 downto 0)   -- Bus compartido
    );
end top_level;

architecture Structural of top_level is
    component regn
        port (
            D   : in  std_logic_vector(1 downto 0);
            clk : in  std_logic;
            Rin : in  std_logic;
            Q   : out std_logic_vector(1 downto 0)
        );
    end component;

begin
    -- Registros con salidas directas
    reg0: regn port map (D => BusWires, clk => clk, Rin => Rin(0), Q => R0_out);
    reg1: regn port map (D => BusWires, clk => clk, Rin => Rin(1), Q => R1_out);
    reg2: regn port map (D => BusWires, clk => clk, Rin => Rin(2), Q => R2_out);
end Structural;