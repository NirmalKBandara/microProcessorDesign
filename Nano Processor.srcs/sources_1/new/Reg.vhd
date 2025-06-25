----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 08:50:54 PM
-- Design Name: 
-- Module Name: Reg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: A simple 4-bit register with clock and enable input.
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

-- Entity declaration for a 4-bit Register
entity Reg is
    Port ( 
        D   : in STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit data input
        EN  : in STD_LOGIC;                      -- Enable signal (active high)
        Clk : in STD_LOGIC;                      -- Clock signal (positive edge triggered)
        Q   : out STD_LOGIC_VECTOR (3 downto 0)  -- 4-bit data output
    );
end Reg;

-- Behavioral architecture of the 4-bit Register
architecture Behavioral of Reg is


begin

    -- Process triggered on rising edge of the clock
    process(Clk) 
    begin
        -- Check for rising edge of the clock
        if rising_edge(Clk) then
            -- Load input D into register only if enable signal is high
            if (EN = '1') then
                Q <= D;
            end if;
        end if;
    end process;

end Behavioral;
