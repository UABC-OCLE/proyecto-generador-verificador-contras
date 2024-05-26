section .data
    rango_inferior equ 'A'
    rango_superior equ 'Z'

section .text
    global buscar_mayuscula

buscar_mayuscula:
    xor rcx, rcx      ; Inicializa el contador a cero, correcto para usar con el índice

busqueda:
    cmp byte [rdi + rcx], 0
    je fin            ; Salta a fin si el carácter actual es NULL (fin de cadena)

    mov bl, byte [rdi + rcx]  ; Mueve el carácter actual a BL para la comparación

    ; Verifica si el carácter es un dígito
    cmp bl, rango_inferior
    jl no_mayuscula
    cmp bl, rango_superior
    jg no_mayuscula

    ; Si es un dígito, termina la función y devuelve 1
    mov rax, 1
    ret

no_mayuscula:
    inc rcx          ; Avanza al siguiente carácter
    jmp busqueda

fin:
    ; Si no se encontraron dígitos, devuelve 0
    xor rax, rax
    ret
