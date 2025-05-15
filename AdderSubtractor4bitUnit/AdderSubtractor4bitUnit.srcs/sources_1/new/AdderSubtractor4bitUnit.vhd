library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AdderSubtractor4bitUnit is
    Port (
        A        : in  STD_LOGIC_VECTOR(3 downto 0);
        B        : in  STD_LOGIC_VECTOR(3 downto 0);
        ADD_SUB  : in  STD_LOGIC;
        RESULT   : out STD_LOGIC_VECTOR(3 downto 0);
        C_OUT    : out STD_LOGIC;
        OVERFLOW : out STD_LOGIC;
        ZERO     : out STD_LOGIC
    );
end AdderSubtractor4bitUnit;

architecture Behavioral of AdderSubtractor4bitUnit is

    COMPONENT FA
        PORT(
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            C_IN  : in  STD_LOGIC;
            S     : out STD_LOGIC;
            C_OUT : out STD_LOGIC
        );
    END COMPONENT;

    signal A_mod  : STD_LOGIC_VECTOR(3 downto 0);
    signal B_mod  : STD_LOGIC_VECTOR(3 downto 0);
    signal C      : STD_LOGIC_VECTOR(4 downto 0);
    signal S_int  : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- If ADD_SUB = '0': A + B
    -- If ADD_SUB = '1': 2's complement of A (i.e., ~A + 1)
    A_mod <= not A when ADD_SUB = '1' else A;
    B_mod <= B when ADD_SUB = '0' else "0000";
    C(0) <= ADD_SUB;

    -- Full Adder Chain to compute either A + B or ~A + 1
    FA0: FA PORT MAP(A => A_mod(0), B => B_mod(0), C_IN => C(0), S => S_int(0), C_OUT => C(1));
    FA1: FA PORT MAP(A => A_mod(1), B => B_mod(1), C_IN => C(1), S => S_int(1), C_OUT => C(2));
    FA2: FA PORT MAP(A => A_mod(2), B => B_mod(2), C_IN => C(2), S => S_int(2), C_OUT => C(3));
    FA3: FA PORT MAP(A => A_mod(3), B => B_mod(3), C_IN => C(3), S => S_int(3), C_OUT => C(4));

    -- Connect internal sum to output
    RESULT <= S_int;
    C_OUT <= C(4);

    -- Overflow Detection
    OVERFLOW <= C(3) xor C(4);

    -- Zero Flag
    ZERO <= '1' when S_int = "0000" else '0';

end Behavioral;
