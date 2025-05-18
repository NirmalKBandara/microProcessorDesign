----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 09:36:54 PM
-- Design Name: 
-- Module Name: Register_Bank - Behavioral
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

-- Entity declaration for Register Bank with 8 registers
entity Register_Bank is
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
end Register_Bank;

-- Behavioral architecture of the Register Bank
architecture Behavioral of Register_Bank is

    -- Component declaration for 3-to-8 decoder
    component Decoder_3_to_8
        Port ( 
            I : in STD_LOGIC_VECTOR (2 downto 0);        -- 3-bit input
            Y : out STD_LOGIC_VECTOR (7 downto 0)        -- 8 enable outputs
        );
    end component;

    -- Component declaration for 4-bit register
    component Reg
        Port ( 
            D   : in STD_LOGIC_VECTOR (3 downto 0);      -- 4-bit data input
            EN  : in STD_LOGIC;                          -- Enable signal
            Clk : in STD_LOGIC;                          -- Clock signal
            Q   : out STD_LOGIC_VECTOR (3 downto 0)      -- 4-bit data output
        );
    end component;

    -- Signal to hold outputs from the decoder
    signal Y: STD_LOGIC_VECTOR(7 downto 0);
    signal EN_1,EN_2,EN_3,EN_4,EN_5,EN_6,EN_7: STD_LOGIC;
    signal Input_Vector: STD_LOGIC_VECTOR(3 downto 0);

begin
    
    Input_Vector <= "0000" when (Res ='1') else D;
    -- Instantiate the 3-to-8 decoder to generate enable signals
    Decoder_3_to_8_0: Decoder_3_to_8
        port map(
            I => Reg_EN,  -- Register select input
            Y => Y        -- Decoder output used to enable one of the 8 registers
        );
    
    EN_1 <= '1' when (Res = '1') else Y(1);
    EN_2 <= '1' when (Res = '1') else Y(2);
    EN_3 <= '1' when (Res = '1') else Y(3);
    EN_4 <= '1' when (Res = '1') else Y(4);
    EN_5 <= '1' when (Res = '1') else Y(5);
    EN_6 <= '1' when (Res = '1') else Y(6);
    EN_7 <= '1' when (Res = '1') else Y(7);
    
    -- Instantiate 8 registers, each enabled by a specific bit from decoder output

    Reg_0: Reg
        port map(
            D => "0000",
            EN => '1',
            Clk => Clk,
            Q => Reg_0_out
        );

    Reg_1: Reg
        port map(
            D => Input_Vector,
            EN => EN_1,
            Clk => Clk,
            Q => Reg_1_out
        );

    Reg_2: Reg
        port map(
            D => Input_Vector,
            EN => EN_2,
            Clk => Clk,
            Q => Reg_2_out
        );
        
    Reg_3: Reg
        port map(
            D => Input_Vector,
            EN => EN_3,
            Clk => Clk,
            Q => Reg_3_out
        ); 

    Reg_4: Reg
        port map(
            D => Input_Vector,
            EN => EN_4,
            Clk => Clk,
            Q => Reg_4_out
        );

    Reg_5: Reg
        port map(
            D => Input_Vector,
            EN => EN_5,
            Clk => Clk,
            Q => Reg_5_out
        ); 
                        
    Reg_6: Reg
        port map(
            D => Input_Vector,
            EN => EN_6,
            Clk => Clk,
            Q => Reg_6_out
        ); 

    Reg_7: Reg
        port map(
            D => Input_Vector,
            EN => EN_7,
            Clk => Clk,
            Q => Reg_7_out
        );

end Behavioral;