----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 01:38:50 PM
-- Design Name: 
-- Module Name: Sim_Instruction_Decoder - Behavioral
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

entity Sim_Instruction_Decoder is
--  Port ( );
end Sim_Instruction_Decoder;

architecture Behavioral of Sim_Instruction_Decoder is

    -- Component declaration for the InstructionDecoder to be tested
    component InstructionDecoder
        Port (
            InstructionBus : in STD_LOGIC_VECTOR (11 downto 0);     -- 12-bit instruction input
            RegisterCheck : in STD_LOGIC_VECTOR (3 downto 0);       -- 4-bit register check input
            Reg_EN : out STD_LOGIC_VECTOR (2 downto 0);        -- Register Enable
            RegSelect_A : out STD_LOGIC_VECTOR (2 downto 0);        -- Register select output A
            RegSelect_B : out STD_LOGIC_VECTOR (2 downto 0);        -- Register select output B
            LoadSelect : out STD_LOGIC;                              -- Load select control signal
            ImmediateValue : out STD_LOGIC_VECTOR (3 downto 0);      -- Immediate value output
            OperationSelect : out STD_LOGIC;                         -- Operation select control signal
            JumpFlag: out STD_LOGIC;                                 -- Jump flag output
            JumpAddress: out unsigned(2 downto 0)            -- Jump address output
        );
    end component;

    -- Signals to connect to InstructionDecoder inputs and outputs
    signal InstructionBus: STD_LOGIC_VECTOR(11 downto 0);
    signal RegisterCheck, ImmediateValue : STD_LOGIC_VECTOR(3 downto 0);
    signal Reg_EN, RegSelect_A, RegSelect_B: STD_LOGIC_VECTOR(2 downto 0);
    signal LoadSelect, OperationSelect, JumpFlag: STD_LOGIC;
    signal JumpAddress: unsigned(2 downto 0);
begin

    -- Instantiate the Unit Under Test (UUT)
    UUT : InstructionDecoder
    port Map(
          InstructionBus => InstructionBus,
          RegisterCheck => RegisterCheck,
          Reg_EN => Reg_EN,
          RegSelect_A => RegSelect_A,
          RegSelect_B => RegSelect_B,
          LoadSelect => LoadSelect,
          ImmediateValue => ImmediateValue,
          OperationSelect => OperationSelect,
          JumpFlag => JumpFlag,
          JumpAddress => JumpAddress);

    -- Test process to drive different instruction inputs and observe outputs
    process 
    begin
        -- Test case 1: MOVI R1, 10 or similar instruction
        InstructionBus <= "100010001010"; 
        wait for 100 ns;
        
        -- Test case 2: NEG or arithmetic operation
        InstructionBus <= "010100000000";
        wait for 100 ns;
        
        -- Test case 3: ADD or other arithmetic instruction
        InstructionBus <= "000100010000";
        wait for 100 ns;
        
        -- Test case 4: Jump instruction with RegisterCheck zero (enabling jump)
        InstructionBus <= "110010000011";
        RegisterCheck <= "0000";  -- Must be set to enable jump in decoder
        wait for 100 ns;
        
        -- Test case 5: NOP or default instruction
        InstructionBus <= "000000000000";
        wait;  -- Wait indefinitely to end simulation
    end process;

end Behavioral;

