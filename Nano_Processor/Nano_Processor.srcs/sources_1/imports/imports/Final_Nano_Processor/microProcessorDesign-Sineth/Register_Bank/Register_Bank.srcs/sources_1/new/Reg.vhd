----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 08:50:54 PM
-- Design Name: 
-- Module Name: Reg - Behavioral
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

-- Entity declaration for a 4-bit Register
entity Reg is
    Port ( 
        D   : in STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit data input
        EN  : in STD_LOGIC;                      -- Enable signal
        Clk : in STD_LOGIC;                      -- Clock signal
        Q   : out STD_LOGIC_VECTOR (3 downto 0)  -- 4-bit data output
    );
end Reg;

-- Behavioral architecture of the 4-bit Register
architecture Behavioral of Reg is

signal Q_reg : STD_LOGIC_VECTOR(3 downto 0):=(Others => '0');

begin
    
    process(Clk) begin
        if(rising_edge(Clk)) then
            if (EN = '1') then
                Q_reg <= D;
            end if;
        end if;
    end process;

    Q <= Q_reg;
end Behavioral;


