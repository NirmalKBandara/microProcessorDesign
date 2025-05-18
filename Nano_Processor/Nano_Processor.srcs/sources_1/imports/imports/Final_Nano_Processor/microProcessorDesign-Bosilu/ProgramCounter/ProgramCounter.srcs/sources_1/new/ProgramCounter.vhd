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
        Clk_in  : in STD_LOGIC;
        Res     : in STD_LOGIC;
        NextVal : in UNSIGNED(2 downto 0);  -- Change to UNSIGNED
        Q       : out UNSIGNED(2 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is

    signal PC : UNSIGNED(2 downto 0) := (others => '0');

begin

    process(Clk_in)
    begin
        if rising_edge(Clk_in) then
            if Res = '1' then
                PC <= (others => '0');       -- Reset
            else
                PC <= NextVal;               -- Load next value
            end if;
        end if;
    end process;

    Q <= PC;  -- Output

end Behavioral;
