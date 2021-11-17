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
	.file	"main.c"
	.text
	.align	2
	.global	start
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L10
	ldr	r3, [r4]
	cmp	r3, #0
	ldreq	r2, .L10+4
	ldreq	r3, [r2]
	addeq	r3, r3, #1
	streq	r3, [r2]
	ldr	r3, .L10+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L1
	ldr	r3, .L10+12
	ldrh	r0, [r3]
	ands	r0, r0, #8
	beq	.L9
.L1:
	pop	{r4, lr}
	bx	lr
.L9:
	ldr	r3, .L10+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L10+4
	ldr	r3, .L10+20
	ldr	r0, [r1]
	str	r2, [r4]
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	state
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	srand
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L14
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L14+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L15:
	.align	2
.L14:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Paused\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L18
	ldr	r3, .L18+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L18+8
	mov	r3, #0
	ldr	r2, .L18+12
	mov	r1, #80
	mov	r0, #102
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L18+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	18367
	.word	fillScreen
	.word	drawString
	.word	.LC0
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"You Win!\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #992
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	ldr	r4, .L22+4
	mov	r3, #0
	ldr	r2, .L22+8
	mov	r1, #80
	mov	r0, #99
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L22+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
	.word	fillScreen
	.word	drawString
	.word	.LC1
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"You Lose!\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #31
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	ldr	r4, .L26+4
	mov	r3, #0
	ldr	r2, .L26+8
	mov	r1, #80
	mov	r0, #96
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L26+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
	.word	fillScreen
	.word	drawString
	.word	.LC2
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L39
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L29
	ldr	r3, .L39+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L36
.L29:
	ldr	r4, .L39+20
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.L37
	ldr	r5, .L39+24
	ldr	r3, [r5]
	cmp	r3, #10
	beq	.L38
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	bl	goToWin
	mov	r2, #3
	mov	r3, #0
	str	r2, [r4]
	str	r3, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	bl	goToLose
	mov	r2, #5
	ldr	r3, .L39+24
	str	r2, [r4]
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	bl	goToPause
	b	.L29
.L40:
	.align	2
.L39:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	livesLeft
	.word	scoreCounter
	.size	game, .-game
	.align	2
	.global	drawStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar, %function
drawStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r6, r1
	ldr	r5, .L43
	mov	r2, #8
	mov	r3, r5
	ldr	r7, .L43+4
	add	r1, r1, #4
	mov	lr, pc
	bx	r7
	mov	r3, r5
	mov	r1, r6
	add	r0, r4, #4
	add	r6, r6, #8
	mov	r2, #8
	ldr	r7, .L43+8
	mov	lr, pc
	bx	r7
	mov	r1, r6
	mov	r0, r4
	mov	r3, r5
	mov	r2, #8
	ldr	r7, .L43+12
	mov	lr, pc
	bx	r7
	mov	r3, r5
	mov	r1, r6
	add	r0, r4, #7
	mov	r2, #8
	ldr	r4, .L43+16
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	32767
	.word	drawLine
	.word	drawVLine
	.word	drawLeftDiagLine
	.word	drawRightDiagLine
	.size	drawStar, .-drawStar
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"SHOOTING STARS\000"
	.align	2
.LC4:
	.ascii	"Press START to play\000"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L47
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r1, #45
	mov	r0, #60
	bl	drawStar
	mov	r1, #45
	mov	r0, #75
	bl	drawStar
	mov	r1, #45
	mov	r0, #90
	bl	drawStar
	mov	r1, #45
	mov	r0, #105
	bl	drawStar
	mov	r1, #45
	mov	r0, #120
	bl	drawStar
	mov	r1, #45
	mov	r0, #135
	bl	drawStar
	ldr	r5, .L47+4
	mov	r1, #45
	mov	r0, #150
	bl	drawStar
	mov	r1, #45
	mov	r0, #165
	bl	drawStar
	ldr	r4, .L47+8
	mov	r3, r5
	mov	r1, #60
	mov	r0, #75
	ldr	r2, .L47+12
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L47+16
	mov	r1, #70
	mov	r0, #60
	mov	lr, pc
	bx	r4
	mov	r1, #85
	mov	r0, #60
	bl	drawStar
	mov	r1, #85
	mov	r0, #75
	bl	drawStar
	mov	r1, #85
	mov	r0, #90
	bl	drawStar
	mov	r1, #85
	mov	r0, #105
	bl	drawStar
	mov	r1, #85
	mov	r0, #120
	bl	drawStar
	mov	r1, #85
	mov	r0, #135
	bl	drawStar
	mov	r1, #85
	mov	r0, #150
	bl	drawStar
	mov	r1, #85
	mov	r0, #165
	bl	drawStar
	mov	r2, #0
	ldr	r3, .L47+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L48:
	.align	2
.L47:
	.word	fillScreen
	.word	24319
	.word	drawString
	.word	.LC3
	.word	.LC4
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L50
	strh	r2, [r3]	@ movhi
	b	goToStart
.L51:
	.align	2
.L50:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause.part.0, %function
pause.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L54
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L55:
	.align	2
.L54:
	.word	buttons
	.size	pause.part.0, .-pause.part.0
	.set	lose.part.0,pause.part.0
	.set	win.part.0,pause.part.0
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L58
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L59:
	.align	2
.L58:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L69
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L62
	ldr	r2, .L69+4
	ldrh	r0, [r2]
	ands	r0, r0, #4
	beq	.L68
.L62:
	tst	r3, #8
	popne	{r4, lr}
	bne	pause.part.0
.L61:
	pop	{r4, lr}
	bx	lr
.L68:
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L69+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L62
.L70:
	.align	2
.L69:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	state
	.size	pause, .-pause
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L85
	ldr	r6, .L85+4
	ldr	r10, .L85+8
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	ldr	r3, .L85+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L85+16
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L85+20
	ldr	r8, .L85+24
	ldr	r7, .L85+28
	ldr	fp, .L85+32
	ldr	r4, .L85+36
.L73:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L81
.L75:
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L74
.L74:
	tst	r0, #8
	beq	.L81
	ldr	r3, .L85+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L73
.L76:
	tst	r0, #8
	beq	.L81
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L73
.L77:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L73
.L78:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L73
.L79:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L73
.L81:
	mov	r0, r3
	b	.L73
.L86:
	.align	2
.L85:
	.word	1027
	.word	state
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
	.size	main, .-main
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
