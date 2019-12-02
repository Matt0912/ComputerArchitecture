        .section      .text
        .align        2
        .global       _start
_start:
        ldr     r0, =matrix
        ldr     r1, =vector
        mov     r2, #3       @ matrix size
        eor     r7, r7, r7   @ set i counter to zero

        bl      _loopi


_loopi:
        cmp     r7, r2
        moveq   pc, lr

        add     r8, r7, #1   @ set j counter to i + 1
        bl      _loopj

        add     r7, #1
        b       _loopi

_loopj:
        cmp     r8, r2
        moveq   pc, lr

        eor     r9, r9, r9  @ set k counter to zero
        bl      _loopk1

        add     r8, #1
        b       _loopj

_loopk1:
        cmp     r9, r2
        moveq   pc, lr


        ldr	    r3, [r0, r9,lsl #2]      @ M[i][k]
        ldr     r5, #12
        mul     r4, r8, r5               @ Multiply j counter by 3
        mov     r5, r7         @ Load i counter, multiply by 4
        add     r4, r4, r5
        ldr     r5, [r0, r4]              @ Load from r0, offset by r4


        add     r9, #1
        b       _loopk1


_loopk2:



vector:
        .word        6,3,5
matrix:
        .word        2,1,4,3,4,2,7,5,8
