----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2025 06:47:06 AM
-- Design Name: 
-- Module Name: Sim_Reg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench for a 4-bit register with enable
-- 
-- Dependencies: Requires 'reg' module
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench (no ports needed)
entity Sim_Reg is
end Sim_Reg;

-- Architecture for the testbench
architecture Behavioral of Sim_Reg is

    -- Component declaration of the 4-bit register
    component reg
        Port ( 
            D   : in STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit data input
            EN  : in STD_LOGIC;                      -- Enable signal
            Clk : in STD_LOGIC;                      -- Clock signal
            Q   : out STD_LOGIC_VECTOR (3 downto 0)  -- 4-bit data output
        );
    end component;

    -- Signals to connect to the register
    signal D, Q : STD_LOGIC_VECTOR (3 downto 0);  -- Input and output data lines
    signal EN, Clk : STD_LOGIC;                   -- Enable and Clock signals

begin

    -- Instantiate the register component and map testbench signals to its ports
    uut: reg
        port map (
            D   => D,
            EN  => EN,
            Clk => Clk,
            Q   => Q
        );

    -- Clock generation process: produces a clock with 20 ns period
    Clk_process: process
    begin 
        Clk <= '0';
        wait for 10 ns;
        
        Clk <= '1';
        wait for 10 ns;
    end process;
    
    -- Main stimulus process
    Main_process: process
    begin
        -- First input (write enabled)
        EN <= '1';               -- Enable the register
        D <= "0110";             -- Set input data to 0110
        wait for 100 ns;         -- Wait to allow multiple clock cycles

        -- Disable writing to register
        EN <= '0';               -- Disable the register
        wait for 100 ns;         -- Output Q should retain previous value

        -- Change input while disabled (Q should not change)
        D <= "1011";             -- New data on input, but EN is low
        wait for 100 ns;

        -- Re-enable writing (register should now load "1011")
        EN <= '1';               -- Enable the register again
        wait;                    -- Wait indefinitely for simulation to end
    end process;

end Behavioral;
