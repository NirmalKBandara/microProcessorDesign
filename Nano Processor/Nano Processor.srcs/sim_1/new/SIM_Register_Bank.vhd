----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:48:57 PM
-- Design Name: 
-- Module Name: SIM_Register_Bank - Behavioral
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

-- Testbench entity for Register_Bank (no ports required)
entity SIM_Register_Bank is
--  Port ( );
end SIM_Register_Bank;

architecture Behavioral of SIM_Register_Bank is

    -- Component declaration for the Register_Bank under test
    component Register_Bank
    Port ( 
        Reg_EN      : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit input to select which register to enable
        Clk         : in STD_LOGIC;                      -- Clock signal
        D           : in STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit data input
        Res         : in STD_LOGIC := '0';                      -- Reset signal for all registers
        Reg_0_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 0
        Reg_1_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 1
        Reg_2_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 2
        Reg_3_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 3
        Reg_4_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 4
        Reg_5_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 5
        Reg_6_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Output of Register 6
        Reg_7_out   : out STD_LOGIC_VECTOR (3 downto 0)  -- Output of Register 7
    );
    end component;

    -- Internal signals to connect to Register_Bank inputs and outputs
    signal Reg_EN: STD_LOGIC_VECTOR(2 downto 0);               -- Register enable select
    signal Clk, Res: STD_LOGIC;                                -- Clock and Reset signals
    signal D, Reg_0_out, Reg_1_out, Reg_2_out, Reg_3_out, Reg_4_out, Reg_5_out, Reg_6_out, Reg_7_out: STD_LOGIC_VECTOR(3 downto 0);
begin

    -- Instantiate the Unit Under Test (UUT) Register_Bank
    UUT: Register_Bank
        port map(
            Reg_En => Reg_En,
            Clk => Clk,
            D => D,
            Res => Res,
            Reg_0_out => Reg_0_out,
            Reg_1_out => Reg_1_out,
            Reg_2_out => Reg_2_out,
            Reg_3_out => Reg_3_out,
            Reg_4_out => Reg_4_out,
            Reg_5_out => Reg_5_out,
            Reg_6_out => Reg_6_out,
            Reg_7_out => Reg_7_out
        );

    -- Process to drive input stimuli to the Register_Bank
    Register_bank_process: process
    begin
        Res <= '0';
        Reg_EN <= "000";      -- Enable Register 0
        D <= "0010";          -- Data to be loaded: but data won't save in the register because in the Reg_0 value always will be 0
        wait for 100ns;
        
        Reg_EN <= "001";      -- Enable Register 1
        D <= "0011";          -- Data to be loaded: 3
        wait for 100ns;
        
        Reg_EN <= "010";      -- Enable Register 2
        D <= "0000";          -- Data to be loaded: 0
        wait for 100ns;
        
        Reg_EN <= "011";      -- Enable Register 3
        D <= "0111";          -- Data to be loaded: 7
        wait for 100ns;
        
        Reg_EN <= "100";      -- Enable Register 4
        D <= "0000";          -- Data to be loaded: 0
        wait for 100ns;
        
        Reg_EN <= "101";      -- Enable Register 5
        D <= "0011";          -- Data to be loaded: 3
        wait for 100ns; 
        
        Res <= '1';           -- Activate reset signal
        wait;                 -- Wait indefinitely
        
    end process;

    -- Clock generation process, toggles clock every 10 ns (50 MHz clock)
    Clk_process: process
    begin
            Clk <= '0';
            wait for 10ns;
            Clk <= '1';
            wait for 10ns;
    end process;

end Behavioral;

