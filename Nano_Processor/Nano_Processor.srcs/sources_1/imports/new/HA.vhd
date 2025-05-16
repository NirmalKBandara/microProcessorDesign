----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 01:10:54 PM
-- Design Name: Half Adder
-- Module Name: HA - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 1-bit Half Adder that produces Sum and Carry
-- 
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Include standard logic definitions
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for Half Adder (HA)
entity HA is
    Port (
        A : in  STD_LOGIC;  -- First input bit
        B : in  STD_LOGIC;  -- Second input bit
        S : out STD_LOGIC;  -- Sum output
        C : out STD_LOGIC   -- Carry output
    );
end HA;

-- Behavioral architecture of the Half Adder
architecture Behavioral of HA is

begin

    -- XOR operation produces the Sum output
    S <= A XOR B;

    -- AND operation produces the Carry output
    C <= A AND B;

end Behavioral;
