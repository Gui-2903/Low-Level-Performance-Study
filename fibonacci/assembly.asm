extern printf
extern clock

section .data
    msg_res  db "Resultado: %lld", 10, 0
    msg_time db "Tempo gasto: %ld ms", 10, 0

section .text
    global main

; --- Função Fibonacci ---
fib:
    cmp rcx, 1
    jle .base
    push rbx
    push rcx
    sub rsp, 32
    dec rcx
    call fib
    mov rbx, rax
    mov rcx, [rsp+32]
    sub rcx, 2
    call fib
    add rax, rbx
    add rsp, 32
    pop rcx
    pop rbx
    ret
.base:
    mov rax, rcx
    ret

; --- Main ---
main:
    sub rsp, 56         ; Shadow space + alinhamento + locals

    ; 1. Marca o tempo inicial
    call clock
    mov [rsp+40], rax   ; Salva t_inicio

    ; 2. Executa o Fibonacci
    mov rcx, 40         
    call fib
    mov [rsp+48], rax   ; Salva o resultado

    ; 3. Marca o tempo final
    call clock
    mov rbx, rax        ; rbx = t_fim

    ; 4. Exibe o Resultado (USANDO LEA COM REL)
    lea rcx, [rel msg_res]  ; <--- CORREÇÃO AQUI
    mov rdx, [rsp+48]
    call printf

    ; 5. Calcula e Exibe o Tempo (USANDO LEA COM REL)
    sub rbx, [rsp+40]
    lea rcx, [rel msg_time] ; <--- CORREÇÃO AQUI
    mov rdx, rbx
    call printf

    xor eax, eax
    add rsp, 56
    ret