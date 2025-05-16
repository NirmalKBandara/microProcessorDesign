----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 01:46:25 PM
-- Design Name: 4-bit Ripple Carry Adder
-- Module Name: RCA_4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 4-bit ripple carry adder using 4 full adders
-- 
-- Dependencies: Requires a full adder (FA) component
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Import standard logic library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for RCA_4
-- This module adds two 4-bit numbers using ripple carry logic
entity RCA_4 is
    Port (
        A     : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input A
        B     : in  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit input B
        C_IN  : in  STD_LOGIC;                    -- Initial carry-in
        S     : out STD_LOGIC_VECTOR(3 downto 0); -- 4-bit sum output
        C_OUT : out STD_LOGIC                     -- Final carry-out (overflow)
    );
end RCA_4;

-- Behavioral architecture of RCA_4
architecture Behavioral of RCA_4 is

    -- Declare the Full Adder (FA) component used inside RCA_4
    COMPONENT FA 
        PORT(
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            C_IN  : in  STD_LOGIC;
            S     : out STD_LOGIC;
            C_OUT : out STD_LOGIC
        );
    END COMPONENT;

    -- Intermediate carry signals between the full adders
    SIGNAL FA0_C, FA1_C, FA2_C : STD_LOGIC;

begin

    -- First Full Adder: LSB (bit 0)
    FA_0: FA
    PORT MAP(
        A     => A(0),
        B     => B(0),
        C_IN  => C_IN,     -- Use external carry-in
        S     => S(0),
        C_OUT => FA0_C     -- Carry to next FA
    );

    -- Second Full Adder: bit 1
    FA_1 : FA
    PORT MAP(
        A     => A(1),
        B     => B(1),
        C_IN  => FA0_C,    -- Carry from FA_0
        S     => S(1),
        C_OUT => FA1_C     -- Carry to next FA
    );

    -- Third Full Adder: bit 2
    FA_2 : FA
    PORT MAP(
        A     => A(2),
        B     => B(2),
        C_IN  => FA1_C,    -- Carry from FA_1
        S     => S(2),
        C_OUT => FA2_C     -- Carry to next FA
    );

    -- Fourth Full Adder: MSB (bit 3)
    FA_3 : FA
    PORT MAP(
        A     => A(3),
        B     => B(3),
        C_IN  => FA2_C,    -- Carry from FA_2
        S     => S(3),
        C_OUT => C_OUT     -- Final carry-out
    );

end Behavioral;
