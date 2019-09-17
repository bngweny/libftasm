;strlen
global	_ft_strlen
	; int strlen(const char *string);
_ft_strlen:
    xor eax,eax ; count = 0; bec XOR is faster than mov
    jmp ftover
looper:
    inc rdi
    inc eax
ftover:
    cmp byte[rdi],0
    jnz looper
    ret