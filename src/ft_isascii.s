;is_ascii
global _ft_isascii

section .text

_ft_isascii:
    mov rax, 1
    cmp rdi, 0
    jl false
    cmp rdi, 127
    jg false
    jmp true
false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret