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
	.file	"game.c"
	.text
	.align	2
	.global	initAlien
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAlien, %function
initAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #140
	mov	r4, #1
	mov	lr, #18
	mov	r2, #118
	mov	ip, #15
	mov	r0, #20
	ldr	r3, .L4
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	alien
	.size	initAlien, .-initAlien
	.align	2
	.global	drawAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAlien, %function
drawAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r3, #15
	mov	r5, #0
	ldr	r4, .L8
	sub	sp, sp, #12
	ldr	r6, .L8+4
	mov	r2, r3
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	str	r5, [sp]
	mov	lr, pc
	bx	r6
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r7, .L8+8
	mov	r3, r5
	mov	r2, #3
	sub	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r3, r5
	mov	r2, #3
	sub	r1, r1, #3
	add	r0, r0, #10
	mov	lr, pc
	bx	r7
	mov	r3, #3
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r2, r3
	str	r5, [sp]
	sub	r1, r1, #6
	add	r0, r0, #2
	mov	lr, pc
	bx	r6
	mov	r3, #3
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r2, r3
	str	r5, [sp]
	sub	r1, r1, #6
	add	r0, r0, #8
	mov	lr, pc
	bx	r6
	mov	r3, #4
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r2, r3
	str	r5, [sp]
	add	r1, r1, #3
	add	r0, r0, #2
	mov	lr, pc
	bx	r6
	mov	r3, #4
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r2, r3
	str	r5, [sp]
	add	r1, r1, #3
	add	r0, r0, #10
	mov	lr, pc
	bx	r6
	mov	r3, #3
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r2, r3
	add	r0, r0, r3
	str	r5, [sp]
	add	r1, r1, #4
	mov	lr, pc
	bx	r6
	mov	r3, #3
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r2, r3
	str	r5, [sp]
	add	r1, r1, #4
	add	r0, r0, #11
	mov	lr, pc
	bx	r6
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r3, r5
	ldr	r9, .L8+12
	mov	r2, #8
	add	r1, r1, #11
	add	r0, r0, #4
	mov	lr, pc
	bx	r9
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r3, r5
	mov	r2, #2
	add	r1, r1, #9
	add	r0, r0, #4
	mov	lr, pc
	bx	r7
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	r3, r5
	mov	r2, #2
	add	r1, r1, #9
	add	r0, r0, #11
	mov	lr, pc
	bx	r7
	mov	r3, #15
	ldr	r8, .L8+16
	mov	r2, r3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	str	r8, [sp]
	mov	lr, pc
	bx	r6
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r3, r8
	mov	r2, #3
	sub	r1, r1, #3
	add	r0, r0, #3
	mov	lr, pc
	bx	r7
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r3, r8
	mov	r2, #3
	sub	r1, r1, #3
	add	r0, r0, #10
	mov	lr, pc
	bx	r7
	mov	r8, #992
	mov	r3, #3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, r3
	str	r8, [sp]
	sub	r1, r1, #6
	add	r0, r0, #2
	mov	lr, pc
	bx	r6
	mov	r3, #3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, r3
	str	r8, [sp]
	sub	r1, r1, #6
	add	r0, r0, #8
	mov	lr, pc
	bx	r6
	mov	r3, #4
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r8, .L8+20
	mov	r2, r3
	str	r8, [sp]
	add	r1, r1, #3
	add	r0, r0, #2
	mov	lr, pc
	bx	r6
	mov	r3, #4
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, r3
	str	r8, [sp]
	add	r1, r1, #3
	add	r0, r0, #10
	mov	lr, pc
	bx	r6
	mov	r3, #3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, r3
	add	r0, r0, r3
	str	r5, [sp]
	add	r1, r1, #4
	mov	lr, pc
	bx	r6
	mov	r3, #3
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, r3
	str	r5, [sp]
	add	r1, r1, #4
	add	r0, r0, #11
	mov	lr, pc
	bx	r6
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r3, r5
	mov	r2, #8
	add	r1, r1, #11
	add	r0, r0, #4
	mov	lr, pc
	bx	r9
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r3, r5
	mov	r2, #2
	add	r1, r1, #9
	add	r0, r0, #4
	mov	lr, pc
	bx	r7
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r3, r5
	mov	r2, #2
	add	r1, r1, #9
	add	r0, r0, #11
	mov	lr, pc
	bx	r7
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	alien
	.word	drawRect
	.word	drawVLine
	.word	drawLine
	.word	24319
	.word	32767
	.size	drawAlien, .-drawAlien
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #2
	mov	r6, #1
	mvn	r5, #1
	mvn	r4, #2
	mvn	lr, #32768
	ldr	r1, .L14
	ldr	r3, .L14+4
	ldr	ip, [r1]
	ldr	r0, [r1, #4]
	add	r1, r3, #200
.L11:
	str	r7, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3]
	str	r0, [r3, #12]
	str	r4, [r3, #16]
	strh	lr, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	stmib	r3, {r2, ip}
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L11
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	alien
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L27
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L26
.L17:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L17
.L26:
	push	{r4, r5, r6, lr}
	mov	r5, #1
	ldr	r4, .L27+4
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #24]
	ldr	r6, [r4]
	add	ip, r0, r3, lsl #3
	add	lr, r2, r2, lsr #31
	str	r6, [r0, r3, lsl #3]
	ldr	r2, [r4, #4]
	ldr	r3, [ip, #24]
	add	r2, r2, lr, asr r5
	add	r3, r3, r3, lsr #31
	add	r3, r2, r3, asr r5
	str	r5, [ip, #32]
	str	r1, [ip, #36]
	str	r3, [ip, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	bullets
	.word	alien
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	ldr	r3, [r0]
	subne	r3, r3, #1
	strne	r3, [r0]
	cmp	r3, #0
	movle	r3, #0
	strle	r3, [r0, #32]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L39
	ldr	r3, [r0, #36]
	cmp	r3, #0
	beq	.L40
.L37:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L40:
	str	r3, [sp]
	ldr	r5, .L41
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L37
.L39:
	mov	r2, #0
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r5, .L41
	ldr	r2, [r0, #24]
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L37
.L42:
	.align	2
.L41:
	.word	drawRect
	.size	drawBullet, .-drawBullet
	.align	2
	.global	drawStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStars, %function
drawStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #12
	bne	.L47
	ldr	r2, [r0, #36]
	cmp	r2, #0
	beq	.L48
.L45:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L48:
	mov	r3, #8
	str	r2, [sp]
	ldr	r5, .L49
	mov	r2, r3
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L45
.L47:
	mov	r2, #0
	mov	r3, #8
	str	r2, [sp]
	ldr	r5, .L49
	mov	r2, r3
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	mov	lr, pc
	bx	r5
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, #8
	ldr	r3, .L49+4
	ldr	r5, .L49+8
	add	r1, r1, #4
	mov	lr, pc
	bx	r5
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	mov	r2, #8
	ldr	r3, .L49+4
	ldr	r5, .L49+12
	add	r0, r0, #4
	mov	lr, pc
	bx	r5
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, #8
	ldr	r3, .L49+4
	ldr	r5, .L49+16
	add	r1, r1, #8
	mov	lr, pc
	bx	r5
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	r2, #8
	ldr	r3, .L49+4
	ldr	r5, .L49+20
	add	r1, r1, #8
	add	r0, r0, #7
	mov	lr, pc
	bx	r5
	b	.L45
.L50:
	.align	2
.L49:
	.word	drawRect
	.word	32767
	.word	drawLine
	.word	drawVLine
	.word	drawLeftDiagLine
	.word	drawRightDiagLine
	.size	drawStars, .-drawStars
	.align	2
	.global	updateStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStars, %function
updateStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	ldr	r2, [r0]
	cmp	r3, #0
	addne	r2, r2, #1
	push	{r4, r5, r6, r7, r8, r9, lr}
	strne	r2, [r0]
	cmp	r2, #159
	mov	r5, r0
	movgt	r3, #0
	mov	r9, #0
	ldr	r4, .L68
	strgt	r3, [r0, #32]
	ldr	r1, [r0, #4]
	ldr	ip, [r5, #24]
	ldr	r0, [r0, #28]
	ldr	r7, .L68+4
	ldr	r8, .L68+8
	sub	sp, sp, #20
	add	r6, r4, #200
.L56:
	ldr	r3, [r4, #32]
	cmp	r3, #1
	beq	.L67
.L54:
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L56
	stm	sp, {r1, r2}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	ldr	r4, .L68+12
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L51
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L51
	mov	r0, #20
	ldr	r1, .L68+16
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r0, [r4, #32]
	str	r2, [r1]
	str	r3, [r5, #32]
.L51:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L67:
	stm	sp, {r1, r2}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #32]
	addne	r3, r3, #1
	strne	r9, [r5, #32]
	strne	r3, [r8]
	ldr	r1, [r5, #4]
	ldr	r2, [r5]
	ldr	r0, [r5, #28]
	ldr	ip, [r5, #24]
	b	.L54
.L69:
	.align	2
.L68:
	.word	bullets
	.word	collision
	.word	scoreCounter
	.word	alien
	.word	.LANCHOR0
	.size	updateStars, .-updateStars
	.align	2
	.global	initStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStars, %function
initStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #230
	ldr	r4, .L74
	ldr	r5, .L74+4
	ldr	r8, .L74+8
	ldr	r7, .L74+12
	add	r6, r4, #200
.L71:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	rsb	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	smull	r3, ip, r7, r0
	mov	r2, #1
	mov	r1, #8
	mov	lr, #0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	mul	r3, r9, r3
	ldr	ip, [r4]
	sub	r3, r0, r3
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r2, [r4, #16]
	str	r2, [r4, #20]
	str	r2, [r4, #32]
	str	r1, [r4, #24]
	str	r1, [r4, #28]
	str	lr, [r4, #36]
	str	ip, [r4, #8]
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L71
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	stars
	.word	rand
	.word	1374389535
	.word	1195121335
	.size	initStars, .-initStars
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #140
	mov	r9, #1
	ldr	r2, .L80
	mov	r7, #118
	str	r8, [r2]
	str	r8, [r2, #8]
	mov	fp, #18
	mov	r10, #15
	mov	r6, r8
	mov	r8, #20
	mov	r4, r9
	mov	lr, #2
	mvn	ip, #1
	mov	r3, #0
	mvn	r0, #2
	mvn	r1, #32768
	str	r7, [r2, #4]
	str	r7, [r2, #12]
	mov	r5, r7
	ldr	r7, .L80+4
	str	fp, [r2, #20]
	str	r10, [r2, #24]
	str	r8, [r2, #28]
	str	r9, [r2, #16]
	add	r2, r7, #200
.L77:
	str	lr, [r7, #20]
	str	r4, [r7, #24]
	str	ip, [r7]
	str	r5, [r7, #12]
	str	r0, [r7, #16]
	strh	r1, [r7, #28]	@ movhi
	str	r3, [r7, #32]
	stmib	r7, {r3, r6}
	add	r7, r7, #40
	cmp	r7, r2
	bne	.L77
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	initStars
.L81:
	.align	2
.L80:
	.word	alien
	.word	bullets
	.size	initGame, .-initGame
	.align	2
	.global	fallingStars
	.syntax unified
	.arm
	.fpu softvfp
	.type	fallingStars, %function
fallingStars:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L88
	ldr	r5, .L88+4
	ldr	r7, .L88+8
	ldr	r6, .L88+12
	add	r9, r4, #200
.L84:
	ldr	r8, [r4, #32]
	cmp	r8, #0
	beq	.L87
.L83:
	add	r4, r4, #40
	cmp	r4, r9
	bne	.L84
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L87:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	rsb	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #230
	smull	r3, ip, r6, r0
	mov	r2, #1
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #6
	mul	r3, r1, r3
	sub	r0, r0, r3
	str	r8, [r4, #36]
	str	r0, [r4, #4]
	str	r2, [r4, #32]
	b	.L83
.L89:
	.align	2
.L88:
	.word	stars
	.word	rand
	.word	1374389535
	.word	1195121335
	.size	fallingStars, .-fallingStars
	.align	2
	.global	updateAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAlien, %function
updateAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L105
	ldr	r3, [r4, #32]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #32]
	ldr	r3, .L105+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L92
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4, #4]
	blt	.L92
.L93:
	ldr	r3, .L105+8
	ldrh	r3, [r3]
	tst	r3, #2
	ldr	r3, [r4, #28]
	beq	.L102
	ldr	r2, .L105+12
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L98
.L102:
	add	r2, r3, #1
.L97:
	ldr	r5, .L105+16
	ldr	r3, [r5]
	tst	r3, #1
	str	r2, [r4, #28]
	beq	.L103
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	ldr	r3, .L105+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L94
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	ldr	r3, [r4, #24]
	rsb	r0, r1, #240
	add	r3, r2, r3
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4, #4]
	ble	.L93
.L94:
	ldr	r3, .L105+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L104
.L95:
	ldr	r3, .L105+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L93
	ldr	r3, [r4]
	cmp	r3, #139
	ldrle	r2, [r4, #16]
	addle	r3, r2, r3
	strle	r3, [r4]
	b	.L93
.L104:
	ldr	r3, [r4]
	cmp	r3, #120
	ble	.L95
	ldr	r2, [r4, #16]
	sub	r3, r3, r2
	str	r3, [r4]
	b	.L93
.L98:
	cmp	r3, #19
	ble	.L102
	bl	fireBullet
	mov	r2, #1
	b	.L97
.L103:
	bl	fallingStars
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	alien
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	timer
	.size	updateAlien, .-updateAlien
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateAlien
	mov	r0, #0
	ldr	r3, .L116
	add	r1, r3, #200
.L110:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	ldr	r2, [r3]
	subne	r2, r2, #1
	strne	r2, [r3]
	cmp	r2, #0
	strle	r0, [r3, #32]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L110
	ldr	r0, .L116+4
	bl	updateStars
	ldr	r0, .L116+8
	bl	updateStars
	ldr	r0, .L116+12
	bl	updateStars
	ldr	r0, .L116+16
	bl	updateStars
	ldr	r0, .L116+20
	pop	{r4, lr}
	b	updateStars
.L117:
	.align	2
.L116:
	.word	bullets
	.word	stars
	.word	stars+40
	.word	stars+80
	.word	stars+120
	.word	stars+160
	.size	updateGame, .-updateGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"score: 0\000"
	.align	2
.LC1:
	.ascii	"score: 1\000"
	.align	2
.LC2:
	.ascii	"score: 2\000"
	.align	2
.LC3:
	.ascii	"score: 3\000"
	.align	2
.LC4:
	.ascii	"score: 4\000"
	.align	2
.LC5:
	.ascii	"score: 5\000"
	.align	2
.LC6:
	.ascii	"score: 6\000"
	.align	2
.LC7:
	.ascii	"score: 7\000"
	.align	2
.LC8:
	.ascii	"score: 8\000"
	.align	2
.LC9:
	.ascii	"score: 9\000"
	.align	2
.LC10:
	.ascii	"score: 10\000"
	.align	2
.LC11:
	.ascii	"lives: 5\000"
	.align	2
.LC12:
	.ascii	"lives: 4\000"
	.align	2
.LC13:
	.ascii	"lives: 3\000"
	.align	2
.LC14:
	.ascii	"lives: 2\000"
	.align	2
.LC15:
	.ascii	"lives: 1\000"
	.align	2
.LC16:
	.ascii	"lives: 0\000"
	.text
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #0
	sub	sp, sp, #8
	mov	r3, #15
	mov	r2, #60
	mov	r1, #145
	mov	r0, #2
	ldr	r5, .L154
	str	r6, [sp]
	ldr	r4, .L154+4
	mov	lr, pc
	bx	r5
	mov	r0, #170
	mov	r3, #15
	mov	r2, #60
	mov	r1, #145
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, r6
	beq	.L137
	cmp	r0, #1
	beq	.L138
.L120:
	cmp	r0, #2
	beq	.L139
.L121:
	cmp	r0, #3
	beq	.L140
.L122:
	cmp	r0, #4
	beq	.L141
.L123:
	cmp	r0, #5
	beq	.L142
.L124:
	cmp	r0, #6
	beq	.L143
.L125:
	cmp	r0, #7
	beq	.L144
.L126:
	cmp	r0, #8
	beq	.L145
.L127:
	cmp	r0, #9
	beq	.L146
.L128:
	cmp	r0, #10
	beq	.L147
.L129:
	ldr	r4, .L154+8
	ldr	r3, [r4]
	cmp	r3, #5
	beq	.L148
.L130:
	cmp	r3, #4
	beq	.L149
.L131:
	cmp	r3, #3
	beq	.L150
.L132:
	cmp	r3, #2
	beq	.L151
.L133:
	cmp	r3, #1
	beq	.L152
.L134:
	cmp	r3, #0
	beq	.L153
.L118:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L137:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+16
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #1
	bne	.L120
.L138:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+24
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #2
	bne	.L121
.L139:
	mov	r1, #145
	ldr	r3, .L154+12
	ldr	r2, .L154+28
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #3
	bne	.L122
.L140:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+32
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #4
	bne	.L123
.L141:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+36
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #5
	bne	.L124
.L142:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+40
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #6
	bne	.L125
.L143:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+44
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #7
	bne	.L126
.L144:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+48
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #8
	bne	.L127
.L145:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+52
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #9
	bne	.L128
.L146:
	mov	r1, #145
	mov	r0, #2
	ldr	r3, .L154+12
	ldr	r2, .L154+56
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	cmp	r0, #10
	bne	.L129
.L147:
	ldr	r3, .L154+12
	ldr	r4, .L154+20
	mov	r1, #145
	mov	r0, #2
	ldr	r2, .L154+60
	mov	lr, pc
	bx	r4
	ldr	r4, .L154+8
	ldr	r3, [r4]
	cmp	r3, #5
	bne	.L130
.L148:
	ldr	r3, .L154+12
	mov	r1, #145
	mov	r0, #170
	ldr	r2, .L154+64
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #4
	bne	.L131
.L149:
	ldr	r3, .L154+12
	mov	r1, #145
	mov	r0, #170
	ldr	r2, .L154+68
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #3
	bne	.L132
.L150:
	ldr	r3, .L154+12
	mov	r1, #145
	mov	r0, #170
	ldr	r2, .L154+72
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #2
	bne	.L133
.L151:
	ldr	r3, .L154+12
	mov	r1, #145
	mov	r0, #170
	ldr	r2, .L154+76
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L134
.L152:
	ldr	r3, .L154+12
	mov	r1, #145
	mov	r0, #170
	ldr	r2, .L154+80
	ldr	r5, .L154+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L118
.L153:
	mov	r1, #145
	ldr	r3, .L154+12
	ldr	r2, .L154+84
	ldr	r4, .L154+20
	mov	r0, #170
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	drawRect
	.word	scoreCounter
	.word	.LANCHOR0
	.word	15855
	.word	.LC0
	.word	drawString
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.size	drawScore, .-drawScore
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L158
	bl	drawScore
	bl	drawAlien
	mov	r0, r5
	bl	drawBullet
	add	r0, r5, #40
	bl	drawBullet
	add	r0, r5, #80
	ldr	r4, .L158+4
	bl	drawBullet
	add	r0, r5, #120
	bl	drawBullet
	add	r0, r5, #160
	bl	drawBullet
	mov	r0, r4
	bl	drawStars
	add	r0, r4, #40
	bl	drawStars
	add	r0, r4, #80
	bl	drawStars
	add	r0, r4, #120
	bl	drawStars
	add	r0, r4, #160
	pop	{r4, r5, r6, lr}
	b	drawStars
.L159:
	.align	2
.L158:
	.word	bullets
	.word	stars
	.size	drawGame, .-drawGame
	.comm	scoreCounter,4,4
	.global	livesLeft
	.comm	timer,4,4
	.comm	stars,200,4
	.comm	bullets,200,4
	.comm	alien,36,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	livesLeft, %object
	.size	livesLeft, 4
livesLeft:
	.word	5
	.ident	"GCC: (devkitARM release 53) 9.1.0"
