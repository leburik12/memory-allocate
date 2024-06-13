Memory Allocation in Assembly
 Overview
    This assembly code implements a simple memory allocation system using a memory allocation model.
    It includes functions for allocating and deallocating memory blocks.

 Functionality
    allocate: Allocates memory for a requested size.   
    deallocate: Deallocates memory previously allocated by the allocate function.
 Usage
    Compile the assembly code using an assembler like NASM.
    Link the compiled object file with other necessary files or libraries.
    Use the allocate and deallocate functions in your program to manage memory allocation and deallocation.

How It Works
    The allocate function searches for available memory blocks within the allocated memory region.
    It checks each block's size and availability to find a suitable block for the requested size.
    The deallocate function marks a previously allocated memory block as available for reuse.
Assumptions
    This memory allocation system assumes a simple contiguous memory allocation model.
    It does not handle fragmentation or dynamic resizing of memory blocks.

Dependencies
    NASM: The Netwide Assembler (NASM) is used to assemble the assembly code.


Authors
  Kirubel Awoke

Acknowledgments
 Learn to program to Assembly Book
