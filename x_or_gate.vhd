library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC);
end xor_gate;

architecture Structural of xor_gate is
    component nand_gate
        Port ( A, B : in STD_LOGIC; Y : out STD_LOGIC);
    end component;
    signal w1, w2, w3 : std_logic;
begin
    N1: nand_gate port map (A => A, B => B, Y => w1);
    N2: nand_gate port map (A => A, B => w1, Y => w2);
    N3: nand_gate port map (A => B, B => w1, Y => w3);
    N4: nand_gate port map (A => w2, B => w3, Y => Y);
end Structural;