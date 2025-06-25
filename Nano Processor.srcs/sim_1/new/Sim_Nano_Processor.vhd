----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 10:05:30 PM
-- Design Name: 
-- Module Name: Sim_Nano_Processor - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Optional for counter-style clock generation
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sim_Nano_Processor is
--  Port ( );
end Sim_Nano_Processor;

architecture Behavioral of Sim_Nano_Processor is

    -- Component declaration of the Nano_Processor
    component Nano_Processor
        Port (
            Res          : in  STD_LOGIC;
            Clk          : in  STD_LOGIC;
            Reg_7_out    : out STD_LOGIC_VECTOR(3 downto 0);
            OverFlow     : out STD_LOGIC;
            Zero         : out STD_LOGIC;
            Display_7_Segment: out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    -- Signals to connect to the Nano_Processor ports
    signal Res          : STD_LOGIC := '1';  -- Start with reset active
    signal Clk          : STD_LOGIC := '0';
    signal Reg_7_out    : STD_LOGIC_VECTOR(3 downto 0);
    signal OverFlow     : STD_LOGIC;
    signal Zero         : STD_LOGIC;
    signal Display_7_Segment:  STD_LOGIC_VECTOR(6 downto 0);

    constant CLK_PERIOD : time := 20 ns;  -- 50 MHz clock (for simulation)

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: Nano_Processor
        Port map (
            Res => Res,
            Clk => Clk,
            Reg_7_out => Reg_7_out,
            OverFlow => OverFlow,
            Zero => Zero,
            Display_7_Segment => Display_7_Segment
        );

    -- Clock generation process
    Clk_process :process
    begin
        while true loop
            Clk <= '0';
            wait for CLK_PERIOD/2;
            Clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    -- Reset process
    Reset_process :process
    begin
        -- Hold reset active for first 2 clock cycles
        Res <= '1';
        wait for 2*CLK_PERIOD;
        Res <= '0'; -- Release reset
        wait;
    end process;



end Behavioral;