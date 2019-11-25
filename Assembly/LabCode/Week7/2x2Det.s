      .section      .text
      .align        2
      .global       _start
_start:
      ldr     r0, =matrix

      ldr     r1, [r0]        @ a
      ldr     r2, [r0, #12]   @ d
      mul     r7, r2, r1      @ a*d

      ldr     r1, [r0, #4]    @ b
      ldr     r2, [r0, #8]    @ c
      mul     r6, r2, r1      @ b*c

      subs    r7, r6          @ ad - bc, (store in r7)

      swi	0x11

_end:
      b       _end
      .section      .data
matrix:
      .word        10,2,3,8
