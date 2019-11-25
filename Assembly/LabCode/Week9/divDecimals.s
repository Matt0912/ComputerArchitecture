      .section  .text
      .align    2
      .global   _start


_start:
        mov     r0, #42
        lsl     r0, r0, #8      @24/8 (42)
        mov     r2, #1
        lsl     r2, r2, #6      @24/8 (0.25)
        add     r0, r0, r2      @24/8 (42.25)

        mov     r1, #4
        lsl     r1, r1, #8      @24/8 (4)

        lsl     r0, r0, #8      @16/16 (42.25)
        sdiv    r2, r0, r1      @16/8
        mov     r3, #1
        add     r2, r3, lsl #7
        asr     r2, r2, #8

        swi     0x11
