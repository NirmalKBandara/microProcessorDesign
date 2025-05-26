-- Include IEEE standard logic library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration for a 4-bit Adder/Subtractor Unit
entity AdderSubtractor4bitUnit is
    Port (
        A        : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input A
        B        : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input B
        ADD_SUB  : in  STD_LOGIC;                    -- Operation select: '0' for add, '1' for subtract
        RESULT   : out STD_LOGIC_VECTOR(3 downto 0); -- 4-bit result output
        C_OUT    : out STD_LOGIC;                    -- Carry-out (not used in this architecture)
        OVERFLOW : out STD_LOGIC;                    -- Overflow flag output from RCA_4
        ZERO     : out STD_LOGIC                     -- Zero flag: '1' if result is all zeros
    );
end AdderSubtractor4bitUnit;

-- Architecture definition using a 4-bit Ripple Carry Adder component
architecture Behavioral of AdderSubtractor4bitUnit is

    -- Internal signals
    signal A_mod : STD_LOGIC_VECTOR(3 downto 0); -- Modified A input (inverted for subtraction)
    signal B_mod : STD_LOGIC_VECTOR(3 downto 0); -- Modified B input (zero for subtraction)
    signal S     : STD_LOGIC_VECTOR(4 downto 0); -- Output from RCA_4, 5 bits to include carry/overflow
    signal temp_sum : unsigned(4 downto 0);       -- Unsigned 5-bit internal sum to hold carry

begin

    -- Logic for operand selection:
    -- If ADD_SUB = '0' ? addition: A_mod = A, B_mod = B
    -- If ADD_SUB = '1' ? subtraction: A_mod = NOT A (two's complement), B_mod = "0000"
    A_mod <= A when (ADD_SUB = '0') else not(A); -- Invert A for subtraction
    B_mod <= B when (ADD_SUB = '0') else (others => '0'); -- Set B to zero in subtraction

    -- Perform the operation:
    -- For addition: A + B
    -- For subtraction: NOT A + 0 + 1 (2's complement of A), simulating -A
    temp_sum <= ('0' & unsigned(A_mod)) + unsigned(B_mod) + ("0000" & ADD_SUB);

    -- Assign calculated value to output signal S
    S <= STD_LOGIC_VECTOR(temp_sum);

    -- Set 4-bit RESULT from lower 4 bits of S
    RESULT <= S(3 downto 0);

    -- ZERO flag: '1' if result is all zeros, else '0'
    ZERO <= not (S(0) OR S(1) OR S(2) OR S(3));

    -- Overflow is indicated by the 5th bit (MSB) of the sum
    OVERFLOW <= (A(3) XOR B(3)) XOR S(4);

    -- Note: C_OUT is declared in the port but is not assigned or used in this architecture

end Behavioral;
