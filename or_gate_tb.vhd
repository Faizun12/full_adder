library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_or_gate is
end tb_or_gate;

architecture Behavior of tb_or_gate is
    component or_gate
        Port ( A, B : in STD_LOGIC; Y : out STD_LOGIC);
    end component;

    signal A, B, Y : std_logic := '0';
begin
    uut: or_gate Port map (A => A, B => B, Y => Y);

    stim_proc: process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end Behavior;