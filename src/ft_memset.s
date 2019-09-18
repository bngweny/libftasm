;memset
global  _ft_memset

_ft_memset:
    push rdi        ;push target pointer to stack
    mov rax, rsi    ;move char to RAX register
    mov rcx, rdx    ;move len to to RCX
    cld
    rep stosb       ; optimized string storage loop; to store a string
    pop rax
    ret
