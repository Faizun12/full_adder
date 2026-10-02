library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_not_gate is
end tb_not_gate;

architecture Behavior of tb_not_gate is
    component not_gate
        Port ( A : in STD_LOGIC; Y : out STD_LOGIC);
    end component;

    signal A, Y : std_logic := '0';
begin
    uut: not_gate Port map (A => A, Y => Y);

    stim_proc: process
    begin
        A <= '0'; wait for 10 ns;
        A <= '1'; wait for 10 ns;
        wait;
    end process;
end Behavior;