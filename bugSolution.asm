section .data
    myArray dw 1, 2, 3, 4, 5 ;Example array
section .text
    global _start
_start:
    ; Check bounds before accessing array elements
    mov ecx, 0 ;Initialize index
    cmp ecx, 5 ;Compare index with array size
    jge error ;If index is out of bounds, jump to error handler
    mov ax, [myArray+ecx*2] ;Access array element
    ;Proper alignment check and handling 
    mov edx, 0 ;Initialize offset
    cmp edx, 0 ;Check if offset is multiple of 2
    jne error ;If not aligned, jump to error handler
    mov bx, [myArray+edx] ;Access aligned array element
    ;Continue processing
    mov eax, 1 ;Syscall number for exit
    xor ebx, ebx ;Exit code 0
    int 0x80 ;Call kernel
error:
    ; Handle error
    mov eax, 1 ;Syscall number for exit
    mov ebx, 1 ;Exit code 1
    int 0x80 ;Call kernel