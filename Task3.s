.section .bss
.global ram
.lcomm ram, 0x100
.section .text
.global reserve

reserve:
    lea ram(%rip), %rdi
    add $0x50, %rdi  
    mov $9, %ecx    
    xor %eax, %eax  

reset:
    movb %al, (%rdi)        
    inc %rdi
    loop reset

    ret

.section .note.GNU-stack,"",@progbits
