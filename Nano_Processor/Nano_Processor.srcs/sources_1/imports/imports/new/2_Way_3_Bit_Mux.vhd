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
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Entity declaration for 2-Way 3-Bit Multiplexer
entity Mux_2_Way_3_Bit is
    Port (
        A : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input A
        B : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input B
        S : in STD_LOGIC;                      -- Select signal
        Y : out STD_LOGIC_VECTOR (2 downto 0)  -- 3-bit output
    );
end Mux_2_Way_3_Bit;

architecture Behavioral of Mux_2_Way_3_Bit is


begin

Y <= A when (S = '1') else B;

end Behavioral;
