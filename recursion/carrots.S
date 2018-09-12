; https://open.kattis.com/problems/carrots
; example template in carrots.cpp

        .data
cont:   .word   0
hpps:   .word   0
scanfmt:.asciz  "%d%d"
prtfmt: .asciz  "%d\n"

        .text
        .global main
main:   stmfd   sp!,{lr}   @@ store the link register

        ldr     r0,=scanfmt @@ load the address of the scanf format string
        ldr     r1,=cont
        ldr     r2,=hpps
        bl      scanf

        ldr     r0,=prtfmt  @@ load the address of the print format string
        ldr     r1,=hpps
        ldr     r1,[r1]
        bl      printf

        ldmfd   sp!,{lr}
        mov     r0,#0
        mov     pc,lr