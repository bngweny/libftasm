;nasm -fmacho64 ft_cat.s && ld -macosx_version_min 10.7.0 -lSystem -o ft_cat ft_cat.o && ./ft_cat file

section .bss
buffer:   resb 64   ; reserve 64 bytes

section .text
global _ft_cat

_ft_cat:
  default rel

  ; cmp rdi, 1
  ; je stdin

  ; mov rax, 0x2000005  ; open()
  ; mov rdi, [16 + rsp] ; argv[1]
  ; mov rsi, 0x0        ; O_RDONLY
  ; syscall

  ; jc term
  mov r12, rax        ; save file descriptor in r12

loop_start:
  mov rdi, r12
  mov rax, 0x2000003  ; read()
  mov rsi, buffer
  mov rdx, 64
  syscall

  mov r13, rax        ; save how many bytes were read

  mov rax, 0x2000004  ; write()
  mov rdi, 1          ; stdout
  mov rsi, buffer
  mov rdx, r13
  syscall

  cmp r13, 0          ; if we read 0 bytes, exit
  jne loop_start

term:
  mov rax, 0x2000001  ; exit()
  mov rdi, 0          ; return 0
  syscall

stdin:
  mov r12, 0
  jmp loop_start