library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_half_adder is
end tb_half_adder;

architecture Behavior of tb_half_adder is
    component half_adder
        Port ( A, B : in STD_LOGIC; Sum, Carry : out STD_LOGIC);
    end component;

    signal A, B, Sum, Carry : std_logic := '0';
begin
    uut: half_adder Port map (A => A, B => B, Sum => Sum, Carry => Carry);

    stim_proc: process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end Behavior;