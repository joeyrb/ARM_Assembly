; https://open.kattis.com/problems/carrots
; example template in carrots.cpp
; Allocate variables on the stack

        .data
scanfmt:.asciz  "%d%d"
prtfmt: .asciz  "%d\n"

        .text
        .global main
main:   stmfd   sp!,{lr}   @@ store the link register
        sub     sp,sp,#8    @@ make room for cont and hpps on stack
        @@ cont is at sp
        @@ hpps is at sp+4

        ldr     r0,=scanfmt @@ load the address of the scanf format string
        mov     r1,sp
        add     r2,sp,#4
        bl      scanf

        ldr     r0,=prtfmt  @@ load the address of the print format string
        ldr     r1,[sp,#4]
        bl      printf

        add     sp,sp,#8
        ldmfd   sp!,{lr}
        mov     r0,#0
        mov     pc,lr