----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2025 07:11:55 AM
-- Design Name: 
-- Module Name: Sim_Rom_Address_Select - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench for Rom_Address_Select module
-- 
-- Dependencies: Requires the Rom_Address_Select component
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Required for using 'unsigned' type and arithmetic

-- Entity declaration for the testbench
entity Sim_Rom_Address_Select is
    -- No ports are required for the testbench
end Sim_Rom_Address_Select;

architecture Behavioral of Sim_Rom_Address_Select is

    -- Declaration of the component under test
    component Rom_Address_Select
        Port (
            A : in unsigned(2 downto 0);  -- 3-bit input address A
            B : in unsigned(2 downto 0);  -- 3-bit input address B
            S : in STD_LOGIC;             -- Select signal (if '0' select A, else select B)
            Y : out unsigned(2 downto 0)  -- 3-bit output address Y
        );
    end component;

    -- Internal signals to connect to the DUT (Device Under Test)
    signal A, B, Y : unsigned(2 downto 0);  -- 3-bit unsigned vectors
    signal S : STD_LOGIC;                  -- Select signal

begin

    -- Instantiation of the Rom_Address_Select module
    uut: Rom_Address_Select
        port map (
            A => A,
            B => B,
            S => S,
            Y => Y
        );

    -- Test process to apply stimulus to the module
    process
    begin
        -- Initial inputs
        A <= "110";    -- Set A to 6
        B <= "000";    -- Set B to 0
        S <= '0';      -- Select B (Y should become B = "000")
        wait for 100 ns;

        -- Change value of B while S is still '0'
        B <= "011";    -- Set B to 3 (Y should be B = "011")
        wait for 100 ns;

        -- Change S to select A instead (Y should become A = "110")
        S <= '1';      -- Now select A (Y should become "110")
        wait;
    end process;

end Behavioral;
