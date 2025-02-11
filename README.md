# Uncommon Assembly Errors
This repository demonstrates two uncommon errors that can occur in assembly language programming: out-of-bounds memory access and misaligned memory access.

## Out-of-Bounds Memory Access
Out-of-bounds memory access occurs when a program attempts to read or write data from a memory address that is outside the allocated memory space. This can lead to program crashes, unexpected behavior, or security vulnerabilities.

## Misaligned Memory Access
Misaligned memory access occurs when a program attempts to access data that is not aligned to the proper boundary. For example, some architectures require that certain data types (e.g., integers) be aligned to specific memory addresses (e.g., multiples of 4). Accessing unaligned data can lead to performance penalties or program crashes.

## Example Code
The `bug.asm` file contains examples of both out-of-bounds and misaligned memory access errors.

## Solution
The `bugSolution.asm` file provides solutions to the issues found in `bug.asm`. These solutions include: 
- Adding bounds checks to prevent out-of-bounds memory access.
- Ensuring that data is properly aligned before accessing it.

## How to run the code
1. Assemble the code using NASM or a similar assembler.
2. Link the object file to create an executable.
3. Run the executable.