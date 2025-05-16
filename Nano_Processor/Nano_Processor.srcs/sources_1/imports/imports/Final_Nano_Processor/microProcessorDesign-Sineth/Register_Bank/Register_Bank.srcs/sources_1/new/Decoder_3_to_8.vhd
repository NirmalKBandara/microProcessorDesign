----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:07:41 PM
-- Design Name: 
-- Module Name: Decoder_3_to_8 - Behavioral
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

-- Entity declaration for 3-to-8 decoder
entity Decoder_3_to_8 is
    Port ( 
        I : in STD_LOGIC_VECTOR (2 downto 0);    -- 3-bit input
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (7 downto 0)    -- 8-bit output
    );
end Decoder_3_to_8;

-- Behavioral architecture
architecture Behavioral of Decoder_3_to_8 is

    -- Component declaration of 2-to-4 decoder used to build the 3-to-8 decoder
    component Decoder_2_to_4
        Port ( 
            I  : in STD_LOGIC_VECTOR (1 downto 0);  -- 2-bit input
            EN : in STD_LOGIC;                      -- Enable input
            Y  : out STD_LOGIC_VECTOR (3 downto 0)  -- 4-bit output
        );
    end component;

    -- Internal enable signals for lower and upper 2-to-4 decoders
    signal EN0, EN1: STD_LOGIC;

begin

    -- Instantiate first 2-to-4 decoder (handles outputs Y(3 downto 0))
    -- Active when I(2) = '0'
    Decoder_2_to_4_0: Decoder_2_to_4
        port map(
            I  => I(1 downto 0),   -- Pass lower 2 bits of input
            EN => EN0,            -- Enable when I(2) = '0'
            Y  => Y(3 downto 0)   -- Connect to lower half of output
        );

    -- Instantiate second 2-to-4 decoder (handles outputs Y(7 downto 4))
    -- Active when I(2) = '1'
    Decoder_2_to_4_1: Decoder_2_to_4
        port map(
            I  => I(1 downto 0),   -- Pass lower 2 bits of input
            EN => EN1,            -- Enable when I(2) = '1'
            Y  => Y(7 downto 4)   -- Connect to upper half of output
        );
        
    -- Control signals to enable one decoder at a time based on I(2)
    EN0 <= not(I(2)) AND EN;  -- Enable lower decoder when I(2) = '0'
    EN1 <= I(2) AND EN;       -- Enable upper decoder when I(2) = '1'

end Behavioral;
