----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2025 07:53:05 PM
-- Design Name: 
-- Module Name: program_rom - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Entity declaration for a program ROM
-- Takes a 3-bit address input and outputs a 12-bit instruction
entity program_rom is
    Port ( 
        address : in unsigned (2 downto 0);      -- 3-bit address input
        instruction : out STD_LOGIC_VECTOR (11 downto 0) -- 12-bit instruction output
    );
end program_rom;

-- Architecture defining the behavior of the ROM
architecture Behavioral of program_rom is

    -- Define a ROM type as an array of 8 elements, each 12 bits wide
    type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);

    -- Initialize ROM with predefined instructions
    signal ROM : rom_type := (
            0 => "100010000001", -- MOVI R1, 1
            1 => "100100000010", -- MOVI R2, 2
            2 => "100110000011", -- MOVI R3, 3
            3 => "101110000000", -- MOVI R7, 0
            4 => "001110010000", -- ADD R7, R1
            5 => "001110100000", -- ADD R7, R2
            6 => "001110110000", -- ADD R7, R3
            7 => "000000000000"  -- NOP (or HALT)
        );
begin
    
    -- Output the instruction at the given address
    instruction<= ROM(to_integer(address));
end Behavioral;
