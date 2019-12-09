
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
    8024:	eb0000e9 	bl	83d0 <__call_exitprocs>
    8028:	e59f3018 	ldr	r3, [pc, #24]	; 8048 <exit+0x30>
    802c:	e5930000 	ldr	r0, [r3]
    8030:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    8034:	e3530000 	cmp	r3, #0
    8038:	11a0e00f 	movne	lr, pc
    803c:	112fff13 	bxne	r3
    8040:	e1a00004 	mov	r0, r4
    8044:	eb0001a9 	bl	86f0 <_exit>
    8048:	0000870c 	.word	0x0000870c

0000804c <register_fini>:
    804c:	e59f3018 	ldr	r3, [pc, #24]	; 806c <register_fini+0x20>
    8050:	e3530000 	cmp	r3, #0
    8054:	012fff1e 	bxeq	lr
    8058:	e92d4010 	push	{r4, lr}
    805c:	e59f000c 	ldr	r0, [pc, #12]	; 8070 <register_fini+0x24>
    8060:	eb00013c 	bl	8558 <atexit>
    8064:	e8bd4010 	pop	{r4, lr}
    8068:	e12fff1e 	bx	lr
    806c:	00000000 	.word	0x00000000
    8070:	00008578 	.word	0x00008578

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
    80a8:	00018b5c 	.word	0x00018b5c
    80ac:	00000000 	.word	0x00000000
    80b0:	00008718 	.word	0x00008718

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
    80dc:	00018b60 	.word	0x00018b60
    80e0:	00008718 	.word	0x00008718

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
    8174:	eb000050 	bl	82bc <memset>
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
    81c0:	eb0000e4 	bl	8558 <atexit>
    81c4:	eb00001a 	bl	8234 <__libc_init_array>
    81c8:	e1b00004 	movs	r0, r4
    81cc:	e1b01005 	movs	r1, r5
    81d0:	eb000008 	bl	81f8 <main>
    81d4:	ebffff8f 	bl	8018 <exit>
    81d8:	00080000 	.word	0x00080000
	...
    81e8:	00018b5c 	.word	0x00018b5c
    81ec:	00018b9c 	.word	0x00018b9c
    81f0:	00008558 	.word	0x00008558
    81f4:	00008578 	.word	0x00008578

000081f8 <main>:
#include <stdio.h>

int main(void) {
    81f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    81fc:	e28db000 	add	fp, sp, #0
    8200:	e24dd00c 	sub	sp, sp, #12
  int a = 4;
    8204:	e3a03004 	mov	r3, #4
    8208:	e50b3008 	str	r3, [fp, #-8]
  a = a/2;
    820c:	e51b3008 	ldr	r3, [fp, #-8]
    8210:	e1a02fa3 	lsr	r2, r3, #31
    8214:	e0823003 	add	r3, r2, r3
    8218:	e1a030c3 	asr	r3, r3, #1
    821c:	e50b3008 	str	r3, [fp, #-8]

  return 0;
    8220:	e3a03000 	mov	r3, #0
}
    8224:	e1a00003 	mov	r0, r3
    8228:	e28bd000 	add	sp, fp, #0
    822c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8230:	e12fff1e 	bx	lr

00008234 <__libc_init_array>:
    8234:	e92d4070 	push	{r4, r5, r6, lr}
    8238:	e59f606c 	ldr	r6, [pc, #108]	; 82ac <__libc_init_array+0x78>
    823c:	e59f506c 	ldr	r5, [pc, #108]	; 82b0 <__libc_init_array+0x7c>
    8240:	e0466005 	sub	r6, r6, r5
    8244:	e1b06146 	asrs	r6, r6, #2
    8248:	0a000007 	beq	826c <__libc_init_array+0x38>
    824c:	e3a04000 	mov	r4, #0
    8250:	e2455004 	sub	r5, r5, #4
    8254:	e2844001 	add	r4, r4, #1
    8258:	e5b53004 	ldr	r3, [r5, #4]!
    825c:	e1a0e00f 	mov	lr, pc
    8260:	e12fff13 	bx	r3
    8264:	e1560004 	cmp	r6, r4
    8268:	1afffff9 	bne	8254 <__libc_init_array+0x20>
    826c:	e59f6040 	ldr	r6, [pc, #64]	; 82b4 <__libc_init_array+0x80>
    8270:	e59f5040 	ldr	r5, [pc, #64]	; 82b8 <__libc_init_array+0x84>
    8274:	e0466005 	sub	r6, r6, r5
    8278:	ebffff60 	bl	8000 <_init>
    827c:	e1b06146 	asrs	r6, r6, #2
    8280:	0a000007 	beq	82a4 <__libc_init_array+0x70>
    8284:	e3a04000 	mov	r4, #0
    8288:	e2455004 	sub	r5, r5, #4
    828c:	e2844001 	add	r4, r4, #1
    8290:	e5b53004 	ldr	r3, [r5, #4]!
    8294:	e1a0e00f 	mov	lr, pc
    8298:	e12fff13 	bx	r3
    829c:	e1560004 	cmp	r6, r4
    82a0:	1afffff9 	bne	828c <__libc_init_array+0x58>
    82a4:	e8bd4070 	pop	{r4, r5, r6, lr}
    82a8:	e12fff1e 	bx	lr
    82ac:	0001871c 	.word	0x0001871c
    82b0:	0001871c 	.word	0x0001871c
    82b4:	00018724 	.word	0x00018724
    82b8:	0001871c 	.word	0x0001871c

000082bc <memset>:
    82bc:	e3100003 	tst	r0, #3
    82c0:	0a000040 	beq	83c8 <memset+0x10c>
    82c4:	e3520000 	cmp	r2, #0
    82c8:	e2422001 	sub	r2, r2, #1
    82cc:	012fff1e 	bxeq	lr
    82d0:	e201c0ff 	and	ip, r1, #255	; 0xff
    82d4:	e1a03000 	mov	r3, r0
    82d8:	ea000002 	b	82e8 <memset+0x2c>
    82dc:	e2422001 	sub	r2, r2, #1
    82e0:	e3720001 	cmn	r2, #1
    82e4:	012fff1e 	bxeq	lr
    82e8:	e4c3c001 	strb	ip, [r3], #1
    82ec:	e3130003 	tst	r3, #3
    82f0:	1afffff9 	bne	82dc <memset+0x20>
    82f4:	e3520003 	cmp	r2, #3
    82f8:	9a00002a 	bls	83a8 <memset+0xec>
    82fc:	e92d4030 	push	{r4, r5, lr}
    8300:	e201e0ff 	and	lr, r1, #255	; 0xff
    8304:	e18ee40e 	orr	lr, lr, lr, lsl #8
    8308:	e352000f 	cmp	r2, #15
    830c:	e18ee80e 	orr	lr, lr, lr, lsl #16
    8310:	9a000010 	bls	8358 <memset+0x9c>
    8314:	e2425010 	sub	r5, r2, #16
    8318:	e1a05225 	lsr	r5, r5, #4
    831c:	e2834020 	add	r4, r3, #32
    8320:	e0844205 	add	r4, r4, r5, lsl #4
    8324:	e283c010 	add	ip, r3, #16
    8328:	e50ce010 	str	lr, [ip, #-16]
    832c:	e50ce00c 	str	lr, [ip, #-12]
    8330:	e50ce008 	str	lr, [ip, #-8]
    8334:	e50ce004 	str	lr, [ip, #-4]
    8338:	e28cc010 	add	ip, ip, #16
    833c:	e15c0004 	cmp	ip, r4
    8340:	1afffff8 	bne	8328 <memset+0x6c>
    8344:	e202200f 	and	r2, r2, #15
    8348:	e2855001 	add	r5, r5, #1
    834c:	e3520003 	cmp	r2, #3
    8350:	e0833205 	add	r3, r3, r5, lsl #4
    8354:	9a00000a 	bls	8384 <memset+0xc8>
    8358:	e1a04003 	mov	r4, r3
    835c:	e1a0c002 	mov	ip, r2
    8360:	e24cc004 	sub	ip, ip, #4
    8364:	e35c0003 	cmp	ip, #3
    8368:	e484e004 	str	lr, [r4], #4
    836c:	8afffffb 	bhi	8360 <memset+0xa4>
    8370:	e242c004 	sub	ip, r2, #4
    8374:	e3ccc003 	bic	ip, ip, #3
    8378:	e28cc004 	add	ip, ip, #4
    837c:	e083300c 	add	r3, r3, ip
    8380:	e2022003 	and	r2, r2, #3
    8384:	e3520000 	cmp	r2, #0
    8388:	120110ff 	andne	r1, r1, #255	; 0xff
    838c:	10832002 	addne	r2, r3, r2
    8390:	0a000002 	beq	83a0 <memset+0xe4>
    8394:	e4c31001 	strb	r1, [r3], #1
    8398:	e1520003 	cmp	r2, r3
    839c:	1afffffc 	bne	8394 <memset+0xd8>
    83a0:	e8bd4030 	pop	{r4, r5, lr}
    83a4:	e12fff1e 	bx	lr
    83a8:	e3520000 	cmp	r2, #0
    83ac:	012fff1e 	bxeq	lr
    83b0:	e20110ff 	and	r1, r1, #255	; 0xff
    83b4:	e0832002 	add	r2, r3, r2
    83b8:	e4c31001 	strb	r1, [r3], #1
    83bc:	e1520003 	cmp	r2, r3
    83c0:	1afffffc 	bne	83b8 <memset+0xfc>
    83c4:	e12fff1e 	bx	lr
    83c8:	e1a03000 	mov	r3, r0
    83cc:	eaffffc8 	b	82f4 <memset+0x38>

000083d0 <__call_exitprocs>:
    83d0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    83d4:	e59f3170 	ldr	r3, [pc, #368]	; 854c <__call_exitprocs+0x17c>
    83d8:	e24dd014 	sub	sp, sp, #20
    83dc:	e58d000c 	str	r0, [sp, #12]
    83e0:	e5930000 	ldr	r0, [r3]
    83e4:	e1a07001 	mov	r7, r1
    83e8:	eb000079 	bl	85d4 <__retarget_lock_acquire_recursive>
    83ec:	e59f315c 	ldr	r3, [pc, #348]	; 8550 <__call_exitprocs+0x180>
    83f0:	e5933000 	ldr	r3, [r3]
    83f4:	e58d3004 	str	r3, [sp, #4]
    83f8:	e2833f52 	add	r3, r3, #328	; 0x148
    83fc:	e58d3008 	str	r3, [sp, #8]
    8400:	e59d3004 	ldr	r3, [sp, #4]
    8404:	e5936148 	ldr	r6, [r3, #328]	; 0x148
    8408:	e3560000 	cmp	r6, #0
    840c:	0a000039 	beq	84f8 <__call_exitprocs+0x128>
    8410:	e3a08001 	mov	r8, #1
    8414:	e59da008 	ldr	sl, [sp, #8]
    8418:	e5964004 	ldr	r4, [r6, #4]
    841c:	e2545001 	subs	r5, r4, #1
    8420:	4a000025 	bmi	84bc <__call_exitprocs+0xec>
    8424:	e2844001 	add	r4, r4, #1
    8428:	e3a09000 	mov	r9, #0
    842c:	e0864104 	add	r4, r6, r4, lsl #2
    8430:	ea000003 	b	8444 <__call_exitprocs+0x74>
    8434:	e2455001 	sub	r5, r5, #1
    8438:	e3750001 	cmn	r5, #1
    843c:	e2444004 	sub	r4, r4, #4
    8440:	0a00001d 	beq	84bc <__call_exitprocs+0xec>
    8444:	e3570000 	cmp	r7, #0
    8448:	0a000002 	beq	8458 <__call_exitprocs+0x88>
    844c:	e5943100 	ldr	r3, [r4, #256]	; 0x100
    8450:	e1530007 	cmp	r3, r7
    8454:	1afffff6 	bne	8434 <__call_exitprocs+0x64>
    8458:	e5963004 	ldr	r3, [r6, #4]
    845c:	e2433001 	sub	r3, r3, #1
    8460:	e1530005 	cmp	r3, r5
    8464:	e5943000 	ldr	r3, [r4]
    8468:	05865004 	streq	r5, [r6, #4]
    846c:	15849000 	strne	r9, [r4]
    8470:	e3530000 	cmp	r3, #0
    8474:	0affffee 	beq	8434 <__call_exitprocs+0x64>
    8478:	e5961188 	ldr	r1, [r6, #392]	; 0x188
    847c:	e1a02518 	lsl	r2, r8, r5
    8480:	e1120001 	tst	r2, r1
    8484:	e596b004 	ldr	fp, [r6, #4]
    8488:	1a000020 	bne	8510 <__call_exitprocs+0x140>
    848c:	e1a0e00f 	mov	lr, pc
    8490:	e12fff13 	bx	r3
    8494:	e5963004 	ldr	r3, [r6, #4]
    8498:	e153000b 	cmp	r3, fp
    849c:	1affffd7 	bne	8400 <__call_exitprocs+0x30>
    84a0:	e59a3000 	ldr	r3, [sl]
    84a4:	e1530006 	cmp	r3, r6
    84a8:	1affffd4 	bne	8400 <__call_exitprocs+0x30>
    84ac:	e2455001 	sub	r5, r5, #1
    84b0:	e3750001 	cmn	r5, #1
    84b4:	e2444004 	sub	r4, r4, #4
    84b8:	1affffe1 	bne	8444 <__call_exitprocs+0x74>
    84bc:	e59f3090 	ldr	r3, [pc, #144]	; 8554 <__call_exitprocs+0x184>
    84c0:	e3530000 	cmp	r3, #0
    84c4:	0a00000b 	beq	84f8 <__call_exitprocs+0x128>
    84c8:	e5963004 	ldr	r3, [r6, #4]
    84cc:	e3530000 	cmp	r3, #0
    84d0:	e5963000 	ldr	r3, [r6]
    84d4:	1a000015 	bne	8530 <__call_exitprocs+0x160>
    84d8:	e3530000 	cmp	r3, #0
    84dc:	0a000013 	beq	8530 <__call_exitprocs+0x160>
    84e0:	e1a00006 	mov	r0, r6
    84e4:	e58a3000 	str	r3, [sl]
    84e8:	e1a00000 	nop			; (mov r0, r0)
    84ec:	e59a6000 	ldr	r6, [sl]
    84f0:	e3560000 	cmp	r6, #0
    84f4:	1affffc7 	bne	8418 <__call_exitprocs+0x48>
    84f8:	e59f304c 	ldr	r3, [pc, #76]	; 854c <__call_exitprocs+0x17c>
    84fc:	e5930000 	ldr	r0, [r3]
    8500:	eb000039 	bl	85ec <__retarget_lock_release_recursive>
    8504:	e28dd014 	add	sp, sp, #20
    8508:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    850c:	e12fff1e 	bx	lr
    8510:	e596118c 	ldr	r1, [r6, #396]	; 0x18c
    8514:	e1120001 	tst	r2, r1
    8518:	e5941080 	ldr	r1, [r4, #128]	; 0x80
    851c:	1a000006 	bne	853c <__call_exitprocs+0x16c>
    8520:	e59d000c 	ldr	r0, [sp, #12]
    8524:	e1a0e00f 	mov	lr, pc
    8528:	e12fff13 	bx	r3
    852c:	eaffffd8 	b	8494 <__call_exitprocs+0xc4>
    8530:	e1a0a006 	mov	sl, r6
    8534:	e1a06003 	mov	r6, r3
    8538:	eaffffec 	b	84f0 <__call_exitprocs+0x120>
    853c:	e1a00001 	mov	r0, r1
    8540:	e1a0e00f 	mov	lr, pc
    8544:	e12fff13 	bx	r3
    8548:	eaffffd1 	b	8494 <__call_exitprocs+0xc4>
    854c:	00018b58 	.word	0x00018b58
    8550:	0000870c 	.word	0x0000870c
    8554:	00000000 	.word	0x00000000

00008558 <atexit>:
    8558:	e3a03000 	mov	r3, #0
    855c:	e92d4010 	push	{r4, lr}
    8560:	e1a01000 	mov	r1, r0
    8564:	e1a02003 	mov	r2, r3
    8568:	e1a00003 	mov	r0, r3
    856c:	eb00001f 	bl	85f0 <__register_exitproc>
    8570:	e8bd4010 	pop	{r4, lr}
    8574:	e12fff1e 	bx	lr

00008578 <__libc_fini_array>:
    8578:	e92d4070 	push	{r4, r5, r6, lr}
    857c:	e59f4034 	ldr	r4, [pc, #52]	; 85b8 <__libc_fini_array+0x40>
    8580:	e59f5034 	ldr	r5, [pc, #52]	; 85bc <__libc_fini_array+0x44>
    8584:	e0444005 	sub	r4, r4, r5
    8588:	e1b04144 	asrs	r4, r4, #2
    858c:	0a000006 	beq	85ac <__libc_fini_array+0x34>
    8590:	e0855104 	add	r5, r5, r4, lsl #2
    8594:	e2444001 	sub	r4, r4, #1
    8598:	e5353004 	ldr	r3, [r5, #-4]!
    859c:	e1a0e00f 	mov	lr, pc
    85a0:	e12fff13 	bx	r3
    85a4:	e3540000 	cmp	r4, #0
    85a8:	1afffff9 	bne	8594 <__libc_fini_array+0x1c>
    85ac:	eb000050 	bl	86f4 <_fini>
    85b0:	e8bd4070 	pop	{r4, r5, r6, lr}
    85b4:	e12fff1e 	bx	lr
    85b8:	00018728 	.word	0x00018728
    85bc:	00018724 	.word	0x00018724

000085c0 <__retarget_lock_init>:
    85c0:	e12fff1e 	bx	lr

000085c4 <__retarget_lock_init_recursive>:
    85c4:	e12fff1e 	bx	lr

000085c8 <__retarget_lock_close>:
    85c8:	e12fff1e 	bx	lr

000085cc <__retarget_lock_close_recursive>:
    85cc:	e12fff1e 	bx	lr

000085d0 <__retarget_lock_acquire>:
    85d0:	e12fff1e 	bx	lr

000085d4 <__retarget_lock_acquire_recursive>:
    85d4:	e12fff1e 	bx	lr

000085d8 <__retarget_lock_try_acquire>:
    85d8:	e3a00001 	mov	r0, #1
    85dc:	e12fff1e 	bx	lr

000085e0 <__retarget_lock_try_acquire_recursive>:
    85e0:	e3a00001 	mov	r0, #1
    85e4:	e12fff1e 	bx	lr

000085e8 <__retarget_lock_release>:
    85e8:	e12fff1e 	bx	lr

000085ec <__retarget_lock_release_recursive>:
    85ec:	e12fff1e 	bx	lr

000085f0 <__register_exitproc>:
    85f0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    85f4:	e59f50e8 	ldr	r5, [pc, #232]	; 86e4 <__register_exitproc+0xf4>
    85f8:	e1a06000 	mov	r6, r0
    85fc:	e5950000 	ldr	r0, [r5]
    8600:	e1a09002 	mov	r9, r2
    8604:	e1a08003 	mov	r8, r3
    8608:	e1a07001 	mov	r7, r1
    860c:	ebfffff0 	bl	85d4 <__retarget_lock_acquire_recursive>
    8610:	e59f30d0 	ldr	r3, [pc, #208]	; 86e8 <__register_exitproc+0xf8>
    8614:	e5934000 	ldr	r4, [r3]
    8618:	e5943148 	ldr	r3, [r4, #328]	; 0x148
    861c:	e3530000 	cmp	r3, #0
    8620:	02843f53 	addeq	r3, r4, #332	; 0x14c
    8624:	e5932004 	ldr	r2, [r3, #4]
    8628:	05843148 	streq	r3, [r4, #328]	; 0x148
    862c:	e352001f 	cmp	r2, #31
    8630:	d2820001 	addle	r0, r2, #1
    8634:	da00000f 	ble	8678 <__register_exitproc+0x88>
    8638:	e59f30ac 	ldr	r3, [pc, #172]	; 86ec <__register_exitproc+0xfc>
    863c:	e3530000 	cmp	r3, #0
    8640:	0a000023 	beq	86d4 <__register_exitproc+0xe4>
    8644:	e3a00e19 	mov	r0, #400	; 0x190
    8648:	e1a00000 	nop			; (mov r0, r0)
    864c:	e2503000 	subs	r3, r0, #0
    8650:	0a00001f 	beq	86d4 <__register_exitproc+0xe4>
    8654:	e3a01000 	mov	r1, #0
    8658:	e3a00001 	mov	r0, #1
    865c:	e1a02001 	mov	r2, r1
    8660:	e594c148 	ldr	ip, [r4, #328]	; 0x148
    8664:	e5831004 	str	r1, [r3, #4]
    8668:	e583c000 	str	ip, [r3]
    866c:	e5843148 	str	r3, [r4, #328]	; 0x148
    8670:	e5831188 	str	r1, [r3, #392]	; 0x188
    8674:	e583118c 	str	r1, [r3, #396]	; 0x18c
    8678:	e3560000 	cmp	r6, #0
    867c:	1a000007 	bne	86a0 <__register_exitproc+0xb0>
    8680:	e2822002 	add	r2, r2, #2
    8684:	e5830004 	str	r0, [r3, #4]
    8688:	e5950000 	ldr	r0, [r5]
    868c:	e7837102 	str	r7, [r3, r2, lsl #2]
    8690:	ebffffd5 	bl	85ec <__retarget_lock_release_recursive>
    8694:	e3a00000 	mov	r0, #0
    8698:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    869c:	e12fff1e 	bx	lr
    86a0:	e3a01001 	mov	r1, #1
    86a4:	e083e102 	add	lr, r3, r2, lsl #2
    86a8:	e58e9088 	str	r9, [lr, #136]	; 0x88
    86ac:	e593c188 	ldr	ip, [r3, #392]	; 0x188
    86b0:	e1a01211 	lsl	r1, r1, r2
    86b4:	e18cc001 	orr	ip, ip, r1
    86b8:	e583c188 	str	ip, [r3, #392]	; 0x188
    86bc:	e58e8108 	str	r8, [lr, #264]	; 0x108
    86c0:	e3560002 	cmp	r6, #2
    86c4:	0593c18c 	ldreq	ip, [r3, #396]	; 0x18c
    86c8:	018c1001 	orreq	r1, ip, r1
    86cc:	0583118c 	streq	r1, [r3, #396]	; 0x18c
    86d0:	eaffffea 	b	8680 <__register_exitproc+0x90>
    86d4:	e5950000 	ldr	r0, [r5]
    86d8:	ebffffc3 	bl	85ec <__retarget_lock_release_recursive>
    86dc:	e3e00000 	mvn	r0, #0
    86e0:	eaffffec 	b	8698 <__register_exitproc+0xa8>
    86e4:	00018b58 	.word	0x00018b58
    86e8:	0000870c 	.word	0x0000870c
    86ec:	00000000 	.word	0x00000000

000086f0 <_exit>:
    86f0:	eafffffe 	b	86f0 <_exit>

Disassembly of section .fini:

000086f4 <_fini>:
    86f4:	e1a0c00d 	mov	ip, sp
    86f8:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    86fc:	e24cb004 	sub	fp, ip, #4
    8700:	e24bd028 	sub	sp, fp, #40	; 0x28
    8704:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    8708:	e12fff1e 	bx	lr
