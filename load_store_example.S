        .data
fmt:    .asciz  "%d %c\n"

        .text
        .global main

main:   // save link register
        stmfd   sp!,{lr}

        ldr     r0,=fmt
        ldr     r1,=10
        ldr     r2,=0x61
        bl      printf

        // restore original link register
        ldmfd   sp!,{lr}
        mov     pc, lr