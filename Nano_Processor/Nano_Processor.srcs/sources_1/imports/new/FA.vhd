----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 01:20:12 PM
-- Design Name: Full Adder
-- Module Name: FA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 1-bit Full Adder built using two Half Adders
-- 
-- Dependencies: Requires a Half Adder (HA) component
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Include standard logic library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for Full Adder (FA)
entity FA is
    Port (
        A      : in  STD_LOGIC;  -- Input bit A
        B      : in  STD_LOGIC;  -- Input bit B
        C_IN   : in  STD_LOGIC;  -- Carry-in
        S      : out STD_LOGIC;  -- Sum output
        C_OUT  : out STD_LOGIC   -- Carry-out
    );
end FA;

-- Behavioral architecture using two Half Adders
architecture Behavioral of FA is

    -- Declare the Half Adder (HA) component used inside the Full Adder
    COMPONENT HA
        PORT(
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            S : out STD_LOGIC;
            C : out STD_LOGIC
        );
    END COMPONENT;

    -- Intermediate signals to carry outputs from the half adders
    SIGNAL HA0_S, HA0_C, HA1_S, HA1_C : STD_LOGIC;

begin

    -- First Half Adder: adds A and B
    HA_0: HA
    PORT MAP(
        A => A,
        B => B,
        S => HA0_S,    -- Intermediate sum
        C => HA0_C     -- First carry output
    );

    -- Second Half Adder: adds intermediate sum and carry-in
    HA_1: HA
    PORT MAP(
        A => HA0_S,
        B => C_IN,
        S => HA1_S,    -- Final sum output
        C => HA1_C     -- Second carry output
    );

    -- Assign final outputs
    S      <= HA1_S;               -- Sum output from second HA
    C_OUT  <= HA0_C OR HA1_C;      -- Final carry-out using OR of both HA carry outs

end Behavioral;
