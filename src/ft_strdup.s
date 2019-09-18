;strdup
extern _malloc
extern _ft_strlen
extern _ft_memcpy
global _ft_strdup

_ft_strdup:
    enter 0, 0

    push rdi
    call _ft_strlen
    mov rdx, rax
    push rdx            ;save length
    mov rdi, rax        ;length of string to malloc param rdi
    call _malloc
    pop rdx
    pop rdi
    mov rcx, rdx
    mov rsi, rdi
    mov rdi, rax
    push rax            ;save address at beginning of created memory
    call _ft_memcpy     
    mov BYTE [rax], 0   ;terminate with null

exit:
    pop rax             ;address
    leave
    ret
