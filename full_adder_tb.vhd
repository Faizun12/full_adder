library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_adder is
end tb_full_adder;

architecture Behavior of tb_full_adder is
    component full_adder
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Sum : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;

    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Cin : std_logic := '0';

    -- Outputs
    signal Sum : std_logic;
    signal Cout : std_logic;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: full_adder Port map (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset state for 10 ns
        wait for 10 ns;

        -- 8 Combinations for Truth Table
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;

        wait;
    end process;
end Behavior;