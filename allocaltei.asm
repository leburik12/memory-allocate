.globl allocate,deallocate
.section .data
memory_start:
   .quad 0
memory_end:
   .quad 0

.section .text
.equ HEADER_SIZE,16
.equ HDR_IN_USE_OFFSET,0
.equ HDR_SIZE_OFFSET,8

.equ BRK_SYSCALL,12

allocate_init:
   movq $0,%rdi
   movq $BRK_SYSCALL,%rax
   syscall

   movq %rax,memory_start
   movq %rax,memory_end
   jmp allocate_continue

allocate_continue:
   movq memory_start,%rsi
   movq memory_end,  %rcx

allocate_loop:
   cmpq %rsi,%rcx
   je allocate_move_break

   # is the next bloc available
   cmp $0,HDR_IN_USE_OFFSET(%rsi)
   jne try_next_block

   cmpq %rdx, HDR_SIZE_OFFSET(%rsi)
   jb try_next_block

   
   
