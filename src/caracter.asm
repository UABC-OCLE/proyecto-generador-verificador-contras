section .data
    rango_inferior1 equ ' '
    rango_superior1 equ '/'

    rango_inferior2 equ ':'
    rango_superior2 equ '@'

    rango_inferior3 equ '['
    rango_superior3 equ '`'

    rango_inferior4 equ '{'
    rango_superior4 equ '~'

section .text
    global buscar_caracter

buscar_caracter:
    xor rcx, rcx      ; Inicializa el contador a cero, correcto para usar con el índice

principal:
    cmp byte [rdi + rcx], 10
    je fin

    mov bl, byte [rdi + rcx]

    cmp bl, rango_inferior1
    jg filtro1

filtro1:
    cmp bl, rango_superior1
    jl true
    cmp bl, rango_inferior2
    jge filtro2
    inc rcx
    jmp principal

filtro2:
    cmp bl, rango_superior2
    jle true
    cmp bl, rango_inferior3
    jge filtro3
    inc rcx
    jmp principal

filtro3:
    cmp bl, rango_superior3
    jle true
    cmp bl, rango_inferior4
    jge filtro4
    inc rcx
    jmp principal

filtro4:
    cmp bl, rango_superior4
    jle true
    inc rcx
    jmp principal

true:
    mov rax, 1
    ret

fin:
    xor rax, rax
    ret
