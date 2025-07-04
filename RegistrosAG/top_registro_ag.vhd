library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity top_registro_ag is
    port (
        clk       : in  std_logic;
        -- Señales de control
        Ain       : in  std_logic;
        Gin       : in  std_logic;
        Gout      : in  std_logic;
        AddSub    : in  std_logic; 
        -- Entradas de bus
        BusWires  : in  std_logic_vector(1 downto 0);
        -- Salida ALU
        ALU_out   : out std_logic_vector(1 downto 0)
    );
end top_registro_ag;

architecture Structural of top_registro_ag is
    component regn
        port (
            D   : in  std_logic_vector(1 downto 0);
            clk : in  std_logic;
            Rin : in  std_logic;
            Q   : out std_logic_vector(1 downto 0)
        );
    end component;

    component alu
        port (
            A      : in  std_logic_vector(1 downto 0);
            B      : in  std_logic_vector(1 downto 0);
            AddSub : in  std_logic;  -- Verifica que coincida el nombre
            Result : out std_logic_vector(1 downto 0)
        );
    end component;

    signal A_reg, G_reg, alu_result : std_logic_vector(1 downto 0);

begin
    -- Registro A
    reg_A: regn port map (
        D   => BusWires,
        clk => clk,
        Rin => Ain,
        Q   => A_reg
    );

    -- ALU
    alu_inst: alu port map (
        A      => A_reg,
        B      => BusWires,
        AddSub => AddSub, 
        Result => alu_result
    );

    -- Registro G
    reg_G: regn port map (
        D   => alu_result,
        clk => clk,
        Rin => Gin,
        Q   => G_reg
    );

    -- Salida condicional
    ALU_out <= G_reg when Gout = '1';
end Structural;
