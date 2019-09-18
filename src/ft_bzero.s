global _ft_bzero

_ft_bzero:
    cmp rdi, 0          ;check if first argument is not null
    je endlooper

looper:
    cmp rsi, 0          ;RSI is second arg/counter
    je endlooper
    mov BYTE [rdi], 0   ;mov byte(0) to first register
    inc rdi             ;point to next in first register
    dec rsi             ;dec counter
    jmp looper

endlooper:
    ret