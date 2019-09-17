;is_alnum

extern _ft_isalpha
extern _ft_isdigit

global _ft_isalnum

section .text

_ft_isalnum:
    call _ft_isdigit
    cmp rax, 0
    jg alnum
    call _ft_isalpha
    cmp rax, 0
    jg alnum
    jmp notalnum

notalnum:
    mov rax, 0
    ret

alnum:
    mov rax, 1
    ret