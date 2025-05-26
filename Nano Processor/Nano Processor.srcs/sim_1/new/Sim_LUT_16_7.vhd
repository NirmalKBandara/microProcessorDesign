----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2025 07:25:34 AM
-- Design Name: 
-- Module Name: Sim_LUT_16_7 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench for LUT_16_7 - simulates a lookup table that maps 
--              4-bit binary addresses to 7-bit outputs for a seven-segment display.
-- 
-- Dependencies: Requires LUT_16_7 component definition
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity for the testbench; no ports needed
entity Sim_LUT_16_7 is
end Sim_LUT_16_7;

architecture Behavioral of Sim_LUT_16_7 is

    -- Declaration of the component under test
    component LUT_16_7
        Port (
            address : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input address (values 0 to 15)
            data    : out STD_LOGIC_VECTOR (6 downto 0)  -- 7-bit output (usually for 7-segment display)
        );
    end component;

    -- Signals to connect to the component's ports
    signal address : STD_LOGIC_VECTOR(3 downto 0);  -- Test input address
    signal data    : STD_LOGIC_VECTOR (6 downto 0); -- Output from the LUT

begin

    -- Instantiate the unit under test (UUT)
    uut: LUT_16_7
        port map (
            address => address,
            data => data
        );

    -- Test process to apply input stimulus
    process
    begin
        -- Apply different 4-bit address values to simulate lookup behavior
        address <= "0000";  -- Expect output for 0
        wait for 100 ns;

        address <= "0001";  -- Expect output for 1
        wait for 100 ns;

        address <= "0010";  -- Expect output for 2
        wait for 100 ns;

        address <= "0011";  -- Expect output for 3
        wait for 100 ns;  

        address <= "0100";  -- Expect output for 4
        wait for 100 ns;

        address <= "0101";  -- Expect output for 5
        wait for 100 ns;  

        address <= "0110";  -- Expect output for 6
        wait for 100 ns;

        address <= "0111";  -- Expect output for 7
        wait;  -- End of simulation (no time delay, simulation halts here)
    end process;

end Behavioral;
