	.file	1 "editor.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Cannot allocate memory\000"
	.section	.text,code
	.align	2
	.globl	editormalloc
	.set	nomips16
	.set	nomicromips
	.ent	editormalloc
	.type	editormalloc, @function
editormalloc:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lw	$2,%gp_rel(editormallocp)($28)
	lui	$3,%hi(RAM+55232)
	addu	$4,$2,$4
	addiu	$3,$3,%lo(RAM+55232)
	addiu	$sp,$sp,-24
	sltu	$3,$3,$4
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L2
	sw	$31,20($sp)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC0)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC0)
	.set	macro
	.set	reorder

.L3:
 #APP
 # 83 "editor.c" 1
	wait
 # 0 "" 2
 #NO_APP
	j	.L3
.L2:
	lw	$31,20($sp)
	sw	$4,%gp_rel(editormallocp)($28)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	editormalloc
	.size	editormalloc, .-editormalloc
	.align	2
	.globl	wait60thsec
	.set	nomips16
	.set	nomicromips
	.ent	wait60thsec
	.type	wait60thsec, @function
wait60thsec:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(drawcount)($28)
	addu	$2,$4,$2
	.set	noreorder
	.set	nomacro
	j	.L5
	andi	$2,$2,0xffff
	.set	macro
	.set	reorder

.L6:
 #APP
 # 93 "editor.c" 1
	wait
 # 0 "" 2
 #NO_APP
.L5:
	lhu	$3,%gp_rel(drawcount)($28)
	andi	$3,$3,0xffff
	bne	$3,$2,.L6
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	wait60thsec
	.size	wait60thsec, .-wait60thsec
	.align	2
	.globl	bpixtopos
	.set	nomips16
	.set	nomicromips
	.ent	bpixtopos
	.type	bpixtopos, @function
bpixtopos:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(TBufstart)($28)
	j	.L8
	move	$2,$0

.L10:
	lw	$3,4($3)
	beql	$3,$0,.L12
	move	$2,$0

	addu	$2,$2,$6
.L8:
	bnel	$3,$4,.L10
	lhu	$6,8($3)

	addu	$2,$2,$5
.L12:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	bpixtopos
	.size	bpixtopos, .-bpixtopos
	.align	2
	.globl	postobpix
	.set	nomips16
	.set	nomicromips
	.ent	postobpix
	.type	postobpix, @function
postobpix:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(TBufstart)($28)
	j	.L14
	move	$3,$2

.L16:
	beql	$7,$0,.L19
	slt	$6,$6,$4

	subu	$4,$4,$6
	move	$3,$7
.L14:
	lhu	$6,8($3)
	slt	$7,$4,$6
	beql	$7,$0,.L16
	lw	$7,4($3)

	slt	$6,$6,$4
.L19:
	beql	$6,$0,.L17
	sh	$4,0($5)

	j	$31
	sh	$0,0($5)

.L17:
	j	$31
	move	$2,$3

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	postobpix
	.size	postobpix, .-postobpix
	.align	2
	.globl	linetobpix
	.set	nomips16
	.set	nomicromips
	.ent	linetobpix
	.type	linetobpix, @function
linetobpix:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$6,%gp_rel(TBufstart)($28)
	move	$7,$0
	move	$2,$6
	move	$3,$0
	j	.L21
	li	$9,10			# 0xa

.L29:
	lhu	$8,8($6)
.L30:
	slt	$8,$3,$8
	bne	$8,$0,.L22
	addu	$8,$6,$3

	lw	$8,4($6)
	beql	$8,$0,.L21
	addiu	$4,$4,-1

	move	$6,$8
	j	.L29
	move	$3,$0

.L22:
	lbu	$8,10($8)
	bne	$8,$9,.L29
	addiu	$3,$3,1

	move	$7,$3
	move	$2,$6
	addiu	$4,$4,-1
.L21:
	slt	$8,$4,2
	beql	$8,$0,.L30
	lhu	$8,8($6)

	j	$31
	sh	$7,0($5)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	linetobpix
	.size	linetobpix, .-linetobpix
	.align	2
	.globl	newTBuf
	.set	nomips16
	.set	nomicromips
	.ent	newTBuf
	.type	newTBuf, @function
newTBuf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(TextBuffer)($28)
	li	$3,42612			# 0xa674
	lw	$5,%gp_rel(TBufstart)($28)
	addu	$3,$2,$3
	lw	$6,0($2)
.L40:
	bnel	$6,$0,.L39
	addiu	$2,$2,212

	bnel	$2,$5,.L33
	lw	$3,4($4)

	addiu	$2,$2,212
.L39:
	bnel	$2,$3,.L40
	lw	$6,0($2)

	j	$31
	move	$2,$0

.L33:
	sw	$4,0($2)
	sw	$3,4($2)
	beq	$3,$0,.L36
	sw	$2,4($4)

	sw	$2,0($3)
.L36:
	sh	$0,8($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	newTBuf
	.size	newTBuf, .-newTBuf
	.align	2
	.globl	deleteTBuf
	.set	nomips16
	.set	nomicromips
	.ent	deleteTBuf
	.type	deleteTBuf, @function
deleteTBuf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,0($4)
	bne	$3,$0,.L43
	lw	$2,4($4)

	beq	$2,$0,.L47
	nop

	j	.L45
	sw	$2,%gp_rel(TBufstart)($28)

.L43:
	beq	$2,$0,.L46
	sw	$2,4($3)

.L45:
	sw	$3,0($2)
.L46:
	sw	$0,0($4)
.L47:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	deleteTBuf
	.size	deleteTBuf, .-deleteTBuf
	.align	2
	.globl	pushundomem
	.set	nomips16
	.set	nomicromips
	.ent	pushundomem
	.type	pushundomem, @function
pushundomem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(undobuf_used)($28)
	slt	$2,$3,2048
	bne	$2,$0,.L61
	lw	$2,%gp_rel(undobuf_top)($28)

	lw	$6,%gp_rel(undobuf)($28)
	subu	$2,$2,$3
	sltu	$7,$2,$6
	addiu	$5,$2,2048
	movn	$2,$5,$7
	lbu	$5,0($2)
	addiu	$5,$5,-1
	andi	$5,$5,0x00ff
	sltu	$7,$5,6
	beql	$7,$0,.L61
	lw	$2,%gp_rel(undobuf_top)($28)

	lui	$7,%hi(.L55)
	sll	$5,$5,2
	addiu	$7,$7,%lo(.L55)
	addu	$5,$7,$5
	lw	$5,0($5)
	j	$5
	nop

	.align	2
	.align	2
.L55:
	.word	.L51
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L53
	.word	.L54
.L51:
	j	.L60
	addiu	$3,$3,-4

.L52:
	addiu	$5,$3,-4
	sw	$5,%gp_rel(undobuf_used)($28)
	addiu	$6,$6,2048
	addiu	$5,$2,3
	sltu	$6,$5,$6
	addiu	$2,$2,-2045
	movz	$5,$2,$6
	lbu	$2,0($5)
	sltu	$2,$2,10
	bne	$2,$0,.L60
	addiu	$3,$3,-5

	j	.L61
	lw	$2,%gp_rel(undobuf_top)($28)

.L53:
	j	.L60
	addiu	$3,$3,-6

.L54:
	addiu	$5,$2,1
	addiu	$6,$6,2048
	sltu	$7,$5,$6
	addiu	$2,$2,-2047
	movz	$5,$2,$7
	addiu	$2,$5,1
	lbu	$7,0($5)
	sltu	$6,$2,$6
	addiu	$5,$5,-2047
	movz	$2,$5,$6
	lbu	$2,0($2)
	addiu	$3,$3,-8
	subu	$3,$3,$7
	sll	$2,$2,8
	subu	$3,$3,$2
.L60:
	sw	$3,%gp_rel(undobuf_used)($28)
	lw	$2,%gp_rel(undobuf_top)($28)
.L61:
	sb	$4,0($2)
	lw	$4,%gp_rel(undobuf)($28)
	addiu	$3,$2,1
	addiu	$4,$4,2048
	sw	$3,%gp_rel(undobuf_top)($28)
	sltu	$3,$3,$4
	bne	$3,$0,.L59
	addiu	$2,$2,-2047

	sw	$2,%gp_rel(undobuf_top)($28)
.L59:
	lw	$2,%gp_rel(undobuf_used)($28)
	addiu	$2,$2,1
	j	$31
	sw	$2,%gp_rel(undobuf_used)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pushundomem
	.size	pushundomem, .-pushundomem
	.align	2
	.globl	pushundomem2
	.set	nomips16
	.set	nomicromips
	.ent	pushundomem2
	.type	pushundomem2, @function
pushundomem2:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	andi	$16,$4,0xffff
	sw	$31,20($sp)
	jal	pushundomem
	andi	$4,$16,0x00ff

	srl	$4,$16,8
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	pushundomem
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pushundomem2
	.size	pushundomem2, .-pushundomem2
	.align	2
	.globl	popundomem
	.set	nomips16
	.set	nomicromips
	.ent	popundomem
	.type	popundomem, @function
popundomem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(undobuf_top)($28)
	lw	$4,%gp_rel(undobuf)($28)
	addiu	$3,$2,-1
	sw	$3,%gp_rel(undobuf_top)($28)
	sltu	$3,$3,$4
	beql	$3,$0,.L65
	lw	$2,%gp_rel(undobuf_used)($28)

	addiu	$2,$2,2047
	sw	$2,%gp_rel(undobuf_top)($28)
	lw	$2,%gp_rel(undobuf_used)($28)
.L65:
	addiu	$2,$2,-1
	sw	$2,%gp_rel(undobuf_used)($28)
	lw	$2,%gp_rel(undobuf_top)($28)
	j	$31
	lbu	$2,0($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	popundomem
	.size	popundomem, .-popundomem
	.align	2
	.globl	popundomem2
	.set	nomips16
	.set	nomicromips
	.ent	popundomem2
	.type	popundomem2, @function
popundomem2:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	popundomem
	sw	$16,16($sp)

	sll	$2,$2,8
	jal	popundomem
	andi	$16,$2,0xffff

	lw	$31,20($sp)
	addu	$2,$16,$2
	andi	$2,$2,0xffff
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	popundomem2
	.size	popundomem2, .-popundomem2
	.align	2
	.globl	setundobuf
	.set	nomips16
	.set	nomicromips
	.ent	setundobuf
	.type	setundobuf, @function
setundobuf:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$19,32($sp)
	move	$19,$4
	move	$4,$5
	andi	$5,$6,0xffff
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,36($sp)
	jal	bpixtopos
	andi	$17,$7,0x00ff

	andi	$18,$2,0xffff
	addiu	$2,$19,-1
	sltu	$3,$2,6
	beq	$3,$0,.L67
	lhu	$16,56($sp)

	lui	$3,%hi(.L73)
	sll	$2,$2,2
	addiu	$3,$3,%lo(.L73)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L73:
	.word	.L69
	.word	.L70
	.word	.L70
	.word	.L70
	.word	.L71
	.word	.L72
.L69:
	jal	pushundomem
	li	$4,1			# 0x1

	jal	pushundomem2
	move	$4,$18

	j	.L74
	li	$4,1			# 0x1

.L70:
	jal	pushundomem
	andi	$4,$19,0x00ff

	jal	pushundomem2
	move	$4,$18

	move	$4,$17
	jal	pushundomem
	sltu	$17,$17,10

	beq	$17,$0,.L75
	lw	$31,36($sp)

	move	$4,$0
.L74:
	lw	$31,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	pushundomem
	addiu	$sp,$sp,40

.L71:
	jal	pushundomem
	li	$4,5			# 0x5

	jal	pushundomem2
	move	$4,$18

	jal	pushundomem2
	move	$4,$16

	j	.L74
	li	$4,5			# 0x5

.L72:
	jal	pushundomem
	li	$4,6			# 0x6

	move	$4,$16
	lw	$31,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	pushundomem2
	addiu	$sp,$sp,40

.L67:
	lw	$31,36($sp)
.L75:
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setundobuf
	.size	setundobuf, .-setundobuf
	.align	2
	.globl	insertchar
	.set	nomips16
	.set	nomicromips
	.ent	insertchar
	.type	insertchar, @function
insertchar:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 24, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lhu	$2,8($4)
	addiu	$sp,$sp,-48
	sltu	$3,$2,$5
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	sw	$31,44($sp)
	move	$16,$4
	move	$17,$5
	move	$19,$7
	andi	$20,$6,0x00ff
	bne	$3,$0,.L77
	li	$18,-1			# 0xffffffffffffffff

	lw	$4,%gp_rel(num)($28)
	li	$3,40000			# 0x9c40
	slt	$3,$4,$3
	beq	$3,$0,.L77
	sltu	$3,$2,200

	beql	$3,$0,.L78
	lw	$2,4($16)

	addu	$2,$16,$2
	addu	$3,$16,$5
	addiu	$2,$2,10
	j	.L79
	addiu	$3,$3,10

.L80:
	lbu	$4,0($2)
	sb	$4,1($2)
.L79:
	sltu	$4,$3,$2
	bnel	$4,$0,.L80
	addiu	$2,$2,-1

	bne	$19,$0,.L81
	sb	$20,0($2)

	li	$4,1			# 0x1
	move	$5,$16
	andi	$6,$17,0xffff
	move	$7,$0
	jal	setundobuf
	sw	$0,16($sp)

.L81:
	lhu	$2,8($16)
	addiu	$2,$2,1
	sh	$2,8($16)
	lw	$2,%gp_rel(num)($28)
	addiu	$2,$2,1
	j	.L91
	sw	$2,%gp_rel(num)($28)

.L78:
	beq	$2,$0,.L82
	nop

	lhu	$2,8($2)
	sltu	$2,$2,200
	bne	$2,$0,.L92
	li	$2,200			# 0xc8

.L82:
	jal	newTBuf
	move	$4,$16

	beq	$2,$0,.L77
	li	$18,1			# 0x1

	li	$2,200			# 0xc8
.L92:
	bne	$17,$2,.L84
	lw	$4,4($16)

	move	$5,$0
	move	$6,$20
	jal	insertchar
	move	$7,$19

.L91:
	j	.L77
	move	$18,$0

.L84:
	lbu	$6,209($16)
	move	$5,$0
	jal	insertchar
	li	$7,1			# 0x1

	addu	$2,$16,$17
	addiu	$18,$16,209
	j	.L85
	addiu	$2,$2,10

.L86:
	lbu	$3,0($18)
	sb	$3,1($18)
.L85:
	sltu	$3,$2,$18
	bnel	$3,$0,.L86
	addiu	$18,$18,-1

	sb	$20,0($18)
	bne	$19,$0,.L77
	move	$18,$0

	li	$4,1			# 0x1
	move	$5,$16
	andi	$6,$17,0xffff
	move	$7,$0
	jal	setundobuf
	sw	$0,16($sp)

.L77:
	lw	$31,44($sp)
	move	$2,$18
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	insertchar
	.size	insertchar, .-insertchar
	.align	2
	.globl	overwritechar
	.set	nomips16
	.set	nomicromips
	.ent	overwritechar
	.type	overwritechar, @function
overwritechar:
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 24, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lhu	$2,8($4)
	addiu	$sp,$sp,-40
	sltu	$2,$2,$5
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	sw	$31,36($sp)
	move	$16,$4
	move	$17,$5
	beq	$2,$0,.L102
	andi	$18,$6,0x00ff

	j	.L104
	li	$2,-1			# 0xffffffffffffffff

.L97:
	beq	$2,$0,.L105
	move	$4,$16

.L101:
	move	$16,$2
	move	$17,$0
.L102:
	lhu	$2,8($16)
	sltu	$2,$17,$2
	beql	$2,$0,.L97
	lw	$2,4($16)

	addu	$2,$16,$17
	lbu	$2,10($2)
	li	$3,10			# 0xa
	bne	$2,$3,.L98
	move	$4,$16

.L105:
	move	$5,$17
	move	$6,$18
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	insertchar
	addiu	$sp,$sp,40

.L98:
	bnel	$7,$0,.L106
	addu	$16,$16,$17

	li	$4,2			# 0x2
	move	$5,$16
	andi	$6,$17,0xffff
	move	$7,$2
	jal	setundobuf
	sw	$0,16($sp)

	addu	$16,$16,$17
.L106:
	sb	$18,10($16)
	move	$2,$0
.L104:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	overwritechar
	.size	overwritechar, .-overwritechar
	.align	2
	.globl	deletechar
	.set	nomips16
	.set	nomicromips
	.ent	deletechar
	.type	deletechar, @function
deletechar:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 24, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$17,32($sp)
	sw	$16,28($sp)
	sw	$31,36($sp)
	move	$16,$4
	move	$17,$5
.L116:
	lhu	$2,8($16)
	sltu	$3,$2,$17
	bne	$3,$0,.L119
	lw	$31,36($sp)

	beql	$17,$2,.L109
	lw	$16,4($16)

	li	$2,1			# 0x1
	bne	$6,$2,.L110
	li	$2,-1			# 0xffffffffffffffff

	addu	$2,$16,$17
	jal	pushundomem
	lbu	$4,10($2)

	j	.L118
	addu	$17,$16,$17

.L110:
	bne	$6,$2,.L112
	addu	$2,$16,$17

	lbu	$7,10($2)
	li	$4,4			# 0x4
	j	.L117
	sw	$0,16($sp)

.L112:
	bnel	$6,$0,.L120
	addu	$17,$16,$17

	addu	$2,$16,$17
	lbu	$7,10($2)
	li	$4,3			# 0x3
	sw	$0,16($sp)
.L117:
	move	$5,$16
	jal	setundobuf
	andi	$6,$17,0xffff

	addu	$17,$16,$17
.L118:
.L120:
	j	.L113
	addiu	$17,$17,10

.L114:
	lbu	$2,0($17)
	sb	$2,-1($17)
.L113:
	lhu	$2,8($16)
	addiu	$3,$2,-1
	addu	$2,$16,$2
	addiu	$2,$2,9
	sltu	$2,$17,$2
	bne	$2,$0,.L114
	addiu	$17,$17,1

	lw	$2,%gp_rel(num)($28)
	sh	$3,8($16)
	addiu	$2,$2,-1
	j	.L107
	sw	$2,%gp_rel(num)($28)

.L109:
	bne	$16,$0,.L116
	move	$17,$0

.L107:
	lw	$31,36($sp)
.L119:
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	deletechar
	.size	deletechar, .-deletechar
	.align	2
	.globl	gabagecollect1
	.set	nomips16
	.set	nomicromips
	.ent	gabagecollect1
	.type	gabagecollect1, @function
gabagecollect1:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lhu	$2,%gp_rel(cursorix)($28)
.L127:
	beql	$2,$0,.L123
	lw	$2,%gp_rel(cursorbp)($28)

	sh	$2,%gp_rel(cursorix)($28)
.L126:
.L154:
	j	.L124
	lhu	$2,%gp_rel(disptopix)($28)

.L123:
	lw	$3,0($2)
	beql	$3,$0,.L154
	sh	$0,%gp_rel(cursorix)($28)

.L125:
	lhu	$2,8($3)
	sltu	$4,$2,200
	bnel	$4,$0,.L127
	sw	$3,%gp_rel(cursorbp)($28)

	j	.L126
	sh	$0,%gp_rel(cursorix)($28)

.L130:
	lhu	$2,8($2)
.L124:
	beql	$2,$0,.L128
	lw	$2,%gp_rel(disptopbp)($28)

	j	.L129
	sh	$2,%gp_rel(disptopix)($28)

.L128:
	lw	$2,0($2)
	bnel	$2,$0,.L130
	sw	$2,%gp_rel(disptopbp)($28)

	sh	$0,%gp_rel(disptopix)($28)
.L129:
	j	.L152
	lw	$2,%gp_rel(TBufstart)($28)

.L135:
	bnel	$3,$0,.L152
	lw	$2,4($2)

	lw	$3,%gp_rel(cursorbp)($28)
	beq	$2,$3,.L132
	lw	$3,%gp_rel(disptopbp)($28)

	bne	$2,$3,.L133
	nop

	lw	$3,4($2)
	sw	$3,%gp_rel(disptopbp)($28)
.L133:
	jal	deleteTBuf
	move	$4,$2

	j	.L152
	nop

.L132:
	lw	$2,4($2)
.L152:
	bnel	$2,$0,.L135
	lhu	$3,8($2)

	lw	$3,%gp_rel(TBufstart)($28)
	j	.L136
	lw	$2,%gp_rel(cursorbp)($28)

.L138:
	beq	$3,$2,.L139
	move	$16,$0

	lw	$3,4($3)
.L136:
	lhu	$4,8($3)
	sltu	$5,$4,200
	beq	$5,$0,.L138
	nop

	beq	$3,$2,.L147
	addu	$5,$3,$4

	lw	$2,4($3)
	addiu	$4,$4,1
	sh	$4,8($3)
	lhu	$4,8($2)
	lbu	$6,10($2)
	addu	$4,$2,$4
	sb	$6,10($5)
	addiu	$3,$2,10
	j	.L140
	addiu	$4,$4,9

.L141:
	lbu	$5,0($3)
	sb	$5,-1($3)
.L140:
	sltu	$5,$3,$4
	bne	$5,$0,.L141
	addiu	$3,$3,1

	lhu	$3,8($2)
	addiu	$3,$3,-1
	sh	$3,8($2)
	lw	$3,%gp_rel(disptopbp)($28)
	bne	$2,$3,.L155
	lw	$3,%gp_rel(cursorbp)($28)

	lhu	$3,%gp_rel(disptopix)($28)
	addiu	$3,$3,-1
	sh	$3,%gp_rel(disptopix)($28)
	lw	$3,%gp_rel(cursorbp)($28)
.L155:
	bne	$2,$3,.L139
	li	$16,1			# 0x1

	lhu	$2,%gp_rel(cursorix)($28)
	addiu	$2,$2,-1
	j	.L139
	sh	$2,%gp_rel(cursorix)($28)

.L147:
	move	$16,$0
.L139:
	lw	$2,%gp_rel(cursorbp)($28)
	lw	$3,4($2)
	beq	$3,$0,.L156
	lw	$31,20($sp)

	lw	$2,4($2)
.L157:
	lw	$4,4($2)
	beq	$4,$0,.L156
	lw	$31,20($sp)

	lhu	$3,8($2)
	sltu	$5,$3,200
	beql	$5,$0,.L157
	lw	$2,4($2)

	addu	$5,$2,$3
	addiu	$3,$3,1
	sh	$3,8($2)
	lhu	$3,8($4)
	lbu	$6,10($4)
	addu	$3,$4,$3
	sb	$6,10($5)
	addiu	$2,$4,10
	j	.L145
	addiu	$3,$3,9

.L146:
	lbu	$5,0($2)
	sb	$5,-1($2)
.L145:
	sltu	$5,$2,$3
	bne	$5,$0,.L146
	addiu	$2,$2,1

	lhu	$2,8($4)
	li	$16,1			# 0x1
	addiu	$2,$2,-1
	andi	$2,$2,0xffff
	bne	$2,$0,.L143
	sh	$2,8($4)

	jal	deleteTBuf
	nop

.L143:
	lw	$31,20($sp)
.L156:
	move	$2,$16
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gabagecollect1
	.size	gabagecollect1, .-gabagecollect1
	.align	2
	.globl	gabagecollect2
	.set	nomips16
	.set	nomicromips
	.ent	gabagecollect2
	.type	gabagecollect2, @function
gabagecollect2:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
.L159:
	jal	gabagecollect1
	nop

	bne	$2,$0,.L159
	lw	$31,20($sp)

	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gabagecollect2
	.size	gabagecollect2, .-gabagecollect2
	.align	2
	.globl	inittextbuf
	.set	nomips16
	.set	nomicromips
	.ent	inittextbuf
	.type	inittextbuf, @function
inittextbuf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(TextBuffer)($28)
	j	.L162
	li	$4,42612			# 0xa674

.L163:
	addiu	$3,$3,212
.L162:
	lw	$2,%gp_rel(TextBuffer)($28)
	addu	$5,$2,$4
	sltu	$5,$3,$5
	bnel	$5,$0,.L163
	sw	$0,0($3)

	sw	$2,%gp_rel(TBufstart)($28)
	sw	$0,4($2)
	sh	$0,8($2)
	lw	$2,%gp_rel(undobuf)($28)
	sw	$0,%gp_rel(num)($28)
	sw	$0,%gp_rel(edited)($28)
	sw	$2,%gp_rel(undobuf_top)($28)
	j	$31
	sw	$0,%gp_rel(undobuf_used)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	inittextbuf
	.size	inittextbuf, .-inittextbuf
	.align	2
	.globl	redraw
	.set	nomips16
	.set	nomicromips
	.ent	redraw
	.type	redraw, @function
redraw:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$8,%gp_rel(cursorbp1)($28)
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
	lw	$4,%gp_rel(disptopbp)($28)
	lhu	$5,%gp_rel(disptopix)($28)
	beq	$8,$0,.L165
	move	$9,$0

	lw	$7,%gp_rel(cy)($28)
	lw	$6,%gp_rel(cy1)($28)
	lw	$3,%gp_rel(cursorbp)($28)
	slt	$9,$7,$6
	lhu	$2,%gp_rel(cursorix)($28)
	bne	$9,$0,.L166
	lhu	$12,%gp_rel(cursorix1)($28)

	bne	$7,$6,.L207
	move	$11,$12

	lw	$6,%gp_rel(cx1)($28)
	lw	$7,%gp_rel(cx)($28)
	slt	$6,$7,$6
	beql	$6,$0,.L208
	move	$9,$3

.L166:
	move	$9,$8
	move	$11,$2
	j	.L165
	move	$8,$3

.L207:
	move	$9,$3
.L208:
	move	$12,$2
.L165:
	lui	$2,%hi(TVRAM)
	lbu	$10,%gp_rel(twidth)($28)
	li	$3,7			# 0x7
	move	$7,$0
	addiu	$2,$2,%lo(TVRAM)
	li	$15,4			# 0x4
	li	$14,7			# 0x7
	li	$16,10			# 0xa
	li	$13,30			# 0x1e
	li	$25,26			# 0x1a
.L187:
	beql	$4,$0,.L168
	lbu	$5,%gp_rel(twidth)($28)

	j	.L169
	move	$6,$0

.L168:
.L206:
	j	.L170
	li	$4,30			# 0x1e

.L175:
	bne	$4,$8,.L171
	xor	$24,$5,$11

	movz	$3,$15,$24
.L171:
	bne	$4,$9,.L209
	lw	$4,4($4)

	xor	$5,$5,$12
	movz	$3,$14,$5
.L209:
	beq	$4,$0,.L195
	move	$5,$0

	lhu	$24,8($4)
.L211:
	slt	$24,$5,$24
	beq	$24,$0,.L175
	nop

	bne	$4,$8,.L176
	xor	$24,$5,$11

	movz	$3,$15,$24
.L176:
	bne	$4,$9,.L210
	addu	$24,$4,$5

	xor	$24,$5,$12
	movz	$3,$14,$24
	addu	$24,$4,$5
.L210:
	lbu	$24,10($24)
	beq	$24,$16,.L173
	addiu	$5,$5,1

	bnel	$10,$13,.L178
	sb	$3,1080($2)

	sb	$3,810($2)
.L178:
	sb	$24,0($2)
	addiu	$6,$6,1
	addiu	$2,$2,1
.L169:
	slt	$24,$6,$10
	bnel	$24,$0,.L211
	lhu	$24,8($4)

.L195:
.L173:
	bnel	$10,$13,.L212
	slt	$24,$6,40

	j	.L204
	slt	$24,$6,30

.L184:
	sb	$0,0($2)
	addiu	$6,$6,1
	addiu	$2,$2,1
	slt	$24,$6,30
.L204:
	bnel	$24,$0,.L184
	sb	$0,810($2)

	j	.L205
	addiu	$7,$7,1

.L186:
	sb	$0,0($2)
	addiu	$6,$6,1
	addiu	$2,$2,1
	slt	$24,$6,40
.L212:
	bnel	$24,$0,.L186
	sb	$0,1080($2)

	addiu	$7,$7,1
.L205:
	bne	$7,$25,.L187
	nop

	j	.L206
	lbu	$5,%gp_rel(twidth)($28)

.L192:
	bne	$5,$4,.L188
	addiu	$6,$2,40

	addiu	$6,$2,30
	move	$3,$2
	sb	$0,810($3)
.L213:
	sb	$0,0($3)
	addiu	$3,$3,1
	bnel	$3,$6,.L213
	sb	$0,810($3)

	j	.L190
	addiu	$2,$2,30

.L188:
	move	$3,$2
	sb	$0,1080($3)
.L214:
	sb	$0,0($3)
	addiu	$3,$3,1
	bnel	$3,$6,.L214
	sb	$0,1080($3)

	addiu	$2,$2,40
.L190:
	addiu	$7,$7,1
.L170:
	slt	$3,$7,26
	bne	$3,$0,.L192
	lw	$16,4($sp)

	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	redraw
	.size	redraw, .-redraw
	.align	2
	.globl	cursor_left
	.set	nomips16
	.set	nomicromips
	.ent	cursor_left
	.type	cursor_left, @function
cursor_left:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	.L249
	lhu	$2,%gp_rel(cursorix)($28)

.L240:
	lw	$2,0($2)
	beq	$2,$0,.L253
	nop

	sw	$2,%gp_rel(cursorbp)($28)
	lhu	$2,8($2)
.L249:
	beql	$2,$0,.L240
	lw	$2,%gp_rel(cursorbp)($28)

	addiu	$2,$2,-1
	sh	$2,%gp_rel(cursorix)($28)
	lw	$2,%gp_rel(cx)($28)
	blez	$2,.L219
	addiu	$2,$2,-1

	sw	$2,%gp_rel(cx)($28)
	j	$31
	sw	$2,%gp_rel(cx2)($28)

.L219:
	lw	$7,%gp_rel(cy)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	blez	$7,.L220
	lw	$6,%gp_rel(cursorbp)($28)

	addu	$2,$6,$5
	lbu	$3,10($2)
	li	$2,10			# 0xa
	beq	$3,$2,.L221
	lbu	$4,%gp_rel(twidth)($28)

	addiu	$4,$4,-1
	addiu	$7,$7,-1
	sw	$4,%gp_rel(cx)($28)
	sw	$4,%gp_rel(cx2)($28)
	j	$31
	sw	$7,%gp_rel(cy)($28)

.L221:
	addiu	$10,$4,-1
	lw	$3,%gp_rel(disptopbp)($28)
	lhu	$2,%gp_rel(disptopix)($28)
	move	$4,$0
	j	.L243
	li	$9,10			# 0xa

.L226:
.L251:
	beql	$8,$0,.L250
	lw	$3,4($3)

.L223:
	addu	$11,$3,$2
	lbu	$11,10($11)
	beq	$11,$9,.L237
	addiu	$2,$2,1

	slt	$11,$4,$10
	addiu	$4,$4,1
	j	.L225
	movz	$4,$0,$11

.L237:
	move	$4,$0
.L225:
	slt	$8,$2,$8
	bne	$8,$0,.L243
	nop

	lw	$3,4($3)
.L250:
	move	$2,$0
.L243:
	bnel	$2,$5,.L251
	lhu	$8,8($3)

	bnel	$3,$6,.L226
	lhu	$8,8($3)

	lw	$2,%gp_rel(line_no)($28)
	addiu	$7,$7,-1
	addiu	$2,$2,-1
	sw	$4,%gp_rel(cx)($28)
	sw	$4,%gp_rel(cx2)($28)
	sw	$7,%gp_rel(cy)($28)
	j	$31
	sw	$2,%gp_rel(line_no)($28)

.L220:
	addu	$4,$6,$5
	move	$3,$5
	lbu	$5,10($4)
	li	$4,10			# 0xa
	bne	$5,$4,.L227
	move	$2,$6

	move	$4,$0
	j	.L244
	li	$5,10			# 0xa

.L227:
	lbu	$2,%gp_rel(twidth)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(cx)($28)
	j	.L229
	sw	$2,%gp_rel(cx2)($28)

.L244:
	bne	$3,$0,.L230
	addiu	$3,$3,-1

	lw	$2,0($2)
	beql	$2,$0,.L252
	lbu	$2,%gp_rel(twidth)($28)

	j	.L244
	lhu	$3,8($2)

.L230:
	addu	$6,$2,$3
	lbu	$6,10($6)
	beql	$6,$5,.L231
	lbu	$2,%gp_rel(twidth)($28)

	j	.L244
	addiu	$4,$4,1

.L231:
.L252:
	div	$0,$4,$2
	teq	$2,$0,7
	mfhi	$2
	sw	$2,%gp_rel(cx)($28)
	sw	$2,%gp_rel(cx2)($28)
	lw	$2,%gp_rel(line_no)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(line_no)($28)
.L229:
	lw	$3,%gp_rel(cursorbp)($28)
	lhu	$2,%gp_rel(cursorix)($28)
	j	.L245
	lw	$4,%gp_rel(cx)($28)

.L236:
	bnel	$2,$0,.L234
	addiu	$2,$2,-1

	lw	$3,0($3)
	j	.L245
	lhu	$2,8($3)

.L234:
	addiu	$4,$4,-1
.L245:
	bgtz	$4,.L236
	nop

	sw	$3,%gp_rel(disptopbp)($28)
	sh	$2,%gp_rel(disptopix)($28)
.L253:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_left
	.size	cursor_left, .-cursor_left
	.align	2
	.globl	cursor_right
	.set	nomips16
	.set	nomicromips
	.ent	cursor_right
	.type	cursor_right, @function
cursor_right:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(cursorbp)($28)
	lhu	$4,%gp_rel(cursorix)($28)
	lhu	$3,8($2)
	sltu	$3,$4,$3
	bne	$3,$0,.L269
	lhu	$3,%gp_rel(cursorix)($28)

	lw	$2,4($2)
.L270:
	beq	$2,$0,.L272
	nop

	lhu	$3,8($2)
	beql	$3,$0,.L270
	lw	$2,4($2)

	sw	$2,%gp_rel(cursorbp)($28)
	sh	$0,%gp_rel(cursorix)($28)
	lhu	$3,%gp_rel(cursorix)($28)
	lw	$2,%gp_rel(cursorbp)($28)
.L269:
	addu	$2,$2,$3
	lbu	$2,10($2)
	addiu	$3,$3,1
	sh	$3,%gp_rel(cursorix)($28)
	li	$3,10			# 0xa
	beq	$2,$3,.L271
	lbu	$4,%gp_rel(twidth)($28)

	lw	$3,%gp_rel(cx)($28)
	addiu	$4,$4,-1
	slt	$4,$3,$4
	beql	$4,$0,.L271
	li	$3,10			# 0xa

	addiu	$2,$3,1
	sw	$2,%gp_rel(cx)($28)
	j	$31
	sw	$2,%gp_rel(cx2)($28)

.L271:
	sw	$0,%gp_rel(cx)($28)
	bne	$2,$3,.L259
	sw	$0,%gp_rel(cx2)($28)

	lw	$2,%gp_rel(line_no)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(line_no)($28)
.L259:
	lw	$2,%gp_rel(cy)($28)
	slt	$3,$2,25
	beql	$3,$0,.L260
	lw	$3,%gp_rel(disptopbp)($28)

	addiu	$2,$2,1
	j	$31
	sw	$2,%gp_rel(cy)($28)

.L260:
	lhu	$2,%gp_rel(disptopix)($28)
	lbu	$6,%gp_rel(twidth)($28)
	move	$4,$0
	j	.L268
	li	$5,10			# 0xa

.L265:
	slt	$7,$2,$7
	bne	$7,$0,.L262
	addu	$7,$3,$2

	lw	$3,4($3)
	j	.L268
	move	$2,$0

.L262:
	lbu	$7,10($7)
	beq	$7,$5,.L264
	addiu	$2,$2,1

	addiu	$4,$4,1
.L268:
	slt	$7,$4,$6
	bnel	$7,$0,.L265
	lhu	$7,8($3)

.L264:
	sw	$3,%gp_rel(disptopbp)($28)
	sh	$2,%gp_rel(disptopix)($28)
.L272:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_right
	.size	cursor_right, .-cursor_right
	.align	2
	.globl	cursor_up
	.set	nomips16
	.set	nomicromips
	.ent	cursor_up
	.type	cursor_up, @function
cursor_up:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$5,%gp_rel(cx2)($28)
	lw	$6,%gp_rel(cx)($28)
	lw	$2,%gp_rel(cursorbp)($28)
	lhu	$3,%gp_rel(cursorix)($28)
	subu	$6,$5,$6
	lbu	$4,%gp_rel(twidth)($28)
	j	.L299
	li	$7,10			# 0xa

.L279:
	bnel	$3,$0,.L275
	addiu	$3,$3,-1

	lw	$2,0($2)
	beq	$2,$0,.L305
	nop

	j	.L299
	lhu	$3,8($2)

.L275:
	addu	$8,$2,$3
	lbu	$8,10($8)
	beq	$8,$7,.L304
	andi	$8,$3,0xffff

	addiu	$6,$6,1
.L299:
	slt	$8,$6,$4
	bne	$8,$0,.L279
	andi	$8,$3,0xffff

.L304:
	sw	$2,%gp_rel(cursorbp)($28)
	bne	$6,$4,.L280
	sh	$8,%gp_rel(cursorix)($28)

	lw	$4,%gp_rel(cy)($28)
	blez	$4,.L300
	sw	$5,%gp_rel(cx)($28)

	addiu	$4,$4,-1
	j	$31
	sw	$4,%gp_rel(cy)($28)

.L285:
	bnel	$3,$0,.L283
	addiu	$3,$3,-1

	lw	$2,0($2)
	j	.L300
	lhu	$3,8($2)

.L283:
	addiu	$5,$5,-1
.L300:
	bgtz	$5,.L285
	nop

	sw	$2,%gp_rel(disptopbp)($28)
	j	$31
	sh	$3,%gp_rel(disptopix)($28)

.L280:
	lw	$6,%gp_rel(line_no)($28)
	move	$7,$0
	addiu	$6,$6,-1
	sw	$6,%gp_rel(line_no)($28)
	li	$9,10			# 0xa
	move	$6,$2
.L301:
	bne	$3,$0,.L287
	addiu	$3,$3,-1

	lw	$6,0($6)
	beq	$6,$0,.L288
	nop

	j	.L301
	lhu	$3,8($6)

.L287:
	addu	$10,$6,$3
	lbu	$10,10($10)
	beq	$10,$9,.L288
	nop

	j	.L301
	addiu	$7,$7,1

.L288:
	div	$0,$7,$4
	teq	$4,$0,7
	move	$3,$8
	j	.L302
	mfhi	$4

.L293:
	bnel	$3,$0,.L291
	addiu	$3,$3,-1

	lw	$2,0($2)
	j	.L302
	lhu	$3,8($2)

.L291:
	addiu	$4,$4,-1
.L302:
	slt	$6,$5,$4
	bne	$6,$0,.L293
	nop

	lw	$5,%gp_rel(cy)($28)
	sw	$2,%gp_rel(cursorbp)($28)
	sh	$3,%gp_rel(cursorix)($28)
	blez	$5,.L303
	sw	$4,%gp_rel(cx)($28)

	addiu	$5,$5,-1
	j	$31
	sw	$5,%gp_rel(cy)($28)

.L298:
	bnel	$3,$0,.L296
	addiu	$3,$3,-1

	lw	$2,0($2)
	j	.L303
	lhu	$3,8($2)

.L296:
	addiu	$4,$4,-1
.L303:
	bgtz	$4,.L298
	nop

	sw	$2,%gp_rel(disptopbp)($28)
	sh	$3,%gp_rel(disptopix)($28)
.L305:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_up
	.size	cursor_up, .-cursor_up
	.align	2
	.globl	cursor_down
	.set	nomips16
	.set	nomicromips
	.ent	cursor_down
	.type	cursor_down, @function
cursor_down:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(cursorbp)($28)
	lhu	$2,%gp_rel(cursorix)($28)
	lw	$4,%gp_rel(cx)($28)
	lbu	$6,%gp_rel(twidth)($28)
	j	.L325
	li	$5,10			# 0xa

.L313:
	slt	$7,$2,$7
	bne	$7,$0,.L308
	addu	$7,$3,$2

	lw	$3,4($3)
	beq	$3,$0,.L328
	move	$2,$0

	j	.L329
	slt	$7,$4,$6

.L308:
	lbu	$7,10($7)
	beq	$7,$5,.L311
	addiu	$2,$2,1

	j	.L325
	addiu	$4,$4,1

.L311:
	lw	$4,%gp_rel(line_no)($28)
	addiu	$4,$4,1
	j	.L312
	sw	$4,%gp_rel(line_no)($28)

.L325:
	slt	$7,$4,$6
.L329:
	bnel	$7,$0,.L313
	lhu	$7,8($3)

.L312:
	lw	$8,%gp_rel(cx2)($28)
	move	$4,$0
	j	.L314
	li	$7,10			# 0xa

.L318:
	slt	$5,$2,$5
	bne	$5,$0,.L315
	addu	$5,$3,$2

	lw	$5,4($3)
	beql	$5,$0,.L327
	sh	$2,%gp_rel(cursorix)($28)

	j	.L317
	move	$2,$0

.L315:
	lbu	$5,10($5)
	beq	$5,$7,.L316
	move	$5,$3

	addiu	$2,$2,1
	addiu	$4,$4,1
.L317:
	move	$3,$5
.L314:
	slt	$5,$4,$8
	bnel	$5,$0,.L318
	lhu	$5,8($3)

.L316:
	sh	$2,%gp_rel(cursorix)($28)
.L327:
	lw	$2,%gp_rel(cy)($28)
	sw	$3,%gp_rel(cursorbp)($28)
	slt	$3,$2,25
	beq	$3,$0,.L319
	sw	$4,%gp_rel(cx)($28)

	addiu	$2,$2,1
	j	$31
	sw	$2,%gp_rel(cy)($28)

.L319:
	lw	$3,%gp_rel(disptopbp)($28)
	lhu	$2,%gp_rel(disptopix)($28)
	move	$4,$0
	j	.L326
	li	$5,10			# 0xa

.L324:
	slt	$7,$2,$7
	bne	$7,$0,.L321
	addu	$7,$3,$2

	lw	$3,4($3)
	j	.L326
	move	$2,$0

.L321:
	lbu	$7,10($7)
	beq	$7,$5,.L323
	addiu	$2,$2,1

	addiu	$4,$4,1
.L326:
	slt	$7,$4,$6
	bnel	$7,$0,.L324
	lhu	$7,8($3)

.L323:
	sw	$3,%gp_rel(disptopbp)($28)
	sh	$2,%gp_rel(disptopix)($28)
.L328:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_down
	.size	cursor_down, .-cursor_down
	.align	2
	.globl	cursor_home
	.set	nomips16
	.set	nomicromips
	.ent	cursor_home
	.type	cursor_home, @function
cursor_home:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lhu	$2,%gp_rel(cursorix)($28)
	j	.L335
	lw	$3,%gp_rel(cx)($28)

.L334:
	bnel	$2,$0,.L332
	addiu	$2,$2,-1

	lw	$2,%gp_rel(cursorbp)($28)
	lw	$2,0($2)
	sw	$2,%gp_rel(cursorbp)($28)
	j	.L335
	lhu	$2,8($2)

.L332:
	andi	$2,$2,0xffff
	addiu	$3,$3,-1
.L335:
	bgtz	$3,.L334
	nop

	sh	$2,%gp_rel(cursorix)($28)
	sw	$3,%gp_rel(cx)($28)
	j	$31
	sw	$0,%gp_rel(cx2)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_home
	.size	cursor_home, .-cursor_home
	.align	2
	.globl	cursor_end
	.set	nomips16
	.set	nomicromips
	.ent	cursor_end
	.type	cursor_end, @function
cursor_end:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$7,%gp_rel(twidth)($28)
	lhu	$3,%gp_rel(cursorix)($28)
	addiu	$7,$7,-1
	lw	$2,%gp_rel(cursorbp)($28)
	lw	$4,%gp_rel(cx)($28)
	j	.L337
	li	$6,10			# 0xa

.L342:
	sltu	$5,$3,$5
	bne	$5,$0,.L338
	addu	$5,$2,$3

	lw	$5,4($2)
	bnel	$5,$0,.L343
	move	$3,$0

	j	.L345
	sh	$3,%gp_rel(cursorix)($28)

.L338:
	lbu	$5,10($5)
	beql	$5,$6,.L345
	sh	$3,%gp_rel(cursorix)($28)

.L341:
	addiu	$3,$3,1
	andi	$3,$3,0xffff
	addiu	$4,$4,1
	move	$5,$2
.L343:
	move	$2,$5
.L337:
	slt	$5,$4,$7
	bnel	$5,$0,.L342
	lhu	$5,8($2)

	sh	$3,%gp_rel(cursorix)($28)
.L345:
	sw	$2,%gp_rel(cursorbp)($28)
	sw	$4,%gp_rel(cx)($28)
	j	$31
	sw	$4,%gp_rel(cx2)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_end
	.size	cursor_end, .-cursor_end
	.align	2
	.globl	cursor_pageup
	.set	nomips16
	.set	nomicromips
	.ent	cursor_pageup
	.type	cursor_pageup, @function
cursor_pageup:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$16,16($sp)
	sw	$31,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	j	.L347
	lw	$16,%gp_rel(cy)($28)

.L348:
	jal	cursor_up
	nop

.L347:
	lw	$2,%gp_rel(cy)($28)
	bgtz	$2,.L348
	move	$17,$0

	li	$18,25			# 0x19
	lw	$20,%gp_rel(disptopbp)($28)
.L359:
	jal	cursor_up
	lhu	$19,%gp_rel(disptopix)($28)

	lw	$2,%gp_rel(disptopbp)($28)
	bnel	$20,$2,.L358
	addiu	$17,$17,1

	lhu	$2,%gp_rel(disptopix)($28)
	beq	$2,$19,.L350
	nop

	addiu	$17,$17,1
.L358:
	bne	$17,$18,.L359
	lw	$20,%gp_rel(disptopbp)($28)

	j	.L357
	lw	$2,%gp_rel(cy)($28)

.L350:
	beq	$17,$0,.L360
	lw	$31,36($sp)

	j	.L357
	lw	$2,%gp_rel(cy)($28)

.L354:
	jal	cursor_down
	nop

	lw	$2,%gp_rel(cy)($28)
.L357:
	slt	$2,$2,$16
	bne	$2,$0,.L354
	lw	$31,36($sp)

.L360:
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_pageup
	.size	cursor_pageup, .-cursor_pageup
	.align	2
	.globl	cursor_pagedown
	.set	nomips16
	.set	nomicromips
	.ent	cursor_pagedown
	.type	cursor_pagedown, @function
cursor_pagedown:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$16,16($sp)
	sw	$31,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	j	.L362
	lw	$16,%gp_rel(cy)($28)

.L364:
	jal	cursor_down
	nop

	lw	$2,%gp_rel(cy)($28)
	bnel	$17,$2,.L376
	lw	$17,%gp_rel(cy)($28)

	move	$17,$0
.L374:
	j	.L363
	li	$18,25			# 0x19

.L362:
	lw	$17,%gp_rel(cy)($28)
.L376:
	slt	$2,$17,25
	bne	$2,$0,.L364
	nop

	j	.L374
	move	$17,$0

.L363:
	lw	$20,%gp_rel(disptopbp)($28)
.L378:
	jal	cursor_down
	lhu	$19,%gp_rel(disptopix)($28)

	lw	$2,%gp_rel(disptopbp)($28)
	bnel	$20,$2,.L377
	addiu	$17,$17,1

	lhu	$2,%gp_rel(disptopix)($28)
	beq	$2,$19,.L367
	nop

	addiu	$17,$17,1
.L377:
	bne	$17,$18,.L378
	lw	$20,%gp_rel(disptopbp)($28)

	j	.L375
	lw	$2,%gp_rel(cy)($28)

.L367:
	beq	$17,$0,.L379
	lw	$31,36($sp)

	j	.L375
	lw	$2,%gp_rel(cy)($28)

.L370:
	jal	cursor_up
	nop

	lw	$2,%gp_rel(cy)($28)
.L375:
	slt	$2,$16,$2
	bne	$2,$0,.L370
	lw	$31,36($sp)

.L379:
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_pagedown
	.size	cursor_pagedown, .-cursor_pagedown
	.align	2
	.globl	cursor_top
	.set	nomips16
	.set	nomicromips
	.ent	cursor_top
	.type	cursor_top, @function
cursor_top:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(TBufstart)($28)
	sh	$0,%gp_rel(cursorix)($28)
	sw	$2,%gp_rel(cursorbp)($28)
	sw	$2,%gp_rel(disptopbp)($28)
	li	$2,1			# 0x1
	sw	$0,%gp_rel(cursorbp1)($28)
	sh	$0,%gp_rel(disptopix)($28)
	sw	$0,%gp_rel(cx)($28)
	sw	$0,%gp_rel(cx2)($28)
	sw	$0,%gp_rel(cy)($28)
	j	$31
	sw	$2,%gp_rel(line_no)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_top
	.size	cursor_top, .-cursor_top
	.align	2
	.globl	countarea
	.set	nomips16
	.set	nomicromips
	.ent	countarea
	.type	countarea, @function
countarea:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$4,%gp_rel(cy)($28)
	lw	$3,%gp_rel(cy1)($28)
	lw	$2,%gp_rel(cursorbp)($28)
	slt	$7,$4,$3
	lhu	$6,%gp_rel(cursorix)($28)
	bne	$7,$0,.L382
	lw	$5,%gp_rel(cursorbp1)($28)

	bne	$4,$3,.L390
	lhu	$3,%gp_rel(cursorix1)($28)

	lw	$3,%gp_rel(cx1)($28)
	lw	$4,%gp_rel(cx)($28)
	slt	$3,$4,$3
	beql	$3,$0,.L383
	lhu	$3,%gp_rel(cursorix1)($28)

.L382:
	move	$3,$6
	move	$4,$2
	j	.L384
	lhu	$6,%gp_rel(cursorix1)($28)

.L383:
.L390:
	move	$4,$5
	move	$5,$2
.L384:
	move	$2,$0
.L389:
	bnel	$4,$5,.L391
	lhu	$7,8($4)

	bnel	$3,$6,.L386
	lhu	$7,8($4)

	j	$31
	nop

.L386:
.L391:
	slt	$7,$3,$7
	beql	$7,$0,.L387
	lw	$4,4($4)

	addiu	$2,$2,1
	j	.L389
	addiu	$3,$3,1

.L387:
	j	.L389
	move	$3,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	countarea
	.size	countarea, .-countarea
	.align	2
	.globl	deletearea_len
	.set	nomips16
	.set	nomicromips
	.ent	deletearea_len
	.type	deletearea_len, @function
deletearea_len:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lhu	$2,8($4)
	addiu	$sp,$sp,-48
	subu	$2,$2,$5
	sltu	$2,$6,$2
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	move	$19,$4
	move	$18,$5
	move	$17,$6
	bne	$2,$0,.L407
	move	$16,$7

	bnel	$7,$0,.L408
	lhu	$2,8($19)

	addu	$21,$4,$5
	addiu	$21,$21,10
	j	.L395
	move	$20,$5

.L396:
	addiu	$20,$20,1
	jal	pushundomem
	addiu	$21,$21,1

.L395:
	lhu	$2,8($19)
	slt	$2,$20,$2
	bnel	$2,$0,.L396
	lbu	$4,0($21)

	lhu	$2,8($19)
.L408:
	lw	$3,%gp_rel(num)($28)
	subu	$2,$18,$2
	sh	$18,8($19)
	lw	$19,4($19)
	addu	$3,$3,$2
	beq	$19,$0,.L392
	sw	$3,%gp_rel(num)($28)

	addu	$17,$17,$2
	j	.L407
	move	$18,$0

.L402:
	bnel	$16,$0,.L409
	lhu	$20,8($19)

	addiu	$21,$19,10
	j	.L399
	move	$20,$0

.L400:
	addiu	$20,$20,1
	jal	pushundomem
	addiu	$21,$21,1

.L399:
	lhu	$2,8($19)
	slt	$2,$20,$2
	bnel	$2,$0,.L400
	lbu	$4,0($21)

	lhu	$20,8($19)
.L409:
	lw	$2,%gp_rel(num)($28)
	move	$4,$19
	subu	$2,$2,$20
	jal	deleteTBuf
	sw	$2,%gp_rel(num)($28)

	beq	$2,$0,.L392
	move	$19,$2

	subu	$17,$17,$20
.L407:
	lhu	$2,8($19)
	slt	$2,$17,$2
	beq	$2,$0,.L402
	li	$2,1			# 0x1

	j	.L404
	movz	$16,$2,$16

.L405:
	move	$5,$18
	jal	deletechar
	move	$6,$16

	addiu	$17,$17,-1
.L404:
	bgtz	$17,.L405
	move	$4,$19

.L392:
	lw	$31,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	deletearea_len
	.size	deletearea_len, .-deletearea_len
	.align	2
	.globl	deletearea
	.set	nomips16
	.set	nomicromips
	.ent	deletearea
	.type	deletearea, @function
deletearea:
	.frame	$sp,48,$31		# vars= 8, regs= 4/0, args= 24, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	jal	countarea
	sw	$16,32($sp)

	beq	$2,$0,.L410
	lw	$4,%gp_rel(cy)($28)

	lw	$3,%gp_rel(cy1)($28)
	slt	$5,$3,$4
	bnel	$5,$0,.L414
	lw	$4,%gp_rel(cursorbp1)($28)

	bne	$4,$3,.L415
	lw	$18,%gp_rel(cursorbp)($28)

	lw	$4,%gp_rel(cx1)($28)
	lw	$5,%gp_rel(cx)($28)
	slt	$4,$4,$5
	beq	$4,$0,.L416
	lhu	$17,%gp_rel(cursorix)($28)

	lw	$4,%gp_rel(cursorbp1)($28)
.L414:
	sw	$3,%gp_rel(cy)($28)
	sw	$4,%gp_rel(cursorbp)($28)
	lhu	$4,%gp_rel(cursorix1)($28)
	lw	$3,%gp_rel(line_no1)($28)
	sh	$4,%gp_rel(cursorix)($28)
	lw	$4,%gp_rel(cx1)($28)
	sw	$3,%gp_rel(line_no)($28)
	sw	$4,%gp_rel(cx)($28)
	lw	$18,%gp_rel(cursorbp)($28)
.L415:
	lhu	$17,%gp_rel(cursorix)($28)
.L416:
	lw	$3,%gp_rel(cx)($28)
	andi	$16,$2,0xffff
	move	$5,$18
	move	$6,$17
	li	$4,6			# 0x6
	move	$7,$0
	sw	$3,%gp_rel(cx2)($28)
	sw	$16,16($sp)
	sw	$2,24($sp)
	jal	setundobuf
	sw	$0,%gp_rel(cursorbp1)($28)

	lw	$2,24($sp)
	move	$7,$0
	move	$6,$2
	move	$4,$18
	jal	deletearea_len
	move	$5,$17

	move	$5,$17
	jal	bpixtopos
	move	$4,$18

	jal	pushundomem2
	andi	$4,$2,0xffff

	jal	pushundomem2
	move	$4,$16

	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	li	$4,6			# 0x6
	j	pushundomem
	addiu	$sp,$sp,48

.L410:
	lw	$31,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	deletearea
	.size	deletearea, .-deletearea
	.align	2
	.globl	clipcopy
	.set	nomips16
	.set	nomicromips
	.ent	clipcopy
	.type	clipcopy, @function
clipcopy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(cy)($28)
	lw	$2,%gp_rel(cy1)($28)
	lw	$4,%gp_rel(cursorbp)($28)
	slt	$5,$3,$2
	lhu	$7,%gp_rel(cursorix)($28)
	bne	$5,$0,.L418
	lw	$6,%gp_rel(cursorbp1)($28)

	bne	$3,$2,.L426
	lhu	$2,%gp_rel(cursorix1)($28)

	lw	$2,%gp_rel(cx1)($28)
	lw	$3,%gp_rel(cx)($28)
	slt	$2,$3,$2
	beql	$2,$0,.L419
	lhu	$2,%gp_rel(cursorix1)($28)

.L418:
	move	$2,$7
	move	$3,$4
	j	.L420
	lhu	$7,%gp_rel(cursorix1)($28)

.L419:
.L426:
	move	$3,$6
	move	$6,$4
.L420:
	addiu	$4,$3,10
	addu	$4,$4,$2
	lw	$5,%gp_rel(clipboard)($28)
	j	.L425
	sw	$0,%gp_rel(clipsize)($28)

.L424:
.L427:
	slt	$8,$2,$8
	beql	$8,$0,.L422
	lw	$3,4($3)

	lbu	$8,0($4)
	addiu	$2,$2,1
	sb	$8,0($5)
	lw	$8,%gp_rel(clipsize)($28)
	addiu	$5,$5,1
	addiu	$8,$8,1
	addiu	$4,$4,1
	j	.L425
	sw	$8,%gp_rel(clipsize)($28)

.L422:
	move	$2,$0
	addiu	$4,$3,10
.L425:
	bnel	$3,$6,.L427
	lhu	$8,8($3)

	bnel	$2,$7,.L424
	lhu	$8,8($3)

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	clipcopy
	.size	clipcopy, .-clipcopy
	.align	2
	.globl	clippaste
	.set	nomips16
	.set	nomicromips
	.ent	clippaste
	.type	clippaste, @function
clippaste:
	.frame	$sp,40,$31		# vars= 0, regs= 3/0, args= 24, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(clipsize)($28)
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$17,32($sp)
	beq	$2,$0,.L428
	sw	$16,28($sp)

	lw	$3,%gp_rel(num)($28)
	li	$4,40001			# 0x9c41
	addu	$3,$2,$3
	slt	$3,$3,$4
	beq	$3,$0,.L433
	lw	$31,36($sp)

	lhu	$6,%gp_rel(cursorix)($28)
	lw	$5,%gp_rel(cursorbp)($28)
	andi	$2,$2,0xffff
	li	$4,5			# 0x5
	move	$7,$0
	jal	setundobuf
	sw	$2,16($sp)

	lw	$16,%gp_rel(clipboard)($28)
	j	.L430
	lw	$17,%gp_rel(clipsize)($28)

.L432:
	lhu	$5,%gp_rel(cursorix)($28)
	lbu	$6,0($16)
	jal	insertchar
	li	$7,1			# 0x1

	blez	$2,.L431
	nop

	jal	gabagecollect2
	nop

	lw	$4,%gp_rel(cursorbp)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	lbu	$6,0($16)
	jal	insertchar
	li	$7,1			# 0x1

.L431:
	bne	$2,$0,.L433
	lw	$31,36($sp)

	jal	cursor_right
	addiu	$16,$16,1

	addiu	$17,$17,-1
.L430:
	bgtz	$17,.L432
	lw	$4,%gp_rel(cursorbp)($28)

.L428:
	lw	$31,36($sp)
.L433:
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	clippaste
	.size	clippaste, .-clippaste
	.align	2
	.globl	movecursor
	.set	nomips16
	.set	nomicromips
	.ent	movecursor
	.type	movecursor, @function
movecursor:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	lhu	$5,%gp_rel(cursorix)($28)
	move	$16,$4
	lw	$4,%gp_rel(cursorbp)($28)
	sw	$31,20($sp)
	jal	bpixtopos
	nop

	subu	$16,$16,$2
	beq	$16,$0,.L443
	lw	$31,20($sp)

	blez	$16,.L440
	nop

.L439:
	jal	cursor_right
	addiu	$16,$16,-1

	bne	$16,$0,.L439
	lw	$31,20($sp)

	j	.L444
	lw	$16,16($sp)

.L440:
	jal	cursor_left
	addiu	$16,$16,1

	bltz	$16,.L440
	lw	$31,20($sp)

.L443:
	lw	$16,16($sp)
.L444:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	movecursor
	.size	movecursor, .-movecursor
	.align	2
	.globl	undoexec
	.set	nomips16
	.set	nomicromips
	.ent	undoexec
	.type	undoexec, @function
undoexec:
	.frame	$sp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(undobuf_used)($28)
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$17,40($sp)
	beq	$2,$0,.L445
	sw	$16,36($sp)

	jal	popundomem
	sw	$0,%gp_rel(cursorbp1)($28)

	move	$6,$2
	li	$2,1			# 0x1
	beq	$6,$2,.L449
	nop

	beq	$6,$0,.L448
	li	$2,5			# 0x5

	beq	$6,$2,.L450
	li	$2,6			# 0x6

	bne	$6,$2,.L447
	nop

	j	.L456
	nop

.L449:
	jal	popundomem2
	nop

	move	$4,$2
	jal	movecursor
	sw	$2,24($sp)

	lw	$2,24($sp)
	addiu	$5,$sp,16
	jal	postobpix
	move	$4,$2

	lhu	$5,16($sp)
	move	$4,$2
	jal	deletechar
	li	$6,2			# 0x2

	j	.L455
	nop

.L450:
	jal	popundomem2
	nop

	jal	popundomem2
	sw	$2,28($sp)

	move	$4,$2
	jal	movecursor
	sw	$2,24($sp)

	lw	$2,24($sp)
	addiu	$5,$sp,16
	jal	postobpix
	move	$4,$2

	lhu	$5,16($sp)
	lw	$6,28($sp)
	move	$4,$2
	jal	deletearea_len
	li	$7,2			# 0x2

.L455:
	jal	popundomem
	nop

	j	.L457
	lw	$31,44($sp)

.L456:
	jal	popundomem2
	nop

	jal	popundomem2
	move	$17,$2

	move	$4,$2
	jal	movecursor
	sw	$2,24($sp)

	lw	$2,24($sp)
	addiu	$5,$sp,16
	jal	postobpix
	move	$4,$2

	j	.L452
	move	$16,$2

.L453:
	addiu	$17,$17,-1
	jal	popundomem
	sw	$5,24($sp)

	lw	$5,24($sp)
	move	$4,$16
	move	$6,$2
	jal	insertchar
	li	$7,2			# 0x2

	andi	$17,$17,0xffff
.L452:
	bne	$17,$0,.L453
	lhu	$5,16($sp)

	jal	popundomem2
	nop

	j	.L455
	nop

.L448:
	jal	popundomem
	nop

	move	$6,$2
.L447:
	jal	popundomem2
	sw	$6,28($sp)

	move	$4,$2
	jal	movecursor
	sw	$2,24($sp)

	lw	$2,24($sp)
	addiu	$5,$sp,16
	jal	postobpix
	move	$4,$2

	jal	popundomem
	sw	$2,24($sp)

	move	$16,$2
	li	$2,2			# 0x2
	lhu	$5,16($sp)
	lw	$4,24($sp)
	bne	$16,$2,.L454
	lw	$6,28($sp)

	jal	overwritechar
	li	$7,2			# 0x2

	j	.L457
	lw	$31,44($sp)

.L454:
	jal	insertchar
	li	$7,2			# 0x2

	li	$2,4			# 0x4
	bne	$16,$2,.L457
	lw	$31,44($sp)

	jal	cursor_right
	nop

.L445:
	lw	$31,44($sp)
.L457:
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	undoexec
	.size	undoexec, .-undoexec
	.align	2
	.globl	set_areamode
	.set	nomips16
	.set	nomicromips
	.ent	set_areamode
	.type	set_areamode, @function
set_areamode:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(cursorbp)($28)
	sw	$2,%gp_rel(cursorbp1)($28)
	lhu	$2,%gp_rel(cursorix)($28)
	sh	$2,%gp_rel(cursorix1)($28)
	lw	$2,%gp_rel(cx)($28)
	sw	$2,%gp_rel(cx1)($28)
	lw	$2,%gp_rel(cy)($28)
	sw	$2,%gp_rel(cy1)($28)
	lw	$2,%gp_rel(line_no)($28)
	j	$31
	sw	$2,%gp_rel(line_no1)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	set_areamode
	.size	set_areamode, .-set_areamode
	.align	2
	.globl	save_cursor
	.set	nomips16
	.set	nomicromips
	.ent	save_cursor
	.type	save_cursor, @function
save_cursor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(cursorbp)($28)
	sw	$2,%gp_rel(cursorbp_t)($28)
	lhu	$2,%gp_rel(cursorix)($28)
	sh	$2,%gp_rel(cursorix_t)($28)
	lw	$2,%gp_rel(disptopbp)($28)
	sw	$2,%gp_rel(disptopbp_t)($28)
	lhu	$2,%gp_rel(disptopix)($28)
	sh	$2,%gp_rel(disptopix_t)($28)
	lw	$2,%gp_rel(cx)($28)
	sw	$2,%gp_rel(cx_t)($28)
	lw	$2,%gp_rel(cy)($28)
	sw	$2,%gp_rel(cy_t)($28)
	lw	$2,%gp_rel(line_no)($28)
	j	$31
	sw	$2,%gp_rel(line_no_t)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	save_cursor
	.size	save_cursor, .-save_cursor
	.align	2
	.globl	restore_cursor
	.set	nomips16
	.set	nomicromips
	.ent	restore_cursor
	.type	restore_cursor, @function
restore_cursor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(cursorbp_t)($28)
	sw	$2,%gp_rel(cursorbp)($28)
	lhu	$2,%gp_rel(cursorix_t)($28)
	sh	$2,%gp_rel(cursorix)($28)
	lw	$2,%gp_rel(disptopbp_t)($28)
	sw	$2,%gp_rel(disptopbp)($28)
	lhu	$2,%gp_rel(disptopix_t)($28)
	sh	$2,%gp_rel(disptopix)($28)
	lw	$2,%gp_rel(cx_t)($28)
	sw	$2,%gp_rel(cx)($28)
	lw	$2,%gp_rel(cy_t)($28)
	sw	$2,%gp_rel(cy)($28)
	lw	$2,%gp_rel(line_no_t)($28)
	j	$31
	sw	$2,%gp_rel(line_no)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	restore_cursor
	.size	restore_cursor, .-restore_cursor
	.align	2
	.globl	filesystemretry
	.set	nomips16
	.set	nomicromips
	.ent	filesystemretry
	.type	filesystemretry, @function
filesystemretry:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$19,28($sp)
	sw	$16,16($sp)
	lui	$19,%hi(Message3)
	lui	$16,%hi(Message2)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$31,36($sp)
	sw	$20,32($sp)
	addiu	$19,$19,%lo(Message3)
	li	$18,13			# 0xd
	li	$17,108			# 0x6c
	addiu	$16,$16,%lo(Message2)
.L465:
	jal	setcursorcolor
	li	$4,7			# 0x7

	jal	printstr
	move	$4,$19

	li	$20,27			# 0x1b
.L464:
	jal	inputchar
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0x00ff
	beq	$2,$18,.L462
	nop

	beq	$2,$17,.L462
	nop

	bne	$2,$20,.L464
	li	$2,-1			# 0xffffffffffffffff

	j	.L469
	lw	$31,36($sp)

.L462:
	jal	FSInit
	nop

	bne	$2,$0,.L467
	move	$2,$0

	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$16

	j	.L465
	nop

.L467:
	lw	$31,36($sp)
.L469:
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	filesystemretry
	.size	filesystemretry, .-filesystemretry
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"w\000"
	.section	.text,code
	.align	2
	.globl	sdfilecopy
	.set	nomips16
	.set	nomicromips
	.ent	sdfilecopy
	.type	sdfilecopy, @function
sdfilecopy:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$17,24($sp)
	move	$17,$5
	lui	$5,%hi(.LC1)
	addiu	$5,$5,%lo(.LC1)
	sw	$18,28($sp)
	sw	$16,20($sp)
	sw	$31,36($sp)
	jal	FSfopen
	sw	$19,32($sp)

	move	$16,$2
	beq	$2,$0,.L471
	li	$18,-2			# 0xfffffffffffffffe

	lui	$5,%hi(.LC2)
	move	$4,$17
	jal	FSfopen
	addiu	$5,$5,%lo(.LC2)

	move	$17,$2
	beq	$2,$0,.L479
	move	$4,$16

	move	$18,$0
.L473:
	bne	$18,$0,.L480
	lw	$4,%gp_rel(filebuf)($28)

	jal	printchar
	li	$4,46			# 0x2e

	li	$18,100			# 0x64
	lw	$4,%gp_rel(filebuf)($28)
.L480:
	li	$5,1			# 0x1
	li	$6,256			# 0x100
	jal	FSfread
	move	$7,$16

	beq	$2,$0,.L477
	move	$19,$2

	lw	$4,%gp_rel(filebuf)($28)
	li	$5,1			# 0x1
	move	$6,$2
	jal	FSfwrite
	move	$7,$17

	bne	$2,$19,.L478
	addiu	$18,$18,-1

	j	.L473
	nop

.L477:
	j	.L475
	move	$18,$0

.L478:
	li	$18,-3			# 0xfffffffffffffffd
.L475:
	jal	FSfclose
	move	$4,$16

	move	$4,$17
.L479:
	jal	FSfclose
	nop

.L471:
	lw	$31,36($sp)
	move	$2,$18
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	sdfilecopy
	.size	sdfilecopy, .-sdfilecopy
	.align	2
	.globl	savetextfile
	.set	nomips16
	.set	nomicromips
	.ent	savetextfile
	.type	savetextfile, @function
savetextfile:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$5,%hi(.LC2)
	addiu	$sp,$sp,-56
	addiu	$5,$5,%lo(.LC2)
	sw	$20,36($sp)
	sw	$16,20($sp)
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	jal	FSfopen
	sw	$17,24($sp)

	move	$20,$2
	beq	$2,$0,.L482
	li	$16,-2			# 0xfffffffffffffffe

	lw	$17,%gp_rel(TBufstart)($28)
	move	$19,$0
	addiu	$18,$17,10
	li	$23,10			# 0xa
	li	$22,13			# 0xd
	li	$21,-3			# 0xfffffffffffffffd
	lw	$2,%gp_rel(filebuf)($28)
.L498:
	j	.L496
	move	$16,$0

.L485:
	beq	$17,$0,.L484
	nop

	addiu	$18,$17,10
	move	$19,$0
.L496:
	lhu	$3,8($17)
	slt	$3,$19,$3
	beql	$3,$0,.L485
	lw	$17,4($17)

	lbu	$3,0($18)
	bne	$3,$23,.L497
	addiu	$16,$16,1

	sb	$22,0($2)
	addiu	$2,$2,1
	lbu	$3,0($18)
	addiu	$16,$16,1
.L497:
	sb	$3,0($2)
	slt	$3,$16,255
	addiu	$18,$18,1
	beq	$3,$0,.L487
	addiu	$19,$19,1

	j	.L496
	addiu	$2,$2,1

.L484:
	beql	$16,$0,.L493
	move	$16,$0

.L487:
	lw	$4,%gp_rel(filebuf)($28)
	move	$6,$16
	li	$5,1			# 0x1
	jal	FSfwrite
	move	$7,$20

	xor	$16,$2,$16
	move	$2,$0
	movn	$2,$21,$16
	beq	$17,$0,.L489
	move	$16,$2

	beq	$2,$0,.L498
	lw	$2,%gp_rel(filebuf)($28)

.L493:
.L489:
	jal	FSfclose
	move	$4,$20

.L482:
	lw	$31,52($sp)
	move	$2,$16
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	savetextfile
	.size	savetextfile, .-savetextfile
	.align	2
	.globl	loadtextfile
	.set	nomips16
	.set	nomicromips
	.ent	loadtextfile
	.type	loadtextfile, @function
loadtextfile:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$5,%hi(.LC1)
	addiu	$sp,$sp,-64
	addiu	$5,$5,%lo(.LC1)
	sw	$23,52($sp)
	sw	$16,24($sp)
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	jal	FSfopen
	sw	$17,28($sp)

	move	$16,$2
	beq	$2,$0,.L500
	li	$23,-2			# 0xfffffffffffffffe

	jal	inittextbuf
	move	$21,$0

	lw	$20,%gp_rel(TextBuffer)($28)
	addiu	$22,$20,10
	li	$17,200			# 0xc8
	li	$18,13			# 0xd
	li	$19,40001			# 0x9c41
	lw	$4,%gp_rel(filebuf)($28)
.L515:
	li	$5,1			# 0x1
	li	$6,256			# 0x100
	jal	FSfread
	move	$7,$16

	lw	$fp,%gp_rel(filebuf)($28)
	move	$3,$2
	addiu	$fp,$fp,1
	j	.L501
	move	$23,$0

.L505:
	bnel	$2,$0,.L513
	lbu	$2,-1($fp)

	sh	$17,8($20)
	move	$4,$20
	jal	newTBuf
	sw	$3,16($sp)

	move	$20,$2
	beq	$2,$0,.L511
	lw	$3,16($sp)

	addiu	$22,$2,10
	move	$21,$0
	lbu	$2,-1($fp)
.L513:
	beql	$2,$18,.L514
	addiu	$23,$23,1

	sb	$2,0($22)
	lw	$2,%gp_rel(num)($28)
	addiu	$22,$22,1
	addiu	$2,$2,1
	sw	$2,%gp_rel(num)($28)
	slt	$2,$2,$19
	beq	$2,$0,.L511
	addiu	$21,$21,1

	addiu	$23,$23,1
.L514:
	addiu	$fp,$fp,1
.L501:
	slt	$2,$23,$3
	bne	$2,$0,.L505
	slt	$2,$21,200

	j	.L503
	move	$23,$0

.L511:
	li	$23,-1			# 0xffffffffffffffff
.L503:
	li	$2,256			# 0x100
	bne	$3,$2,.L506
	nop

	beq	$23,$0,.L515
	lw	$4,%gp_rel(filebuf)($28)

	li	$23,-1			# 0xffffffffffffffff
.L506:
	bnel	$20,$0,.L508
	sh	$21,8($20)

.L508:
	jal	FSfclose
	move	$4,$16

	beq	$23,$0,.L516
	lw	$31,60($sp)

	jal	inittextbuf
	li	$23,-1			# 0xffffffffffffffff

	jal	cursor_top
	nop

.L500:
	lw	$31,60($sp)
.L516:
	move	$2,$23
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
	.end	loadtextfile
	.size	loadtextfile, .-loadtextfile
	.section	.rodata,code
	.align	2
.LC3:
	.ascii	": File Exists\012\000"
	.align	2
.LC4:
	.ascii	"Ovewrite:[Enter] / Stop:[ESC]\012\000"
	.section	.text,code
	.align	2
	.globl	overwritecheck
	.set	nomips16
	.set	nomicromips
	.ent	overwritecheck
	.type	overwritecheck, @function
overwritecheck:
	.frame	$sp,88,$31		# vars= 56, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-88
	li	$5,39			# 0x27
	addiu	$6,$sp,16
	sw	$16,72($sp)
	sw	$31,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	jal	FindFirst
	move	$16,$4

	bne	$2,$0,.L518
	move	$3,$0

	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$16

	lui	$4,%hi(.LC3)
	jal	printstr
	addiu	$4,$4,%lo(.LC3)

	jal	setcursorcolor
	li	$4,7			# 0x7

	lui	$4,%hi(.LC4)
	jal	printstr
	addiu	$4,$4,%lo(.LC4)

	li	$18,13			# 0xd
	li	$17,108			# 0x6c
	li	$16,27			# 0x1b
.L519:
	jal	inputchar
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0x00ff
	beq	$2,$18,.L518
	move	$3,$0

	beq	$2,$17,.L524
	lw	$31,84($sp)

	bne	$2,$16,.L519
	li	$3,-1			# 0xffffffffffffffff

.L518:
	lw	$31,84($sp)
.L524:
	move	$2,$3
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	j	$31
	addiu	$sp,$sp,88

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	overwritecheck
	.size	overwritecheck, .-overwritecheck
	.section	.rodata,code
	.align	2
.LC5:
	.ascii	"New FILE\000"
	.align	2
.LC6:
	.ascii	"New Dir\000"
	.section	.text,code
	.align	2
	.globl	printfilename
	.set	nomips16
	.set	nomicromips
	.ent	printfilename
	.type	printfilename, @function
printfilename:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	li	$2,-2			# 0xfffffffffffffffe
	sw	$16,16($sp)
	sw	$31,20($sp)
	move	$16,$6
	andi	$4,$4,0x00ff
	bne	$6,$2,.L526
	andi	$5,$5,0x00ff

	jal	setcursor
	li	$6,4			# 0x4

	jal	printchar
	li	$4,60			# 0x3c

	lui	$4,%hi(.LC5)
	j	.L529
	addiu	$4,$4,%lo(.LC5)

.L526:
	li	$2,-1			# 0xffffffffffffffff
	bne	$6,$2,.L527
	slt	$7,$6,$7

	jal	setcursor
	li	$6,4			# 0x4

	jal	printchar
	li	$4,60			# 0x3c

	lui	$4,%hi(.LC6)
	addiu	$4,$4,%lo(.LC6)
.L529:
	jal	printstr
	nop

	li	$4,62			# 0x3e
.L530:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	printchar
	addiu	$sp,$sp,24

.L527:
	beq	$7,$0,.L528
	nop

	jal	setcursor
	li	$6,6			# 0x6

	jal	printchar
	li	$4,91			# 0x5b

	li	$4,13			# 0xd
	mul	$3,$16,$4
	lw	$2,%gp_rel(filenames)($28)
	jal	printstr
	addu	$4,$3,$2

	j	.L530
	li	$4,93			# 0x5d

.L528:
	jal	setcursor
	li	$6,7			# 0x7

	li	$4,13			# 0xd
	mul	$3,$16,$4
	lw	$2,%gp_rel(filenames)($28)
	lw	$31,20($sp)
	lw	$16,16($sp)
	addu	$4,$3,$2
	j	printstr
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printfilename
	.size	printfilename, .-printfilename
	.section	.rodata,code
	.align	2
.LC7:
	.ascii	": \000"
	.align	2
.LC8:
	.ascii	"Select&[Enter] / [ESC]\012\000"
	.align	2
.LC9:
	.ascii	"Input File Name: \000"
	.align	2
.LC10:
	.ascii	"Input Dir Name: \000"
	.align	2
.LC11:
	.ascii	"Cannot Make Directory        \000"
	.section	.text,code
	.align	2
	.globl	select_dir_file
	.set	nomips16
	.set	nomicromips
	.ent	select_dir_file
	.type	select_dir_file, @function
select_dir_file:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$19,$4
	move	$16,$6
	move	$18,$5
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	jal	cls
	sw	$21,44($sp)

	move	$5,$0
	li	$6,7			# 0x7
	jal	setcursor
	move	$4,$0

	jal	printstr
	move	$4,$16

	lui	$4,%hi(.LC7)
	jal	printstr
	addiu	$4,$4,%lo(.LC7)

	jal	setcursorcolor
	li	$4,4			# 0x4

	lui	$4,%hi(.LC8)
	jal	printstr
	addiu	$4,$4,%lo(.LC8)

	li	$16,-2			# 0xfffffffffffffffe
	li	$20,48			# 0x30
	j	.L532
	li	$17,15			# 0xf

.L535:
	srl	$5,$2,31
	addu	$5,$5,$2
	sra	$5,$5,1
	beq	$16,$20,.L592
	addiu	$5,$5,1

.L533:
	andi	$4,$16,0x1
	mul	$4,$4,$17
	move	$6,$16
	addiu	$4,$4,1
	andi	$5,$5,0x00ff
	jal	printfilename
	move	$7,$18

	addiu	$16,$16,1
.L532:
	slt	$2,$16,$19
	bne	$2,$0,.L535
	addiu	$2,$16,2

.L592:
	lui	$21,%hi(TVRAM+1000)
	lui	$22,%hi(TVRAM+1040)
	lui	$fp,%hi(TVRAM+780)
	li	$16,-2			# 0xfffffffffffffffe
	li	$17,-2			# 0xfffffffffffffffe
	addiu	$21,$21,%lo(TVRAM+1000)
	addiu	$22,$22,%lo(TVRAM+1040)
	lui	$23,%hi(TVRAM+750)
	addiu	$fp,$fp,%lo(TVRAM+780)
	lui	$20,%hi(tempfile)
.L580:
	li	$2,15			# 0xf
.L606:
	andi	$4,$16,0x1
	mul	$4,$4,$2
	subu	$2,$16,$17
	srl	$5,$2,31
	addu	$5,$5,$2
	sra	$5,$5,1
	addiu	$5,$5,1
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	jal	setcursor
	li	$6,5			# 0x5

	jal	printchar
	li	$4,28			# 0x1c

	lw	$2,%gp_rel(cursor)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(cursor)($28)
.L538:
	jal	inputchar
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L538
	li	$4,32			# 0x20

	jal	printchar
	sw	$2,20($sp)

	move	$4,$0
	li	$5,26			# 0x1a
	jal	setcursor
	li	$6,7			# 0x7

	j	.L594
	move	$3,$0

.L540:
	li	$4,32			# 0x20
	sw	$3,16($sp)
	jal	printchar
	sw	$2,20($sp)

	lw	$3,16($sp)
	addiu	$3,$3,1
.L594:
	lbu	$4,%gp_rel(twidth)($28)
	addiu	$5,$4,-1
	slt	$5,$3,$5
	bne	$5,$0,.L540
	lw	$2,20($sp)

	li	$3,40			# 0x28
	beq	$2,$3,.L546
	sltu	$3,$2,41

	beq	$3,$0,.L547
	li	$3,102			# 0x66

	li	$3,37			# 0x25
	beq	$2,$3,.L543
	sltu	$3,$2,38

	beq	$3,$0,.L548
	li	$3,38			# 0x26

	li	$3,13			# 0xd
	beq	$2,$3,.L541
	li	$3,27			# 0x1b

	bne	$2,$3,.L606
	li	$2,15			# 0xf

	j	.L595
	li	$16,-3			# 0xfffffffffffffffd

.L548:
	beq	$2,$3,.L544
	li	$3,39			# 0x27

	bnel	$2,$3,.L606
	li	$2,15			# 0xf

	j	.L601
	andi	$2,$16,0x1

.L547:
	beq	$2,$3,.L545
	sltu	$3,$2,103

	beq	$3,$0,.L549
	li	$3,104			# 0x68

	li	$3,98			# 0x62
	beq	$2,$3,.L546
	li	$3,100			# 0x64

	bnel	$2,$3,.L606
	li	$2,15			# 0xf

	j	.L602
	andi	$2,$16,0x1

.L549:
	beq	$2,$3,.L544
	li	$3,108			# 0x6c

	bnel	$2,$3,.L606
	li	$2,15			# 0xf

	j	.L603
	li	$2,-2			# 0xfffffffffffffffe

.L544:
	bltz	$16,.L606
	li	$2,15			# 0xf

	addiu	$16,$16,-2
	slt	$2,$16,$17
	beq	$2,$0,.L606
	li	$2,15			# 0xf

	li	$2,30			# 0x1e
	bne	$4,$2,.L550
	li	$4,39			# 0x27

	li	$4,29			# 0x1d
	li	$5,25			# 0x19
	jal	setcursor
	li	$6,7			# 0x7

	lui	$3,%hi(TVRAM+60)
	j	.L551
	addiu	$3,$3,%lo(TVRAM+60)

.L552:
	sb	$4,0($2)
	lw	$2,%gp_rel(cursor)($28)
	lbu	$4,780($2)
	sb	$4,810($2)
	lw	$2,%gp_rel(cursor)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(cursor)($28)
.L551:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$4,$2,$3
	beql	$4,$0,.L552
	lbu	$4,-30($2)

	j	.L596
	lui	$4,%hi(TVRAM+30)

.L554:
	addiu	$2,$2,-1
	j	.L583
	sw	$2,%gp_rel(cursor)($28)

.L596:
	addiu	$4,$4,%lo(TVRAM+30)
	li	$3,32			# 0x20
.L583:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$5,$2,$4
	beql	$5,$0,.L554
	sb	$3,0($2)

	j	.L604
	addiu	$17,$17,-2

.L550:
	li	$5,25			# 0x19
	jal	setcursor
	li	$6,7			# 0x7

	lui	$3,%hi(TVRAM+80)
	j	.L556
	addiu	$3,$3,%lo(TVRAM+80)

.L557:
	sb	$4,0($2)
	lw	$2,%gp_rel(cursor)($28)
	lbu	$4,1040($2)
	sb	$4,1080($2)
	lw	$2,%gp_rel(cursor)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(cursor)($28)
.L556:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$4,$2,$3
	beql	$4,$0,.L557
	lbu	$4,-40($2)

	j	.L597
	lui	$4,%hi(TVRAM+40)

.L559:
	addiu	$2,$2,-1
	j	.L585
	sw	$2,%gp_rel(cursor)($28)

.L597:
	addiu	$4,$4,%lo(TVRAM+40)
	li	$3,32			# 0x20
.L585:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$5,$2,$4
	beql	$5,$0,.L559
	sb	$3,0($2)

	addiu	$17,$17,-2
.L604:
	li	$4,1			# 0x1
	li	$5,1			# 0x1
	move	$6,$17
	jal	printfilename
	move	$7,$18

	li	$4,16			# 0x10
	li	$5,1			# 0x1
	j	.L593
	addiu	$6,$17,1

.L546:
	addiu	$2,$16,2
	andi	$3,$2,0xfffe
	slt	$3,$3,$19
	beql	$3,$0,.L606
	li	$2,15			# 0xf

	slt	$3,$2,$19
	addiu	$16,$16,1
	movn	$16,$2,$3
	subu	$2,$16,$17
	slt	$2,$2,50
	bne	$2,$0,.L606
	li	$2,15			# 0xf

	move	$4,$0
	li	$5,1			# 0x1
	jal	setcursor
	li	$6,7			# 0x7

	lbu	$3,%gp_rel(twidth)($28)
	li	$2,30			# 0x1e
	bne	$3,$2,.L608
	lw	$2,%gp_rel(cursor)($28)

	j	.L598
	addiu	$3,$23,%lo(TVRAM+750)

.L563:
	sb	$4,0($2)
	lw	$2,%gp_rel(cursor)($28)
	lbu	$4,840($2)
	sb	$4,810($2)
	lw	$2,%gp_rel(cursor)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(cursor)($28)
.L598:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$4,$2,$3
	bnel	$4,$0,.L563
	lbu	$4,30($2)

	j	.L599
	li	$3,32			# 0x20

.L565:
	addiu	$2,$2,1
	sw	$2,%gp_rel(cursor)($28)
.L599:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$4,$2,$fp
	bnel	$4,$0,.L565
	sb	$3,0($2)

	j	.L605
	andi	$6,$16,0xfffe

.L567:
	sb	$3,0($2)
	lw	$2,%gp_rel(cursor)($28)
	lbu	$3,1120($2)
	sb	$3,1080($2)
	lw	$2,%gp_rel(cursor)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(cursor)($28)
	lw	$2,%gp_rel(cursor)($28)
.L608:
	sltu	$3,$2,$21
	bnel	$3,$0,.L567
	lbu	$3,40($2)

	j	.L600
	li	$3,32			# 0x20

.L569:
	addiu	$2,$2,1
	sw	$2,%gp_rel(cursor)($28)
.L600:
	lw	$2,%gp_rel(cursor)($28)
	sltu	$4,$2,$22
	bnel	$4,$0,.L569
	sb	$3,0($2)

	andi	$6,$16,0xfffe
.L605:
	li	$4,1			# 0x1
	li	$5,25			# 0x19
	jal	printfilename
	move	$7,$18

	ori	$6,$16,0x1
	slt	$2,$6,$19
	beq	$2,$0,.L580
	addiu	$17,$17,2

	li	$4,16			# 0x10
	li	$5,25			# 0x19
.L593:
	jal	printfilename
	move	$7,$18

	j	.L606
	li	$2,15			# 0xf

.L543:
	andi	$2,$16,0x1
.L602:
	j	.L580
	subu	$16,$16,$2

.L545:
	andi	$2,$16,0x1
.L601:
	bne	$2,$0,.L606
	li	$2,15			# 0xf

	addiu	$2,$16,1
	slt	$3,$2,$19
	j	.L580
	movn	$16,$2,$3

.L541:
	li	$2,-2			# 0xfffffffffffffffe
.L603:
	bne	$16,$2,.L570
	li	$2,-1			# 0xffffffffffffffff

	li	$5,26			# 0x1a
	li	$6,4			# 0x4
	jal	setcursor
	move	$4,$0

	lui	$4,%hi(.LC9)
	jal	printstr
	addiu	$4,$4,%lo(.LC9)

	jal	setcursorcolor
	li	$4,7			# 0x7

	addiu	$4,$20,%lo(tempfile)
	li	$5,12			# 0xc
	jal	lineinput
	sb	$0,%lo(tempfile)($20)

	bltz	$2,.L580
	lbu	$2,%lo(tempfile)($20)

	beq	$2,$0,.L606
	li	$2,15			# 0xf

	j	.L607
	lw	$31,60($sp)

.L570:
	bne	$16,$2,.L571
	li	$5,26			# 0x1a

	li	$6,4			# 0x4
	jal	setcursor
	move	$4,$0

	lui	$4,%hi(.LC10)
	jal	printstr
	addiu	$4,$4,%lo(.LC10)

	jal	setcursorcolor
	li	$4,7			# 0x7

	addiu	$3,$20,%lo(tempfile)
	move	$4,$3
	li	$5,12			# 0xc
	sw	$3,16($sp)
	jal	lineinput
	sb	$0,%lo(tempfile)($20)

	bltz	$2,.L580
	lw	$3,16($sp)

	jal	FSmkdir
	move	$4,$3

	beq	$2,$0,.L542
	move	$4,$0

	li	$5,26			# 0x1a
	jal	setcursor
	li	$6,4			# 0x4

	lui	$4,%hi(.LC11)
	jal	printstr
	addiu	$4,$4,%lo(.LC11)

	j	.L606
	li	$2,15			# 0xf

.L571:
	li	$3,13			# 0xd
	mul	$4,$16,$3
	lw	$2,%gp_rel(filenames)($28)
	addu	$3,$4,$2
	lui	$2,%hi(tempfile)
	j	.L572
	addiu	$2,$2,%lo(tempfile)

.L573:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L572:
	lbu	$4,0($3)
	bnel	$4,$0,.L573
	sb	$4,0($2)

	sb	$0,0($2)
.L595:
.L542:
	lw	$31,60($sp)
.L607:
	move	$2,$16
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
	.end	select_dir_file
	.size	select_dir_file, .-select_dir_file
	.section	.rodata,code
	.align	2
.LC12:
	.ascii	"*.*\000"
	.align	2
.LC13:
	.ascii	"*.BAS\000"
	.align	2
.LC14:
	.ascii	"*.TXT\000"
	.align	2
.LC15:
	.ascii	"*.INI\000"
	.section	.text,code
	.align	2
	.globl	getfilelist
	.set	nomips16
	.set	nomicromips
	.ent	getfilelist
	.type	getfilelist, @function
getfilelist:
	.frame	$sp,96,$31		# vars= 56, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-96
	sw	$16,76($sp)
	move	$16,$4
	lui	$4,%hi(.LC12)
	addiu	$4,$4,%lo(.LC12)
	li	$5,16			# 0x10
	addiu	$6,$sp,16
	sw	$17,80($sp)
	sw	$31,92($sp)
	sw	$19,88($sp)
	jal	FindFirst
	sw	$18,84($sp)

	bne	$2,$0,.L610
	move	$17,$0

	li	$19,13			# 0xd
	li	$18,200			# 0xc8
	mul	$4,$17,$19
.L635:
	lw	$2,%gp_rel(filenames)($28)
	addiu	$3,$sp,16
	j	.L611
	addu	$2,$4,$2

.L612:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L611:
	lbu	$4,0($3)
	bnel	$4,$0,.L612
	sb	$4,0($2)

	sb	$0,0($2)
	addiu	$4,$sp,16
	jal	FindNext
	addiu	$17,$17,1

	bnel	$2,$0,.L634
	slt	$2,$17,200

	bne	$17,$18,.L635
	mul	$4,$17,$19

.L610:
	slt	$2,$17,200
.L634:
	beq	$2,$0,.L614
	sw	$17,0($16)

	lui	$4,%hi(.LC13)
	addiu	$4,$4,%lo(.LC13)
	li	$5,39			# 0x27
	jal	FindFirst
	addiu	$6,$sp,16

	bne	$2,$0,.L636
	lui	$4,%hi(.LC14)

	li	$16,13			# 0xd
	mul	$16,$17,$16
	li	$18,200			# 0xc8
.L619:
	lw	$2,%gp_rel(filenames)($28)
	addiu	$3,$sp,16
	j	.L616
	addu	$2,$2,$16

.L617:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L616:
	lbu	$4,0($3)
	bnel	$4,$0,.L617
	sb	$4,0($2)

	sb	$0,0($2)
	addiu	$4,$sp,16
	jal	FindNext
	addiu	$17,$17,1

	bnel	$2,$0,.L618
	slt	$2,$17,200

	bne	$17,$18,.L619
	addiu	$16,$16,13

	j	.L633
	lw	$31,92($sp)

.L618:
	beq	$2,$0,.L633
	lw	$31,92($sp)

	lui	$4,%hi(.LC14)
.L636:
	addiu	$4,$4,%lo(.LC14)
	li	$5,39			# 0x27
	jal	FindFirst
	addiu	$6,$sp,16

	bne	$2,$0,.L637
	lui	$4,%hi(.LC15)

	li	$16,13			# 0xd
	mul	$16,$17,$16
.L624:
	lw	$2,%gp_rel(filenames)($28)
	addiu	$3,$sp,16
	j	.L621
	addu	$2,$2,$16

.L622:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L621:
	lbu	$4,0($3)
	bnel	$4,$0,.L622
	sb	$4,0($2)

	sb	$0,0($2)
	addiu	$4,$sp,16
	jal	FindNext
	addiu	$17,$17,1

	bne	$2,$0,.L623
	slt	$3,$17,200

	bne	$3,$0,.L624
	addiu	$16,$16,13

	j	.L633
	lw	$31,92($sp)

.L623:
	beq	$3,$0,.L633
	lw	$31,92($sp)

	lui	$4,%hi(.LC15)
.L637:
	addiu	$4,$4,%lo(.LC15)
	li	$5,39			# 0x27
	jal	FindFirst
	addiu	$6,$sp,16

	bne	$2,$0,.L633
	lw	$31,92($sp)

	li	$16,13			# 0xd
	mul	$16,$17,$16
.L627:
	lw	$2,%gp_rel(filenames)($28)
	addiu	$3,$sp,16
	j	.L625
	addu	$2,$2,$16

.L626:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L625:
	lbu	$4,0($3)
	bnel	$4,$0,.L626
	sb	$4,0($2)

	sb	$0,0($2)
	addiu	$4,$sp,16
	jal	FindNext
	addiu	$17,$17,1

	bne	$2,$0,.L614
	slt	$2,$17,200

	bne	$2,$0,.L627
	addiu	$16,$16,13

.L614:
	lw	$31,92($sp)
.L633:
	move	$2,$17
	lw	$19,88($sp)
	lw	$18,84($sp)
	lw	$17,80($sp)
	lw	$16,76($sp)
	j	$31
	addiu	$sp,$sp,96

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getfilelist
	.size	getfilelist, .-getfilelist
	.section	.rodata,code
	.align	2
.LC16:
	.ascii	"Save To SD Card\012\000"
	.align	2
.LC17:
	.ascii	"Cannot Get Current Dir\012\000"
	.align	2
.LC18:
	.ascii	"Current Directory is\012\000"
	.align	2
.LC19:
	.ascii	"Input File Name + [Enter]\012\000"
	.align	2
.LC20:
	.ascii	"[ESC] Select File/Dir or Quit\012\000"
	.align	2
.LC21:
	.ascii	"Save\000"
	.align	2
.LC22:
	.ascii	"Writing...\012\000"
	.align	2
.LC23:
	.ascii	"OK\000"
	.align	2
.LC24:
	.ascii	"~TEMP.BAS\000"
	.align	2
.LC25:
	.ascii	"Bad File Name or File Error\012\000"
	.align	2
.LC26:
	.ascii	"Cannot Write\012\000"
	.section	.text,code
	.align	2
	.globl	save_as
	.set	nomips16
	.set	nomicromips
	.ent	save_as
	.type	save_as, @function
save_as:
	.frame	$sp,72,$31		# vars= 16, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$16,32($sp)
	sw	$fp,64($sp)
	move	$16,$4
	sw	$23,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$18,40($sp)
	jal	cls
	sw	$17,36($sp)

	move	$4,$0
	move	$5,$0
	jal	setcursor
	li	$6,7			# 0x7

	lui	$4,%hi(.LC16)
	lui	$20,%hi(currentfile)
	jal	printstr
	addiu	$4,$4,%lo(.LC16)

	lbu	$2,%lo(currentfile)($20)
	lui	$19,%hi(tempfile)
	movz	$16,$0,$2
	addiu	$3,$20,%lo(currentfile)
	j	.L640
	addiu	$2,$19,%lo(tempfile)

.L641:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L640:
	lbu	$4,0($3)
	bnel	$4,$0,.L641
	sb	$4,0($2)

	lui	$17,%hi(.LC17)
	sb	$0,0($2)
	addiu	$17,$17,%lo(.LC17)
	lw	$4,%gp_rel(cwdpath)($28)
.L671:
	jal	FSgetcwd
	li	$5,128			# 0x80

	bne	$2,$0,.L642
	nop

	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$17

	jal	filesystemretry
	nop

	beq	$2,$0,.L671
	lw	$4,%gp_rel(cwdpath)($28)

	j	.L669
	lw	$31,68($sp)

.L642:
	jal	setcursorcolor
	li	$4,7			# 0x7

	lui	$4,%hi(.LC18)
	jal	printstr
	addiu	$4,$4,%lo(.LC18)

	lw	$4,%gp_rel(cwdpath)($28)
	jal	printstr
	lui	$22,%hi(.LC19)

	lui	$23,%hi(.LC20)
	jal	printchar
	li	$4,10			# 0xa

	addiu	$22,$22,%lo(.LC19)
	addiu	$23,$23,%lo(.LC20)
	lui	$fp,%hi(tempfile)
.L660:
	bne	$16,$0,.L670
	lui	$2,%hi(.LC22)

	addiu	$18,$19,%lo(tempfile)
.L665:
	jal	printstr
	move	$4,$22

	jal	printstr
	move	$4,$23

	move	$4,$18
	li	$5,12			# 0xc
	jal	lineinput
	move	$17,$18

	bgez	$2,.L666
	lbu	$2,%lo(tempfile)($fp)

	li	$18,-3			# 0xfffffffffffffffd
	li	$21,-2			# 0xfffffffffffffffe
.L667:
	jal	getfilelist
	addiu	$4,$sp,16

	lw	$5,16($sp)
	lui	$6,%hi(.LC21)
	move	$4,$2
	jal	select_dir_file
	addiu	$6,$6,%lo(.LC21)

	jal	cls
	sw	$2,24($sp)

	lw	$2,24($sp)
	bne	$2,$18,.L649
	nop

	jal	FSchdir
	lw	$4,%gp_rel(cwdpath)($28)

	j	.L669
	lw	$31,68($sp)

.L649:
	bne	$2,$21,.L650
	lw	$3,16($sp)

	jal	overwritecheck
	move	$4,$17

	bne	$2,$0,.L667
	lui	$2,%hi(.LC22)

	j	.L670
	nop

.L650:
	slt	$2,$2,$3
	beq	$2,$0,.L670
	lui	$2,%hi(.LC22)

	jal	FSchdir
	move	$4,$17

	j	.L667
	nop

.L666:
	beq	$2,$0,.L665
	nop

	jal	overwritecheck
	move	$4,$18

	bne	$2,$0,.L665
	lui	$2,%hi(.LC22)

.L670:
	jal	printstr
	addiu	$4,$2,%lo(.LC22)

	jal	savetextfile
	addiu	$4,$19,%lo(tempfile)

	bnel	$2,$0,.L653
	li	$4,4			# 0x4

	lui	$4,%hi(.LC23)
	jal	printstr
	addiu	$4,$4,%lo(.LC23)

	lui	$4,%hi(.LC24)
	jal	FSremove
	addiu	$4,$4,%lo(.LC24)

	lui	$2,%hi(tempfile)
	addiu	$20,$20,%lo(currentfile)
	j	.L654
	addiu	$2,$2,%lo(tempfile)

.L655:
	addiu	$2,$2,1
	addiu	$20,$20,1
.L654:
	lbu	$3,0($2)
	bnel	$3,$0,.L655
	sb	$3,0($20)

	lw	$4,%gp_rel(cwdpath)($28)
	li	$5,128			# 0x80
	jal	FSgetcwd
	sb	$0,0($20)

	li	$4,60			# 0x3c
	jal	wait60thsec
	sw	$0,%gp_rel(edited)($28)

	j	.L669
	lw	$31,68($sp)

.L653:
	jal	setcursorcolor
	sw	$2,24($sp)

	lw	$2,24($sp)
	li	$3,-2			# 0xfffffffffffffffe
	bnel	$2,$3,.L656
	lui	$4,%hi(.LC26)

	lui	$4,%hi(.LC25)
	j	.L668
	addiu	$4,$4,%lo(.LC25)

.L656:
	addiu	$4,$4,%lo(.LC26)
.L668:
	jal	printstr
	nop

	jal	filesystemretry
	nop

	beq	$2,$0,.L660
	lw	$31,68($sp)

.L669:
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	save_as
	.size	save_as, .-save_as
	.section	.rodata,code
	.align	2
.LC27:
	.ascii	"Save Editing File?\012\000"
	.align	2
.LC28:
	.ascii	"Save:[Enter] / Not Save:[ESC]\012\000"
	.section	.text,code
	.align	2
	.globl	newtext
	.set	nomips16
	.set	nomicromips
	.ent	newtext
	.type	newtext, @function
newtext:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(edited)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	beq	$2,$0,.L673
	sw	$16,16($sp)

	lw	$2,%gp_rel(num)($28)
	beq	$2,$0,.L673
	nop

	jal	cls
	li	$18,13			# 0xd

	jal	setcursorcolor
	li	$4,7			# 0x7

	lui	$4,%hi(.LC27)
	jal	printstr
	addiu	$4,$4,%lo(.LC27)

	lui	$4,%hi(.LC28)
	jal	printstr
	addiu	$4,$4,%lo(.LC28)

	li	$17,108			# 0x6c
	li	$16,27			# 0x1b
.L676:
	jal	inputchar
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0x00ff
	beq	$2,$18,.L674
	nop

	bne	$2,$17,.L675
	nop

.L674:
	jal	save_as
	move	$4,$0

	j	.L673
	nop

.L675:
	bne	$2,$16,.L676
	nop

.L673:
	jal	inittextbuf
	nop

	jal	cursor_top
	nop

	lw	$31,28($sp)
	lui	$2,%hi(currentfile)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	sb	$0,%lo(currentfile)($2)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	newtext
	.size	newtext, .-newtext
	.section	.rodata,code
	.align	2
.LC29:
	.ascii	"Make Self-Running Application\012\012\000"
	.align	2
.LC30:
	.ascii	"(Work on Root Directory)\012\000"
	.align	2
.LC31:
	.ascii	"Cannot Change To Root Dir\012\000"
	.align	2
.LC32:
	.ascii	"Input File Name (xxx.BAS)\012\000"
	.align	2
.LC33:
	.ascii	"File Name Must Be xxx.BAS\012\000"
	.align	2
.LC34:
	.ascii	"Writing BASIC File\012\000"
	.align	2
.LC35:
	.ascii	"OK\012\012\000"
	.align	2
.LC36:
	.ascii	"Copying\012\000"
	.align	2
.LC37:
	.ascii	"MACHIKAZ.HEX\000"
	.align	2
.LC38:
	.ascii	" To \000"
	.align	2
.LC39:
	.ascii	"\012Wait For A While\000"
	.align	2
.LC40:
	.ascii	"\012Done\000"
	.align	2
.LC41:
	.ascii	" Not Found\012\000"
	.align	2
.LC42:
	.ascii	"Write Error\012\000"
	.section	.text,code
	.align	2
	.globl	msra
	.set	nomips16
	.set	nomicromips
	.ent	msra
	.type	msra, @function
msra:
	.frame	$sp,64,$31		# vars= 8, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$16,28($sp)
	sw	$23,56($sp)
	sw	$22,52($sp)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	jal	cls
	sw	$17,32($sp)

	move	$5,$0
	li	$6,7			# 0x7
	jal	setcursor
	move	$4,$0

	lui	$4,%hi(.LC29)
	jal	printstr
	addiu	$4,$4,%lo(.LC29)

	lui	$4,%hi(.LC30)
	addiu	$4,$4,%lo(.LC30)
	jal	printstr
	lui	$16,%hi(.LC17)

	addiu	$16,$16,%lo(.LC17)
	lw	$4,%gp_rel(cwdpath)($28)
.L712:
	jal	FSgetcwd
	li	$5,128			# 0x80

	bnel	$2,$0,.L679
	lui	$17,%hi(ROOTDIR)

	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$16

	jal	filesystemretry
	nop

	beq	$2,$0,.L712
	lw	$4,%gp_rel(cwdpath)($28)

	j	.L711
	lw	$31,60($sp)

.L679:
	lui	$16,%hi(.LC31)
	addiu	$17,$17,%lo(ROOTDIR)
	addiu	$16,$16,%lo(.LC31)
.L708:
	jal	FSchdir
	move	$4,$17

	bne	$2,$0,.L682
	lui	$18,%hi(tempfile)

	lui	$23,%hi(currentfile)
	addiu	$2,$18,%lo(tempfile)
	j	.L683
	addiu	$3,$23,%lo(currentfile)

.L682:
	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$16

	jal	filesystemretry
	nop

	beq	$2,$0,.L708
	lw	$31,60($sp)

	j	.L714
	lw	$23,56($sp)

.L684:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L683:
	lbu	$4,0($3)
	bnel	$4,$0,.L684
	sb	$4,0($2)

	lui	$17,%hi(.LC32)
	lui	$19,%hi(tempfile+13)
	lui	$20,%hi(.LC33)
	lui	$21,%hi(.LC34)
	sb	$0,0($2)
	addiu	$17,$17,%lo(.LC32)
	addiu	$19,$19,%lo(tempfile+13)
	addiu	$20,$20,%lo(.LC33)
	addiu	$21,$21,%lo(.LC34)
	lui	$22,%hi(.LC26)
.L707:
	jal	setcursorcolor
	li	$4,7			# 0x7

	addiu	$16,$18,%lo(tempfile)
	jal	printstr
	move	$4,$17

	move	$4,$16
	jal	lineinput
	li	$5,12			# 0xc

	bltz	$2,.L686
	move	$2,$16

	j	.L687
	li	$4,46			# 0x2e

.L686:
	lw	$4,%gp_rel(cwdpath)($28)
	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	FSchdir
	addiu	$sp,$sp,64

.L689:
.L687:
	lbu	$3,0($2)
	beql	$3,$4,.L713
	addiu	$4,$2,4

	bnel	$3,$0,.L689
	addiu	$2,$2,1

	addiu	$4,$2,4
.L713:
	sltu	$5,$4,$19
	beq	$5,$0,.L690
	li	$5,46			# 0x2e

	bne	$3,$5,.L690
	li	$5,98			# 0x62

	lbu	$3,1($2)
	beq	$3,$5,.L691
	li	$5,66			# 0x42

	bne	$3,$5,.L690
	nop

.L691:
	lbu	$3,2($2)
	li	$5,97			# 0x61
	beq	$3,$5,.L692
	li	$5,65			# 0x41

	bne	$3,$5,.L690
	nop

.L692:
	lbu	$2,3($2)
	li	$3,115			# 0x73
	beq	$2,$3,.L693
	li	$3,83			# 0x53

	bne	$2,$3,.L690
	nop

.L693:
	lbu	$2,0($4)
	beq	$2,$0,.L694
	nop

.L690:
	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$20

	j	.L707
	nop

.L694:
	jal	overwritecheck
	move	$4,$16

	bne	$2,$0,.L707
	nop

	jal	printstr
	move	$4,$21

	jal	savetextfile
	move	$4,$16

	beql	$2,$0,.L696
	lui	$4,%hi(.LC35)

	li	$4,4			# 0x4
	jal	setcursorcolor
	sw	$2,16($sp)

	lw	$2,16($sp)
	li	$3,-2			# 0xfffffffffffffffe
	bne	$2,$3,.L709
	addiu	$4,$22,%lo(.LC26)

	lui	$4,%hi(.LC25)
	addiu	$4,$4,%lo(.LC25)
.L709:
	jal	printstr
	nop

	jal	filesystemretry
	nop

	beq	$2,$0,.L707
	nop

	jal	FSchdir
	lw	$4,%gp_rel(cwdpath)($28)

	beq	$2,$0,.L711
	lw	$31,60($sp)

	lw	$2,%gp_rel(cwdpath)($28)
	li	$3,92			# 0x5c
	sb	$3,0($2)
	lw	$2,%gp_rel(cwdpath)($28)
	j	.L678
	sb	$0,1($2)

.L696:
	jal	printstr
	addiu	$4,$4,%lo(.LC35)

	lui	$4,%hi(.LC24)
	jal	FSremove
	addiu	$4,$4,%lo(.LC24)

	addiu	$23,$23,%lo(currentfile)
	j	.L699
	move	$2,$16

.L700:
	addiu	$2,$2,1
	addiu	$23,$23,1
.L699:
	lbu	$3,0($2)
	bnel	$3,$0,.L700
	sb	$3,0($23)

	li	$3,72			# 0x48
	sb	$0,0($23)
	sw	$0,%gp_rel(edited)($28)
	sb	$3,-3($2)
	li	$3,69			# 0x45
	sb	$3,-2($2)
	li	$3,88			# 0x58
	sb	$3,-1($2)
	jal	overwritecheck
	move	$4,$16

	bne	$2,$0,.L711
	lw	$31,60($sp)

	lui	$4,%hi(.LC36)
	lui	$17,%hi(.LC37)
	addiu	$4,$4,%lo(.LC36)
	jal	printstr
	addiu	$17,$17,%lo(.LC37)

	jal	printstr
	move	$4,$17

	lui	$4,%hi(.LC38)
	jal	printstr
	addiu	$4,$4,%lo(.LC38)

	jal	printstr
	move	$4,$16

	lui	$4,%hi(.LC39)
	jal	printstr
	addiu	$4,$4,%lo(.LC39)

	move	$4,$17
	jal	sdfilecopy
	move	$5,$16

	lw	$4,%gp_rel(cwdpath)($28)
	jal	FSchdir
	move	$16,$2

	beq	$2,$0,.L701
	lw	$2,%gp_rel(cwdpath)($28)

	li	$3,92			# 0x5c
	sb	$3,0($2)
	lw	$2,%gp_rel(cwdpath)($28)
	sb	$0,1($2)
.L701:
	bne	$16,$0,.L702
	lui	$4,%hi(.LC40)

	jal	printstr
	addiu	$4,$4,%lo(.LC40)

	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	li	$4,120			# 0x78
	j	wait60thsec
	addiu	$sp,$sp,64

.L702:
	jal	setcursorcolor
	li	$4,4			# 0x4

	li	$2,-2			# 0xfffffffffffffffe
	bne	$16,$2,.L703
	li	$2,-3			# 0xfffffffffffffffd

	jal	printstr
	move	$4,$17

	lui	$4,%hi(.LC41)
	j	.L710
	addiu	$4,$4,%lo(.LC41)

.L703:
	bne	$16,$2,.L704
	nop

	lui	$4,%hi(.LC42)
	addiu	$4,$4,%lo(.LC42)
.L710:
	jal	printstr
	nop

.L704:
	jal	setcursorcolor
	li	$4,7			# 0x7

	lui	$4,%hi(Message1)
	jal	printstr
	addiu	$4,$4,%lo(Message1)

	lw	$31,60($sp)
	lw	$23,56($sp)
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	inputchar
	addiu	$sp,$sp,64

.L678:
	lw	$31,60($sp)
.L711:
	lw	$23,56($sp)
.L714:
	lw	$22,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	msra
	.size	msra, .-msra
	.section	.rodata,code
	.align	2
.LC43:
	.ascii	"Save Program Before Load?\012\000"
	.align	2
.LC44:
	.ascii	".BAS or .TXT File Not Found\012\000"
	.align	2
.LC45:
	.ascii	"Load\000"
	.align	2
.LC46:
	.ascii	"File Too Big                 \000"
	.align	2
.LC47:
	.ascii	"Cannot Open File             \000"
	.section	.text,code
	.align	2
	.globl	fileload
	.set	nomips16
	.set	nomicromips
	.ent	fileload
	.type	fileload, @function
fileload:
	.frame	$sp,64,$31		# vars= 16, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	jal	cls
	sw	$16,36($sp)

	lw	$2,%gp_rel(edited)($28)
	beq	$2,$0,.L746
	lui	$16,%hi(.LC17)

	lw	$2,%gp_rel(num)($28)
	beq	$2,$0,.L741
	addiu	$16,$16,%lo(.LC17)

	jal	setcursorcolor
	li	$4,7			# 0x7

	lui	$4,%hi(.LC43)
	jal	printstr
	addiu	$4,$4,%lo(.LC43)

	lui	$4,%hi(.LC28)
	jal	printstr
	addiu	$4,$4,%lo(.LC28)

	li	$18,13			# 0xd
	li	$17,108			# 0x6c
	li	$16,27			# 0x1b
.L719:
	jal	inputchar
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0x00ff
	beq	$2,$18,.L717
	nop

	bne	$2,$17,.L718
	nop

.L717:
	jal	save_as
	move	$4,$0

	j	.L746
	lui	$16,%hi(.LC17)

.L718:
	bne	$2,$16,.L719
	nop

	lui	$16,%hi(.LC17)
.L746:
	addiu	$16,$16,%lo(.LC17)
.L741:
	lw	$4,%gp_rel(cwdpath)($28)
.L747:
	jal	FSgetcwd
	li	$5,128			# 0x80

	bne	$2,$0,.L739
	lui	$20,%hi(.LC45)

	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	move	$4,$16

	jal	filesystemretry
	nop

	beq	$2,$0,.L747
	lw	$4,%gp_rel(cwdpath)($28)

	j	.L721
	li	$2,-1			# 0xffffffffffffffff

.L739:
	lui	$16,%hi(.LC46)
	lui	$19,%hi(tempfile)
	addiu	$20,$20,%lo(.LC45)
	addiu	$16,$16,%lo(.LC46)
	lui	$21,%hi(.LC47)
	addiu	$19,$19,%lo(tempfile)
.L742:
	jal	getfilelist
	addiu	$4,$sp,16

	bne	$2,$0,.L723
	lw	$5,16($sp)

	jal	setcursorcolor
	li	$4,4			# 0x4

	lui	$4,%hi(.LC44)
	jal	printstr
	addiu	$4,$4,%lo(.LC44)

	lui	$4,%hi(Message1)
	jal	printstr
	addiu	$4,$4,%lo(Message1)

	jal	inputchar
	nop

	j	.L745
	nop

.L723:
	move	$4,$2
	jal	select_dir_file
	move	$6,$20

	move	$18,$2
	li	$2,-3			# 0xfffffffffffffffd
	bne	$18,$2,.L724
	li	$17,-2			# 0xfffffffffffffffe

.L745:
	jal	FSchdir
	lw	$4,%gp_rel(cwdpath)($28)

	j	.L737
	li	$2,-1			# 0xffffffffffffffff

.L724:
	bne	$18,$17,.L725
	lw	$2,16($sp)

	jal	loadtextfile
	move	$4,$19

	bnel	$2,$18,.L726
	li	$3,-1			# 0xffffffffffffffff

	jal	newtext
	sw	$0,%gp_rel(edited)($28)

	lui	$2,%hi(currentfile)
.L748:
	lui	$3,%hi(tempfile)
	addiu	$2,$2,%lo(currentfile)
	j	.L727
	addiu	$3,$3,%lo(tempfile)

.L726:
	bne	$2,$3,.L748
	lui	$2,%hi(currentfile)

	move	$4,$0
	li	$5,26			# 0x1a
	jal	setcursor
	li	$6,4			# 0x4

	j	.L743
	move	$4,$16

.L730:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L727:
	lbu	$4,0($3)
	bnel	$4,$0,.L730
	sb	$4,0($2)

	sb	$0,0($2)
	lw	$4,%gp_rel(cwdpath)($28)
	jal	FSgetcwd
	li	$5,128			# 0x80

	j	.L721
	move	$2,$0

.L725:
	slt	$2,$18,$2
	beq	$2,$0,.L731
	li	$2,13			# 0xd

	jal	FSchdir
	move	$4,$19

	j	.L742
	nop

.L731:
	mul	$18,$18,$2
	lw	$4,%gp_rel(filenames)($28)
	jal	loadtextfile
	addu	$4,$4,$18

	bne	$2,$0,.L732
	move	$4,$0

	lw	$4,%gp_rel(cwdpath)($28)
	jal	FSgetcwd
	li	$5,128			# 0x80

	lw	$2,%gp_rel(filenames)($28)
	addu	$18,$2,$18
	lui	$2,%hi(currentfile)
	j	.L733
	addiu	$2,$2,%lo(currentfile)

.L734:
	addiu	$18,$18,1
	addiu	$2,$2,1
.L733:
	lbu	$3,0($18)
	bnel	$3,$0,.L734
	sb	$3,0($2)

	sb	$0,0($2)
	j	.L721
	move	$2,$0

.L732:
	li	$5,26			# 0x1a
	li	$6,4			# 0x4
	jal	setcursor
	sw	$2,24($sp)

	lw	$2,24($sp)
	beq	$2,$17,.L743
	addiu	$4,$21,%lo(.LC47)

	move	$4,$16
.L743:
	jal	printstr
	nop

	jal	wait60thsec
	li	$4,60			# 0x3c

	j	.L742
	nop

.L737:
.L721:
	lw	$31,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fileload
	.size	fileload, .-fileload
	.align	2
	.globl	changewidth
	.set	nomips16
	.set	nomicromips
	.ent	changewidth
	.type	changewidth, @function
changewidth:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(twidth)($28)
	addiu	$sp,$sp,-24
	li	$2,30			# 0x1e
	sw	$31,20($sp)
	beq	$3,$2,.L752
	li	$4,1			# 0x1

	move	$4,$0
.L752:
	jal	set_width
	nop

	jal	cursor_top
	nop

	lw	$31,20($sp)
	j	redraw
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	changewidth
	.size	changewidth, .-changewidth
	.section	.rodata,code
	.align	2
.LC48:
	.ascii	"~WORKDIR.TMP\000"
	.align	2
.LC49:
	.ascii	"Cannot Open Work Dir File\012\000"
	.align	2
.LC50:
	.ascii	"Cannot Write Work Dir File\012\000"
	.align	2
.LC51:
	.ascii	"Cannot Change To CWD\012\000"
	.align	2
.LC52:
	.ascii	"Cannot Write To SD Card\012\000"
	.align	2
.LC53:
	.ascii	"Cannot Read Work Dir File\012\000"
	.align	2
.LC54:
	.ascii	"Cannot Load From SD Card\012\000"
	.section	.text,code
	.align	2
	.globl	run
	.set	nomips16
	.set	nomicromips
	.ent	run
	.type	run, @function
run:
	.frame	$sp,72,$31		# vars= 16, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	move	$22,$4
	sw	$fp,64($sp)
	sw	$23,60($sp)
	jal	cls
	lui	$16,%hi(ROOTDIR)

	lui	$17,%hi(.LC48)
	move	$4,$0
	move	$5,$0
	li	$6,7			# 0x7
	jal	setcursor
	lui	$19,%hi(.LC2)

	addiu	$16,$16,%lo(ROOTDIR)
	lui	$18,%hi(.LC31)
	addiu	$19,$19,%lo(.LC2)
	addiu	$20,$17,%lo(.LC48)
	lui	$21,%hi(.LC50)
.L789:
	jal	FSchdir
	move	$4,$16

	beq	$2,$0,.L755
	addiu	$4,$17,%lo(.LC48)

	jal	setcursorcolor
	li	$4,4			# 0x4

	jal	printstr
	addiu	$4,$18,%lo(.LC31)

	jal	filesystemretry
	nop

	beq	$2,$0,.L789
	lw	$31,68($sp)

	j	.L807
	lw	$fp,64($sp)

.L755:
	jal	FSfopen
	move	$5,$19

	bne	$2,$0,.L758
	move	$fp,$2

	jal	setcursorcolor
	li	$4,4			# 0x4

	lui	$4,%hi(.LC49)
	j	.L802
	addiu	$4,$4,%lo(.LC49)

.L758:
	lw	$4,%gp_rel(cwdpath)($28)
	move	$23,$4
.L760:
	lbu	$2,0($23)
	bnel	$2,$0,.L760
	addiu	$23,$23,1

	li	$3,1			# 0x1
	subu	$6,$3,$4
	li	$5,1			# 0x1
	addu	$6,$23,$6
	move	$7,$fp
	jal	FSfwrite
	sw	$3,24($sp)

	move	$4,$fp
	jal	FSfclose
	sw	$2,20($sp)

	lw	$2,%gp_rel(cwdpath)($28)
	lw	$3,24($sp)
	lw	$5,20($sp)
	subu	$3,$3,$2
	addu	$23,$3,$23
	beql	$5,$23,.L790
	lui	$16,%hi(.LC24)

	jal	FSremove
	move	$4,$20

	jal	setcursorcolor
	li	$4,4			# 0x4

	addiu	$4,$21,%lo(.LC50)
.L802:
	jal	printstr
	nop

	jal	filesystemretry
	nop

	beq	$2,$0,.L789
	lw	$4,%gp_rel(cwdpath)($28)

	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	FSchdir
	addiu	$sp,$sp,72

.L790:
	lui	$19,%hi(.LC52)
	addiu	$16,$16,%lo(.LC24)
	addiu	$19,$19,%lo(.LC52)
	lui	$18,%hi(.LC51)
.L791:
	jal	FSchdir
	lw	$4,%gp_rel(cwdpath)($28)

	beq	$2,$0,.L763
	nop

	jal	setcursorcolor
	li	$4,4			# 0x4

	j	.L799
	addiu	$4,$18,%lo(.LC51)

.L763:
	jal	savetextfile
	move	$4,$16

	beq	$2,$0,.L765
	lui	$17,%hi(.LC24)

	jal	setcursorcolor
	li	$4,4			# 0x4

	move	$4,$19
.L799:
	jal	printstr
	nop

	jal	filesystemretry
	nop

	beq	$2,$0,.L791
	lw	$31,68($sp)

	j	.L753
	lw	$fp,64($sp)

.L765:
	lw	$4,%gp_rel(disptopbp)($28)
	jal	bpixtopos
	lhu	$5,%gp_rel(disptopix)($28)

	lw	$4,%gp_rel(cursorbp)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	jal	bpixtopos
	move	$23,$2

	move	$fp,$2
	lw	$2,%gp_rel(edited)($28)
	move	$4,$0
	sw	$2,16($sp)
	jal	set_width
	lbu	$18,%gp_rel(twidth)($28)

	move	$4,$16
	move	$5,$22
	jal	runbasic
	sb	$0,%gp_rel(g_disable_break)($28)

	jal	stopPCG
	move	$16,$2

	jal	setcursorcolor
	li	$4,7			# 0x7

	jal	printchar
	li	$4,10			# 0xa

	lui	$4,%hi(Message1)
	jal	printstr
	addiu	$4,$4,%lo(Message1)

.L766:
	jal	ps2readkey
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0xffff
	bne	$2,$0,.L766
	nop

	jal	ps2mode
	nop

	jal	inputchar
	nop

	jal	init_composite
	nop

	li	$2,30			# 0x1e
	beq	$18,$2,.L795
	move	$4,$0

	li	$4,1			# 0x1
.L795:
	jal	set_width
	lui	$18,%hi(.LC31)

	lw	$4,%gp_rel(cwdpath)($28)
	li	$5,128			# 0x80
	lui	$19,%hi(.LC1)
	jal	FSgetcwd
	lui	$20,%hi(.LC53)

	addiu	$18,$18,%lo(.LC31)
	addiu	$19,$19,%lo(.LC1)
	addiu	$20,$20,%lo(.LC53)
	lui	$21,%hi(.LC49)
	lui	$4,%hi(ROOTDIR)
.L804:
	jal	FSchdir
	addiu	$4,$4,%lo(ROOTDIR)

	beq	$2,$0,.L770
	lui	$2,%hi(.LC48)

	jal	setcursorcolor
	li	$4,4			# 0x4

	j	.L796
	move	$4,$18

.L770:
	addiu	$4,$2,%lo(.LC48)
	jal	FSfopen
	move	$5,$19

	bne	$2,$0,.L772
	move	$22,$2

	jal	setcursorcolor
	li	$4,4			# 0x4

	j	.L796
	addiu	$4,$21,%lo(.LC49)

.L772:
	lw	$4,%gp_rel(cwdpath)($28)
	li	$5,1			# 0x1
	li	$6,128			# 0x80
	jal	FSfread
	move	$7,$2

	move	$4,$22
	jal	FSfclose
	sw	$2,24($sp)

	lw	$3,24($sp)
	bgtzl	$3,.L773
	lui	$4,%hi(.LC48)

	jal	setcursorcolor
	li	$4,4			# 0x4

	move	$4,$20
.L796:
	jal	printstr
	nop

	jal	filesystemretry
	nop

	j	.L804
	lui	$4,%hi(ROOTDIR)

.L773:
	addiu	$4,$4,%lo(.LC48)
	lui	$19,%hi(.LC51)
	jal	FSremove
	lui	$20,%hi(.LC54)

	addiu	$19,$19,%lo(.LC51)
	addiu	$18,$17,%lo(.LC24)
	addiu	$20,$20,%lo(.LC54)
.L793:
	jal	FSchdir
	lw	$4,%gp_rel(cwdpath)($28)

	beq	$2,$0,.L775
	nop

	jal	setcursorcolor
	li	$4,4			# 0x4

	j	.L797
	move	$4,$19

.L775:
	jal	loadtextfile
	move	$4,$18

	beq	$2,$0,.L777
	nop

	jal	setcursorcolor
	li	$4,4			# 0x4

	move	$4,$20
.L797:
	jal	printstr
	nop

	jal	filesystemretry
	nop

	j	.L793
	nop

.L777:
	bgtz	$16,.L778
	move	$4,$16

	move	$4,$23
	jal	postobpix
	addiu	$5,$28,%gp_rel(disptopix)

	move	$4,$fp
	addiu	$5,$28,%gp_rel(cursorix)
	jal	postobpix
	sw	$2,%gp_rel(disptopbp)($28)

	j	.L779
	sw	$2,%gp_rel(cursorbp)($28)

.L778:
	jal	linetobpix
	addiu	$5,$28,%gp_rel(disptopix)

	sw	$2,%gp_rel(disptopbp)($28)
	sw	$2,%gp_rel(cursorbp)($28)
	lhu	$2,%gp_rel(disptopix)($28)
	sw	$16,%gp_rel(line_no)($28)
	sh	$2,%gp_rel(cursorix)($28)
	sw	$0,%gp_rel(cx)($28)
	sw	$0,%gp_rel(cx2)($28)
	sw	$0,%gp_rel(cy)($28)
	move	$16,$0
	li	$18,13			# 0xd
	lw	$20,%gp_rel(disptopbp)($28)
.L806:
	jal	cursor_up
	lhu	$19,%gp_rel(disptopix)($28)

	lw	$2,%gp_rel(disptopbp)($28)
	bnel	$20,$2,.L805
	addiu	$16,$16,1

	lhu	$2,%gp_rel(disptopix)($28)
	beq	$2,$19,.L794
	nop

	addiu	$16,$16,1
.L805:
	bne	$16,$18,.L806
	lw	$20,%gp_rel(disptopbp)($28)

	j	.L794
	nop

.L784:
	jal	cursor_down
	addiu	$16,$16,-1

.L794:
	bne	$16,$0,.L784
	nop

.L779:
	lw	$2,16($sp)
	addiu	$4,$17,%lo(.LC24)
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,72
	sw	$0,%gp_rel(cursorbp1)($28)
	sw	$0,%gp_rel(clipsize)($28)
	j	FSremove
	sw	$2,%gp_rel(edited)($28)

.L753:
.L807:
	lw	$23,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	run
	.size	run, .-run
	.section	.rodata,code
	.align	2
.LC55:
	.ascii	"NEW |MSRA|WDTH|TEST|\000"
	.align	2
.LC56:
	.ascii	"LEFT:\000"
	.align	2
.LC57:
	.ascii	"LOAD|SAVE|    |RUN |\000"
	.align	2
.LC58:
	.ascii	"LINE:\000"
	.section	.text,code
	.align	2
	.globl	displaybottomline
	.set	nomips16
	.set	nomicromips
	.ent	displaybottomline
	.type	displaybottomline, @function
displaybottomline:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	move	$4,$0
	li	$5,26			# 0x1a
	li	$6,5			# 0x5
	sw	$31,36($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	lw	$17,%gp_rel(cursor)($28)
	jal	setcursor
	lbu	$16,%gp_rel(cursorcolor)($28)

	jal	shiftkeys
	nop

	andi	$2,$2,0x1
	beql	$2,$0,.L809
	lui	$4,%hi(.LC57)

	lui	$4,%hi(.LC55)
	jal	printstr
	addiu	$4,$4,%lo(.LC55)

	jal	setcursorcolor
	li	$4,4			# 0x4

	lw	$2,%gp_rel(num)($28)
	li	$18,40000			# 0x9c40
	subu	$18,$18,$2
	li	$2,1			# 0x1
	movz	$18,$2,$18
	j	.L811
	li	$19,10			# 0xa

.L812:
	jal	printchar
	li	$4,32			# 0x20

.L811:
	slt	$2,$18,10000
	bne	$2,$0,.L812
	mul	$18,$18,$19

	lui	$4,%hi(.LC56)
	jal	printstr
	addiu	$4,$4,%lo(.LC56)

	lw	$2,%gp_rel(num)($28)
	li	$4,40000			# 0x9c40
	j	.L819
	subu	$4,$4,$2

.L809:
	jal	printstr
	addiu	$4,$4,%lo(.LC57)

	jal	setcursorcolor
	li	$4,4			# 0x4

	lw	$18,%gp_rel(line_no)($28)
	li	$2,1			# 0x1
	movz	$18,$2,$18
	j	.L815
	li	$19,10			# 0xa

.L816:
	jal	printchar
	li	$4,32			# 0x20

.L815:
	slt	$2,$18,10000
	bne	$2,$0,.L816
	mul	$18,$18,$19

	lui	$4,%hi(.LC58)
	jal	printstr
	addiu	$4,$4,%lo(.LC58)

	lw	$4,%gp_rel(line_no)($28)
.L819:
	jal	printnum
	nop

	lw	$31,36($sp)
	sw	$17,%gp_rel(cursor)($28)
	sb	$16,%gp_rel(cursorcolor)($28)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	displaybottomline
	.size	displaybottomline, .-displaybottomline
	.align	2
	.globl	normal_code_process
	.set	nomips16
	.set	nomicromips
	.ent	normal_code_process
	.type	normal_code_process, @function
normal_code_process:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(insertmode)($28)
	addiu	$sp,$sp,-24
	li	$2,1			# 0x1
	sw	$16,16($sp)
	sw	$2,%gp_rel(edited)($28)
	sw	$31,20($sp)
	andi	$16,$4,0x00ff
	bne	$3,$0,.L821
	lw	$2,%gp_rel(cursorbp1)($28)

	li	$3,10			# 0xa
	beq	$16,$3,.L821
	nop

	beq	$2,$0,.L822
	lw	$4,%gp_rel(cursorbp)($28)

.L821:
	beq	$2,$0,.L829
	lw	$4,%gp_rel(cursorbp)($28)

	jal	deletearea
	nop

	lw	$4,%gp_rel(cursorbp)($28)
.L829:
	lhu	$5,%gp_rel(cursorix)($28)
	move	$6,$16
	jal	insertchar
	move	$7,$0

	blez	$2,.L826
	nop

	jal	gabagecollect2
	nop

	lw	$4,%gp_rel(cursorbp)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	move	$6,$16
	jal	insertchar
	move	$7,$0

	j	.L826
	nop

.L822:
	lhu	$5,%gp_rel(cursorix)($28)
	move	$6,$16
	jal	overwritechar
	move	$7,$0

	blez	$2,.L826
	nop

	jal	gabagecollect2
	nop

	lw	$4,%gp_rel(cursorbp)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	move	$6,$16
	jal	overwritechar
	move	$7,$0

.L826:
	bne	$2,$0,.L820
	lw	$31,20($sp)

	lw	$16,16($sp)
	j	cursor_right
	addiu	$sp,$sp,24

.L820:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	normal_code_process
	.size	normal_code_process, .-normal_code_process
	.align	2
	.globl	control_code_process
	.set	nomips16
	.set	nomicromips
	.ent	control_code_process
	.type	control_code_process, @function
control_code_process:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,28($sp)
	andi	$16,$4,0x00ff
	jal	save_cursor
	move	$17,$5

	li	$2,97			# 0x61
	beq	$16,$2,.L835
	sltu	$2,$16,98

	beq	$2,$0,.L854
	li	$2,104			# 0x68

	li	$2,78			# 0x4e
	beq	$16,$2,.L844
	sltu	$2,$16,79

	beq	$2,$0,.L855
	li	$2,86			# 0x56

	li	$2,38			# 0x26
	beq	$16,$2,.L838
	sltu	$2,$16,39

	beq	$2,$0,.L856
	li	$2,45			# 0x2d

	li	$2,35			# 0x23
	beq	$16,$2,.L835
	sltu	$2,$16,36

	beq	$2,$0,.L857
	li	$2,36			# 0x24

	li	$2,33			# 0x21
	beq	$16,$2,.L833
	sltu	$2,$16,34

	beq	$2,$0,.L834
	andi	$2,$17,0x1

	li	$2,8			# 0x8
	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L923
	li	$2,1			# 0x1

.L857:
	beq	$16,$2,.L836
	li	$2,37			# 0x25

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L929
	andi	$2,$17,0x1

.L856:
	beq	$16,$2,.L841
	sltu	$2,$16,46

	beq	$2,$0,.L858
	li	$2,46			# 0x2e

	li	$2,39			# 0x27
	beq	$16,$2,.L839
	li	$2,40			# 0x28

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L930
	andi	$2,$17,0x1

.L858:
	beq	$16,$2,.L842
	li	$2,67			# 0x43

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L924
	lw	$2,%gp_rel(cursorbp1)($28)

.L855:
	beq	$16,$2,.L847
	sltu	$2,$16,87

	beq	$2,$0,.L859
	li	$2,90			# 0x5a

	li	$2,79			# 0x4f
	beq	$16,$2,.L845
	li	$2,83			# 0x53

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L925
	lw	$2,%gp_rel(num)($28)

.L859:
	beq	$16,$2,.L849
	li	$2,96			# 0x60

	beq	$16,$2,.L841
	li	$2,88			# 0x58

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L926
	lw	$2,%gp_rel(cursorbp1)($28)

.L854:
	beq	$16,$2,.L838
	sltu	$2,$16,105

	beq	$2,$0,.L860
	li	$2,112			# 0x70

	li	$2,100			# 0x64
	beq	$16,$2,.L837
	sltu	$2,$16,101

	beq	$2,$0,.L861
	li	$2,102			# 0x66

	li	$2,98			# 0x62
	beq	$16,$2,.L840
	li	$2,99			# 0x63

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L931
	andi	$2,$17,0x1

.L861:
	beq	$16,$2,.L839
	li	$2,103			# 0x67

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L932
	andi	$2,$17,0x1

.L860:
	beq	$16,$2,.L850
	sltu	$2,$16,113

	beq	$2,$0,.L862
	li	$2,114			# 0x72

	li	$2,105			# 0x69
	beq	$16,$2,.L833
	li	$2,110			# 0x6e

	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L933
	li	$2,1			# 0x1

.L862:
	beq	$16,$2,.L852
	sltu	$2,$16,114

	bne	$2,$0,.L851
	lw	$2,%gp_rel(num)($28)

	li	$2,115			# 0x73
	bne	$16,$2,.L940
	lw	$31,28($sp)

	j	.L927
	lw	$2,%gp_rel(num)($28)

.L837:
	andi	$2,$17,0x1
.L929:
	beql	$2,$0,.L865
	sw	$0,%gp_rel(cursorbp1)($28)

	li	$2,100			# 0x64
	bne	$16,$2,.L941
	lw	$2,%gp_rel(cursorbp1)($28)

	andi	$2,$17,0x20
	beq	$2,$0,.L864
	lw	$2,%gp_rel(cursorbp1)($28)

	j	.L865
	sw	$0,%gp_rel(cursorbp1)($28)

.L864:
.L941:
	bnel	$2,$0,.L942
	andi	$17,$17,0x2

	jal	set_areamode
	nop

.L865:
	andi	$17,$17,0x2
.L942:
	bne	$17,$0,.L943
	lw	$31,28($sp)

.L866:
	jal	cursor_left
	nop

	j	.L934
	lw	$2,%gp_rel(cursorbp1)($28)

.L839:
	andi	$2,$17,0x1
	beql	$2,$0,.L871
	sw	$0,%gp_rel(cursorbp1)($28)

	li	$2,102			# 0x66
	bne	$16,$2,.L944
	lw	$2,%gp_rel(cursorbp1)($28)

	andi	$2,$17,0x20
	beq	$2,$0,.L870
	lw	$2,%gp_rel(cursorbp1)($28)

	j	.L871
	sw	$0,%gp_rel(cursorbp1)($28)

.L870:
.L944:
	bnel	$2,$0,.L945
	andi	$17,$17,0x2

	jal	set_areamode
	nop

.L871:
	andi	$17,$17,0x2
.L945:
	bne	$17,$0,.L946
	lw	$31,28($sp)

.L872:
	jal	cursor_right
	nop

	j	.L935
	lw	$2,%gp_rel(cursorbp1)($28)

.L928:
	lhu	$2,%gp_rel(disptopix_t)($28)
	beq	$3,$2,.L940
	lw	$31,28($sp)

	lw	$2,%gp_rel(cy1)($28)
.L950:
	blez	$2,.L884
	addiu	$2,$2,-1

.L900:
	j	.L830
	sw	$2,%gp_rel(cy1)($28)

.L838:
	andi	$2,$17,0x1
	beql	$2,$0,.L877
	sw	$0,%gp_rel(cursorbp1)($28)

	li	$2,104			# 0x68
	bne	$16,$2,.L947
	lw	$2,%gp_rel(cursorbp1)($28)

	andi	$17,$17,0x20
	beq	$17,$0,.L876
	nop

	j	.L877
	sw	$0,%gp_rel(cursorbp1)($28)

.L876:
.L947:
	bne	$2,$0,.L877
	nop

	jal	set_areamode
	nop

.L877:
	jal	cursor_up
	nop

	lw	$2,%gp_rel(cursorbp1)($28)
.L934:
	beq	$2,$0,.L830
	lw	$2,%gp_rel(disptopbp_t)($28)

	lw	$3,%gp_rel(disptopbp)($28)
	bne	$3,$2,.L948
	lw	$2,%gp_rel(cy1)($28)

	lhu	$3,%gp_rel(disptopix)($28)
	lhu	$2,%gp_rel(disptopix_t)($28)
	beq	$3,$2,.L830
	lw	$2,%gp_rel(cy1)($28)

.L948:
	slt	$3,$2,25
	bne	$3,$0,.L900
	addiu	$2,$2,1

	j	.L936
	lw	$31,28($sp)

.L840:
	andi	$2,$17,0x1
.L930:
	beql	$2,$0,.L882
	sw	$0,%gp_rel(cursorbp1)($28)

	li	$2,98			# 0x62
	bne	$16,$2,.L949
	lw	$2,%gp_rel(cursorbp1)($28)

	andi	$17,$17,0x20
	beq	$17,$0,.L881
	nop

	j	.L882
	sw	$0,%gp_rel(cursorbp1)($28)

.L881:
.L949:
	bne	$2,$0,.L882
	nop

	jal	set_areamode
	nop

.L882:
	jal	cursor_down
	nop

	lw	$2,%gp_rel(cursorbp1)($28)
.L935:
	beq	$2,$0,.L830
	lw	$2,%gp_rel(disptopbp_t)($28)

	lw	$3,%gp_rel(disptopbp)($28)
	bne	$3,$2,.L950
	lw	$2,%gp_rel(cy1)($28)

	j	.L928
	lhu	$3,%gp_rel(disptopix)($28)

.L884:
	lw	$31,28($sp)
.L936:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	restore_cursor
	addiu	$sp,$sp,32

.L836:
	andi	$2,$17,0x1
.L932:
	beql	$2,$0,.L887
	sw	$0,%gp_rel(cursorbp1)($28)

	li	$2,103			# 0x67
	bne	$16,$2,.L951
	lw	$2,%gp_rel(cursorbp1)($28)

	andi	$17,$17,0x20
	beq	$17,$0,.L886
	nop

	j	.L887
	sw	$0,%gp_rel(cursorbp1)($28)

.L886:
.L951:
	bne	$2,$0,.L943
	lw	$31,28($sp)

	jal	set_areamode
	nop

.L887:
	lw	$31,28($sp)
.L943:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	cursor_home
	addiu	$sp,$sp,32

.L835:
	andi	$2,$17,0x1
	beql	$2,$0,.L890
	sw	$0,%gp_rel(cursorbp1)($28)

	li	$2,97			# 0x61
	bne	$16,$2,.L952
	lw	$2,%gp_rel(cursorbp1)($28)

	andi	$17,$17,0x20
	beq	$17,$0,.L889
	nop

	j	.L890
	sw	$0,%gp_rel(cursorbp1)($28)

.L889:
.L952:
	bne	$2,$0,.L946
	lw	$31,28($sp)

	jal	set_areamode
	nop

.L890:
	lw	$31,28($sp)
.L946:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	cursor_end
	addiu	$sp,$sp,32

.L833:
	andi	$2,$17,0x1
	beq	$2,$0,.L953
	lw	$31,28($sp)

	li	$2,105			# 0x69
	bnel	$16,$2,.L954
	lw	$17,24($sp)

	andi	$17,$17,0x20
	beq	$17,$0,.L954
	lw	$17,24($sp)

	lw	$31,28($sp)
.L953:
	lw	$17,24($sp)
	lw	$16,20($sp)
	addiu	$sp,$sp,32
	j	cursor_pageup
	sw	$0,%gp_rel(cursorbp1)($28)

.L834:
.L931:
	beq	$2,$0,.L892
	li	$2,99			# 0x63

	bne	$16,$2,.L940
	lw	$31,28($sp)

	andi	$17,$17,0x20
	beq	$17,$0,.L954
	lw	$17,24($sp)

.L892:
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	addiu	$sp,$sp,32
	j	cursor_pagedown
	sw	$0,%gp_rel(cursorbp1)($28)

.L842:
	li	$2,1			# 0x1
.L933:
	sw	$2,%gp_rel(edited)($28)
	lw	$2,%gp_rel(cursorbp1)($28)
	bne	$2,$0,.L955
	lw	$31,28($sp)

.L893:
	lw	$4,%gp_rel(cursorbp)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	j	.L903
	move	$6,$0

.L923:
	sw	$2,%gp_rel(edited)($28)
	lw	$2,%gp_rel(cursorbp1)($28)
	beq	$2,$0,.L894
	lw	$31,28($sp)

.L955:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	deletearea
	addiu	$sp,$sp,32

.L894:
	lhu	$2,%gp_rel(cursorix)($28)
	bne	$2,$0,.L895
	lw	$2,%gp_rel(cursorbp)($28)

	lw	$2,0($2)
	beq	$2,$0,.L940
	lw	$31,28($sp)

.L895:
	jal	cursor_left
	nop

	lw	$4,%gp_rel(cursorbp)($28)
	lhu	$5,%gp_rel(cursorix)($28)
	li	$6,-1			# 0xffffffffffffffff
.L903:
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	deletechar
	addiu	$sp,$sp,32

.L841:
	lw	$2,%gp_rel(insertmode)($28)
	xori	$2,$2,0x1
	j	.L830
	sw	$2,%gp_rel(insertmode)($28)

.L924:
	beq	$2,$0,.L830
	andi	$17,$17,0x2

	beq	$17,$0,.L940
	lw	$31,28($sp)

	lw	$17,24($sp)
	lw	$16,20($sp)
	j	clipcopy
	addiu	$sp,$sp,32

.L926:
	beq	$2,$0,.L830
	andi	$17,$17,0x2

	beq	$17,$0,.L940
	lw	$31,28($sp)

	jal	clipcopy
	nop

	jal	deletearea
	nop

	li	$2,1			# 0x1
	j	.L830
	sw	$2,%gp_rel(edited)($28)

.L847:
	andi	$17,$17,0x2
	beq	$17,$0,.L830
	lw	$16,%gp_rel(clipsize)($28)

	beq	$16,$0,.L830
	li	$2,1			# 0x1

	sw	$2,%gp_rel(edited)($28)
	lw	$2,%gp_rel(cursorbp1)($28)
	beq	$2,$0,.L896
	lw	$17,%gp_rel(num)($28)

	jal	countarea
	addu	$16,$16,$17

	subu	$16,$16,$2
	li	$3,40001			# 0x9c41
	slt	$16,$16,$3
	beql	$16,$0,.L940
	lw	$31,28($sp)

	jal	deletearea
	nop

	j	.L937
	lw	$31,28($sp)

.L896:
	addu	$16,$16,$17
	li	$2,40001			# 0x9c41
	slt	$16,$16,$2
	beq	$16,$0,.L940
	lw	$31,28($sp)

.L937:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	clippaste
	addiu	$sp,$sp,32

.L925:
	beq	$2,$0,.L830
	andi	$17,$17,0x2

	beq	$17,$0,.L830
	li	$4,1			# 0x1

	j	.L938
	lw	$31,28($sp)

.L845:
	andi	$17,$17,0x2
	beq	$17,$0,.L940
	lw	$31,28($sp)

	j	.L897
	nop

.L844:
	andi	$17,$17,0x2
	beq	$17,$0,.L940
	lw	$31,28($sp)

	j	.L956
	lw	$17,24($sp)

.L850:
	andi	$17,$17,0x1
	beq	$17,$0,.L897
	lw	$31,28($sp)

	lw	$17,24($sp)
.L956:
	lw	$16,20($sp)
	j	newtext
	addiu	$sp,$sp,32

.L897:
	jal	fileload
	nop

	bne	$2,$0,.L940
	lw	$31,28($sp)

	lw	$17,24($sp)
	lw	$16,20($sp)
	j	cursor_top
	addiu	$sp,$sp,32

.L851:
	beq	$2,$0,.L830
	andi	$17,$17,0x1

	beq	$17,$0,.L907
	move	$4,$0

	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	msra
	addiu	$sp,$sp,32

.L907:
	lw	$31,28($sp)
.L938:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	save_as
	addiu	$sp,$sp,32

.L852:
	andi	$17,$17,0x1
	beq	$17,$0,.L940
	lw	$31,28($sp)

	lw	$17,24($sp)
	lw	$16,20($sp)
	j	changewidth
	addiu	$sp,$sp,32

.L927:
	beq	$2,$0,.L830
	andi	$17,$17,0x1

	bne	$17,$0,.L901
	li	$4,1			# 0x1

	move	$4,$0
.L901:
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	run
	addiu	$sp,$sp,32

.L849:
	andi	$17,$17,0x2
	beq	$17,$0,.L940
	lw	$31,28($sp)

	lw	$17,24($sp)
	lw	$16,20($sp)
	j	undoexec
	addiu	$sp,$sp,32

.L830:
	lw	$31,28($sp)
.L940:
	lw	$17,24($sp)
.L954:
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	control_code_process
	.size	control_code_process, .-control_code_process
	.section	.rodata,code
	.align	2
.LC59:
	.ascii	"Temporary File Loaded\012\000"
	.align	2
.LC60:
	.ascii	"\012Save To SD Card If Necessary\012\000"
	.section	.text,code
	.align	2
	.globl	texteditor
	.set	nomips16
	.set	nomicromips
	.ent	texteditor
	.type	texteditor, @function
texteditor:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(RAM)
	addiu	$sp,$sp,-32
	addiu	$2,$2,%lo(RAM)
	li	$4,42612			# 0xa674
	sw	$31,28($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	sw	$18,24($sp)
	jal	editormalloc
	sw	$2,%gp_rel(editormallocp)($28)

	li	$4,1040			# 0x410
	jal	editormalloc
	sw	$2,%gp_rel(TextBuffer)($28)

	li	$4,256			# 0x100
	jal	editormalloc
	sw	$2,%gp_rel(clipboard)($28)

	li	$4,128			# 0x80
	jal	editormalloc
	sw	$2,%gp_rel(filebuf)($28)

	li	$4,2600			# 0xa28
	jal	editormalloc
	sw	$2,%gp_rel(cwdpath)($28)

	li	$4,2048			# 0x800
	jal	editormalloc
	sw	$2,%gp_rel(filenames)($28)

	jal	inittextbuf
	sw	$2,%gp_rel(undobuf)($28)

	lui	$2,%hi(currentfile)
	sb	$0,%lo(currentfile)($2)
	lw	$2,%gp_rel(cwdpath)($28)
	li	$16,92			# 0x5c
	sb	$16,0($2)
	lw	$2,%gp_rel(cwdpath)($28)
	lui	$4,%hi(.LC48)
	lui	$5,%hi(.LC1)
	sb	$0,1($2)
	addiu	$4,$4,%lo(.LC48)
	jal	FSfopen
	addiu	$5,$5,%lo(.LC1)

	beq	$2,$0,.L958
	move	$17,$2

	lw	$4,%gp_rel(cwdpath)($28)
	li	$5,1			# 0x1
	li	$6,128			# 0x80
	jal	FSfread
	move	$7,$2

	jal	FSfclose
	move	$4,$17

	jal	FSchdir
	lw	$4,%gp_rel(cwdpath)($28)

	lui	$4,%hi(.LC24)
	jal	loadtextfile
	addiu	$4,$4,%lo(.LC24)

	bne	$2,$0,.L959
	lw	$2,%gp_rel(cwdpath)($28)

	li	$2,1			# 0x1
	li	$4,4			# 0x4
	jal	setcursorcolor
	sw	$2,%gp_rel(edited)($28)

	lui	$4,%hi(.LC59)
	jal	printstr
	addiu	$4,$4,%lo(.LC59)

	lui	$4,%hi(.LC18)
	jal	printstr
	addiu	$4,$4,%lo(.LC18)

	jal	setcursorcolor
	li	$4,6			# 0x6

	jal	printstr
	lw	$4,%gp_rel(cwdpath)($28)

	jal	setcursorcolor
	li	$4,4			# 0x4

	lui	$4,%hi(.LC60)
	jal	printstr
	addiu	$4,$4,%lo(.LC60)

	jal	setcursorcolor
	li	$4,7			# 0x7

	lui	$4,%hi(Message1)
	jal	printstr
	addiu	$4,$4,%lo(Message1)

	jal	inputchar
	nop

	j	.L958
	nop

.L959:
	sb	$16,0($2)
	lw	$2,%gp_rel(cwdpath)($28)
	sb	$0,1($2)
.L958:
	jal	cursor_top
	li	$17,13			# 0xd

	li	$2,1			# 0x1
	sw	$2,%gp_rel(insertmode)($28)
	sw	$0,%gp_rel(clipsize)($28)
	sw	$0,%gp_rel(blinktimer)($28)
	li	$16,108			# 0x6c
.L975:
	jal	redraw
	nop

	lbu	$4,%gp_rel(cx)($28)
	lbu	$5,%gp_rel(cy)($28)
	jal	setcursor
	li	$6,7			# 0x7

	jal	getcursorchar
	nop

.L974:
	jal	wait60thsec
	li	$4,1			# 0x1

	jal	blinkcursorchar
	nop

	jal	ps2readkey
	nop

	jal	displaybottomline
	move	$18,$2

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0xffff
	bne	$2,$0,.L961
	lw	$2,%gp_rel(cursorbp1)($28)

	bne	$2,$0,.L974
	nop

	jal	gabagecollect1
	nop

	j	.L974
	nop

.L961:
	jal	resetcursorchar
	nop

	lhu	$4,%gp_rel(vkey)($28)
	lhu	$5,%gp_rel(vkey)($28)
	andi	$4,$4,0x00ff
	beq	$4,$17,.L969
	andi	$5,$5,0xffff

	beql	$4,$16,.L977
	li	$18,10			# 0xa

	beq	$18,$0,.L965
	nop

	j	.L964
	nop

.L969:
	li	$18,10			# 0xa
.L964:
.L977:
	jal	normal_code_process
	move	$4,$18

	j	.L976
	lw	$2,%gp_rel(cursorbp1)($28)

.L965:
	jal	control_code_process
	srl	$5,$5,8

	lw	$2,%gp_rel(cursorbp1)($28)
.L976:
	beq	$2,$0,.L975
	lw	$3,%gp_rel(cx1)($28)

	lw	$4,%gp_rel(cx)($28)
	bne	$4,$3,.L975
	lw	$3,%gp_rel(cy1)($28)

	lw	$4,%gp_rel(cy)($28)
	xor	$3,$4,$3
	movz	$2,$0,$3
	j	.L975
	sw	$2,%gp_rel(cursorbp1)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	texteditor
	.size	texteditor, .-texteditor
	.globl	Message1
	.section	.rodata,code
	.align	2
	.type	Message1, @object
	.size	Message1, 13
Message1:
	.ascii	"Hit Any Key\012\000"
	.globl	Message2
	.align	2
	.type	Message2, @object
	.size	Message2, 19
Message2:
	.ascii	"File System Error\012\000"
	.globl	Message3
	.align	2
	.type	Message3, @object
	.size	Message3, 28
Message3:
	.ascii	"Retry:[Enter] / Quit:[ESC]\012\000"
	.globl	ROOTDIR
	.align	2
	.type	ROOTDIR, @object
	.size	ROOTDIR, 2
ROOTDIR:
	.ascii	"\\\000"

	.comm	tempfile,13,4

	.comm	TextBuffer,4,4

	.comm	TBufstart,4,4

	.comm	cursorbp,4,4

	.comm	cursorix,2,2

	.comm	disptopbp,4,4

	.comm	disptopix,2,2

	.comm	num,4,4

	.comm	cx,4,4

	.comm	cy,4,4

	.comm	cx2,4,4

	.comm	cursorbp1,4,4

	.comm	cursorix1,2,2

	.comm	cx1,4,4

	.comm	cy1,4,4

	.comm	line_no,4,4

	.comm	line_no1,4,4

	.comm	cursorbp_t,4,4

	.comm	cursorix_t,2,2

	.comm	disptopbp_t,4,4

	.comm	disptopix_t,2,2

	.comm	cx_t,4,4

	.comm	cy_t,4,4

	.comm	line_no_t,4,4

	.comm	clipboard,4,4

	.comm	clipsize,4,4

	.comm	edited,4,4

	.comm	editormallocp,4,4

	.comm	filebuf,4,4

	.comm	cwdpath,4,4

	.comm	currentfile,13,4

	.comm	filenames,4,4

	.comm	undobuf,4,4

	.comm	undobuf_top,4,4

	.comm	undobuf_used,4,4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
