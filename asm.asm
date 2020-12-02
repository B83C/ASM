global	  _asm

global	_start

section .data
  int_	dd  1,2,3,4
  int2	dd  4,3,2,1

section .text
_start:
    push rbp
    mov rbp, rsp
    sub rsp, 20
    mov rax, 60
    mov word [rbp - 4], 10
    pop rbp

_asm:
  movdqu xmm0, [int_]
  movdqu xmm1, [int2]
  
  psubd xmm0, xmm1

  mov eax, 1
  ret
