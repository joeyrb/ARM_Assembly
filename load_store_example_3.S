        .data
fmt:    .asciz  "%d %c Y=%d\n"
        .align  2
X:      .word   10
C:      .byte   'a'
        .align  2
Y:      .word   25

        .text
        .global main
main:   // save the link register
        stmfd   sp!,{lr}

        ldr     r0,=fmt
        ldr     r3,=X
        ldr     r1, [r3]
        ldr     r2,[r3,#4]
        ldrb    r3,[r3, #5]
        bl      printf

        // restore original link register
        ldmfd   sp!,{lr}
        mov     pc,lr
