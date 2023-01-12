# **4-Stage MIPS-like CPU**

4-stage MIPS-like processor model written in verilog. Processor is pipelined and handles both forwarding and load-use hazards, as well as branching instructions. Jump instructions not fully implemented as of yet. Testbench file includes initialization and wiring for each module, and memory files for different basic use cases/hazards are included. 

Processor stages:  
1. Instruction Fetch and Decode
2. Execution
3. Memory Access
4. Writeback

Instruction set:  
| Opcode | Instruction | Description                 | Implemented |
| ------ | ----------- | --------------------------- | ----------- |
| 0      | load        | load from data memory       | Yes         |
| 1      | store       | store to data memory        | Yes         |
| 2      | add         | add two register values     | Yes         |
| 3      | sub         | sub two register values     | Yes         |
| 4      | addi        | add immediate               | Yes         |
| 5      | subi        | sub immediate               | Yes         |
| 6      | blt         | branch if less than         | Yes         |
| 7      | halt        | halt processing             | Yes         |
| 8      | bz          | branch if equal to zero     | Yes         |
| 9      | bnz         | branch if not equal to zero | Yes         |
| a      | jmp         | jump                        | No          |
| b      | spc         | save processor count        | No          |
| c      | nop         | nop                         | Yes         |
| d      | beq         | branch if equal             | Yes         |
| e      | bneq        | branch if not equal         | Yes         |
| f      | bgt         | branch if greater than      | Yes         |