; ----------------------------------------------------------------------------------------
; Writes "Hello, World" to the console using only system calls. Runs on 64-bit macOS only.
; To assemble and run:
;
;     nasm -fmacho64 hello.s && ld -macosx_version_min 10.7.0 -lSystem -o hello hello.o && ./a.out
; ----------------------------------------------------------------------------------------
; global start
; section .text
; start:
;   mov rax, 0x2000004 ; write
;   mov rdi, 1 ; stdout
;   mov rsi, msg
;   mov rdx, msg.len
;   syscall
;   mov rax, 0x2000001 ; exit
;   mov rdi, 0
;   syscall
; section .data
; msg:    db      "Hello, world!", 10
; .len:   equ     $ - msg


;RAX is return REGISTER
;REGISTERS RECEIVE DATA IN ORDER RDI,RSI,RDX,RCX, R8, R9

global    start

          section   .text
start:    mov       rax, 0x02000004         ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, 14                 ; number of bytes
          syscall                           ; invoke operating system to do the write
          mov       rax, 0x02000001         ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data
message:  db        "Hello, World1", 10      ; note the newline at the end