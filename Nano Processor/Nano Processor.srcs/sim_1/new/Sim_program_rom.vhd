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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Testbench entity for the program_rom
-- No ports are defined since this is a testbench
entity Sim_program_rom is
--  Port ( );
end Sim_program_rom;

architecture Behavioral of Sim_program_rom is

    -- Declare the component program_rom to be tested
    component program_rom
        port (
            address : in unsigned (2 downto 0);       -- 3-bit address input
            instruction : out std_logic_vector (11 downto 0)  -- 12-bit instruction output
        );
    end component;

    -- Signals to connect to the program_rom inputs and outputs
    signal address : unsigned (2 downto 0);         -- Signal to drive the address input
    signal instruction : std_logic_vector (11 downto 0);    -- Signal to capture the instruction output

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT : program_rom
        port map (
            address => address,            -- Connect testbench address signal to UUT input
            instruction => instruction     -- Connect UUT instruction output to testbench signal
        );

    -- (Note: No test process provided here yet to drive the address signal)
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
