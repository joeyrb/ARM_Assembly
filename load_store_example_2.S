        .data
fmt:    .asciz  "%d %c\n"
C:      .byte   'a'
        .align  2
X:      .word   10

        .text
        .global main
main:   // save the link register
        stmfd   sp!,{lr}

        ldr     r0,=fmt
        ldr     r3,=X
        ldr     r1, [r3]
        ldr     r3,=C
        ldrb    r2,[r3]
        bl      printf

        // restore original link register
        ldmfd   sp!,{lr}
        mov     pc,lr
