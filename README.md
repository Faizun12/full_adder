# Structural 1-Bit Full Adder in VHDL

A hierarchical VHDL implementation of a 1-bit Structural Full Adder constructed purely from NAND-based logic blocks and validated using Xilinx ISim.

## 🏗️ Methodology
* **Base:** Universal NAND gate (`nand_gate.vhd`).
* **Basic Gates:** NOT, AND, OR, and XOR built using NAND gates.
* **Sub-module:** Half Adder built using XOR and AND gates.
* **Top Level:** 1-Bit Full Adder built using two Half Adders and one OR gate.

## 📂 Project Structure
* `nand_gate.vhd` – Primitive NAND gate
* `not_gate.vhd`, `and_gate.vhd`, `or_gate.vhd`, `xor_gate.vhd` – Basic gates
* `half_adder.vhd` – Half Adder module
* `full_adder.vhd` – Top-level 1-Bit Full Adder
* `full_adder_tb.vhd` – Testbench for ISim simulation

## 🛠️ Tools Used
* **Language:** VHDL
* **Simulator:** Xilinx ISE 14.7 / ISim

## 🚀 How to Run
1. Open Xilinx ISE and add all `.vhd` files.
2. Set `full_adder_tb.vhd` as the top-level module.
3. Run Behavioral Simulation in ISim to check waveforms.
