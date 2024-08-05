.section .text
    .global  _ft_strlen

_ft_strlen:
    xor %rax, %rax

.loop:
    cmpb $0, (%rdi, %rax, 1)
    je  .return
    inc %rax
    jmp .loop

.return:
    ret

