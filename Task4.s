.section .bss
.global ram
.lcomm ram, 0x100
.section .text
.global reserve.section .bss
.global ram
.lcomm ram, 256

.section .text
.global fill_ram
fill_ram:
    # Compute 1+2+...+10 and store result at RAM[50H]

    xor %eax, %eax          # AL = sum = 0
    mov $1, %bl             # BL = i = 1
    mov $10, %ecx           # 10 loops

sum_loop:
    add %bl, %al            # sum += i
    inc %bl                 # i++
    loop sum_loop

    # store sum into ram[0x50]
    lea ram(%rip), %rdi
    movb %al, 0x50(%rdi)

    ret

.section .note.GNU-stack,"",@progbits
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
