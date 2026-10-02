library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder;

architecture Structural of full_adder is
    component half_adder
        Port ( A, B : in STD_LOGIC; Sum, Carry : out STD_LOGIC);
    end component;

    component or_gate
        Port ( A, B : in STD_LOGIC; Y : out STD_LOGIC);
    end component;

    signal s1, c1, c2 : std_logic;
begin
    HA1: half_adder port map (A => A, B => B, Sum => s1, Carry => c1);
    HA2: half_adder port map (A => s1, B => Cin, Sum => Sum, Carry => c2);
    OR1: or_gate port map (A => c1, B => c2, Y => Cout);
end Structural;