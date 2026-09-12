.section .bss
.global ram
.lcomm ram, 256

.section .text
.global fill_ram
fill_ram:
    # Indirect addressing: use pointer register

    lea ram(%rip), %rdi     # rdi = address of ram[0]
    add $0x50, %rdi         # address of ram[0x50]

    mov $9, %ecx            # (50H to 58H)
    mov $0xFF, %al         

loop_start:
    movb %al, (%rdi)        # store FF at address in rdi
    inc %rdi                # move to next memory location
    loop loop_start         # decrement ecx iff 0 else{ repeats loop

    ret
    #ret(no ret before loop)

.section .note.GNU-stack,"",@progbits
