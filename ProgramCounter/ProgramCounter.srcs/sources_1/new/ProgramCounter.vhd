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
    Port ( Clk_in : in STD_LOGIC;
           Res : in STD_LOGIC;
           NextVal : in STD_LOGIC_VECTOR (2 downto 0);
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end ProgramCounter;

architecture Behavioral of ProgramCounter is

component Slow_Clk
        Port (
            Clk_in  : in  STD_LOGIC;
            Clk_out : out STD_LOGIC
        );
    end component;

    signal SlowClock : STD_LOGIC;
    signal PC        : STD_LOGIC_VECTOR(2 downto 0) := "000";

begin
    Slow_Clk_inst : Slow_Clk
        port map (
            Clk_in  => Clk_in,
            Clk_out => SlowClock
        );

    process(SlowClock, Res)
    begin
        if Res = '1' then
            PC <= "000";
        elsif rising_edge(SlowClock) then
            PC <= NextVal;
        end if;
    end process;

    Q <= PC;

end Behavioral;