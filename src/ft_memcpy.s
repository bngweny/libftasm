;memcpy
global _ft_memcpy

_ft_memcpy:
    ; push rdi        ;push first register to stack
    ; push rsi        ;push second register to stack
    push rdx        ;push count
    cmp rdi, 0      ;check if first argument is not null
    je endlooper

copy:
    mov al, [rsi]   ;mov byte to al which is a small register(8 bit)
    ; cmp al, 0
    ; je endlooper
    mov [rdi], al   ;mov byte(0) to first register
    inc rdi             ;point to next in first register
    inc rsi             ;inc counter
    dec rdx
    cmp rdx, 0      ;RDX is third arg/counter
    jne copy

endlooper:
    ; pop rsi
    ; pop rdi
    pop rdx
    mov rax, rdi
    ret