# Design of Shift System

## 🔍 Overview
This mini project implements a digital system using three 4-bit registers (A, B, and C) to compare two binary numbers and perform shifting operations based on the result. The system shifts A left when A is less than B, shifts B right when A is greater than B, and transfers A to C unchanged when both numbers are equal. The design was implemented using Intel Quartus Prime and demonstrated on the Altera DE2-115 FPGA board.

## 🎯 Project Objectives
- Design a digital system using three 4-bit registers.
- Compare two binary numbers and perform operations based on the comparison.
- Implement left-shift and right-shift operations.
- Display and verify the results on an FPGA board.

## 🛠️ Tools & Technologies
- **HDL:** Verilog
- **Design Tool:** Intel Quartus Prime
- **Simulation Tool:** ModelSim
- **Hardware Platform:** Altera DE2-115 FPGA Board

## ⚙️ System Operation
- **If A < B:** Shift A left by one bit and store the result in C.
- **If A > B:** Shift B right by one bit and store the result in C.
- **If A = B:** Transfer A to C without shifting.
- **Start Signal:** Enables the transfer of the input binary numbers into registers A and B.

## 🎯 Key Takeaway
Gained practical experience in digital system design, binary comparison, shift operations, and FPGA implementation.
