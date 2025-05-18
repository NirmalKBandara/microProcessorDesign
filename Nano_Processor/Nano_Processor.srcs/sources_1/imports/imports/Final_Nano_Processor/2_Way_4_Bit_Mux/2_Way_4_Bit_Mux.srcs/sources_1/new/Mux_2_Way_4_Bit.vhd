----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 15:39:46
-- Design Name: 
-- Module Name: Mux_2_Way_4_Bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 2-Way 4-Bit Multiplexer. Outputs A if select is '1', else outputs B.
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

-- Entity declaration for 2-way 4-bit Multiplexer
entity Mux_2_Way_4_Bit is
    Port (
        A : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input A
        B : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input B
        S : in STD_LOGIC;                     -- Select signal
        Y : out STD_LOGIC_VECTOR (3 downto 0) -- 4-bit output Y
    );
end Mux_2_Way_4_Bit;

-- Behavioral architecture of the multiplexer
architecture Behavioral of Mux_2_Way_4_Bit is

component Mux_2_Way_1_Bit
    Port ( I0 : in STD_LOGIC;
       I1 : in STD_LOGIC;
       S : in STD_LOGIC;
       Y : out STD_LOGIC);
end component;



begin
    
    Y <= A when(S='1') else B;
              
end Behavioral;
