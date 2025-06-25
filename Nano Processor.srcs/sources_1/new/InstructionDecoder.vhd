----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 01:02:33 PM
-- Design Name: 
-- Module Name: InstructionDecoder - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Entity declaration for InstructionDecoder
-- Decodes a 12-bit instruction bus into control signals and register selections
entity InstructionDecoder is
    Port (
        InstructionBus : in STD_LOGIC_VECTOR (11 downto 0);    -- 12-bit instruction input
        RegisterCheck : in STD_LOGIC_VECTOR (3 downto 0);      -- 4-bit input for register condition checking
        Reg_EN : out STD_LOGIC_VECTOR (2 downto 0);       -- 3-bit output for register select 1
        RegSelect_A : out STD_LOGIC_VECTOR (2 downto 0);       -- 3-bit output for register select 2
        RegSelect_B : out STD_LOGIC_VECTOR (2 downto 0);       -- 3-bit output for register select 3
        LoadSelect : out STD_LOGIC;                             -- Control signal for load selection
        ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);     -- 4-bit immediate value output
        OperationSelect : out STD_LOGIC;                        -- Control signal for operation selection
        JumpFlag: out STD_LOGIC;                                -- Flag indicating if jump instruction is active
        JumpAddress: out unsigned(2 downto 0)           -- 3-bit jump address output
    );
end InstructionDecoder;

architecture Behavioral of InstructionDecoder is

-- Signal to hold the 2-bit opcode extracted from the instruction bus
    signal Opcode : STD_LOGIC_VECTOR(1 downto 0);
begin

    process(InstructionBus, RegisterCheck)
    variable opcode_var : STD_LOGIC_VECTOR(1 downto 0);
begin
    opcode_var := InstructionBus(11 downto 10);

    -- Default assignments:
    RegSelect_A    <= InstructionBus(9 downto 7);
    RegSelect_B    <= InstructionBus(6 downto 4);
    ImmediateValue <= InstructionBus(3 downto 0);
    JumpAddress    <= unsigned(InstructionBus(2 downto 0));
    OperationSelect<= InstructionBus(10);
    LoadSelect     <= not InstructionBus(11);
    JumpFlag       <= '0';
    Reg_EN         <= InstructionBus(9 downto 7);

    case opcode_var is
        when "10" =>  -- MOVI
            Reg_EN <= InstructionBus(9 downto 7);
            -- LoadSelect = 0 (already set above)

        when "00" =>  -- ADD
            Reg_EN <= InstructionBus(9 downto 7);
            -- LoadSelect = 1 (already set above)

        when "01" =>  -- NEG
            Reg_EN <= InstructionBus(9 downto 7);
            -- OperationSelect already set

        when "11" =>  -- JZR
            if RegisterCheck = "0000" then
                JumpFlag <= '1';
            else
                JumpFlag <= '0';
            end if;
            Reg_EN <= "000";  -- prevent register writes during jump

        when others =>
            Reg_EN <= "000";
            JumpFlag <= '0';
    end case;
end process;


end Behavioral;

