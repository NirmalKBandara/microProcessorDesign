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

-- Entity declaration for the 2-Way 3-Bit Multiplexer
entity Mux_2_Way_3_Bit is
    Port (
        A : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input vector A
        B : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input vector B
        S : in STD_LOGIC;                      -- 1-bit select signal
        Y : out STD_LOGIC_VECTOR (2 downto 0)  -- 3-bit output vector Y
    );
end Mux_2_Way_3_Bit;

-- Architecture that defines the behavior of the multiplexer
architecture Behavioral of Mux_2_Way_3_Bit is

begin

    Y <= A when(S='1') else B;

end Behavioral;
