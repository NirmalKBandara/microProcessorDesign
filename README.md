# 4-bit Nano Processor Implementation in VHDL

## Project Overview

This project presents the design and implementation of a 4-bit nanoprocessor developed entirely in VHDL. The processor is capable of executing a predefined instruction set and demonstrates fundamental computer architecture principles including instruction fetching, decoding, and execution.

## Architecture Components

The nanoprocessor consists of the following key components:

### Processing Units
- **4-bit Adder-Subtractor Unit**: Performs arithmetic operations on 4-bit operands
- **Instruction Decoder**: Decodes fetched instructions and generates appropriate control signals
- **Register Bank**: Provides temporary storage for data during processing

### Memory Components
- **Program ROM**: Stores the instruction sequence to be executed
- **ROM Address Select**: Manages memory addressing for instruction and data access

### Control and Interface Components
- **Program Counter**: Maintains the address of the current instruction
- **3-to-8 Decoder**: Provides address decoding functionality
- **Slow Clock**: Generates appropriate clock signals for processor operation

### Multiplexing and Display
- **2-way 4-bit Multiplexer**: Selects between two 4-bit data sources
- **8-way 4-bit Multiplexer**: Enables selection from eight 4-bit inputs
- **7-Segment Display LUT**: Converts 4-bit binary values to 7-segment display patterns

## Features

- **4-bit Data Path**: Optimized for educational purposes and resource efficiency
- **VHDL Implementation**: Fully synthesizable design suitable for FPGA deployment
- **Modular Architecture**: Component-based design enabling easy modification and testing
- **Display Interface**: Integrated 7-segment display support for output visualization

## Team Contributions

| Team Member | Responsibilities |
|-------------|------------------|
| **Wikramaratna S. I. P.** | Final Nano Processor Integration, Register Bank Design, Instruction Decoder Implementation, 7-Segment LUT Development |
| **de Silva N. N. B.** | 4-bit Adder-Subtractor Unit, Program Counter Design, Project Presentation |
| **Bandara S. A. N. K.** | Multiplexer Designs (2-way & 8-way 4-bit), Documentation and Lab Report |
| **Padmasiri G. R. H. D.** | ROM Address Selection Logic, Program ROM Implementation |

## Getting Started

### Prerequisites
- VHDL-compatible synthesis tool (Xilinx Vivado, Intel Quartus, etc.)
- FPGA development board (optional, for hardware implementation)
- Basic understanding of digital logic and computer architecture

### Project Structure
```
├── src/
│   ├── components/          # Individual component VHDL files
│   ├── processor/           # Main processor integration
│   └── testbenches/         # Simulation and testing files
├── docs/                    # Documentation and design specifications
└── README.md               # This file
```

## Implementation Details

The nanoprocessor follows a simplified von Neumann architecture with a unified memory space for instructions and data. The design emphasizes educational value while maintaining practical implementation feasibility on modern FPGA platforms.

## Usage

1. Clone the repository
2. Open the project in your preferred VHDL development environment
3. Compile all component files in the correct dependency order
4. Run simulations using the provided testbenches
5. Synthesize for your target FPGA platform

## Educational Objectives

This project serves as an excellent introduction to:
- Digital system design using VHDL
- Computer architecture fundamentals
- Processor design methodologies
- Team-based hardware development

## License

This project is developed for educational purposes. Please refer to your institution's guidelines for usage and distribution.

## Acknowledgments

Developed as part of the Digital Systems Design laboratory coursework, demonstrating collaborative hardware design and implementation skills.
