;strcat
global _ft_strcat

_ft_strcat:
    push rbp        ;base pointer. points to current stack frame.  rsp points to top of current stack frame
    mov rbp, rsp    ;snapshot of current stack frame
    push rdi        ;push first register to stack
    push rsi        ;push second register to stack
    cmp rdi, 0      ;check if first argument is not null
    je endlooper

looper:
    cmp BYTE [rdi], 0      ;RDI is first
    je copy   
    inc rdi             ;point to next in first register
    jmp looper

copy:
    mov al, [rsi]
    mov [rdi], al   ;mov byte(0) to first register
    inc rdi             ;point to next in first register
    inc rsi             ;inc counter
    cmp al, 0      ;RSI is second arg/counter
    jne copy

endlooper:
    pop rsi
    pop rdi
    pop rbp
    mov rax, rdi
    ret