      .section  .text
      .align    2
      .global   _start
_start:
        mov     r0, #42
        mov     r0, r0, lsl #8      @24/8
        mov     r2, #1
        mov     r2, r2, lsl #6
        add     r0, r0, r2          @24/8

        mov     r1, #4
        mov     r1, r1, lsl #8      @24/8

        mul     r2, r0, r1          @16.16
        mov     r0, r2, asr #16     @16.0

        swi     0x11
