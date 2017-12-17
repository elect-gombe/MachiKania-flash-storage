	.file	1 "keyinput.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	getcursorchar
	.set	nomips16
	.set	nomicromips
	.ent	getcursorchar
	.type	getcursorchar, @function
getcursorchar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(cursor)($28)
	lbu	$4,%gp_rel(twidth)($28)
	lbu	$3,0($2)
	sb	$3,%gp_rel(blinkchar)($28)
	li	$3,30			# 0x1e
	bnel	$4,$3,.L2
	lbu	$2,1080($2)

	lbu	$2,810($2)
.L2:
	j	$31
	sb	$2,%gp_rel(blinkcolor)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getcursorchar
	.size	getcursorchar, .-getcursorchar
	.align	2
	.globl	resetcursorchar
	.set	nomips16
	.set	nomicromips
	.ent	resetcursorchar
	.type	resetcursorchar, @function
resetcursorchar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(blinkchar)($28)
	lw	$2,%gp_rel(cursor)($28)
	li	$4,30			# 0x1e
	sb	$3,0($2)
	lbu	$5,%gp_rel(twidth)($28)
	lw	$2,%gp_rel(cursor)($28)
	bne	$5,$4,.L6
	lbu	$3,%gp_rel(blinkcolor)($28)

	j	$31
	sb	$3,810($2)

.L6:
	j	$31
	sb	$3,1080($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	resetcursorchar
	.size	resetcursorchar, .-resetcursorchar
	.align	2
	.globl	blinkcursorchar
	.set	nomips16
	.set	nomicromips
	.ent	blinkcursorchar
	.type	blinkcursorchar, @function
blinkcursorchar:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(blinktimer)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(blinktimer)($28)
	slt	$2,$2,30
	beql	$2,$0,.L9
	sw	$0,%gp_rel(blinktimer)($28)

.L9:
	lw	$3,%gp_rel(blinktimer)($28)
	slt	$3,$3,15
	beq	$3,$0,.L10
	lw	$2,%gp_rel(cursor)($28)

	lw	$3,%gp_rel(insertmode)($28)
	beql	$3,$0,.L11
	li	$3,-128			# 0xffffffffffffff80

	li	$3,-121			# 0xffffffffffffff87
.L11:
	sb	$3,0($2)
	lbu	$4,%gp_rel(twidth)($28)
	li	$3,30			# 0x1e
	bne	$4,$3,.L13
	lw	$2,%gp_rel(cursor)($28)

	j	.L17
	li	$3,7			# 0x7

.L13:
	j	.L15
	li	$3,7			# 0x7

.L10:
	lbu	$3,%gp_rel(blinkchar)($28)
	li	$4,30			# 0x1e
	sb	$3,0($2)
	lbu	$5,%gp_rel(twidth)($28)
	lw	$2,%gp_rel(cursor)($28)
	bne	$5,$4,.L15
	lbu	$3,%gp_rel(blinkcolor)($28)

.L17:
	j	$31
	sb	$3,810($2)

.L15:
	j	$31
	sb	$3,1080($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	blinkcursorchar
	.size	blinkcursorchar, .-blinkcursorchar
	.align	2
	.globl	inputchar
	.set	nomips16
	.set	nomicromips
	.ent	inputchar
	.type	inputchar, @function
inputchar:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	lhu	$16,%gp_rel(drawcount)($28)
	sw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	.L24
	andi	$16,$16,0xffff
	.set	macro
	.set	reorder

.L20:
 #APP
 # 56 "keyinput.c" 1
	wait
 # 0 "" 2
 #NO_APP
.L24:
	lhu	$2,%gp_rel(drawcount)($28)
	andi	$2,$2,0xffff
	beq	$16,$2,.L20
	lhu	$16,%gp_rel(drawcount)($28)
	jal	ps2readkey
	lhu	$3,%gp_rel(vkey)($28)
	andi	$3,$3,0xffff
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L24
	andi	$16,$16,0xffff
	.set	macro
	.set	reorder

	lw	$31,20($sp)
	lw	$16,16($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	inputchar
	.size	inputchar, .-inputchar
	.align	2
	.globl	cursorinputchar
	.set	nomips16
	.set	nomicromips
	.ent	cursorinputchar
	.type	cursorinputchar, @function
cursorinputchar:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$16,24($sp)
	sw	$31,28($sp)
	jal	getcursorchar
	lhu	$16,%gp_rel(drawcount)($28)
	.set	noreorder
	.set	nomacro
	j	.L31
	andi	$16,$16,0xffff
	.set	macro
	.set	reorder

.L27:
 #APP
 # 71 "keyinput.c" 1
	wait
 # 0 "" 2
 #NO_APP
.L31:
	lhu	$2,%gp_rel(drawcount)($28)
	andi	$2,$2,0xffff
	beq	$16,$2,.L27
	lhu	$16,%gp_rel(drawcount)($28)
	jal	blinkcursorchar
	jal	ps2readkey
	lhu	$3,%gp_rel(vkey)($28)
	andi	$3,$3,0xffff
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L31
	andi	$16,$16,0xffff
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	resetcursorchar
	sw	$2,16($sp)
	.set	macro
	.set	reorder

	lw	$31,28($sp)
	lw	$2,16($sp)
	lw	$16,24($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,32
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursorinputchar
	.size	cursorinputchar, .-cursorinputchar
	.align	2
	.globl	printinputchar
	.set	nomips16
	.set	nomicromips
	.ent	printinputchar
	.type	printinputchar, @function
printinputchar:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
.L33:
	jal	cursorinputchar
	nop

	beq	$2,$0,.L33
	move	$4,$2

	jal	printchar
	sw	$2,16($sp)

	lw	$31,28($sp)
	lw	$2,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printinputchar
	.size	printinputchar, .-printinputchar
	.align	2
	.globl	lineinput
	.set	nomips16
	.set	nomicromips
	.ent	lineinput
	.type	lineinput, @function
lineinput:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	slt	$3,$5,256
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$16,24($sp)
	move	$18,$4
	move	$17,$5
	beq	$3,$0,.L36
	li	$2,-1			# 0xffffffffffffffff

	lui	$16,%hi(lineinputbuf)
	move	$fp,$0
	j	.L37
	addiu	$23,$16,%lo(lineinputbuf)

.L39:
	addiu	$fp,$fp,1
	addiu	$23,$23,1
.L37:
	addu	$2,$18,$fp
	lbu	$2,0($2)
	beq	$2,$0,.L38
	slt	$3,$fp,$17

	bnel	$3,$0,.L39
	sb	$2,0($23)

.L38:
	beq	$fp,$0,.L40
	sb	$0,0($23)

	jal	printstr
	addiu	$4,$16,%lo(lineinputbuf)

.L40:
	addiu	$3,$16,%lo(lineinputbuf)
	li	$19,45			# 0x2d
	li	$20,100			# 0x64
	li	$21,103			# 0x67
	j	.L78
	li	$22,108			# 0x6c

.L79:
	sw	$2,%gp_rel(cursor)($28)
.L78:
.L85:
	jal	cursorinputchar
	sw	$3,16($sp)

	lhu	$4,%gp_rel(vkey)($28)
	lw	$3,16($sp)
	beq	$2,$0,.L43
	andi	$4,$4,0x00ff

	lw	$4,%gp_rel(insertmode)($28)
	bne	$4,$0,.L44
	nop

	lbu	$4,0($23)
	bnel	$4,$0,.L87
	move	$4,$23

.L44:
	bne	$fp,$17,.L46
	addu	$4,$3,$fp

	j	.L78
	nop

.L47:
	sb	$5,1($4)
	addiu	$4,$4,-1
.L46:
	sltu	$5,$4,$23
	beql	$5,$0,.L47
	lbu	$5,0($4)

	addiu	$fp,$fp,1
	move	$4,$23
.L87:
	sb	$2,0($23)
	jal	printstr
	sw	$3,16($sp)

	lw	$3,16($sp)
	addiu	$23,$23,1
	addu	$4,$3,$fp
	j	.L48
	lw	$2,%gp_rel(cursor)($28)

.L49:
	addiu	$4,$4,-1
.L48:
	sltu	$5,$23,$4
	bnel	$5,$0,.L49
	addiu	$2,$2,-1

	j	.L85
	sw	$2,%gp_rel(cursor)($28)

.L43:
	beq	$4,$19,.L57
	sltu	$2,$4,46

	beq	$2,$0,.L59
	li	$2,27			# 0x1b

	beq	$4,$2,.L75
	sltu	$2,$4,28

	beq	$2,$0,.L60
	li	$2,36			# 0x24

	li	$2,8			# 0x8
	beq	$4,$2,.L51
	li	$2,13			# 0xd

	beq	$4,$2,.L52
	li	$2,3			# 0x3

	bne	$4,$2,.L78
	li	$2,-1			# 0xffffffffffffffff

	j	.L88
	lw	$31,60($sp)

.L60:
	beq	$4,$2,.L64
	lw	$2,%gp_rel(cursor)($28)

	sltu	$2,$4,37
	beq	$2,$0,.L61
	li	$2,37			# 0x25

	li	$2,35			# 0x23
	bne	$4,$2,.L78
	lw	$2,%gp_rel(cursor)($28)

	j	.L89
	lbu	$4,0($23)

.L61:
	beq	$4,$2,.L55
	li	$2,39			# 0x27

	j	.L81
	nop

.L59:
	beq	$4,$20,.L55
	sltu	$2,$4,101

	beq	$2,$0,.L62
	li	$2,96			# 0x60

	beq	$4,$2,.L57
	li	$2,97			# 0x61

	beql	$4,$2,.L65
	lw	$2,%gp_rel(cursor)($28)

	j	.L83
	li	$2,46			# 0x2e

.L62:
	beq	$4,$21,.L64
	lw	$2,%gp_rel(cursor)($28)

	sltu	$2,$4,104
	beq	$2,$0,.L63
	li	$2,102			# 0x66

.L81:
	bne	$4,$2,.L78
	nop

	j	.L84
	lbu	$2,0($23)

.L63:
	beq	$4,$22,.L52
	li	$2,110			# 0x6e

.L83:
	bne	$4,$2,.L78
	nop

	j	.L86
	lbu	$2,0($23)

.L55:
	sltu	$2,$3,$23
	beq	$2,$0,.L78
	lw	$2,%gp_rel(cursor)($28)

	addiu	$23,$23,-1
	j	.L79
	addiu	$2,$2,-1

.L84:
	beq	$2,$0,.L78
	lw	$2,%gp_rel(cursor)($28)

	addiu	$23,$23,1
	j	.L79
	addiu	$2,$2,1

.L52:
	jal	printchar
	li	$4,10			# 0xa

	j	.L66
	addiu	$16,$16,%lo(lineinputbuf)

.L67:
	addiu	$16,$16,1
	addiu	$18,$18,1
.L66:
	lbu	$2,0($16)
	bnel	$2,$0,.L67
	sb	$2,0($18)

	j	.L36
	sb	$0,0($18)

.L68:
	addiu	$2,$2,-1
.L64:
	sltu	$4,$3,$23
	bnel	$4,$0,.L68
	addiu	$23,$23,-1

	j	.L85
	sw	$2,%gp_rel(cursor)($28)

.L69:
	addiu	$2,$2,1
.L65:
	lbu	$4,0($23)
.L89:
	bnel	$4,$0,.L69
	addiu	$23,$23,1

	j	.L85
	sw	$2,%gp_rel(cursor)($28)

.L51:
	beq	$23,$3,.L78
	lw	$2,%gp_rel(cursor)($28)

	addiu	$23,$23,-1
	addiu	$2,$2,-1
	sw	$2,%gp_rel(cursor)($28)
	lbu	$2,0($23)
.L86:
	beq	$2,$0,.L78
	move	$2,$23

	j	.L90
	lbu	$4,1($2)

.L71:
	sb	$4,-1($5)
	move	$2,$5
	lbu	$4,1($2)
.L90:
	bne	$4,$0,.L71
	addiu	$5,$2,1

	sb	$0,0($2)
	move	$4,$23
	jal	printstr
	sw	$3,16($sp)

	jal	printchar
	move	$4,$0

	addiu	$fp,$fp,-1
	lw	$3,16($sp)
	addiu	$4,$fp,1
	addu	$4,$3,$4
	j	.L72
	lw	$2,%gp_rel(cursor)($28)

.L73:
	addiu	$4,$4,-1
.L72:
	sltu	$5,$23,$4
	bnel	$5,$0,.L73
	addiu	$2,$2,-1

	j	.L85
	sw	$2,%gp_rel(cursor)($28)

.L57:
	lw	$2,%gp_rel(insertmode)($28)
	xori	$2,$2,0x1
	j	.L78
	sw	$2,%gp_rel(insertmode)($28)

.L75:
	li	$2,-1			# 0xffffffffffffffff
.L36:
	lw	$31,60($sp)
.L88:
	lw	$fp,56($sp)
	lw	$23,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lineinput
	.size	lineinput, .-lineinput

	.comm	blinkchar,1,1

	.comm	blinkcolor,1,1

	.comm	blinktimer,4,4

	.comm	insertmode,4,4

	.comm	lineinputbuf,256,4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
