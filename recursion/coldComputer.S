; Example: https://open.kattis.com/problems/cold
; (examples template in coldComputer.cpp)
; Demonstrates a do-while loop

        .data
scnfmt: .asciz  "%d"
prtfmt: .asciz  "%d"

        stmfd   sp!,{r4,r5,lr}
        @@ r4 is count=0
        @@ r5 is ntemps
        mov     r4,#0       @@ initialize r4 register to zero
        sub     sp,sp,#8
        @@ ntemps is at sp
        @@ curtemp is at sp+
        
        @@ scanf("%d",ntemps)
        ldr     r0,=scnfmt
        mov     r1,sp
        bl      scanf
        ldr     r5,[sp]

loop:   ldr     r0,=scnfmt
        add     r1,sp,#4
        bl      scanf

        ldr     r0,[sp,#4]
        cmp     r0,#0
        addlt   r4,r4,#1

        subs    r5,r0,1
        bnz     loop

        ldmfd   sp!,{r4,lr}
        mov     r0,#0
        mov     pc,lr