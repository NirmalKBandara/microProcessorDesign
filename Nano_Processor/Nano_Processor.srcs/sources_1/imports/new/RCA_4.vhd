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
use IEEE.NUMERIC_STD.ALL;
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
    signal temp_sum : unsigned(4 downto 0);  -- one bit wider to hold carry

begin
   

    temp_sum <= ('0' & unsigned(A)) + unsigned(B) + ("0000" & C_IN);  -- 5-bit addition
    S <= std_logic_vector(temp_sum(3 downto 0));
    C_OUT <= temp_sum(4);



end Behavioral;
