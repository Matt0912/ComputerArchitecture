      .section      .text
      .align        2
      .global       _start
_start:
      ldr     r0, =matrix

      mov     r2, #69
      bl      _2x2    @ Call 2x2 function
      bl      _2x2    @ Call 2x2 function

      swi	0x11

_2x2:
      stmdb   sp!, {r2-r3,r7}

      ldr     r1, [r0]        @ a
      ldr     r2, [r0, #12]   @ d
      mul     r7, r2, r1      @ a*d

      ldr     r1, [r0, #4]    @ b
      ldr     r2, [r0, #8]    @ c
      mul     r6, r2, r1      @ b*c

      subs    r7, r6          @ ad - bc, (store in r7)

      ldmia   sp!, {r2-r3,r7}
      mov     pc, r14


_end: b       _end

      .section      .data
matrix:
      .word        1,2,3,4,5,6,7,8,9
