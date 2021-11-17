	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L5
	ldr	r3, .L13
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #4
	ldr	r1, [r3]
	add	r3, r0, r2
	mov	r0, #0
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L7:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L10
.L8:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L8
.L10:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L7
.L5:
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLine, %function
drawLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r2, #0
	bxle	lr
	ldr	r2, .L19
	rsb	r1, r1, r1, lsl #4
	ldr	r2, [r2]
	add	r0, r0, r1, lsl #4
	add	r1, r0, ip
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L17:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L17
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	drawLine, .-drawLine
	.align	2
	.global	drawVLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVLine, %function
drawVLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r2, #0
	bxle	lr
	ldr	r2, .L29
	add	ip, r1, ip
	ldr	r2, [r2]
	str	lr, [sp, #-4]!
	rsb	ip, ip, ip, lsl #4
	rsb	lr, r1, r1, lsl #4
	add	r1, r0, ip, lsl #4
	add	r0, r0, lr, lsl #4
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L23:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L23
	ldr	lr, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.size	drawVLine, .-drawVLine
	.align	2
	.global	drawLeftDiagLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLeftDiagLine, %function
drawLeftDiagLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bxle	lr
	ldr	ip, .L35
	rsb	r1, r1, r1, lsl #4
	ldr	ip, [ip]
	add	r1, r0, r1, lsl #4
	rsb	r0, r2, r2, lsl #4
	add	r1, ip, r1, lsl #1
	rsb	r2, r2, r0, lsl #4
	sub	r2, r1, r2, lsl #1
.L33:
	strh	r3, [r1]	@ movhi
	sub	r1, r1, #476
	sub	r1, r1, #2
	cmp	r1, r2
	bxeq	lr
	b	.L33
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.size	drawLeftDiagLine, .-drawLeftDiagLine
	.align	2
	.global	drawRightDiagLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRightDiagLine, %function
drawRightDiagLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bxle	lr
	ldr	ip, .L41
	rsb	r1, r1, r1, lsl #4
	ldr	ip, [ip]
	add	r1, r0, r1, lsl #4
	rsb	r0, r2, r2, lsl #4
	add	r1, ip, r1, lsl #1
	add	r2, r2, r0, lsl #4
	sub	r2, r1, r2, lsl #1
.L39:
	strh	r3, [r1]	@ movhi
	sub	r1, r1, #480
	sub	r1, r1, #2
	cmp	r1, r2
	bxeq	lr
	b	.L39
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.size	drawRightDiagLine, .-drawRightDiagLine
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	ldr	r3, [r3]
	add	r2, r3, #76800
.L44:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L44
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L50:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L50
	mov	r2, #67108864
.L51:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L51
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [sp, #4]
	add	r3, r1, r3
	cmp	r3, ip
	blt	.L59
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	blt	.L59
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	blt	.L59
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	movlt	r0, #0
	movge	r0, #1
	bx	lr
.L59:
	mov	r0, #0
	bx	lr
	.size	collision, .-collision
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
