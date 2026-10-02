library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( A, B : in STD_LOGIC;
           Y : out STD_LOGIC);
end and_gate;

architecture Structural of and_gate is
    component nand_gate
        Port ( A, B : in STD_LOGIC; Y : out STD_LOGIC);
    end component;
    signal w1 : std_logic;
begin
    N1: nand_gate port map (A => A, B => B, Y => w1);
    N2: nand_gate port map (A => w1, B => w1, Y => Y);
end Structural;