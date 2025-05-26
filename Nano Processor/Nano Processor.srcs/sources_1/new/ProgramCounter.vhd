----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 10:01:23 PM
-- Design Name: 
-- Module Name: ProgramCounter - Behavioral
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

entity ProgramCounter is
    Port (
        Clk_in  : in STD_LOGIC;                    -- Clock input signal
        Res     : in STD_LOGIC;                    -- Asynchronous reset signal (active high)
        NextVal : in UNSIGNED(2 downto 0);        -- Next value to be loaded into the counter (3-bit unsigned)
        Q       : out UNSIGNED(2 downto 0)        -- Current output value of the counter (3-bit unsigned)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is

    -- Internal signal to hold the current count value
    signal PC : UNSIGNED(2 downto 0) := (others => '0');  -- Initialize PC to 0

begin

    process(Clk_in)
    begin
        if rising_edge(Clk_in) then             -- Trigger on the rising edge of the clock
            if Res = '1' then                   -- If reset is asserted
                PC <= (others => '0');          -- Reset the program counter to 0
            else
                PC <= NextVal;                  -- Otherwise, load the next value into the counter
            end if;
        end if;
    end process;

    Q <= PC;  -- Assign the internal counter value to the output port

end Behavioral;
