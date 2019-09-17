;tolower
global _ft_tolower

_ft_tolower:
    cmp rdi, 0      ;check if first argument is not null
    je endlooper
    mov rax, rdi
    cmp rax, 65
    jl endlooper
    cmp rax, 90
    jg endlooper
    add rax, 32

endlooper:
    ret