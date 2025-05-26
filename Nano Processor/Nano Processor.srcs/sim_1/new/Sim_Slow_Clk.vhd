----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2025 06:40:10 AM
-- Design Name: 
-- Module Name: Sim_Slow_Clk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench to simulate the Slow_Clk module
-- 
-- Dependencies: Requires the Slow_Clk component
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench
entity Sim_Slow_Clk is
-- No ports needed for a testbench
end Sim_Slow_Clk;

-- Behavioral architecture of the testbench
architecture Behavioral of Sim_Slow_Clk is

    -- Component declaration of the design under test (Slow_Clk)
    component Slow_Clk
        Port ( 
            Clk_in  : in STD_LOGIC;   -- Input clock signal
            Clk_out : out STD_LOGIC  -- Output slower clock signal
        );
    end component;

    -- Internal signals to connect to the Slow_Clk component
    signal Clk_in, Clk_out: STD_LOGIC;

begin

    -- Instantiation of the Slow_Clk module
    uut: Slow_Clk
        port map(
            Clk_in  => Clk_in,
            Clk_out => Clk_out
        );
        
    -- Clock generation process
    process
    begin
        -- Generate a clock signal with 10 ns period (5 ns high, 5 ns low)
        Clk_in <= '0';
        wait for 5 ns;
        
        Clk_in <= '1';
        wait for 5 ns;
    end process;

end Behavioral;
