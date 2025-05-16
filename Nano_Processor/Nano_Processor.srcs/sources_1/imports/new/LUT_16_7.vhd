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

    -- Define a ROM type: 16 entries of 7-bit vectors
    type rom_type is array (0 to 15) of std_logic_vector(6 downto 0);

    -- Initialize ROM with seven-segment codes for digits 0-F
    signal sevenSegment_ROM : rom_type := (
        "1000000", -- 0: segments to display '0'
        "1111001", -- 1
        "0100100", -- 2
        "0110000", -- 3
        "0011001", -- 4
        "0010010", -- 5
        "0000010", -- 6
        "1111000", -- 7
        "0000000", -- 8
        "0010000", -- 9
        "0001000", -- a
        "0000011", -- b
        "1000110", -- c
        "0100001", -- d
        "0000110", -- e
        "0001110"  -- f
    );

begin

    -- Convert 4-bit input address to integer and output corresponding ROM data
    data <= sevenSegment_ROM(to_integer(unsigned(address)));

end Behavioral;
