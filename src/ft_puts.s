;puts
extern _ft_strlen
global    _ft_puts

section   .text
_ft_puts:
    mov       rcx, rdi                ;rcx temp register to store string
    call      _ft_strlen
    mov       rdi, 1                  ; file handle 1 is stdout
    mov       rdx, rax                ; number of bytes go in rdx
    mov       rax, 0x02000004         ; system call for write
    mov       rsi, rcx                ; move string to RSI register which is the one read from when writing
    syscall                           ; invoke operating system to do the write
    mov       rax, 0x02000001         ; system call for exit
    ret