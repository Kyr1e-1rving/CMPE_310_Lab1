.section .bss
.global ram
.lcomm ram, 0x100
.section .text
.global reserve

reserve:
    lea ram(%rip), %rdi     
    add $0x50, %rdi         
    mov $9, %ecx           
    mov $0xFF, %al        
    #ret(no ret before loop)
    
move:
    movb %al, (%rdi)   
    inc %rdi       
    loop move     
    ret

.section .note.GNU-stack,"",@progbits
