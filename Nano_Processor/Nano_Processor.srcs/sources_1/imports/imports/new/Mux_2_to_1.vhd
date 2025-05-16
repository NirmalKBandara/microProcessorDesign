----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.05.2025 15:09:42
-- Design Name: 
-- Module Name: Mux_2_to_1 - Behavioral
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

-- Entity declaration for 2-to-1 Multiplexer
entity Mux_2_to_1 is
    Port (
        D : in STD_LOGIC_VECTOR (1 downto 0); -- 2-bit data input
        S : in STD_LOGIC;                     -- Select signal
        EN : in STD_LOGIC;                    -- Enable signal
        Y : out STD_LOGIC                     -- Output signal
    );
end Mux_2_to_1;

architecture Behavioral of Mux_2_to_1 is

begin
    -- Output Y logic:
    -- If EN is '1', Y = D(0) when S='0', else Y = D(1) when S='1'
    -- If EN is '0', output Y is forced to '0'
    Y <= ((D(0) AND NOT(S)) OR (D(1) AND S)) AND EN;

end Behavioral;

