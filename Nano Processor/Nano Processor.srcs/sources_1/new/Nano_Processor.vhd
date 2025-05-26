----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2025 08:44:04 PM
-- Design Name: 
-- Module Name: Nano_Processor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: A simplified 4-bit Nano Processor implementation using structural VHDL
-- 
-- Dependencies: Requires multiple submodules like Register_Bank, ALU, MUXes, etc.
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration for the Nano Processor
entity Nano_Processor is
    Port (
        Res, Clk : in STD_LOGIC;                           -- Reset and Clock inputs
        Reg_7_out   : out STD_LOGIC_VECTOR (3 downto 0);   -- Output of Register 7
        OverFlow, Zero: out STD_LOGIC;                     -- ALU status flags: Overflow and Zero
        Display_7_Segment: out STD_LOGIC_VECTOR(6 downto 0); -- Output signals to 7-segment display (7 segments)
        an: out STD_LOGIC_VECTOR(3 downto 0)               -- Anode control for 4-digit 7-segment display (active low)
    );
end Nano_Processor;

architecture Behavioral of Nano_Processor is

    -- Register bank: 8 registers, each 4-bit wide
    component Register_Bank
    Port ( 
        Reg_EN      : in STD_LOGIC_VECTOR (2 downto 0);  -- 3-bit register enable address (select which register to write)
        Clk         : in STD_LOGIC;                      -- Clock signal
        D           : in STD_LOGIC_VECTOR (3 downto 0);  -- 4-bit data input to registers
        Res         : in STD_LOGIC := '0';               -- Reset signal to reset all registers
        Reg_0_out   : out STD_LOGIC_VECTOR (3 downto 0); -- Outputs for each register (0 to 7)
        Reg_1_out   : out STD_LOGIC_VECTOR (3 downto 0);
        Reg_2_out   : out STD_LOGIC_VECTOR (3 downto 0);
        Reg_3_out   : out STD_LOGIC_VECTOR (3 downto 0);
        Reg_4_out   : out STD_LOGIC_VECTOR (3 downto 0);
        Reg_5_out   : out STD_LOGIC_VECTOR (3 downto 0);
        Reg_6_out   : out STD_LOGIC_VECTOR (3 downto 0);
        Reg_7_out   : out STD_LOGIC_VECTOR (3 downto 0)
    );
    end component;

    -- ALU: 4-bit Adder/Subtractor Unit
    component AdderSubtractor4bitUnit
        Port (
            A, B     : in  STD_LOGIC_VECTOR(3 downto 0);  -- Two 4-bit operands
            ADD_SUB  : in  STD_LOGIC;                      -- Operation select: 0 for add, 1 for subtract
            RESULT   : out STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit result output
            OVERFLOW : out STD_LOGIC;                      -- Overflow flag output
            ZERO     : out STD_LOGIC                        -- Zero flag output
        );
    end component;

    -- 2-to-1 multiplexer for 4-bit data input selection
    component Mux_2_Way_4_Bit
        Port (
            A, B : in STD_LOGIC_VECTOR (3 downto 0);      -- Two 4-bit inputs
            S   : in STD_LOGIC;                            -- Select signal: 0 selects A, 1 selects B
            Y   : out STD_LOGIC_VECTOR (3 downto 0)       -- Output of the mux
        );
    end component;

    -- 2-to-1 multiplexer for 3-bit addresses (used for selecting ROM address)
    component Rom_Address_Select
        Port (
            A, B : in unsigned(2 downto 0);               -- Two 3-bit address inputs
            S   : in STD_LOGIC;                            -- Select signal: 0 selects A, 1 selects B
            Y   : out unsigned (2 downto 0)                -- Output selected address
        );
    end component;

    -- 8-to-1 multiplexer for selecting one of 8 registers (4-bit each)
    component Mux_8_Way_4_Bit
        Port ( 
            I0, I1, I2, I3, I4, I5, I6, I7 : in STD_LOGIC_VECTOR (3 downto 0); -- Inputs from all 8 registers
            S  : in STD_LOGIC_VECTOR (2 downto 0);                            -- 3-bit select to choose one register
            Y  : out STD_LOGIC_VECTOR (3 downto 0)                            -- Output selected register data
        );
    end component;

    -- Instruction decoder: decodes 12-bit instruction into control signals
    component InstructionDecoder
       Port (
            InstructionBus  : in STD_LOGIC_VECTOR (11 downto 0); -- 12-bit instruction input
            RegisterCheck   : in STD_LOGIC_VECTOR (3 downto 0);  -- Data from selected register A (for instruction checking)
            Reg_EN          : out STD_LOGIC_VECTOR (2 downto 0); -- Register to write enable (3 bits)
            RegSelect_A     : out STD_LOGIC_VECTOR (2 downto 0); -- Register A selector (3 bits)
            RegSelect_B     : out STD_LOGIC_VECTOR (2 downto 0); -- Register B selector (3 bits)
            LoadSelect      : out STD_LOGIC;                      -- Select load source (ALU result or immediate)
            ImmediateValue  : out STD_LOGIC_VECTOR (3 downto 0); -- Immediate 4-bit value from instruction
            OperationSelect : out STD_LOGIC;                      -- ALU operation select (Add/Sub)
            JumpFlag        : out STD_LOGIC;                      -- Jump flag signal
            JumpAddress     : out unsigned(2 downto 0)           -- Jump address for PC
      );
    end component;

    -- Program Counter: holds current instruction address (3-bit)
    component ProgramCounter
        Port (
            Clk_in  : in STD_LOGIC;                              -- Clock input
            Res     : in STD_LOGIC;                              -- Reset signal
            NextVal : in unsigned (2 downto 0);                  -- Next address input
            Q       : out unsigned (2 downto 0)                  -- Current address output
        );
    end component;

    -- Clock divider to slow down system clock for visibility / timing reasons
    component Slow_Clk
        Port (
            Clk_in  : in STD_LOGIC;                              -- Fast clock input
            Clk_out : out STD_LOGIC                              -- Slower clock output
        );
    end component;

    -- 3-bit adder that adds 1 to the current PC value (used for PC increment)
    component adder_3bit
        Port (
            INPUT  : in unsigned (2 downto 0);                   -- Input 3-bit number
            OUTPUT : out unsigned (2 downto 0)                    -- Output incremented by 1
        );
    end component;

    -- ROM: Program memory holding instructions (8 locations, 12-bit wide instructions)
    component program_rom
        Port ( 
            address     : in unsigned (2 downto 0);              -- 3-bit address input
            instruction : out STD_LOGIC_VECTOR (11 downto 0)     -- 12-bit instruction output
        );
    end component;

    -- Lookup table to convert 4-bit binary value to 7-segment display pattern
    component LUT_16_7
        Port ( 
            address : in STD_LOGIC_VECTOR (3 downto 0);          -- 4-bit input value
            data    : out STD_LOGIC_VECTOR (6 downto 0)           -- 7-bit segment pattern output
        );
    end component;

    -- Internal signals used for interconnecting components
    signal Clk_out, Jump_Flag, LoadSelect, OperationSelect : STD_LOGIC;
    signal Instruction_Bus_1 : STD_LOGIC_VECTOR(11 downto 0);
    signal Next_Rom_Address, Rom_Address_Add, Rom_Address, Jump_Address : unsigned(2 downto 0);
    signal Reg_EN, RegSelect_A, RegSelect_B : STD_LOGIC_VECTOR(2 downto 0);
    signal Reg_A, Reg_B, ImmediateValue, Result, Value : STD_LOGIC_VECTOR(3 downto 0);
    signal Reg_0, Reg_1, Reg_2, Reg_3, Reg_4, Reg_5, Reg_6, Reg_7 : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the slow clock generator to reduce clock speed for timing
    Slow_Clk_0: Slow_Clk
    port map(Clk_in => Clk, Clk_out => Clk_out);

    -- Instantiate the Program Counter with slow clock and reset
    Program_Counter: ProgramCounter
    port map(Clk_in => Clk_out, Res => Res, NextVal => Next_Rom_Address, Q => Rom_Address);

    -- PC + 1 adder to calculate next sequential instruction address (currently commented out)
    --Adder_3_Bit: adder_3bit
    --port map(INPUT => Rom_Address, OUTPUT => Rom_Address_Add);

    -- Multiplexer to select between jump address and next sequential PC address
    Rom_Address_Select_0: Rom_Address_Select
    port map(A => Jump_Address, B => Rom_Address, S => Jump_Flag, Y => Next_Rom_Address);

    -- Instruction memory ROM: fetch instruction based on current PC
    Program_Rom_0: Program_Rom
    port map(address => Rom_Address, Instruction => Instruction_Bus_1);

    -- Instruction decoder: decode instruction into control signals and immediate values
    Instruction_Decoder: InstructionDecoder
    port map(
        InstructionBus => Instruction_Bus_1,
        RegisterCheck => Reg_A,
        Reg_EN => Reg_EN,
        RegSelect_A => RegSelect_A,
        RegSelect_B => RegSelect_B,
        LoadSelect => LoadSelect,
        ImmediateValue => ImmediateValue,
        OperationSelect => OperationSelect,
        JumpFlag => Jump_Flag,
        JumpAddress => Jump_Address);

    -- Register bank: 8 registers, load enabled by Reg_EN on rising clock edge
    Register_Bank_0: Register_Bank
    port map(
        Reg_EN => Reg_EN,
        Clk => Clk_out,
        D => Value,
        Res => Res,
        Reg_0_out => Reg_0,Reg_1_out => Reg_1,Reg_2_out => Reg_2,Reg_3_out => Reg_3,Reg_4_out => Reg_4,
        Reg_5_out => Reg_5,Reg_6_out => Reg_6,Reg_7_out => Reg_7);

    -- Mux to select either ALU Result or Immediate value for loading into register
    Mux_2_Way_4_Bit_0: Mux_2_Way_4_Bit
    port map(A => Result, B => ImmediateValue, S => LoadSelect, Y => Value);

    -- Mux to select Register A data based on RegSelect_A (used as ALU input and decoder input)
    Mux_8_Way_4_Bit_0: Mux_8_Way_4_Bit
    port map(
        I0 => Reg_0, I1 => Reg_1, I2 => Reg_2, I3 => Reg_3,
        I4 => Reg_4, I5 => Reg_5, I6 => Reg_6, I7 => Reg_7,
        S => RegSelect_A, Y => Reg_A);

    -- Mux to select Register B data based on RegSelect_B (used as ALU input)
    Mux_8_Way_4_Bit_1: Mux_8_Way_4_Bit
    port map(
        I0 => Reg_0, I1 => Reg_1, I2 => Reg_2, I3 => Reg_3,
        I4 => Reg_4, I5 => Reg_5, I6 => Reg_6, I7 => Reg_7,
        S => RegSelect_B, Y => Reg_B);

    -- ALU: 4-bit Adder/Subtractor unit performs operation on Reg_A and Reg_B
    Adder_Substractor_4BitUnit: AdderSubtractor4bitUnit
    port map(
        A => Reg_A, B => Reg_B, ADD_SUB => OperationSelect,
        Result => Result, OverFlow => OverFlow, ZERO => Zero);

    -- Lookup table converts 4-bit Register 7 output into 7-segment display encoding
    LUT_16_7_0: LUT_16_7
    port map(address => Reg_7, data => Display_7_Segment);

    -- Output the contents of Register 7 externally
    Reg_7_out <= Reg_7;

    -- Enable only the first digit of the 7-segment display (active low)
    an <= "1110"; 

end Behavioral;
