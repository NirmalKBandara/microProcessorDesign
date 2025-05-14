----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2025 10:30:23 PM
-- Design Name: 
-- Module Name: Sim_program_rom - Behavioral
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

entity Sim_program_rom is
--  Port ( );
end Sim_program_rom;

architecture Behavioral of Sim_program_rom is

component program_rom
    port ( address : in std_logic_vector (2 downto 0);
           instruction : out std_logic_vector (11 downto 0));
end component;

signal address : std_logic_vector (2 downto 0);
signal instruction : std_logic_vector (11 downto 0);

begin

UUT : program_rom port map (address => address, instruction => instruction);

process
    begin
        address <= "000"; --- ROM 0 
        wait for 20 ns;
        
        address <= "001"; --- ROM 1
        wait for 20 ns;
        
        address <= "010"; --- ROM 2
        wait for 20 ns;
        
        address <= "011"; --- ROM 3
        wait for 20 ns;
        
        address <= "100"; --- ROM 4
        wait for 20 ns;
        
        address <= "101"; --- ROM 5
        wait for 20 ns;
        
        address <= "110"; --- ROM 6
        wait for 20 ns;
    
        address <= "111"; --- ROM 7
        wait for 20 ns;
        
        wait;
    end process;
end Behavioral;
