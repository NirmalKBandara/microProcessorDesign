----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 14:43:41
-- Design Name: 
-- Module Name: 2_Way_3_Bit_Mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: A 2-to-1 multiplexer for 3-bit inputs. Selects between input A and B
--              based on select signal S and assigns the result to output Y.
-- 
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Include standard logic library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration for the 2-Way 3-Bit Multiplexer
entity Rom_Address_Select is
    Port (
        A : in unsigned(2 downto 0);  -- 3-bit input vector A
        B : in unsigned (2 downto 0);  -- 3-bit input vector B
        S : in STD_LOGIC;                      -- 1-bit select signal
        Y : out unsigned (2 downto 0)  -- 3-bit output vector Y
    );
end Rom_Address_Select;

-- Architecture that defines the behavior of the multiplexer
architecture Behavioral of Rom_Address_Select is

begin

    -- Multiplexer logic:
    -- If select signal S is '1', output Y gets the value of input A
    -- If select signal S is '0', output Y gets the value of input B
    Y <= A when(S='1') else B+1;

end Behavioral;
