;toupper
global _ft_toupper

_ft_toupper:
    cmp rdi, 0      ;check if first argument is not null
    je endlooper
    mov rax, rdi
    cmp rax, 97
    jl endlooper
    cmp rax, 122
    jg endlooper
    sub rax, 32

endlooper:
    ret