# Basic Logic Gates

A complete VLSI implementation of all basic logic gates (AND, OR, NOT, NAND, NOR, XOR, XNOR) using Verilog HDL. This project includes RTL design, testbench, simulation, and synthesis.

## 📋 Project Description

This project implements all fundamental logic gates used in digital electronics and VLSI design. Each gate is implemented as a separate module in Verilog, with a comprehensive testbench to verify functionality.

### Gates Implemented:
- **AND Gate**: Y = A & B
- **OR Gate**: Y = A | B  
- **NOT Gate**: Y = ~A
- **NAND Gate**: Y = ~(A & B)
- **NOR Gate**: Y = ~(A | B)
- **XOR Gate**: Y = A ^ B
- **XNOR Gate**: Y = ~(A ^ B)

## 🛠️ Tools Required

- **Icarus Verilog** - for simulation
- **GTKWave** - for waveform viewing
- **Yosys** - for synthesis and gate-level netlist generation

### Installation (Ubuntu/WSL)
```bash
sudo apt update
sudo apt install iverilog gtkwave yosys
