----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:16:47 PM
-- Design Name: 
-- Module Name: Decorder_2_to_4 - Behavioral
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

-- Entity declaration for 2-to-4 decoder with enable signal
entity Decoder_2_to_4 is
    Port ( 
        I  : in STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input signal
        EN : in STD_LOGIC;                      -- Enable signal
        Y  : out STD_LOGIC_VECTOR (3 downto 0)  -- 4-bit output
    );
end Decoder_2_to_4;

-- Behavioral architecture
architecture Behavioral of Decoder_2_to_4 is

begin
    -- Output logic equations with enable control
    Y(0) <= not(I(1) or I(0)) AND EN;             -- Output 0 active when I = "00" and EN = '1'
    Y(1) <= not(I(1)) AND I(0) AND EN;            -- Output 1 active when I = "01" and EN = '1'
    Y(2) <= I(1) AND (not(I(0))) AND EN;          -- Output 2 active when I = "10" and EN = '1'
    Y(3) <= I(1) AND I(0) AND EN;                 -- Output 3 active when I = "11" and EN = '1'

end Behavioral;

