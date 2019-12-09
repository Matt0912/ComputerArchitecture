
a.out:     file format elf32-littlearm


Disassembly of section .init:

00008000 <_init>:
    8000:	e1a0c00d 	mov	ip, sp
    8004:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    8008:	e24cb004 	sub	fp, ip, #4
    800c:	e24bd028 	sub	sp, fp, #40	; 0x28
    8010:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    8014:	e12fff1e 	bx	lr

Disassembly of section .text:

00008018 <exit>:
    8018:	e92d4010 	push	{r4, lr}
    801c:	e3a01000 	mov	r1, #0
    8020:	e1a04000 	mov	r4, r0
    8024:	eb0002ec 	bl	8bdc <__call_exitprocs>
    8028:	e59f3018 	ldr	r3, [pc, #24]	; 8048 <exit+0x30>
    802c:	e5930000 	ldr	r0, [r3]
    8030:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    8034:	e3530000 	cmp	r3, #0
    8038:	11a0e00f 	movne	lr, pc
    803c:	112fff13 	bxne	r3
    8040:	e1a00004 	mov	r0, r4
    8044:	eb0003ac 	bl	8efc <_exit>
    8048:	00008f48 	.word	0x00008f48

0000804c <register_fini>:
    804c:	e59f3018 	ldr	r3, [pc, #24]	; 806c <register_fini+0x20>
    8050:	e3530000 	cmp	r3, #0
    8054:	012fff1e 	bxeq	lr
    8058:	e92d4010 	push	{r4, lr}
    805c:	e59f000c 	ldr	r0, [pc, #12]	; 8070 <register_fini+0x24>
    8060:	eb00033f 	bl	8d64 <atexit>
    8064:	e8bd4010 	pop	{r4, lr}
    8068:	e12fff1e 	bx	lr
    806c:	00000000 	.word	0x00000000
    8070:	00008d84 	.word	0x00008d84

00008074 <__do_global_dtors_aux>:
    8074:	e92d4010 	push	{r4, lr}
    8078:	e59f4028 	ldr	r4, [pc, #40]	; 80a8 <__do_global_dtors_aux+0x34>
    807c:	e5d43000 	ldrb	r3, [r4]
    8080:	e3530000 	cmp	r3, #0
    8084:	1a000005 	bne	80a0 <__do_global_dtors_aux+0x2c>
    8088:	e59f301c 	ldr	r3, [pc, #28]	; 80ac <__do_global_dtors_aux+0x38>
    808c:	e3530000 	cmp	r3, #0
    8090:	159f0018 	ldrne	r0, [pc, #24]	; 80b0 <__do_global_dtors_aux+0x3c>
    8094:	11a00000 	movne	r0, r0
    8098:	e3a03001 	mov	r3, #1
    809c:	e5c43000 	strb	r3, [r4]
    80a0:	e8bd4010 	pop	{r4, lr}
    80a4:	e12fff1e 	bx	lr
    80a8:	0001939c 	.word	0x0001939c
    80ac:	00000000 	.word	0x00000000
    80b0:	00008f54 	.word	0x00008f54

000080b4 <frame_dummy>:
    80b4:	e59f301c 	ldr	r3, [pc, #28]	; 80d8 <frame_dummy+0x24>
    80b8:	e3530000 	cmp	r3, #0
    80bc:	012fff1e 	bxeq	lr
    80c0:	e92d4010 	push	{r4, lr}
    80c4:	e59f1010 	ldr	r1, [pc, #16]	; 80dc <frame_dummy+0x28>
    80c8:	e59f0010 	ldr	r0, [pc, #16]	; 80e0 <frame_dummy+0x2c>
    80cc:	e1a00000 	nop			; (mov r0, r0)
    80d0:	e8bd4010 	pop	{r4, lr}
    80d4:	e12fff1e 	bx	lr
    80d8:	00000000 	.word	0x00000000
    80dc:	000193a0 	.word	0x000193a0
    80e0:	00008f54 	.word	0x00008f54

000080e4 <_mainCRTStartup>:
    80e4:	e59f30f0 	ldr	r3, [pc, #240]	; 81dc <_mainCRTStartup+0xf8>
    80e8:	e3530000 	cmp	r3, #0
    80ec:	059f30e4 	ldreq	r3, [pc, #228]	; 81d8 <_mainCRTStartup+0xf4>
    80f0:	e1a0d003 	mov	sp, r3
    80f4:	e10f2000 	mrs	r2, CPSR
    80f8:	e312000f 	tst	r2, #15
    80fc:	0a000015 	beq	8158 <_mainCRTStartup+0x74>
    8100:	e321f0d1 	msr	CPSR_c, #209	; 0xd1
    8104:	e1a0d003 	mov	sp, r3
    8108:	e24daa01 	sub	sl, sp, #4096	; 0x1000
    810c:	e1a0300a 	mov	r3, sl
    8110:	e321f0d7 	msr	CPSR_c, #215	; 0xd7
    8114:	e1a0d003 	mov	sp, r3
    8118:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    811c:	e321f0db 	msr	CPSR_c, #219	; 0xdb
    8120:	e1a0d003 	mov	sp, r3
    8124:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    8128:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
    812c:	e1a0d003 	mov	sp, r3
    8130:	e2433a02 	sub	r3, r3, #8192	; 0x2000
    8134:	e321f0d3 	msr	CPSR_c, #211	; 0xd3
    8138:	e1a0d003 	mov	sp, r3
    813c:	e2433902 	sub	r3, r3, #32768	; 0x8000
    8140:	e3c330ff 	bic	r3, r3, #255	; 0xff
    8144:	e3c33cff 	bic	r3, r3, #65280	; 0xff00
    8148:	e5033004 	str	r3, [r3, #-4]
    814c:	e9532000 	ldmdb	r3, {sp}^
    8150:	e38220c0 	orr	r2, r2, #192	; 0xc0
    8154:	e121f002 	msr	CPSR_c, r2
    8158:	e243a801 	sub	sl, r3, #65536	; 0x10000
    815c:	e3b01000 	movs	r1, #0
    8160:	e1a0b001 	mov	fp, r1
    8164:	e1a07001 	mov	r7, r1
    8168:	e59f0078 	ldr	r0, [pc, #120]	; 81e8 <_mainCRTStartup+0x104>
    816c:	e59f2078 	ldr	r2, [pc, #120]	; 81ec <_mainCRTStartup+0x108>
    8170:	e0522000 	subs	r2, r2, r0
    8174:	eb000253 	bl	8ac8 <memset>
    8178:	e59f3060 	ldr	r3, [pc, #96]	; 81e0 <_mainCRTStartup+0xfc>
    817c:	e3530000 	cmp	r3, #0
    8180:	0a000001 	beq	818c <_mainCRTStartup+0xa8>
    8184:	e1a0e00f 	mov	lr, pc
    8188:	e1a0f003 	mov	pc, r3
    818c:	e59f3050 	ldr	r3, [pc, #80]	; 81e4 <_mainCRTStartup+0x100>
    8190:	e3530000 	cmp	r3, #0
    8194:	0a000001 	beq	81a0 <_mainCRTStartup+0xbc>
    8198:	e1a0e00f 	mov	lr, pc
    819c:	e1a0f003 	mov	pc, r3
    81a0:	e3b00000 	movs	r0, #0
    81a4:	e3b01000 	movs	r1, #0
    81a8:	e1b04000 	movs	r4, r0
    81ac:	e1b05001 	movs	r5, r1
    81b0:	e59f0038 	ldr	r0, [pc, #56]	; 81f0 <_mainCRTStartup+0x10c>
    81b4:	e3500000 	cmp	r0, #0
    81b8:	0a000001 	beq	81c4 <_mainCRTStartup+0xe0>
    81bc:	e59f0030 	ldr	r0, [pc, #48]	; 81f4 <_mainCRTStartup+0x110>
    81c0:	eb0002e7 	bl	8d64 <atexit>
    81c4:	eb00021d 	bl	8a40 <__libc_init_array>
    81c8:	e1b00004 	movs	r0, r4
    81cc:	e1b01005 	movs	r1, r5
    81d0:	eb000008 	bl	81f8 <main>
    81d4:	ebffff8f 	bl	8018 <exit>
    81d8:	00080000 	.word	0x00080000
	...
    81e8:	0001939c 	.word	0x0001939c
    81ec:	000193dc 	.word	0x000193dc
    81f0:	00008d64 	.word	0x00008d64
    81f4:	00008d84 	.word	0x00008d84

000081f8 <main>:

#define N 3

/*void printMatrix(float A[N][N], float vector[N][1]);*/

int main(void) {
    81f8:	e92d4800 	push	{fp, lr}
    81fc:	e28db004 	add	fp, sp, #4
    8200:	e24dd050 	sub	sp, sp, #80	; 0x50
    int i, j, k;
    float p[N+1], A[N][N] = {{2, 1, 4},
    8204:	e59f3288 	ldr	r3, [pc, #648]	; 8494 <main+0x29c>
    8208:	e24bc044 	sub	ip, fp, #68	; 0x44
    820c:	e1a0e003 	mov	lr, r3
    8210:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    8214:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    8218:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    821c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    8220:	e59e3000 	ldr	r3, [lr]
    8224:	e58c3000 	str	r3, [ip]
                              {3, 4, 2},
                              {7, 5, 8}};
    float vector[N][1] = {{6},{3},{5}};
    8228:	e59f2268 	ldr	r2, [pc, #616]	; 8498 <main+0x2a0>
    822c:	e24b3050 	sub	r3, fp, #80	; 0x50
    8230:	e8920007 	ldm	r2, {r0, r1, r2}
    8234:	e8830007 	stm	r3, {r0, r1, r2}

    /*printMatrix(A, vector);*/


    for (i = 0; i < N; i++) {
    8238:	e3a03000 	mov	r3, #0
    823c:	e50b3008 	str	r3, [fp, #-8]
    8240:	ea00008b 	b	8474 <main+0x27c>
      for (j = i + 1; j < N; j++) {
    8244:	e51b3008 	ldr	r3, [fp, #-8]
    8248:	e2833001 	add	r3, r3, #1
    824c:	e50b300c 	str	r3, [fp, #-12]
    8250:	ea000081 	b	845c <main+0x264>
        for (k = 0; k < N; k++) {
    8254:	e3a03000 	mov	r3, #0
    8258:	e50b3010 	str	r3, [fp, #-16]
    825c:	ea000042 	b	836c <main+0x174>
          p[k] = -(A[i][k]/A[i][i])*A[j][i];
    8260:	e51b2008 	ldr	r2, [fp, #-8]
    8264:	e1a03002 	mov	r3, r2
    8268:	e1a03083 	lsl	r3, r3, #1
    826c:	e0833002 	add	r3, r3, r2
    8270:	e51b2010 	ldr	r2, [fp, #-16]
    8274:	e0833002 	add	r3, r3, r2
    8278:	e1a03103 	lsl	r3, r3, #2
    827c:	e24b2004 	sub	r2, fp, #4
    8280:	e0823003 	add	r3, r2, r3
    8284:	e5132040 	ldr	r2, [r3, #-64]	; 0xffffffc0
    8288:	e51b3008 	ldr	r3, [fp, #-8]
    828c:	e1a03203 	lsl	r3, r3, #4
    8290:	e24b1004 	sub	r1, fp, #4
    8294:	e0813003 	add	r3, r1, r3
    8298:	e5133040 	ldr	r3, [r3, #-64]	; 0xffffffc0
    829c:	e1a01003 	mov	r1, r3
    82a0:	e1a00002 	mov	r0, r2
    82a4:	eb00018d 	bl	88e0 <__aeabi_fdiv>
    82a8:	e1a03000 	mov	r3, r0
    82ac:	e2230102 	eor	r0, r3, #-2147483648	; 0x80000000
    82b0:	e51b200c 	ldr	r2, [fp, #-12]
    82b4:	e1a03002 	mov	r3, r2
    82b8:	e1a03083 	lsl	r3, r3, #1
    82bc:	e0833002 	add	r3, r3, r2
    82c0:	e51b2008 	ldr	r2, [fp, #-8]
    82c4:	e0833002 	add	r3, r3, r2
    82c8:	e1a03103 	lsl	r3, r3, #2
    82cc:	e24b2004 	sub	r2, fp, #4
    82d0:	e0823003 	add	r3, r2, r3
    82d4:	e5133040 	ldr	r3, [r3, #-64]	; 0xffffffc0
    82d8:	e1a01003 	mov	r1, r3
    82dc:	eb000119 	bl	8748 <__aeabi_fmul>
    82e0:	e1a03000 	mov	r3, r0
    82e4:	e1a02003 	mov	r2, r3
    82e8:	e51b3010 	ldr	r3, [fp, #-16]
    82ec:	e1a03103 	lsl	r3, r3, #2
    82f0:	e24b1004 	sub	r1, fp, #4
    82f4:	e0813003 	add	r3, r1, r3
    82f8:	e503201c 	str	r2, [r3, #-28]	; 0xffffffe4
          p[N] = -(vector[i][0]/A[i][i])*vector[j][0];
    82fc:	e51b3008 	ldr	r3, [fp, #-8]
    8300:	e1a03103 	lsl	r3, r3, #2
    8304:	e24b2004 	sub	r2, fp, #4
    8308:	e0823003 	add	r3, r2, r3
    830c:	e513204c 	ldr	r2, [r3, #-76]	; 0xffffffb4
    8310:	e51b3008 	ldr	r3, [fp, #-8]
    8314:	e1a03203 	lsl	r3, r3, #4
    8318:	e24b1004 	sub	r1, fp, #4
    831c:	e0813003 	add	r3, r1, r3
    8320:	e5133040 	ldr	r3, [r3, #-64]	; 0xffffffc0
    8324:	e1a01003 	mov	r1, r3
    8328:	e1a00002 	mov	r0, r2
    832c:	eb00016b 	bl	88e0 <__aeabi_fdiv>
    8330:	e1a03000 	mov	r3, r0
    8334:	e2232102 	eor	r2, r3, #-2147483648	; 0x80000000
    8338:	e51b300c 	ldr	r3, [fp, #-12]
    833c:	e1a03103 	lsl	r3, r3, #2
    8340:	e24b1004 	sub	r1, fp, #4
    8344:	e0813003 	add	r3, r1, r3
    8348:	e513304c 	ldr	r3, [r3, #-76]	; 0xffffffb4
    834c:	e1a01003 	mov	r1, r3
    8350:	e1a00002 	mov	r0, r2
    8354:	eb0000fb 	bl	8748 <__aeabi_fmul>
    8358:	e1a03000 	mov	r3, r0
    835c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
        for (k = 0; k < N; k++) {
    8360:	e51b3010 	ldr	r3, [fp, #-16]
    8364:	e2833001 	add	r3, r3, #1
    8368:	e50b3010 	str	r3, [fp, #-16]
    836c:	e51b3010 	ldr	r3, [fp, #-16]
    8370:	e3530002 	cmp	r3, #2
    8374:	daffffb9 	ble	8260 <main+0x68>
        }
        for (k = 0; k < N; k++) {
    8378:	e3a03000 	mov	r3, #0
    837c:	e50b3010 	str	r3, [fp, #-16]
    8380:	ea00001f 	b	8404 <main+0x20c>
          A[j][k] = p[k] + A[j][k];
    8384:	e51b3010 	ldr	r3, [fp, #-16]
    8388:	e1a03103 	lsl	r3, r3, #2
    838c:	e24b2004 	sub	r2, fp, #4
    8390:	e0823003 	add	r3, r2, r3
    8394:	e513001c 	ldr	r0, [r3, #-28]	; 0xffffffe4
    8398:	e51b200c 	ldr	r2, [fp, #-12]
    839c:	e1a03002 	mov	r3, r2
    83a0:	e1a03083 	lsl	r3, r3, #1
    83a4:	e0833002 	add	r3, r3, r2
    83a8:	e51b2010 	ldr	r2, [fp, #-16]
    83ac:	e0833002 	add	r3, r3, r2
    83b0:	e1a03103 	lsl	r3, r3, #2
    83b4:	e24b2004 	sub	r2, fp, #4
    83b8:	e0823003 	add	r3, r2, r3
    83bc:	e5133040 	ldr	r3, [r3, #-64]	; 0xffffffc0
    83c0:	e1a01003 	mov	r1, r3
    83c4:	eb000037 	bl	84a8 <__addsf3>
    83c8:	e1a03000 	mov	r3, r0
    83cc:	e1a01003 	mov	r1, r3
    83d0:	e51b200c 	ldr	r2, [fp, #-12]
    83d4:	e1a03002 	mov	r3, r2
    83d8:	e1a03083 	lsl	r3, r3, #1
    83dc:	e0833002 	add	r3, r3, r2
    83e0:	e51b2010 	ldr	r2, [fp, #-16]
    83e4:	e0833002 	add	r3, r3, r2
    83e8:	e1a03103 	lsl	r3, r3, #2
    83ec:	e24b2004 	sub	r2, fp, #4
    83f0:	e0823003 	add	r3, r2, r3
    83f4:	e5031040 	str	r1, [r3, #-64]	; 0xffffffc0
        for (k = 0; k < N; k++) {
    83f8:	e51b3010 	ldr	r3, [fp, #-16]
    83fc:	e2833001 	add	r3, r3, #1
    8400:	e50b3010 	str	r3, [fp, #-16]
    8404:	e51b3010 	ldr	r3, [fp, #-16]
    8408:	e3530002 	cmp	r3, #2
    840c:	daffffdc 	ble	8384 <main+0x18c>
        }
        vector[i][0] = p[N] + vector[i][0];
    8410:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
    8414:	e51b3008 	ldr	r3, [fp, #-8]
    8418:	e1a03103 	lsl	r3, r3, #2
    841c:	e24b1004 	sub	r1, fp, #4
    8420:	e0813003 	add	r3, r1, r3
    8424:	e513304c 	ldr	r3, [r3, #-76]	; 0xffffffb4
    8428:	e1a01003 	mov	r1, r3
    842c:	e1a00002 	mov	r0, r2
    8430:	eb00001c 	bl	84a8 <__addsf3>
    8434:	e1a03000 	mov	r3, r0
    8438:	e1a02003 	mov	r2, r3
    843c:	e51b3008 	ldr	r3, [fp, #-8]
    8440:	e1a03103 	lsl	r3, r3, #2
    8444:	e24b1004 	sub	r1, fp, #4
    8448:	e0813003 	add	r3, r1, r3
    844c:	e503204c 	str	r2, [r3, #-76]	; 0xffffffb4
      for (j = i + 1; j < N; j++) {
    8450:	e51b300c 	ldr	r3, [fp, #-12]
    8454:	e2833001 	add	r3, r3, #1
    8458:	e50b300c 	str	r3, [fp, #-12]
    845c:	e51b300c 	ldr	r3, [fp, #-12]
    8460:	e3530002 	cmp	r3, #2
    8464:	daffff7a 	ble	8254 <main+0x5c>
    for (i = 0; i < N; i++) {
    8468:	e51b3008 	ldr	r3, [fp, #-8]
    846c:	e2833001 	add	r3, r3, #1
    8470:	e50b3008 	str	r3, [fp, #-8]
    8474:	e51b3008 	ldr	r3, [fp, #-8]
    8478:	e3530002 	cmp	r3, #2
    847c:	daffff70 	ble	8244 <main+0x4c>
        /*printMatrix(A, vector);*/
      }
    }
    return 0;
    8480:	e3a03000 	mov	r3, #0
}
    8484:	e1a00003 	mov	r0, r3
    8488:	e24bd004 	sub	sp, fp, #4
    848c:	e8bd4800 	pop	{fp, lr}
    8490:	e12fff1e 	bx	lr
    8494:	00008f18 	.word	0x00008f18
    8498:	00008f3c 	.word	0x00008f3c

0000849c <__aeabi_frsub>:
    849c:	e2200102 	eor	r0, r0, #-2147483648	; 0x80000000
    84a0:	ea000000 	b	84a8 <__addsf3>

000084a4 <__aeabi_fsub>:
    84a4:	e2211102 	eor	r1, r1, #-2147483648	; 0x80000000

000084a8 <__addsf3>:
    84a8:	e1b02080 	lsls	r2, r0, #1
    84ac:	11b03081 	lslsne	r3, r1, #1
    84b0:	11320003 	teqne	r2, r3
    84b4:	11f0cc42 	mvnsne	ip, r2, asr #24
    84b8:	11f0cc43 	mvnsne	ip, r3, asr #24
    84bc:	0a000047 	beq	85e0 <__addsf3+0x138>
    84c0:	e1a02c22 	lsr	r2, r2, #24
    84c4:	e0723c23 	rsbs	r3, r2, r3, lsr #24
    84c8:	c0822003 	addgt	r2, r2, r3
    84cc:	c0201001 	eorgt	r1, r0, r1
    84d0:	c0210000 	eorgt	r0, r1, r0
    84d4:	c0201001 	eorgt	r1, r0, r1
    84d8:	b2633000 	rsblt	r3, r3, #0
    84dc:	e3530019 	cmp	r3, #25
    84e0:	812fff1e 	bxhi	lr
    84e4:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    84e8:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    84ec:	e3c004ff 	bic	r0, r0, #-16777216	; 0xff000000
    84f0:	12600000 	rsbne	r0, r0, #0
    84f4:	e3110102 	tst	r1, #-2147483648	; 0x80000000
    84f8:	e3811502 	orr	r1, r1, #8388608	; 0x800000
    84fc:	e3c114ff 	bic	r1, r1, #-16777216	; 0xff000000
    8500:	12611000 	rsbne	r1, r1, #0
    8504:	e1320003 	teq	r2, r3
    8508:	0a00002e 	beq	85c8 <__addsf3+0x120>
    850c:	e2422001 	sub	r2, r2, #1
    8510:	e0900351 	adds	r0, r0, r1, asr r3
    8514:	e2633020 	rsb	r3, r3, #32
    8518:	e1a01311 	lsl	r1, r1, r3
    851c:	e2003102 	and	r3, r0, #-2147483648	; 0x80000000
    8520:	5a000001 	bpl	852c <__addsf3+0x84>
    8524:	e2711000 	rsbs	r1, r1, #0
    8528:	e2e00000 	rsc	r0, r0, #0
    852c:	e3500502 	cmp	r0, #8388608	; 0x800000
    8530:	3a00000b 	bcc	8564 <__addsf3+0xbc>
    8534:	e3500401 	cmp	r0, #16777216	; 0x1000000
    8538:	3a000004 	bcc	8550 <__addsf3+0xa8>
    853c:	e1b000a0 	lsrs	r0, r0, #1
    8540:	e1a01061 	rrx	r1, r1
    8544:	e2822001 	add	r2, r2, #1
    8548:	e35200fe 	cmp	r2, #254	; 0xfe
    854c:	2a000038 	bcs	8634 <__addsf3+0x18c>
    8550:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    8554:	e0a00b82 	adc	r0, r0, r2, lsl #23
    8558:	03c00001 	biceq	r0, r0, #1
    855c:	e1800003 	orr	r0, r0, r3
    8560:	e12fff1e 	bx	lr
    8564:	e1b01081 	lsls	r1, r1, #1
    8568:	e0a00000 	adc	r0, r0, r0
    856c:	e3100502 	tst	r0, #8388608	; 0x800000
    8570:	e2422001 	sub	r2, r2, #1
    8574:	1afffff5 	bne	8550 <__addsf3+0xa8>
    8578:	e1b0c620 	lsrs	ip, r0, #12
    857c:	01a00600 	lsleq	r0, r0, #12
    8580:	0242200c 	subeq	r2, r2, #12
    8584:	e31008ff 	tst	r0, #16711680	; 0xff0000
    8588:	01a00400 	lsleq	r0, r0, #8
    858c:	02422008 	subeq	r2, r2, #8
    8590:	e310060f 	tst	r0, #15728640	; 0xf00000
    8594:	01a00200 	lsleq	r0, r0, #4
    8598:	02422004 	subeq	r2, r2, #4
    859c:	e3100503 	tst	r0, #12582912	; 0xc00000
    85a0:	01a00100 	lsleq	r0, r0, #2
    85a4:	02422002 	subeq	r2, r2, #2
    85a8:	e3500502 	cmp	r0, #8388608	; 0x800000
    85ac:	31a00080 	lslcc	r0, r0, #1
    85b0:	e2d22000 	sbcs	r2, r2, #0
    85b4:	a0800b82 	addge	r0, r0, r2, lsl #23
    85b8:	b2622000 	rsblt	r2, r2, #0
    85bc:	a1800003 	orrge	r0, r0, r3
    85c0:	b1830230 	orrlt	r0, r3, r0, lsr r2
    85c4:	e12fff1e 	bx	lr
    85c8:	e3320000 	teq	r2, #0
    85cc:	e2211502 	eor	r1, r1, #8388608	; 0x800000
    85d0:	02200502 	eoreq	r0, r0, #8388608	; 0x800000
    85d4:	02822001 	addeq	r2, r2, #1
    85d8:	12433001 	subne	r3, r3, #1
    85dc:	eaffffca 	b	850c <__addsf3+0x64>
    85e0:	e1a03081 	lsl	r3, r1, #1
    85e4:	e1f0cc42 	mvns	ip, r2, asr #24
    85e8:	11f0cc43 	mvnsne	ip, r3, asr #24
    85ec:	0a000013 	beq	8640 <__addsf3+0x198>
    85f0:	e1320003 	teq	r2, r3
    85f4:	0a000002 	beq	8604 <__addsf3+0x15c>
    85f8:	e3320000 	teq	r2, #0
    85fc:	01a00001 	moveq	r0, r1
    8600:	e12fff1e 	bx	lr
    8604:	e1300001 	teq	r0, r1
    8608:	13a00000 	movne	r0, #0
    860c:	112fff1e 	bxne	lr
    8610:	e31204ff 	tst	r2, #-16777216	; 0xff000000
    8614:	1a000002 	bne	8624 <__addsf3+0x17c>
    8618:	e1b00080 	lsls	r0, r0, #1
    861c:	23800102 	orrcs	r0, r0, #-2147483648	; 0x80000000
    8620:	e12fff1e 	bx	lr
    8624:	e2922402 	adds	r2, r2, #33554432	; 0x2000000
    8628:	32800502 	addcc	r0, r0, #8388608	; 0x800000
    862c:	312fff1e 	bxcc	lr
    8630:	e2003102 	and	r3, r0, #-2147483648	; 0x80000000
    8634:	e383047f 	orr	r0, r3, #2130706432	; 0x7f000000
    8638:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    863c:	e12fff1e 	bx	lr
    8640:	e1f02c42 	mvns	r2, r2, asr #24
    8644:	11a00001 	movne	r0, r1
    8648:	01f03c43 	mvnseq	r3, r3, asr #24
    864c:	11a01000 	movne	r1, r0
    8650:	e1b02480 	lsls	r2, r0, #9
    8654:	01b03481 	lslseq	r3, r1, #9
    8658:	01300001 	teqeq	r0, r1
    865c:	13800501 	orrne	r0, r0, #4194304	; 0x400000
    8660:	e12fff1e 	bx	lr

00008664 <__aeabi_ui2f>:
    8664:	e3a03000 	mov	r3, #0
    8668:	ea000001 	b	8674 <__aeabi_i2f+0x8>

0000866c <__aeabi_i2f>:
    866c:	e2103102 	ands	r3, r0, #-2147483648	; 0x80000000
    8670:	42600000 	rsbmi	r0, r0, #0
    8674:	e1b0c000 	movs	ip, r0
    8678:	012fff1e 	bxeq	lr
    867c:	e383344b 	orr	r3, r3, #1258291200	; 0x4b000000
    8680:	e1a01000 	mov	r1, r0
    8684:	e3a00000 	mov	r0, #0
    8688:	ea00000f 	b	86cc <__aeabi_l2f+0x30>

0000868c <__aeabi_ul2f>:
    868c:	e1902001 	orrs	r2, r0, r1
    8690:	012fff1e 	bxeq	lr
    8694:	e3a03000 	mov	r3, #0
    8698:	ea000005 	b	86b4 <__aeabi_l2f+0x18>

0000869c <__aeabi_l2f>:
    869c:	e1902001 	orrs	r2, r0, r1
    86a0:	012fff1e 	bxeq	lr
    86a4:	e2113102 	ands	r3, r1, #-2147483648	; 0x80000000
    86a8:	5a000001 	bpl	86b4 <__aeabi_l2f+0x18>
    86ac:	e2700000 	rsbs	r0, r0, #0
    86b0:	e2e11000 	rsc	r1, r1, #0
    86b4:	e1b0c001 	movs	ip, r1
    86b8:	01a0c000 	moveq	ip, r0
    86bc:	01a01000 	moveq	r1, r0
    86c0:	03a00000 	moveq	r0, #0
    86c4:	e383345b 	orr	r3, r3, #1526726656	; 0x5b000000
    86c8:	02433201 	subeq	r3, r3, #268435456	; 0x10000000
    86cc:	e2433502 	sub	r3, r3, #8388608	; 0x800000
    86d0:	e3a02017 	mov	r2, #23
    86d4:	e35c0801 	cmp	ip, #65536	; 0x10000
    86d8:	21a0c82c 	lsrcs	ip, ip, #16
    86dc:	22422010 	subcs	r2, r2, #16
    86e0:	e35c0c01 	cmp	ip, #256	; 0x100
    86e4:	21a0c42c 	lsrcs	ip, ip, #8
    86e8:	22422008 	subcs	r2, r2, #8
    86ec:	e35c0010 	cmp	ip, #16
    86f0:	21a0c22c 	lsrcs	ip, ip, #4
    86f4:	22422004 	subcs	r2, r2, #4
    86f8:	e35c0004 	cmp	ip, #4
    86fc:	22422002 	subcs	r2, r2, #2
    8700:	304220ac 	subcc	r2, r2, ip, lsr #1
    8704:	e05221ac 	subs	r2, r2, ip, lsr #3
    8708:	e0433b82 	sub	r3, r3, r2, lsl #23
    870c:	ba000006 	blt	872c <__aeabi_l2f+0x90>
    8710:	e0833211 	add	r3, r3, r1, lsl r2
    8714:	e1a0c210 	lsl	ip, r0, r2
    8718:	e2622020 	rsb	r2, r2, #32
    871c:	e35c0102 	cmp	ip, #-2147483648	; 0x80000000
    8720:	e0a30230 	adc	r0, r3, r0, lsr r2
    8724:	03c00001 	biceq	r0, r0, #1
    8728:	e12fff1e 	bx	lr
    872c:	e2822020 	add	r2, r2, #32
    8730:	e1a0c211 	lsl	ip, r1, r2
    8734:	e2622020 	rsb	r2, r2, #32
    8738:	e190008c 	orrs	r0, r0, ip, lsl #1
    873c:	e0a30231 	adc	r0, r3, r1, lsr r2
    8740:	01c00fac 	biceq	r0, r0, ip, lsr #31
    8744:	e12fff1e 	bx	lr

00008748 <__aeabi_fmul>:
    8748:	e3a0c0ff 	mov	ip, #255	; 0xff
    874c:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    8750:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    8754:	1132000c 	teqne	r2, ip
    8758:	1133000c 	teqne	r3, ip
    875c:	0a00003e 	beq	885c <__aeabi_fmul+0x114>
    8760:	e0822003 	add	r2, r2, r3
    8764:	e020c001 	eor	ip, r0, r1
    8768:	e1b00480 	lsls	r0, r0, #9
    876c:	11b01481 	lslsne	r1, r1, #9
    8770:	0a000010 	beq	87b8 <__aeabi_fmul+0x70>
    8774:	e3a03302 	mov	r3, #134217728	; 0x8000000
    8778:	e18302a0 	orr	r0, r3, r0, lsr #5
    877c:	e18312a1 	orr	r1, r3, r1, lsr #5
    8780:	e0813190 	umull	r3, r1, r0, r1
    8784:	e20c0102 	and	r0, ip, #-2147483648	; 0x80000000
    8788:	e3510502 	cmp	r1, #8388608	; 0x800000
    878c:	31a01081 	lslcc	r1, r1, #1
    8790:	31811fa3 	orrcc	r1, r1, r3, lsr #31
    8794:	31a03083 	lslcc	r3, r3, #1
    8798:	e1800001 	orr	r0, r0, r1
    879c:	e2c2207f 	sbc	r2, r2, #127	; 0x7f
    87a0:	e35200fd 	cmp	r2, #253	; 0xfd
    87a4:	8a00000f 	bhi	87e8 <__aeabi_fmul+0xa0>
    87a8:	e3530102 	cmp	r3, #-2147483648	; 0x80000000
    87ac:	e0a00b82 	adc	r0, r0, r2, lsl #23
    87b0:	03c00001 	biceq	r0, r0, #1
    87b4:	e12fff1e 	bx	lr
    87b8:	e3300000 	teq	r0, #0
    87bc:	e20cc102 	and	ip, ip, #-2147483648	; 0x80000000
    87c0:	01a01481 	lsleq	r1, r1, #9
    87c4:	e18c04a0 	orr	r0, ip, r0, lsr #9
    87c8:	e18004a1 	orr	r0, r0, r1, lsr #9
    87cc:	e252207f 	subs	r2, r2, #127	; 0x7f
    87d0:	c27230ff 	rsbsgt	r3, r2, #255	; 0xff
    87d4:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    87d8:	c12fff1e 	bxgt	lr
    87dc:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    87e0:	e3a03000 	mov	r3, #0
    87e4:	e2522001 	subs	r2, r2, #1
    87e8:	ca000035 	bgt	88c4 <__aeabi_fmul+0x17c>
    87ec:	e3720019 	cmn	r2, #25
    87f0:	d2000102 	andle	r0, r0, #-2147483648	; 0x80000000
    87f4:	d12fff1e 	bxle	lr
    87f8:	e2622000 	rsb	r2, r2, #0
    87fc:	e1b01080 	lsls	r1, r0, #1
    8800:	e1a01231 	lsr	r1, r1, r2
    8804:	e2622020 	rsb	r2, r2, #32
    8808:	e1a0c210 	lsl	ip, r0, r2
    880c:	e1b00061 	rrxs	r0, r1
    8810:	e2a00000 	adc	r0, r0, #0
    8814:	e193308c 	orrs	r3, r3, ip, lsl #1
    8818:	01c00fac 	biceq	r0, r0, ip, lsr #31
    881c:	e12fff1e 	bx	lr
    8820:	e3320000 	teq	r2, #0
    8824:	e200c102 	and	ip, r0, #-2147483648	; 0x80000000
    8828:	01a00080 	lsleq	r0, r0, #1
    882c:	03100502 	tsteq	r0, #8388608	; 0x800000
    8830:	02422001 	subeq	r2, r2, #1
    8834:	0afffffb 	beq	8828 <__aeabi_fmul+0xe0>
    8838:	e180000c 	orr	r0, r0, ip
    883c:	e3330000 	teq	r3, #0
    8840:	e201c102 	and	ip, r1, #-2147483648	; 0x80000000
    8844:	01a01081 	lsleq	r1, r1, #1
    8848:	03110502 	tsteq	r1, #8388608	; 0x800000
    884c:	02433001 	subeq	r3, r3, #1
    8850:	0afffffb 	beq	8844 <__aeabi_fmul+0xfc>
    8854:	e181100c 	orr	r1, r1, ip
    8858:	eaffffc0 	b	8760 <__aeabi_fmul+0x18>
    885c:	e00c3ba1 	and	r3, ip, r1, lsr #23
    8860:	e132000c 	teq	r2, ip
    8864:	1133000c 	teqne	r3, ip
    8868:	0a000005 	beq	8884 <__aeabi_fmul+0x13c>
    886c:	e3d0c102 	bics	ip, r0, #-2147483648	; 0x80000000
    8870:	13d1c102 	bicsne	ip, r1, #-2147483648	; 0x80000000
    8874:	1affffe9 	bne	8820 <__aeabi_fmul+0xd8>
    8878:	e0200001 	eor	r0, r0, r1
    887c:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    8880:	e12fff1e 	bx	lr
    8884:	e3300000 	teq	r0, #0
    8888:	13300102 	teqne	r0, #-2147483648	; 0x80000000
    888c:	01a00001 	moveq	r0, r1
    8890:	13310000 	teqne	r1, #0
    8894:	13310102 	teqne	r1, #-2147483648	; 0x80000000
    8898:	0a00000d 	beq	88d4 <__aeabi_fmul+0x18c>
    889c:	e132000c 	teq	r2, ip
    88a0:	1a000001 	bne	88ac <__aeabi_fmul+0x164>
    88a4:	e1b02480 	lsls	r2, r0, #9
    88a8:	1a000009 	bne	88d4 <__aeabi_fmul+0x18c>
    88ac:	e133000c 	teq	r3, ip
    88b0:	1a000002 	bne	88c0 <__aeabi_fmul+0x178>
    88b4:	e1b03481 	lsls	r3, r1, #9
    88b8:	11a00001 	movne	r0, r1
    88bc:	1a000004 	bne	88d4 <__aeabi_fmul+0x18c>
    88c0:	e0200001 	eor	r0, r0, r1
    88c4:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    88c8:	e380047f 	orr	r0, r0, #2130706432	; 0x7f000000
    88cc:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    88d0:	e12fff1e 	bx	lr
    88d4:	e380047f 	orr	r0, r0, #2130706432	; 0x7f000000
    88d8:	e3800503 	orr	r0, r0, #12582912	; 0xc00000
    88dc:	e12fff1e 	bx	lr

000088e0 <__aeabi_fdiv>:
    88e0:	e3a0c0ff 	mov	ip, #255	; 0xff
    88e4:	e01c2ba0 	ands	r2, ip, r0, lsr #23
    88e8:	101c3ba1 	andsne	r3, ip, r1, lsr #23
    88ec:	1132000c 	teqne	r2, ip
    88f0:	1133000c 	teqne	r3, ip
    88f4:	0a00003a 	beq	89e4 <__aeabi_fdiv+0x104>
    88f8:	e0422003 	sub	r2, r2, r3
    88fc:	e020c001 	eor	ip, r0, r1
    8900:	e1b01481 	lsls	r1, r1, #9
    8904:	e1a00480 	lsl	r0, r0, #9
    8908:	0a00001c 	beq	8980 <__aeabi_fdiv+0xa0>
    890c:	e3a03201 	mov	r3, #268435456	; 0x10000000
    8910:	e1831221 	orr	r1, r3, r1, lsr #4
    8914:	e1833220 	orr	r3, r3, r0, lsr #4
    8918:	e20c0102 	and	r0, ip, #-2147483648	; 0x80000000
    891c:	e1530001 	cmp	r3, r1
    8920:	31a03083 	lslcc	r3, r3, #1
    8924:	e2a2207d 	adc	r2, r2, #125	; 0x7d
    8928:	e3a0c502 	mov	ip, #8388608	; 0x800000
    892c:	e1530001 	cmp	r3, r1
    8930:	20433001 	subcs	r3, r3, r1
    8934:	2180000c 	orrcs	r0, r0, ip
    8938:	e15300a1 	cmp	r3, r1, lsr #1
    893c:	204330a1 	subcs	r3, r3, r1, lsr #1
    8940:	218000ac 	orrcs	r0, r0, ip, lsr #1
    8944:	e1530121 	cmp	r3, r1, lsr #2
    8948:	20433121 	subcs	r3, r3, r1, lsr #2
    894c:	2180012c 	orrcs	r0, r0, ip, lsr #2
    8950:	e15301a1 	cmp	r3, r1, lsr #3
    8954:	204331a1 	subcs	r3, r3, r1, lsr #3
    8958:	218001ac 	orrcs	r0, r0, ip, lsr #3
    895c:	e1b03203 	lsls	r3, r3, #4
    8960:	11b0c22c 	lsrsne	ip, ip, #4
    8964:	1afffff0 	bne	892c <__aeabi_fdiv+0x4c>
    8968:	e35200fd 	cmp	r2, #253	; 0xfd
    896c:	8affff9d 	bhi	87e8 <__aeabi_fmul+0xa0>
    8970:	e1530001 	cmp	r3, r1
    8974:	e0a00b82 	adc	r0, r0, r2, lsl #23
    8978:	03c00001 	biceq	r0, r0, #1
    897c:	e12fff1e 	bx	lr
    8980:	e20cc102 	and	ip, ip, #-2147483648	; 0x80000000
    8984:	e18c04a0 	orr	r0, ip, r0, lsr #9
    8988:	e292207f 	adds	r2, r2, #127	; 0x7f
    898c:	c27230ff 	rsbsgt	r3, r2, #255	; 0xff
    8990:	c1800b82 	orrgt	r0, r0, r2, lsl #23
    8994:	c12fff1e 	bxgt	lr
    8998:	e3800502 	orr	r0, r0, #8388608	; 0x800000
    899c:	e3a03000 	mov	r3, #0
    89a0:	e2522001 	subs	r2, r2, #1
    89a4:	eaffff8f 	b	87e8 <__aeabi_fmul+0xa0>
    89a8:	e3320000 	teq	r2, #0
    89ac:	e200c102 	and	ip, r0, #-2147483648	; 0x80000000
    89b0:	01a00080 	lsleq	r0, r0, #1
    89b4:	03100502 	tsteq	r0, #8388608	; 0x800000
    89b8:	02422001 	subeq	r2, r2, #1
    89bc:	0afffffb 	beq	89b0 <__aeabi_fdiv+0xd0>
    89c0:	e180000c 	orr	r0, r0, ip
    89c4:	e3330000 	teq	r3, #0
    89c8:	e201c102 	and	ip, r1, #-2147483648	; 0x80000000
    89cc:	01a01081 	lsleq	r1, r1, #1
    89d0:	03110502 	tsteq	r1, #8388608	; 0x800000
    89d4:	02433001 	subeq	r3, r3, #1
    89d8:	0afffffb 	beq	89cc <__aeabi_fdiv+0xec>
    89dc:	e181100c 	orr	r1, r1, ip
    89e0:	eaffffc4 	b	88f8 <__aeabi_fdiv+0x18>
    89e4:	e00c3ba1 	and	r3, ip, r1, lsr #23
    89e8:	e132000c 	teq	r2, ip
    89ec:	1a000005 	bne	8a08 <__aeabi_fdiv+0x128>
    89f0:	e1b02480 	lsls	r2, r0, #9
    89f4:	1affffb6 	bne	88d4 <__aeabi_fmul+0x18c>
    89f8:	e133000c 	teq	r3, ip
    89fc:	1affffaf 	bne	88c0 <__aeabi_fmul+0x178>
    8a00:	e1a00001 	mov	r0, r1
    8a04:	eaffffb2 	b	88d4 <__aeabi_fmul+0x18c>
    8a08:	e133000c 	teq	r3, ip
    8a0c:	1a000003 	bne	8a20 <__aeabi_fdiv+0x140>
    8a10:	e1b03481 	lsls	r3, r1, #9
    8a14:	0affff97 	beq	8878 <__aeabi_fmul+0x130>
    8a18:	e1a00001 	mov	r0, r1
    8a1c:	eaffffac 	b	88d4 <__aeabi_fmul+0x18c>
    8a20:	e3d0c102 	bics	ip, r0, #-2147483648	; 0x80000000
    8a24:	13d1c102 	bicsne	ip, r1, #-2147483648	; 0x80000000
    8a28:	1affffde 	bne	89a8 <__aeabi_fdiv+0xc8>
    8a2c:	e3d02102 	bics	r2, r0, #-2147483648	; 0x80000000
    8a30:	1affffa2 	bne	88c0 <__aeabi_fmul+0x178>
    8a34:	e3d13102 	bics	r3, r1, #-2147483648	; 0x80000000
    8a38:	1affff8e 	bne	8878 <__aeabi_fmul+0x130>
    8a3c:	eaffffa4 	b	88d4 <__aeabi_fmul+0x18c>

00008a40 <__libc_init_array>:
    8a40:	e92d4070 	push	{r4, r5, r6, lr}
    8a44:	e59f606c 	ldr	r6, [pc, #108]	; 8ab8 <__libc_init_array+0x78>
    8a48:	e59f506c 	ldr	r5, [pc, #108]	; 8abc <__libc_init_array+0x7c>
    8a4c:	e0466005 	sub	r6, r6, r5
    8a50:	e1b06146 	asrs	r6, r6, #2
    8a54:	0a000007 	beq	8a78 <__libc_init_array+0x38>
    8a58:	e3a04000 	mov	r4, #0
    8a5c:	e2455004 	sub	r5, r5, #4
    8a60:	e2844001 	add	r4, r4, #1
    8a64:	e5b53004 	ldr	r3, [r5, #4]!
    8a68:	e1a0e00f 	mov	lr, pc
    8a6c:	e12fff13 	bx	r3
    8a70:	e1560004 	cmp	r6, r4
    8a74:	1afffff9 	bne	8a60 <__libc_init_array+0x20>
    8a78:	e59f6040 	ldr	r6, [pc, #64]	; 8ac0 <__libc_init_array+0x80>
    8a7c:	e59f5040 	ldr	r5, [pc, #64]	; 8ac4 <__libc_init_array+0x84>
    8a80:	e0466005 	sub	r6, r6, r5
    8a84:	ebfffd5d 	bl	8000 <_init>
    8a88:	e1b06146 	asrs	r6, r6, #2
    8a8c:	0a000007 	beq	8ab0 <__libc_init_array+0x70>
    8a90:	e3a04000 	mov	r4, #0
    8a94:	e2455004 	sub	r5, r5, #4
    8a98:	e2844001 	add	r4, r4, #1
    8a9c:	e5b53004 	ldr	r3, [r5, #4]!
    8aa0:	e1a0e00f 	mov	lr, pc
    8aa4:	e12fff13 	bx	r3
    8aa8:	e1560004 	cmp	r6, r4
    8aac:	1afffff9 	bne	8a98 <__libc_init_array+0x58>
    8ab0:	e8bd4070 	pop	{r4, r5, r6, lr}
    8ab4:	e12fff1e 	bx	lr
    8ab8:	00018f58 	.word	0x00018f58
    8abc:	00018f58 	.word	0x00018f58
    8ac0:	00018f60 	.word	0x00018f60
    8ac4:	00018f58 	.word	0x00018f58

00008ac8 <memset>:
    8ac8:	e3100003 	tst	r0, #3
    8acc:	0a000040 	beq	8bd4 <memset+0x10c>
    8ad0:	e3520000 	cmp	r2, #0
    8ad4:	e2422001 	sub	r2, r2, #1
    8ad8:	012fff1e 	bxeq	lr
    8adc:	e201c0ff 	and	ip, r1, #255	; 0xff
    8ae0:	e1a03000 	mov	r3, r0
    8ae4:	ea000002 	b	8af4 <memset+0x2c>
    8ae8:	e2422001 	sub	r2, r2, #1
    8aec:	e3720001 	cmn	r2, #1
    8af0:	012fff1e 	bxeq	lr
    8af4:	e4c3c001 	strb	ip, [r3], #1
    8af8:	e3130003 	tst	r3, #3
    8afc:	1afffff9 	bne	8ae8 <memset+0x20>
    8b00:	e3520003 	cmp	r2, #3
    8b04:	9a00002a 	bls	8bb4 <memset+0xec>
    8b08:	e92d4030 	push	{r4, r5, lr}
    8b0c:	e201e0ff 	and	lr, r1, #255	; 0xff
    8b10:	e18ee40e 	orr	lr, lr, lr, lsl #8
    8b14:	e352000f 	cmp	r2, #15
    8b18:	e18ee80e 	orr	lr, lr, lr, lsl #16
    8b1c:	9a000010 	bls	8b64 <memset+0x9c>
    8b20:	e2425010 	sub	r5, r2, #16
    8b24:	e1a05225 	lsr	r5, r5, #4
    8b28:	e2834020 	add	r4, r3, #32
    8b2c:	e0844205 	add	r4, r4, r5, lsl #4
    8b30:	e283c010 	add	ip, r3, #16
    8b34:	e50ce010 	str	lr, [ip, #-16]
    8b38:	e50ce00c 	str	lr, [ip, #-12]
    8b3c:	e50ce008 	str	lr, [ip, #-8]
    8b40:	e50ce004 	str	lr, [ip, #-4]
    8b44:	e28cc010 	add	ip, ip, #16
    8b48:	e15c0004 	cmp	ip, r4
    8b4c:	1afffff8 	bne	8b34 <memset+0x6c>
    8b50:	e202200f 	and	r2, r2, #15
    8b54:	e2855001 	add	r5, r5, #1
    8b58:	e3520003 	cmp	r2, #3
    8b5c:	e0833205 	add	r3, r3, r5, lsl #4
    8b60:	9a00000a 	bls	8b90 <memset+0xc8>
    8b64:	e1a04003 	mov	r4, r3
    8b68:	e1a0c002 	mov	ip, r2
    8b6c:	e24cc004 	sub	ip, ip, #4
    8b70:	e35c0003 	cmp	ip, #3
    8b74:	e484e004 	str	lr, [r4], #4
    8b78:	8afffffb 	bhi	8b6c <memset+0xa4>
    8b7c:	e242c004 	sub	ip, r2, #4
    8b80:	e3ccc003 	bic	ip, ip, #3
    8b84:	e28cc004 	add	ip, ip, #4
    8b88:	e083300c 	add	r3, r3, ip
    8b8c:	e2022003 	and	r2, r2, #3
    8b90:	e3520000 	cmp	r2, #0
    8b94:	120110ff 	andne	r1, r1, #255	; 0xff
    8b98:	10832002 	addne	r2, r3, r2
    8b9c:	0a000002 	beq	8bac <memset+0xe4>
    8ba0:	e4c31001 	strb	r1, [r3], #1
    8ba4:	e1520003 	cmp	r2, r3
    8ba8:	1afffffc 	bne	8ba0 <memset+0xd8>
    8bac:	e8bd4030 	pop	{r4, r5, lr}
    8bb0:	e12fff1e 	bx	lr
    8bb4:	e3520000 	cmp	r2, #0
    8bb8:	012fff1e 	bxeq	lr
    8bbc:	e20110ff 	and	r1, r1, #255	; 0xff
    8bc0:	e0832002 	add	r2, r3, r2
    8bc4:	e4c31001 	strb	r1, [r3], #1
    8bc8:	e1520003 	cmp	r2, r3
    8bcc:	1afffffc 	bne	8bc4 <memset+0xfc>
    8bd0:	e12fff1e 	bx	lr
    8bd4:	e1a03000 	mov	r3, r0
    8bd8:	eaffffc8 	b	8b00 <memset+0x38>

00008bdc <__call_exitprocs>:
    8bdc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8be0:	e59f3170 	ldr	r3, [pc, #368]	; 8d58 <__call_exitprocs+0x17c>
    8be4:	e24dd014 	sub	sp, sp, #20
    8be8:	e58d000c 	str	r0, [sp, #12]
    8bec:	e5930000 	ldr	r0, [r3]
    8bf0:	e1a07001 	mov	r7, r1
    8bf4:	eb000079 	bl	8de0 <__retarget_lock_acquire_recursive>
    8bf8:	e59f315c 	ldr	r3, [pc, #348]	; 8d5c <__call_exitprocs+0x180>
    8bfc:	e5933000 	ldr	r3, [r3]
    8c00:	e58d3004 	str	r3, [sp, #4]
    8c04:	e2833f52 	add	r3, r3, #328	; 0x148
    8c08:	e58d3008 	str	r3, [sp, #8]
    8c0c:	e59d3004 	ldr	r3, [sp, #4]
    8c10:	e5936148 	ldr	r6, [r3, #328]	; 0x148
    8c14:	e3560000 	cmp	r6, #0
    8c18:	0a000039 	beq	8d04 <__call_exitprocs+0x128>
    8c1c:	e3a08001 	mov	r8, #1
    8c20:	e59da008 	ldr	sl, [sp, #8]
    8c24:	e5964004 	ldr	r4, [r6, #4]
    8c28:	e2545001 	subs	r5, r4, #1
    8c2c:	4a000025 	bmi	8cc8 <__call_exitprocs+0xec>
    8c30:	e2844001 	add	r4, r4, #1
    8c34:	e3a09000 	mov	r9, #0
    8c38:	e0864104 	add	r4, r6, r4, lsl #2
    8c3c:	ea000003 	b	8c50 <__call_exitprocs+0x74>
    8c40:	e2455001 	sub	r5, r5, #1
    8c44:	e3750001 	cmn	r5, #1
    8c48:	e2444004 	sub	r4, r4, #4
    8c4c:	0a00001d 	beq	8cc8 <__call_exitprocs+0xec>
    8c50:	e3570000 	cmp	r7, #0
    8c54:	0a000002 	beq	8c64 <__call_exitprocs+0x88>
    8c58:	e5943100 	ldr	r3, [r4, #256]	; 0x100
    8c5c:	e1530007 	cmp	r3, r7
    8c60:	1afffff6 	bne	8c40 <__call_exitprocs+0x64>
    8c64:	e5963004 	ldr	r3, [r6, #4]
    8c68:	e2433001 	sub	r3, r3, #1
    8c6c:	e1530005 	cmp	r3, r5
    8c70:	e5943000 	ldr	r3, [r4]
    8c74:	05865004 	streq	r5, [r6, #4]
    8c78:	15849000 	strne	r9, [r4]
    8c7c:	e3530000 	cmp	r3, #0
    8c80:	0affffee 	beq	8c40 <__call_exitprocs+0x64>
    8c84:	e5961188 	ldr	r1, [r6, #392]	; 0x188
    8c88:	e1a02518 	lsl	r2, r8, r5
    8c8c:	e1120001 	tst	r2, r1
    8c90:	e596b004 	ldr	fp, [r6, #4]
    8c94:	1a000020 	bne	8d1c <__call_exitprocs+0x140>
    8c98:	e1a0e00f 	mov	lr, pc
    8c9c:	e12fff13 	bx	r3
    8ca0:	e5963004 	ldr	r3, [r6, #4]
    8ca4:	e153000b 	cmp	r3, fp
    8ca8:	1affffd7 	bne	8c0c <__call_exitprocs+0x30>
    8cac:	e59a3000 	ldr	r3, [sl]
    8cb0:	e1530006 	cmp	r3, r6
    8cb4:	1affffd4 	bne	8c0c <__call_exitprocs+0x30>
    8cb8:	e2455001 	sub	r5, r5, #1
    8cbc:	e3750001 	cmn	r5, #1
    8cc0:	e2444004 	sub	r4, r4, #4
    8cc4:	1affffe1 	bne	8c50 <__call_exitprocs+0x74>
    8cc8:	e59f3090 	ldr	r3, [pc, #144]	; 8d60 <__call_exitprocs+0x184>
    8ccc:	e3530000 	cmp	r3, #0
    8cd0:	0a00000b 	beq	8d04 <__call_exitprocs+0x128>
    8cd4:	e5963004 	ldr	r3, [r6, #4]
    8cd8:	e3530000 	cmp	r3, #0
    8cdc:	e5963000 	ldr	r3, [r6]
    8ce0:	1a000015 	bne	8d3c <__call_exitprocs+0x160>
    8ce4:	e3530000 	cmp	r3, #0
    8ce8:	0a000013 	beq	8d3c <__call_exitprocs+0x160>
    8cec:	e1a00006 	mov	r0, r6
    8cf0:	e58a3000 	str	r3, [sl]
    8cf4:	e1a00000 	nop			; (mov r0, r0)
    8cf8:	e59a6000 	ldr	r6, [sl]
    8cfc:	e3560000 	cmp	r6, #0
    8d00:	1affffc7 	bne	8c24 <__call_exitprocs+0x48>
    8d04:	e59f304c 	ldr	r3, [pc, #76]	; 8d58 <__call_exitprocs+0x17c>
    8d08:	e5930000 	ldr	r0, [r3]
    8d0c:	eb000039 	bl	8df8 <__retarget_lock_release_recursive>
    8d10:	e28dd014 	add	sp, sp, #20
    8d14:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8d18:	e12fff1e 	bx	lr
    8d1c:	e596118c 	ldr	r1, [r6, #396]	; 0x18c
    8d20:	e1120001 	tst	r2, r1
    8d24:	e5941080 	ldr	r1, [r4, #128]	; 0x80
    8d28:	1a000006 	bne	8d48 <__call_exitprocs+0x16c>
    8d2c:	e59d000c 	ldr	r0, [sp, #12]
    8d30:	e1a0e00f 	mov	lr, pc
    8d34:	e12fff13 	bx	r3
    8d38:	eaffffd8 	b	8ca0 <__call_exitprocs+0xc4>
    8d3c:	e1a0a006 	mov	sl, r6
    8d40:	e1a06003 	mov	r6, r3
    8d44:	eaffffec 	b	8cfc <__call_exitprocs+0x120>
    8d48:	e1a00001 	mov	r0, r1
    8d4c:	e1a0e00f 	mov	lr, pc
    8d50:	e12fff13 	bx	r3
    8d54:	eaffffd1 	b	8ca0 <__call_exitprocs+0xc4>
    8d58:	00019398 	.word	0x00019398
    8d5c:	00008f48 	.word	0x00008f48
    8d60:	00000000 	.word	0x00000000

00008d64 <atexit>:
    8d64:	e3a03000 	mov	r3, #0
    8d68:	e92d4010 	push	{r4, lr}
    8d6c:	e1a01000 	mov	r1, r0
    8d70:	e1a02003 	mov	r2, r3
    8d74:	e1a00003 	mov	r0, r3
    8d78:	eb00001f 	bl	8dfc <__register_exitproc>
    8d7c:	e8bd4010 	pop	{r4, lr}
    8d80:	e12fff1e 	bx	lr

00008d84 <__libc_fini_array>:
    8d84:	e92d4070 	push	{r4, r5, r6, lr}
    8d88:	e59f4034 	ldr	r4, [pc, #52]	; 8dc4 <__libc_fini_array+0x40>
    8d8c:	e59f5034 	ldr	r5, [pc, #52]	; 8dc8 <__libc_fini_array+0x44>
    8d90:	e0444005 	sub	r4, r4, r5
    8d94:	e1b04144 	asrs	r4, r4, #2
    8d98:	0a000006 	beq	8db8 <__libc_fini_array+0x34>
    8d9c:	e0855104 	add	r5, r5, r4, lsl #2
    8da0:	e2444001 	sub	r4, r4, #1
    8da4:	e5353004 	ldr	r3, [r5, #-4]!
    8da8:	e1a0e00f 	mov	lr, pc
    8dac:	e12fff13 	bx	r3
    8db0:	e3540000 	cmp	r4, #0
    8db4:	1afffff9 	bne	8da0 <__libc_fini_array+0x1c>
    8db8:	eb000050 	bl	8f00 <_fini>
    8dbc:	e8bd4070 	pop	{r4, r5, r6, lr}
    8dc0:	e12fff1e 	bx	lr
    8dc4:	00018f64 	.word	0x00018f64
    8dc8:	00018f60 	.word	0x00018f60

00008dcc <__retarget_lock_init>:
    8dcc:	e12fff1e 	bx	lr

00008dd0 <__retarget_lock_init_recursive>:
    8dd0:	e12fff1e 	bx	lr

00008dd4 <__retarget_lock_close>:
    8dd4:	e12fff1e 	bx	lr

00008dd8 <__retarget_lock_close_recursive>:
    8dd8:	e12fff1e 	bx	lr

00008ddc <__retarget_lock_acquire>:
    8ddc:	e12fff1e 	bx	lr

00008de0 <__retarget_lock_acquire_recursive>:
    8de0:	e12fff1e 	bx	lr

00008de4 <__retarget_lock_try_acquire>:
    8de4:	e3a00001 	mov	r0, #1
    8de8:	e12fff1e 	bx	lr

00008dec <__retarget_lock_try_acquire_recursive>:
    8dec:	e3a00001 	mov	r0, #1
    8df0:	e12fff1e 	bx	lr

00008df4 <__retarget_lock_release>:
    8df4:	e12fff1e 	bx	lr

00008df8 <__retarget_lock_release_recursive>:
    8df8:	e12fff1e 	bx	lr

00008dfc <__register_exitproc>:
    8dfc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    8e00:	e59f50e8 	ldr	r5, [pc, #232]	; 8ef0 <__register_exitproc+0xf4>
    8e04:	e1a06000 	mov	r6, r0
    8e08:	e5950000 	ldr	r0, [r5]
    8e0c:	e1a09002 	mov	r9, r2
    8e10:	e1a08003 	mov	r8, r3
    8e14:	e1a07001 	mov	r7, r1
    8e18:	ebfffff0 	bl	8de0 <__retarget_lock_acquire_recursive>
    8e1c:	e59f30d0 	ldr	r3, [pc, #208]	; 8ef4 <__register_exitproc+0xf8>
    8e20:	e5934000 	ldr	r4, [r3]
    8e24:	e5943148 	ldr	r3, [r4, #328]	; 0x148
    8e28:	e3530000 	cmp	r3, #0
    8e2c:	02843f53 	addeq	r3, r4, #332	; 0x14c
    8e30:	e5932004 	ldr	r2, [r3, #4]
    8e34:	05843148 	streq	r3, [r4, #328]	; 0x148
    8e38:	e352001f 	cmp	r2, #31
    8e3c:	d2820001 	addle	r0, r2, #1
    8e40:	da00000f 	ble	8e84 <__register_exitproc+0x88>
    8e44:	e59f30ac 	ldr	r3, [pc, #172]	; 8ef8 <__register_exitproc+0xfc>
    8e48:	e3530000 	cmp	r3, #0
    8e4c:	0a000023 	beq	8ee0 <__register_exitproc+0xe4>
    8e50:	e3a00e19 	mov	r0, #400	; 0x190
    8e54:	e1a00000 	nop			; (mov r0, r0)
    8e58:	e2503000 	subs	r3, r0, #0
    8e5c:	0a00001f 	beq	8ee0 <__register_exitproc+0xe4>
    8e60:	e3a01000 	mov	r1, #0
    8e64:	e3a00001 	mov	r0, #1
    8e68:	e1a02001 	mov	r2, r1
    8e6c:	e594c148 	ldr	ip, [r4, #328]	; 0x148
    8e70:	e5831004 	str	r1, [r3, #4]
    8e74:	e583c000 	str	ip, [r3]
    8e78:	e5843148 	str	r3, [r4, #328]	; 0x148
    8e7c:	e5831188 	str	r1, [r3, #392]	; 0x188
    8e80:	e583118c 	str	r1, [r3, #396]	; 0x18c
    8e84:	e3560000 	cmp	r6, #0
    8e88:	1a000007 	bne	8eac <__register_exitproc+0xb0>
    8e8c:	e2822002 	add	r2, r2, #2
    8e90:	e5830004 	str	r0, [r3, #4]
    8e94:	e5950000 	ldr	r0, [r5]
    8e98:	e7837102 	str	r7, [r3, r2, lsl #2]
    8e9c:	ebffffd5 	bl	8df8 <__retarget_lock_release_recursive>
    8ea0:	e3a00000 	mov	r0, #0
    8ea4:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    8ea8:	e12fff1e 	bx	lr
    8eac:	e3a01001 	mov	r1, #1
    8eb0:	e083e102 	add	lr, r3, r2, lsl #2
    8eb4:	e58e9088 	str	r9, [lr, #136]	; 0x88
    8eb8:	e593c188 	ldr	ip, [r3, #392]	; 0x188
    8ebc:	e1a01211 	lsl	r1, r1, r2
    8ec0:	e18cc001 	orr	ip, ip, r1
    8ec4:	e583c188 	str	ip, [r3, #392]	; 0x188
    8ec8:	e58e8108 	str	r8, [lr, #264]	; 0x108
    8ecc:	e3560002 	cmp	r6, #2
    8ed0:	0593c18c 	ldreq	ip, [r3, #396]	; 0x18c
    8ed4:	018c1001 	orreq	r1, ip, r1
    8ed8:	0583118c 	streq	r1, [r3, #396]	; 0x18c
    8edc:	eaffffea 	b	8e8c <__register_exitproc+0x90>
    8ee0:	e5950000 	ldr	r0, [r5]
    8ee4:	ebffffc3 	bl	8df8 <__retarget_lock_release_recursive>
    8ee8:	e3e00000 	mvn	r0, #0
    8eec:	eaffffec 	b	8ea4 <__register_exitproc+0xa8>
    8ef0:	00019398 	.word	0x00019398
    8ef4:	00008f48 	.word	0x00008f48
    8ef8:	00000000 	.word	0x00000000

00008efc <_exit>:
    8efc:	eafffffe 	b	8efc <_exit>

Disassembly of section .fini:

00008f00 <_fini>:
    8f00:	e1a0c00d 	mov	ip, sp
    8f04:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    8f08:	e24cb004 	sub	fp, ip, #4
    8f0c:	e24bd028 	sub	sp, fp, #40	; 0x28
    8f10:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    8f14:	e12fff1e 	bx	lr
