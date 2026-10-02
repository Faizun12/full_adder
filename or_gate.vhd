library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC);
end or_gate;

architecture Structural of or_gate is
    component nand_gate
        Port ( A, B : in STD_LOGIC; Y : out STD_LOGIC);
    end component;
    signal w1, w2 : std_logic;
begin
    N1: nand_gate port map (A => A, B => A, Y => w1);
    N2: nand_gate port map (A => B, B => B, Y => w2);
    N3: nand_gate port map (A => w1, B => w2, Y => Y);
end Structural;