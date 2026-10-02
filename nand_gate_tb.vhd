library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate_tb is
end nand_gate_tb;

architecture Behavior of nand_gate_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component nand_gate
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';

    -- Outputs
    signal Y : std_logic;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: nand_gate Port map (
          A => A,
          B => B,
          Y => Y
        );

    -- Stimulus process
    stim_proc: process
    begin
        wait for 10 ns;
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;

end Behavior;