
.section .bss
.global ram
.lcomm ram, 0x100         #256 in decimal 

.section .text
.global reserve
reserve:

    movb $0xFF, ram+0x50
    movb $0xFF, ram+0x51
    movb $0xFF, ram+0x52
    movb $0xFF, ram+0x53
    movb $0xFF, ram+0x54
    movb $0xFF, ram+0x55
    movb $0xFF, ram+0x56
    movb $0xFF, ram+0x57
    movb $0xFF, ram+0x58
    ret

.section .note.GNU-stack,"",@progbits
