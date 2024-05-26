section .text
    global longitud

longitud:
    xor rcx, rcx

loop:
    cmp byte [rdi + rcx], 0x0A
    je comparar
    cmp byte [rdi + rcx], 0
    je comparar
    inc rcx
    jmp loop

comparar:
    cmp rcx,12
    jge true
    xor rax, rax
    ret

true:
    mov rax, 1
