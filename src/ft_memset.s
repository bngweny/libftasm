;memset
global  _ft_memset

_ft_memset:
    push rdi
    mov rax, rsi
    mov rcx, rdx
    cld
    rep stosb       ; optimized string storage loop; to store a string
    pop rax
    ret
