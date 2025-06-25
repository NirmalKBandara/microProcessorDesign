----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2025 06:30:09 AM
-- Design Name: 
-- Module Name: Sim_Decoder_3_to_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench for 3-to-8 Decoder
-- 
-- Dependencies: Requires 'Decoder_3_to_8' module
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- The entity declaration for the testbench
entity Sim_Decoder_3_to_8 is
-- No ports since this is a testbench
end Sim_Decoder_3_to_8;

-- Architecture of the testbench
architecture Behavioral of Sim_Decoder_3_to_8 is

    -- Component declaration for the 3-to-8 decoder module being tested
    component Decoder_3_to_8
        Port ( 
            I : in STD_LOGIC_VECTOR (2 downto 0);    -- 3-bit binary input
            Y : out STD_LOGIC_VECTOR (7 downto 0)    -- 8-bit one-hot output
        );
    end component;

    -- Internal signals to connect to the decoder
    signal I: STD_LOGIC_VECTOR(2 downto 0);   -- Input signal to the decoder
    signal Y: STD_LOGIC_VECTOR(7 downto 0);   -- Output signal from the decoder

begin
    -- Instantiate the decoder and map internal signals to its ports
    uut: Decoder_3_to_8
        port map (
            I => I,
            Y => Y
        );

    -- Test process to apply input stimuli to the decoder
    process
    begin
        -- Apply all possible 3-bit inputs one by one with 100 ns delay between each
        I <= "000";
        wait for 100 ns;
        
        I <= "001";
        wait for 100 ns;
        
        I <= "010";
        wait for 100 ns;
        
        I <= "011";
        wait for 100 ns;
        
        I <= "100";
        wait for 100 ns;
        
        I <= "101";
        wait for 100 ns;
        
        I <= "110";
        wait for 100 ns;
        
        I <= "111";
        wait; -- Wait indefinitely after all inputs are applied
    end process;

end Behavioral;
