;is_alpha

global _ft_isalpha

section .text

_ft_isalpha:
    mov rax, 1
    cmp rdi, 65
    js false
    cmp rdi, 91
    js true
    cmp rdi, 97
    js false
    cmp rdi, 123
    js true
false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret
;end:
;   ret