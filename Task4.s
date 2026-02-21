.section .bss
.global ram
.lcomm ram, 0x100
.section .text
.global reserve
reserve:
    xor %eax, %eax         
    mov $1, %bl            
    mov $10, %ecx          

total:
    add %bl, %al           
    inc %bl               
    loop total
    lea ram(%rip), %rdi
    movb %al, 0x50(%rdi)
    ret

.section .note.GNU-stack,"",@progbits
