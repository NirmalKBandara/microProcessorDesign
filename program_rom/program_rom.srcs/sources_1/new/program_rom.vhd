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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity program_rom is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           instruction : out STD_LOGIC_VECTOR (11 downto 0));
end program_rom;

architecture Behavioral of program_rom is
begin
    process(address)
    begin
        case address is
            when "000" => instruction <= "100010001010"; -- MOVI R1, 10
            when "001" => instruction <= "100100000001"; -- MOVI R2, 1
            when "010" => instruction <= "010100000000"; -- NEG R2
            when "011" => instruction <= "000010100000"; -- ADD R1, R2
            when "100" => instruction <= "110010000111"; -- JZR R1, 7
            when "101" => instruction <= "110000000011"; -- JZR R0, 3
            when others => instruction <= "000000000000";
        end case;
    end process;
end Behavioral;
