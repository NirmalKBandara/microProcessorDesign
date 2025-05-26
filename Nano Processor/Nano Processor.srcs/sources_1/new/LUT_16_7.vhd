----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2025 09:41:40 AM
-- Design Name: 16-to-7 Segment Lookup Table
-- Module Name: LUT_16_7 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--     A 16-entry ROM LUT mapping 4-bit addresses to 7-bit seven-segment display codes.
--     Each 7-bit vector corresponds to segments to display hexadecimal digits 0-F.
-- Dependencies: None
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; -- For numeric conversions

-- Entity declaration for the 16-to-7 segment LUT
entity LUT_16_7 is
    Port (
        address : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input address (0 to 15)
        data    : out STD_LOGIC_VECTOR (6 downto 0)  -- 7-bit output to drive seven-segment display
    );
end LUT_16_7;

architecture Behavioral of LUT_16_7 is

begin
    
process(address)
begin
    case address is
        when "0000" => data <= "1000000"; -- 0
        when "0001" => data <= "1111001"; -- 1
        when "0010" => data <= "0100100"; -- 2
        when "0011" => data <= "0110000"; -- 3
        when "0100" => data <= "0011001"; -- 4
        when "0101" => data <= "0010010"; -- 5
        when "0110" => data <= "0000010"; -- 6
        when "0111" => data <= "1111000"; -- 7
        when "1000" => data <= "0000000"; -- 8
        when "1001" => data <= "0010000"; -- 9
        when "1010" => data <= "0001000"; -- A
        when "1011" => data <= "0000011"; -- B
        when "1100" => data <= "1000110"; -- C
        when "1101" => data <= "0100001"; -- D
        when "1110" => data <= "0000110"; -- E
        when others => data <= "0001110"; -- F
    end case;
end process;

end Behavioral;
