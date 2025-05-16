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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramCounter is
    Port (
        Clk_in  : in STD_LOGIC;                       -- Clock input
        Res     : in STD_LOGIC;                       -- Reset signal (active high)
        NextVal : in STD_LOGIC_VECTOR (2 downto 0);   -- Next value to load
        Q       : out STD_LOGIC_VECTOR (2 downto 0)   -- Current PC value
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is

    signal PC : STD_LOGIC_VECTOR(2 downto 0); -- Internal register for PC

begin

    process(Clk_in)
    begin
        if rising_edge(Clk_in) then
            if Res = '1' then
                PC <= "000";                     -- Reset PC to zero
            else
                PC <= NextVal;                   -- Load new PC value
            end if;
        end if;
    end process;

    Q <= PC; -- Output current PC

end Behavioral;
