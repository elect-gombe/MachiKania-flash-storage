	.file	1 "statement.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	rem_statement
	.set	nomips16
	.set	nomicromips
	.ent	rem_statement
	.type	rem_statement, @function
rem_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$2,$3,$2
	lb	$2,-4($2)
	slt	$2,$2,32
	beq	$2,$0,.L3
	lw	$2,%gp_rel(g_objpos)($28)

	lw	$4,%gp_rel(g_object)($28)
	addiu	$2,$2,-1
	sll	$3,$2,2
	addu	$3,$4,$3
	lw	$3,0($3)
	li	$4,-65536			# 0xffffffffffff0000
	and	$4,$4,$3
	li	$3,873857024			# 0x34160000
	beql	$4,$3,.L2
	sw	$2,%gp_rel(g_objpos)($28)

.L2:
	j	.L3
	lw	$3,%gp_rel(g_source)($28)

.L4:
	sw	$2,%gp_rel(g_srcpos)($28)
.L3:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$4,$3,$2
	lb	$4,0($4)
	slt	$4,$4,32
	beql	$4,$0,.L4
	addiu	$2,$2,1

	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	rem_statement
	.size	rem_statement, .-rem_statement
	.align	2
	.globl	sound_statement
	.set	nomips16
	.set	nomicromips
	.ent	sound_statement
	.type	sound_statement, @function
sound_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	get_label
	nop

	bne	$2,$0,.L6
	move	$16,$2

	lw	$5,%gp_rel(g_label)($28)
	beq	$5,$0,.L7
	lw	$3,%gp_rel(g_objpos)($28)

	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$6,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$2,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L15
	lui	$2,%hi(g_err_str+4)

.L8:
	sll	$6,$3,2
	srl	$5,$5,16
	li	$7,135528448			# 0x8140000
	addu	$6,$2,$6
	or	$5,$5,$7
	sw	$5,0($6)
	addiu	$3,$3,1
	sll	$3,$3,2
	lhu	$5,%gp_rel(g_label)($28)
	addu	$2,$2,$3
	li	$3,135593984			# 0x8150000
	j	.L13
	or	$3,$5,$3

.L7:
	jal	get_value
	nop

	bnel	$2,$0,.L12
	move	$16,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L15
	lui	$2,%hi(g_err_str+4)

.L10:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,48234496			# 0x2e00000
	addu	$5,$2,$5
	ori	$6,$6,0xf809
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	sw	$6,0($5)
	addiu	$3,$3,14848
.L13:
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L11
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L15:
	j	.L6
	lw	$16,%lo(g_err_str+4)($2)

.L11:
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,48234496			# 0x2e00000
	addu	$5,$2,$5
	ori	$6,$6,0xf809
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
.L12:
.L6:
	lw	$31,20($sp)
	move	$2,$16
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	sound_statement
	.size	sound_statement, .-sound_statement
	.align	2
	.globl	music_statement
	.set	nomips16
	.set	nomicromips
	.ent	music_statement
	.type	music_statement, @function
music_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_string
	nop

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L17
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	.L18
	lw	$2,%lo(g_err_str+4)($2)

.L17:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,1024
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L18:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	music_statement
	.size	music_statement, .-music_statement
	.align	2
	.globl	exec_statement
	.set	nomips16
	.set	nomicromips
	.ent	exec_statement
	.type	exec_statement, @function
exec_statement:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addiu	$sp,$sp,-48
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,44($sp)
	sw	$21,40($sp)
	addu	$2,$3,$2
	lb	$2,0($2)
	li	$19,45			# 0x2d
	li	$18,36			# 0x24
	li	$17,1			# 0x1
	lui	$16,%hi(g_err_str)
	j	.L37
	li	$20,32			# 0x20

.L34:
.L42:
	jal	get_simple_value
	sb	$17,%gp_rel(g_valueisconst)($28)

	lb	$4,%gp_rel(g_valueisconst)($28)
	lw	$3,%lo(g_err_str)($16)
	movz	$2,$3,$4
	bne	$2,$0,.L22
	lw	$3,%gp_rel(g_object)($28)

	lw	$4,%gp_rel(g_objpos)($28)
	addiu	$4,$4,1
	sll	$4,$4,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$3,$4
	sltu	$4,$5,$4
	beql	$4,$0,.L23
	sll	$4,$21,2

	lui	$2,%hi(g_err_str+4)
	j	.L22
	lw	$2,%lo(g_err_str+4)($2)

.L23:
	addu	$3,$3,$4
	lw	$4,%gp_rel(g_intconst)($28)
	addiu	$21,$21,1
	sw	$4,0($3)
	sw	$21,%gp_rel(g_objpos)($28)
	j	.L24
	lw	$4,%gp_rel(g_source)($28)

.L25:
	sw	$3,%gp_rel(g_srcpos)($28)
.L24:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$5,$4,$3
	lb	$5,0($5)
	beql	$5,$20,.L25
	addiu	$3,$3,1

	li	$6,44			# 0x2c
	bne	$5,$6,.L38
	lw	$31,44($sp)

	addiu	$3,$3,1
.L39:
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$4,$3
	lb	$2,0($2)
	beql	$2,$20,.L39
	addiu	$3,$3,1

	li	$5,13			# 0xd
	beq	$2,$5,.L28
	li	$5,10			# 0xa

	bnel	$2,$5,.L40
	addiu	$3,$2,-48

.L28:
	lw	$5,%gp_rel(g_line)($28)
	addiu	$5,$5,1
	sw	$5,%gp_rel(g_line)($28)
	lw	$5,%gp_rel(g_fileline)($28)
	addiu	$5,$5,1
	sw	$5,%gp_rel(g_fileline)($28)
	li	$5,13			# 0xd
	bne	$2,$5,.L41
	lw	$2,%gp_rel(g_srcpos)($28)

	addu	$4,$4,$3
	lb	$4,1($4)
	li	$2,10			# 0xa
	bne	$4,$2,.L41
	lw	$2,%gp_rel(g_srcpos)($28)

	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
.L41:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	slt	$2,$2,256
	bnel	$2,$0,.L32
	lw	$4,%gp_rel(g_source)($28)

	jal	read_file
	li	$4,256			# 0x100

	j	.L32
	lw	$4,%gp_rel(g_source)($28)

.L33:
	sw	$3,%gp_rel(g_srcpos)($28)
.L32:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$4,$3
	lb	$2,0($2)
	beq	$2,$20,.L33
	addiu	$3,$3,1

.L37:
	addiu	$3,$2,-48
.L40:
	andi	$3,$3,0x00ff
	sltu	$3,$3,10
	bne	$3,$0,.L42
	lw	$21,%gp_rel(g_objpos)($28)

	beq	$2,$19,.L42
	nop

	beq	$2,$18,.L34
	move	$2,$0

.L22:
	lw	$31,44($sp)
.L38:
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
	.end	exec_statement
	.size	exec_statement, .-exec_statement
	.align	2
	.globl	cdata_statement
	.set	nomips16
	.set	nomicromips
	.ent	cdata_statement
	.type	cdata_statement, @function
cdata_statement:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$22,48($sp)
	lw	$22,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$3,$22,2
	sw	$17,28($sp)
	lw	$5,%gp_rel(g_objmax)($28)
	sll	$17,$3,2
	addu	$4,$2,$17
	sltu	$4,$5,$4
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	bne	$4,$0,.L73
	sw	$16,24($sp)

.L44:
	sll	$16,$22,2
	addu	$4,$2,$16
	li	$5,68222976			# 0x4110000
	sw	$5,0($4)
	addiu	$4,$22,1
	sll	$4,$4,2
	addu	$2,$2,$4
	li	$4,32			# 0x20
	sw	$4,0($2)
	lw	$5,%gp_rel(g_source)($28)
	j	.L46
	sw	$3,%gp_rel(g_objpos)($28)

.L47:
	sw	$3,%gp_rel(g_srcpos)($28)
.L46:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beql	$2,$4,.L47
	addiu	$3,$3,1

	move	$23,$0
	move	$21,$0
	li	$19,45			# 0x2d
	li	$18,36			# 0x24
	li	$20,1			# 0x1
	lui	$3,%hi(g_err_str)
	j	.L71
	li	$fp,32			# 0x20

.L77:
	sw	$3,20($sp)
.L78:
	sw	$4,16($sp)
	jal	get_simple_value
	sb	$20,%gp_rel(g_valueisconst)($28)

	lw	$3,20($sp)
	lb	$6,%gp_rel(g_valueisconst)($28)
	lw	$5,%lo(g_err_str)($3)
	movz	$2,$5,$6
	lw	$5,%gp_rel(g_intconst)($28)
	lw	$6,%lo(g_err_str)($3)
	sltu	$7,$5,256
	movz	$2,$6,$7
	bne	$2,$0,.L45
	lw	$4,16($sp)

	sll	$5,$5,$21
	addiu	$21,$21,8
	slt	$2,$21,32
	sw	$4,%gp_rel(g_objpos)($28)
	bne	$2,$0,.L51
	or	$23,$23,$5

	lw	$5,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$6,$2,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$5,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L74
	lui	$2,%hi(g_err_str+4)

.L52:
	sll	$4,$4,2
	addu	$5,$5,$4
	sw	$23,0($5)
	move	$21,$0
	sw	$2,%gp_rel(g_objpos)($28)
	move	$23,$0
.L51:
	j	.L53
	lw	$5,%gp_rel(g_source)($28)

.L54:
	sw	$2,%gp_rel(g_srcpos)($28)
.L53:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$2
	lb	$4,0($4)
	beq	$4,$fp,.L54
	addiu	$2,$2,1

	li	$6,44			# 0x2c
	bne	$4,$6,.L55
	nop

	j	.L56
	sw	$2,%gp_rel(g_srcpos)($28)

.L57:
	sw	$4,%gp_rel(g_srcpos)($28)
.L56:
	lw	$4,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$4
	lb	$2,0($2)
	beql	$2,$fp,.L57
	addiu	$4,$4,1

	li	$6,13			# 0xd
	beq	$2,$6,.L58
	li	$6,10			# 0xa

	bnel	$2,$6,.L75
	addiu	$4,$2,-48

.L58:
	lw	$6,%gp_rel(g_line)($28)
	addiu	$6,$6,1
	sw	$6,%gp_rel(g_line)($28)
	lw	$6,%gp_rel(g_fileline)($28)
	addiu	$6,$6,1
	sw	$6,%gp_rel(g_fileline)($28)
	li	$6,13			# 0xd
	bne	$2,$6,.L76
	lw	$2,%gp_rel(g_srcpos)($28)

	addu	$5,$5,$4
	lb	$5,1($5)
	li	$2,10			# 0xa
	bne	$5,$2,.L76
	lw	$2,%gp_rel(g_srcpos)($28)

	addiu	$4,$4,1
	sw	$4,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
.L76:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	slt	$2,$2,256
	bnel	$2,$0,.L62
	lw	$5,%gp_rel(g_source)($28)

	li	$4,256			# 0x100
	jal	read_file
	sw	$3,20($sp)

	lw	$3,20($sp)
	j	.L62
	lw	$5,%gp_rel(g_source)($28)

.L63:
	sw	$4,%gp_rel(g_srcpos)($28)
.L62:
	lw	$4,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$4
	lb	$2,0($2)
	beq	$2,$fp,.L63
	addiu	$4,$4,1

.L71:
	addiu	$4,$2,-48
.L75:
	andi	$4,$4,0x00ff
	sltu	$4,$4,10
	bne	$4,$0,.L77
	lw	$4,%gp_rel(g_objpos)($28)

	beq	$2,$19,.L77
	nop

	beql	$2,$18,.L78
	sw	$3,20($sp)

.L55:
	blez	$21,.L65
	lw	$6,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$6,1
	sll	$2,$5,2
	lw	$8,%gp_rel(g_objmax)($28)
	sra	$21,$21,3
	addu	$7,$3,$2
	subu	$4,$0,$21
	sltu	$7,$8,$7
	beq	$7,$0,.L66
	addiu	$21,$4,4

.L73:
	lui	$2,%hi(g_err_str+4)
.L74:
	j	.L45
	lw	$2,%lo(g_err_str+4)($2)

.L66:
	sll	$6,$6,2
	addu	$6,$3,$6
	addiu	$2,$2,-1
	sw	$23,0($6)
	addu	$2,$3,$2
	sw	$5,%gp_rel(g_objpos)($28)
	j	.L67
	subu	$4,$0,$4

.L68:
	lbu	$3,-4($3)
	sb	$3,0($2)
	addiu	$2,$2,-1
.L67:
	lw	$3,%gp_rel(g_object)($28)
	addu	$3,$3,$17
	sltu	$3,$3,$2
	bne	$3,$0,.L68
	addu	$3,$2,$4

.L65:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$3,$3,-1
	subu	$3,$3,$22
	addiu	$22,$22,1
	li	$4,68222976			# 0x4110000
	sll	$22,$22,2
	addu	$16,$2,$16
	or	$3,$3,$4
	addu	$2,$2,$22
	ori	$21,$21,0x20
	sw	$3,0($16)
	sw	$21,0($2)
	move	$2,$0
.L45:
	lw	$31,60($sp)
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
	.end	cdata_statement
	.size	cdata_statement, .-cdata_statement
	.align	2
	.globl	data_statement
	.set	nomips16
	.set	nomicromips
	.ent	data_statement
	.type	data_statement, @function
data_statement:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$20,32($sp)
	li	$20,68222976			# 0x4110000
	sw	$21,36($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	sw	$31,44($sp)
	sw	$22,40($sp)
	sw	$19,28($sp)
	li	$21,32			# 0x20
	li	$16,34			# 0x22
	addiu	$18,$20,2
	li	$17,44			# 0x2c
.L91:
	lw	$19,%gp_rel(g_objpos)($28)
.L93:
	lw	$2,%gp_rel(g_object)($28)
	addiu	$3,$19,2
	sll	$4,$3,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$2,$4
	sltu	$4,$5,$4
	beq	$4,$0,.L81
	addiu	$5,$19,1

	lui	$2,%hi(g_err_str+4)
	j	.L82
	lw	$2,%lo(g_err_str+4)($2)

.L81:
	sll	$22,$19,2
	sll	$5,$5,2
	addu	$4,$2,$22
	addu	$5,$2,$5
	sw	$20,0($4)
	lw	$7,%gp_rel(g_source)($28)
	sw	$21,0($5)
	j	.L83
	sw	$3,%gp_rel(g_objpos)($28)

.L84:
	sw	$6,%gp_rel(g_srcpos)($28)
.L83:
	lw	$6,%gp_rel(g_srcpos)($28)
	addu	$5,$7,$6
	lb	$5,0($5)
	beq	$5,$21,.L84
	addiu	$6,$6,1

	bne	$5,$16,.L85
	sll	$5,$3,2

	addiu	$3,$3,3
	sll	$3,$3,2
	addu	$5,$2,$5
	addu	$2,$2,$3
	sw	$2,0($5)
	lw	$2,%gp_rel(g_objpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_objpos)($28)
	jal	simple_string
	sw	$18,0($4)

	bne	$2,$0,.L82
	lw	$5,%gp_rel(g_source)($28)

	j	.L94
	lw	$3,%gp_rel(g_srcpos)($28)

.L87:
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_srcpos)($28)
.L94:
	addu	$4,$5,$3
	lb	$4,0($4)
	beql	$4,$21,.L87
	addiu	$3,$3,1

	bne	$4,$17,.L92
	lw	$31,44($sp)

	addiu	$3,$3,1
	j	.L91
	sw	$3,%gp_rel(g_srcpos)($28)

.L85:
	jal	exec_statement
	nop

	bne	$2,$0,.L82
	lw	$3,%gp_rel(g_object)($28)

	lw	$4,%gp_rel(g_source)($28)
	addu	$22,$3,$22
	lw	$3,%gp_rel(g_objpos)($28)
	addiu	$3,$3,-1
	subu	$19,$3,$19
	or	$19,$19,$20
	sw	$19,0($22)
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$3
	lb	$3,0($3)
	beq	$3,$16,.L93
	lw	$19,%gp_rel(g_objpos)($28)

.L82:
	lw	$31,44($sp)
.L92:
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	data_statement
	.size	data_statement, .-data_statement
	.align	2
	.globl	clear_statement
	.set	nomips16
	.set	nomicromips
	.ent	clear_statement
	.type	clear_statement, @function
clear_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L96
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L96:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,9216
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	clear_statement
	.size	clear_statement, .-clear_statement
	.align	2
	.globl	poke_statement
	.set	nomips16
	.set	nomicromips
	.ent	poke_statement
	.type	poke_statement, @function
poke_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	sw	$16,16($sp)

	bne	$2,$0,.L104
	lw	$31,20($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,44			# 0x2c
	beq	$4,$3,.L100
	lw	$3,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L104
	lw	$2,%lo(g_err_str)($2)

.L100:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L105
	lui	$2,%hi(g_err_str+4)

.L101:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$16,666697728			# 0x27bd0000
	addu	$2,$2,$3
	li	$3,-1348337664			# 0xffffffffafa20000
	ori	$6,$16,0xfffc
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_value
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L104
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,3
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L102
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
.L105:
	j	.L99
	lw	$2,%lo(g_err_str+4)($2)

.L102:
	li	$7,-1885143040			# 0xffffffff8fa30000
	addu	$6,$3,$6
	addiu	$7,$7,4
	sw	$7,0($6)
	addiu	$6,$4,1
	addiu	$4,$4,2
	sll	$4,$4,2
	sll	$6,$6,2
	addu	$6,$3,$6
	addiu	$16,$16,4
	addu	$3,$3,$4
	li	$4,-1604190208			# 0xffffffffa0620000
	sw	$16,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L99:
	lw	$31,20($sp)
.L104:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	poke_statement
	.size	poke_statement, .-poke_statement
	.align	2
	.globl	dim_statement
	.set	nomips16
	.set	nomicromips
	.ent	dim_statement
	.type	dim_statement, @function
dim_statement:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$17,24($sp)
	sw	$16,20($sp)
	li	$17,60817408			# 0x3a00000
	li	$16,48234496			# 0x2e00000
	sw	$19,32($sp)
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$18,28($sp)
	li	$19,32			# 0x20
	addiu	$17,$17,4133
	j	.L127
	ori	$16,$16,0xf809

.L108:
	sw	$2,%gp_rel(g_srcpos)($28)
.L127:
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	beq	$3,$19,.L108
	addiu	$2,$2,1

	jal	get_var_number
	nop

	bltz	$2,.L129
	move	$21,$2

.L109:
	lw	$3,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$4,$3,$2
	lb	$5,0($4)
	li	$4,35			# 0x23
	bne	$5,$4,.L131
	lw	$4,%gp_rel(g_srcpos)($28)

	addiu	$2,$2,1
	j	.L126
	sw	$2,%gp_rel(g_srcpos)($28)

.L113:
	sw	$4,%gp_rel(g_srcpos)($28)
.L126:
	lw	$4,%gp_rel(g_srcpos)($28)
.L131:
	addu	$2,$3,$4
	lb	$2,0($2)
	beql	$2,$19,.L113
	addiu	$4,$4,1

	li	$3,40			# 0x28
	bne	$2,$3,.L132
	lui	$2,%hi(g_err_str)

.L114:
	lw	$20,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$2,$20,1
	sll	$3,$2,2
	addu	$3,$4,$3
	lw	$4,%gp_rel(g_objmax)($28)
	sltu	$3,$4,$3
	bnel	$3,$0,.L133
	lui	$2,%hi(g_err_str+4)

.L115:
	sw	$2,%gp_rel(g_objpos)($28)
	move	$18,$0
	li	$23,-1348337664			# 0xffffffffafa20000
	li	$22,44			# 0x2c
	lw	$2,%gp_rel(g_srcpos)($28)
.L134:
	addiu	$2,$2,1
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L110
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$6,$4,1
	lw	$5,%gp_rel(g_objmax)($28)
	sll	$8,$6,2
	addu	$8,$3,$8
	sltu	$7,$5,$8
	bnel	$7,$0,.L133
	lui	$2,%hi(g_err_str+4)

.L116:
	addiu	$18,$18,4
	sll	$7,$4,2
	addu	$7,$3,$7
	or	$9,$18,$23
	sw	$9,0($7)
	sw	$6,%gp_rel(g_objpos)($28)
	lw	$7,%gp_rel(g_source)($28)
	lw	$6,%gp_rel(g_srcpos)($28)
	addu	$9,$7,$6
	lb	$9,0($9)
	beql	$9,$22,.L134
	lw	$2,%gp_rel(g_srcpos)($28)

	li	$10,41			# 0x29
	beql	$9,$10,.L118
	addiu	$6,$6,1

.L129:
	lui	$2,%hi(g_err_str)
.L132:
	j	.L110
	lw	$2,%lo(g_err_str)($2)

.L118:
	sw	$6,%gp_rel(g_srcpos)($28)
	addiu	$6,$4,4
	sll	$9,$6,2
	addu	$9,$3,$9
	sltu	$10,$5,$9
	bnel	$10,$0,.L133
	lui	$2,%hi(g_err_str+4)

.L119:
	li	$10,604241920			# 0x24040000
	or	$21,$21,$10
	sw	$21,0($8)
	addiu	$8,$4,2
	sll	$8,$8,2
	sra	$11,$18,2
	li	$10,604307456			# 0x24050000
	addu	$8,$3,$8
	or	$10,$11,$10
	sw	$10,0($8)
	addiu	$8,$4,3
	sll	$8,$8,2
	addu	$8,$3,$8
	sw	$17,0($8)
	addiu	$8,$4,6
	sw	$6,%gp_rel(g_objpos)($28)
	sll	$6,$8,2
	addu	$6,$3,$6
	sltu	$10,$5,$6
	bnel	$10,$0,.L133
	lui	$2,%hi(g_err_str+4)

.L120:
	sw	$16,0($9)
	addiu	$9,$4,5
	sll	$9,$9,2
	li	$10,604438528			# 0x24070000
	addu	$9,$3,$9
	addiu	$10,$10,15360
	addiu	$4,$4,7
	sw	$10,0($9)
	sw	$8,%gp_rel(g_objpos)($28)
	sll	$8,$4,2
	addu	$8,$3,$8
	sltu	$5,$5,$8
	beq	$5,$0,.L121
	li	$5,666697728			# 0x27bd0000

	lui	$2,%hi(g_err_str+4)
.L133:
	j	.L110
	lw	$2,%lo(g_err_str+4)($2)

.L121:
	or	$8,$18,$5
	subu	$18,$0,$18
	sll	$20,$20,2
	andi	$18,$18,0xffff
	addu	$3,$3,$20
	or	$5,$18,$5
	sw	$8,0($6)
	sw	$4,%gp_rel(g_objpos)($28)
	j	.L122
	sw	$5,0($3)

.L123:
	sw	$3,%gp_rel(g_srcpos)($28)
.L122:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$7,$3
	lb	$4,0($4)
	beq	$4,$19,.L123
	addiu	$3,$3,1

	li	$5,44			# 0x2c
	bne	$4,$5,.L135
	lw	$31,52($sp)

	j	.L127
	sw	$3,%gp_rel(g_srcpos)($28)

.L110:
	lw	$31,52($sp)
.L135:
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
	.end	dim_statement
	.size	dim_statement, .-dim_statement
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Label \000"
	.section	.text,code
	.align	2
	.globl	label_statement
	.set	nomips16
	.set	nomicromips
	.ent	label_statement
	.type	label_statement, @function
label_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	addiu	$2,$2,-65
	sltu	$2,$2,26
	bne	$2,$0,.L137
	lui	$2,%hi(g_err_str)

	j	.L138
	lw	$16,%lo(g_err_str)($2)

.L137:
	jal	get_label
	nop

	bne	$2,$0,.L138
	move	$16,$2

	jal	search_label
	lw	$4,%gp_rel(g_label)($28)

	beq	$2,$0,.L139
	lui	$4,%hi(.LC0)

	jal	printstr
	addiu	$4,$4,%lo(.LC0)

	jal	resolve_label
	lw	$4,%gp_rel(g_label)($28)

	jal	printstr
	move	$4,$2

	lui	$2,%hi(g_err_str+44)
	j	.L138
	lw	$16,%lo(g_err_str+44)($2)

.L139:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L140
	lhu	$7,%gp_rel(g_label+2)($28)

	lui	$2,%hi(g_err_str+4)
	j	.L138
	lw	$16,%lo(g_err_str+4)($2)

.L140:
	sll	$5,$3,2
	li	$6,1008074752			# 0x3c160000
	addu	$5,$2,$5
	or	$6,$7,$6
	sw	$6,0($5)
	addiu	$3,$3,1
	sll	$3,$3,2
	lhu	$5,%gp_rel(g_label)($28)
	addu	$2,$2,$3
	li	$3,919994368			# 0x36d60000
	or	$3,$5,$3
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
.L138:
	lw	$31,20($sp)
	move	$2,$16
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	label_statement
	.size	label_statement, .-label_statement
	.align	2
	.globl	restore_statement
	.set	nomips16
	.set	nomicromips
	.ent	restore_statement
	.type	restore_statement, @function
restore_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	get_label
	nop

	bne	$2,$0,.L142
	move	$16,$2

	lw	$5,%gp_rel(g_label)($28)
	beq	$5,$0,.L143
	lw	$3,%gp_rel(g_objpos)($28)

	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$6,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$2,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L149
	lui	$2,%hi(g_err_str+4)

.L144:
	sll	$6,$3,2
	srl	$5,$5,16
	li	$7,1006764032			# 0x3c020000
	addu	$6,$2,$6
	or	$5,$5,$7
	sw	$5,0($6)
	addiu	$3,$3,1
	sll	$3,$3,2
	lhu	$5,%gp_rel(g_label)($28)
	addu	$2,$2,$3
	li	$3,876740608			# 0x34420000
	or	$3,$5,$3
	sw	$3,0($2)
	j	.L145
	sw	$4,%gp_rel(g_objpos)($28)

.L143:
	jal	get_value
	nop

	bnel	$2,$0,.L147
	move	$16,$2

.L145:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L146
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L149:
	j	.L142
	lw	$16,%lo(g_err_str+4)($2)

.L146:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,7168
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
.L147:
.L142:
	lw	$31,20($sp)
	move	$2,$16
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	restore_statement
	.size	restore_statement, .-restore_statement
	.align	2
	.globl	gosub_statement_sub
	.set	nomips16
	.set	nomicromips
	.ent	gosub_statement_sub
	.type	gosub_statement_sub, @function
gosub_statement_sub:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_label
	nop

	bne	$2,$0,.L159
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_label)($28)
	beq	$3,$0,.L152
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,6
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L160
	lui	$2,%hi(g_err_str+4)

.L153:
	sll	$6,$4,2
	li	$7,68354048			# 0x4130000
	addu	$6,$3,$6
	addiu	$7,$7,3
	sw	$7,0($6)
	addiu	$6,$4,1
	sll	$6,$6,2
	li	$7,666697728			# 0x27bd0000
	addu	$6,$3,$6
	ori	$7,$7,0xfffc
	sw	$7,0($6)
	addiu	$6,$4,2
	sll	$6,$6,2
	li	$7,268435456			# 0x10000000
	addu	$6,$3,$6
	addiu	$7,$7,3
	sw	$7,0($6)
	lhu	$8,%gp_rel(g_label+2)($28)
	addiu	$6,$4,3
	sll	$6,$6,2
	li	$7,135397376			# 0x8120000
	or	$7,$8,$7
	addu	$6,$3,$6
	sw	$7,0($6)
	lhu	$8,%gp_rel(g_label)($28)
	addiu	$6,$4,4
	sll	$6,$6,2
	li	$7,135462912			# 0x8130000
	addu	$6,$3,$6
	or	$7,$8,$7
	sw	$7,0($6)
	j	.L157
	addiu	$4,$4,5

.L152:
	jal	get_value
	nop

	bne	$2,$0,.L159
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L160
	lui	$2,%hi(g_err_str+4)

.L154:
	sll	$8,$4,2
	li	$9,48234496			# 0x2e00000
	addu	$8,$3,$8
	ori	$9,$9,0xf809
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	li	$9,604438528			# 0x24070000
	addu	$8,$3,$8
	addiu	$9,$9,14848
	sw	$9,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,8
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beq	$7,$0,.L155
	li	$7,68354048			# 0x4130000

	lui	$2,%hi(g_err_str+4)
.L160:
	j	.L151
	lw	$2,%lo(g_err_str+4)($2)

.L155:
	addiu	$7,$7,3
	sw	$7,0($6)
	addiu	$6,$4,3
	sll	$6,$6,2
	li	$7,666697728			# 0x27bd0000
	addu	$6,$3,$6
	ori	$7,$7,0xfffc
	sw	$7,0($6)
	addiu	$6,$4,4
	sll	$6,$6,2
	li	$7,268435456			# 0x10000000
	addu	$6,$3,$6
	addiu	$7,$7,3
	sw	$7,0($6)
	addiu	$6,$4,5
	sll	$6,$6,2
	addu	$6,$3,$6
	sw	$0,0($6)
	addiu	$6,$4,6
	sll	$6,$6,2
	li	$7,4194304			# 0x400000
	addu	$6,$3,$6
	addiu	$7,$7,8
	sw	$7,0($6)
	addiu	$4,$4,7
.L157:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,-1346437120			# 0xffffffffafbf0000
	addiu	$4,$4,4
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L151:
	lw	$31,20($sp)
.L159:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gosub_statement_sub
	.size	gosub_statement_sub, .-gosub_statement_sub
	.align	2
	.globl	gosub_statement
	.set	nomips16
	.set	nomicromips
	.ent	gosub_statement
	.type	gosub_statement, @function
gosub_statement:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	lw	$17,%gp_rel(g_objpos)($28)
	jal	gosub_statement_sub
	lw	$16,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L174
	lw	$31,44($sp)

	lw	$6,%gp_rel(g_source)($28)
	j	.L163
	li	$5,32			# 0x20

.L164:
	sw	$4,%gp_rel(g_srcpos)($28)
.L163:
	lw	$4,%gp_rel(g_srcpos)($28)
	addu	$3,$6,$4
	lb	$3,0($3)
	beq	$3,$5,.L164
	addiu	$4,$4,1

	li	$4,44			# 0x2c
	bne	$3,$4,.L174
	lw	$31,44($sp)

	lw	$2,%gp_rel(g_object)($28)
	sll	$18,$17,2
	addu	$2,$2,$18
	addiu	$17,$17,1
	li	$3,666697728			# 0x27bd0000
	sw	$3,0($2)
	li	$21,-1348337664			# 0xffffffffafa20000
	sw	$17,%gp_rel(g_objpos)($28)
	li	$20,32			# 0x20
	li	$17,4			# 0x4
	li	$19,44			# 0x2c
	lw	$2,%gp_rel(g_srcpos)($28)
.L176:
	addiu	$2,$2,1
	jal	get_stringFloatOrValue
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L162
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$2,%gp_rel(g_object)($28)
	addiu	$3,$4,1
	lw	$5,%gp_rel(g_objmax)($28)
	sll	$6,$3,2
	addu	$6,$2,$6
	sltu	$6,$5,$6
	bnel	$6,$0,.L175
	lui	$2,%hi(g_err_str+4)

.L165:
	addiu	$17,$17,4
	sll	$4,$4,2
	addu	$4,$2,$4
	or	$6,$17,$21
	sw	$6,0($4)
	lw	$7,%gp_rel(g_source)($28)
	j	.L166
	sw	$3,%gp_rel(g_objpos)($28)

.L167:
	sw	$6,%gp_rel(g_srcpos)($28)
.L166:
	lw	$6,%gp_rel(g_srcpos)($28)
	addu	$4,$7,$6
	lb	$4,0($4)
	beq	$4,$20,.L167
	addiu	$6,$6,1

	beql	$4,$19,.L176
	lw	$2,%gp_rel(g_srcpos)($28)

	addiu	$4,$3,2
	sll	$6,$4,2
	addu	$6,$2,$6
	sltu	$5,$5,$6
	bnel	$5,$0,.L175
	lui	$2,%hi(g_err_str+4)

.L169:
	sll	$5,$3,2
	li	$6,-1347092480			# 0xffffffffafb50000
	addu	$5,$2,$5
	addiu	$6,$6,4
	addiu	$3,$3,1
	sw	$6,0($5)
	sll	$3,$3,2
	li	$5,60817408			# 0x3a00000
	addu	$3,$2,$3
	ori	$5,$5,0xa821
	sw	$5,0($3)
	addu	$18,$2,$18
	sw	$4,%gp_rel(g_objpos)($28)
	lw	$3,0($18)
	subu	$2,$0,$17
	andi	$2,$2,0xffff
	or	$2,$3,$2
	sw	$2,0($18)
	lw	$18,%gp_rel(g_srcpos)($28)
	jal	gosub_statement_sub
	sw	$16,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L174
	lw	$31,44($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L170
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
.L175:
	j	.L162
	lw	$2,%lo(g_err_str+4)($2)

.L170:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,-1883963392			# 0xffffffff8fb50000
	addu	$3,$3,$4
	li	$4,666697728			# 0x27bd0000
	addiu	$7,$7,4
	or	$17,$17,$4
	sw	$7,0($6)
	sw	$17,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	sw	$18,%gp_rel(g_srcpos)($28)
.L162:
	lw	$31,44($sp)
.L174:
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
	.end	gosub_statement
	.size	gosub_statement, .-gosub_statement
	.align	2
	.globl	return_statement
	.set	nomips16
	.set	nomicromips
	.ent	return_statement
	.type	return_statement, @function
return_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$5,%gp_rel(g_source)($28)
	j	.L178
	li	$4,32			# 0x20

.L179:
	sw	$3,%gp_rel(g_srcpos)($28)
.L178:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beq	$2,$4,.L179
	addiu	$3,$3,1

	slt	$3,$2,33
	bne	$3,$0,.L183
	lw	$3,%gp_rel(g_objpos)($28)

	li	$3,58			# 0x3a
	beq	$2,$3,.L183
	lw	$3,%gp_rel(g_objpos)($28)

	jal	get_stringFloatOrValue
	nop

	bne	$2,$0,.L184
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_objpos)($28)
.L183:
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,3
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L182
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	.L181
	lw	$2,%lo(g_err_str+4)($2)

.L182:
	li	$6,-1885143040			# 0xffffffff8fa30000
	addu	$5,$2,$5
	addiu	$6,$6,4
	sw	$6,0($5)
	addiu	$5,$3,1
	addiu	$3,$3,2
	sll	$3,$3,2
	sll	$5,$5,2
	addu	$5,$2,$5
	li	$6,6291456			# 0x600000
	addu	$2,$2,$3
	li	$3,666697728			# 0x27bd0000
	addiu	$6,$6,8
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L181:
	lw	$31,20($sp)
.L184:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	return_statement
	.size	return_statement, .-return_statement
	.align	2
	.globl	goto_statement
	.set	nomips16
	.set	nomicromips
	.ent	goto_statement
	.type	goto_statement, @function
goto_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_label
	nop

	bne	$2,$0,.L194
	lw	$31,20($sp)

	lw	$6,%gp_rel(g_label)($28)
	beq	$6,$0,.L187
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$7,$5,2
	lw	$8,%gp_rel(g_objmax)($28)
	addu	$7,$3,$7
	sltu	$7,$8,$7
	bnel	$7,$0,.L195
	lui	$2,%hi(g_err_str+4)

.L188:
	sll	$7,$4,2
	srl	$6,$6,16
	li	$8,135266304			# 0x8100000
	addu	$7,$3,$7
	or	$6,$6,$8
	sw	$6,0($7)
	addiu	$4,$4,1
	sll	$4,$4,2
	lhu	$6,%gp_rel(g_label)($28)
	addu	$3,$3,$4
	li	$4,135331840			# 0x8110000
	or	$4,$6,$4
	j	.L192
	sw	$4,0($3)

.L187:
	jal	get_value
	nop

	bne	$2,$0,.L194
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L195
	lui	$2,%hi(g_err_str+4)

.L189:
	sll	$8,$4,2
	li	$9,48234496			# 0x2e00000
	addu	$8,$3,$8
	ori	$9,$9,0xf809
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	li	$9,604438528			# 0x24070000
	addu	$8,$3,$8
	addiu	$9,$9,14848
	sw	$9,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,4
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beql	$7,$0,.L190
	addiu	$4,$4,3

	lui	$2,%hi(g_err_str+4)
.L195:
	j	.L186
	lw	$2,%lo(g_err_str+4)($2)

.L190:
	li	$7,4194304			# 0x400000
	sll	$4,$4,2
	addiu	$7,$7,8
	addu	$3,$3,$4
	sw	$7,0($6)
	sw	$0,0($3)
.L192:
	sw	$5,%gp_rel(g_objpos)($28)
.L186:
	lw	$31,20($sp)
.L194:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	goto_statement
	.size	goto_statement, .-goto_statement
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"THEN\000"
	.align	2
.LC2:
	.ascii	"REM\000"
	.section	.text,code
	.align	2
	.globl	elseif_statement
	.set	nomips16
	.set	nomicromips
	.ent	elseif_statement
	.type	elseif_statement, @function
elseif_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	sll	$4,$2,2
	li	$5,135659520			# 0x8160000
	addiu	$sp,$sp,-24
	addu	$4,$3,$4
	addiu	$5,$5,256
	sw	$16,16($sp)
	sw	$31,20($sp)
	sw	$5,0($4)
	addiu	$4,$2,1
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,805306368			# 0x30000000
	ori	$4,$4,0x8000
	sw	$4,0($3)
	addiu	$2,$2,2
	jal	get_floatOrValue
	sw	$2,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L197
	move	$16,$2

	lui	$4,%hi(.LC1)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC1)

	beq	$2,$0,.L202
	lui	$2,%hi(g_err_str)

.L198:
	lui	$4,%hi(.LC2)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC2)

	beq	$2,$0,.L203
	lw	$2,%gp_rel(g_srcpos)($28)

	jal	rem_statement
	nop

	lw	$2,%gp_rel(g_srcpos)($28)
.L203:
	lw	$3,%gp_rel(g_source)($28)
	addu	$2,$3,$2
	lb	$2,0($2)
	slt	$2,$2,32
	bne	$2,$0,.L200
	lui	$2,%hi(g_err_str)

.L202:
	j	.L197
	lw	$16,%lo(g_err_str)($2)

.L200:
	lw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	sll	$4,$2,2
	addu	$4,$3,$4
	li	$5,272629760			# 0x10400000
	sw	$5,0($4)
	addiu	$4,$2,1
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$2,$2,2
	li	$4,805306368			# 0x30000000
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
.L197:
	lw	$31,20($sp)
	move	$2,$16
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	elseif_statement
	.size	elseif_statement, .-elseif_statement
	.align	2
	.globl	else_statement
	.set	nomips16
	.set	nomicromips
	.ent	else_statement
	.type	else_statement, @function
else_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	sll	$4,$2,2
	li	$5,135659520			# 0x8160000
	addu	$4,$3,$4
	addiu	$5,$5,256
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$5,0($4)
	addiu	$5,$2,1
	li	$4,805306368			# 0x30000000
	sll	$5,$5,2
	addu	$5,$3,$5
	ori	$6,$4,0x8000
	sw	$6,0($5)
	addiu	$5,$2,2
	sll	$5,$5,2
	addu	$3,$3,$5
	sw	$4,0($3)
	lui	$4,%hi(.LC2)
	addiu	$2,$2,3
	addiu	$4,$4,%lo(.LC2)
	jal	nextCodeIs
	sw	$2,%gp_rel(g_objpos)($28)

	beq	$2,$0,.L208
	lw	$3,%gp_rel(g_source)($28)

	jal	rem_statement
	nop

	lw	$3,%gp_rel(g_source)($28)
.L208:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$2,$3,$2
	lb	$3,0($2)
	slt	$3,$3,32
	bne	$3,$0,.L206
	move	$2,$0

	lui	$2,%hi(g_err_str)
	lw	$2,%lo(g_err_str)($2)
.L206:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	else_statement
	.size	else_statement, .-else_statement
	.align	2
	.globl	endif_statement
	.set	nomips16
	.set	nomicromips
	.ent	endif_statement
	.type	endif_statement, @function
endif_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	sll	$5,$2,2
	li	$3,805306368			# 0x30000000
	addu	$5,$4,$5
	ori	$3,$3,0x8000
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$3,0($5)
	addiu	$5,$2,1
	sll	$5,$5,2
	addu	$4,$4,$5
	sw	$3,0($4)
	lui	$4,%hi(.LC2)
	addiu	$2,$2,2
	addiu	$4,$4,%lo(.LC2)
	jal	nextCodeIs
	sw	$2,%gp_rel(g_objpos)($28)

	beq	$2,$0,.L213
	lw	$3,%gp_rel(g_source)($28)

	jal	rem_statement
	nop

	lw	$3,%gp_rel(g_source)($28)
.L213:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$2,$3,$2
	lb	$3,0($2)
	slt	$3,$3,32
	bne	$3,$0,.L211
	move	$2,$0

	lui	$2,%hi(g_err_str)
	lw	$2,%lo(g_err_str)($2)
.L211:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	endif_statement
	.size	endif_statement, .-endif_statement
	.align	2
	.globl	end_statement
	.set	nomips16
	.set	nomicromips
	.ent	end_statement
	.type	end_statement, @function
end_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,3
	sll	$5,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$7,$5
	beq	$5,$0,.L215
	lw	$6,%gp_rel(g_gp)($28)

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L215:
	addiu	$7,$28,%gp_rel(g_end_addr)
	subu	$6,$7,$6
	sll	$5,$3,2
	li	$7,-1887305728			# 0xffffffff8f820000
	andi	$6,$6,0xffff
	addu	$5,$2,$5
	or	$6,$6,$7
	sw	$6,0($5)
	addiu	$5,$3,1
	addiu	$3,$3,2
	sll	$3,$3,2
	sll	$5,$5,2
	li	$6,4194304			# 0x400000
	addu	$5,$2,$5
	addiu	$6,$6,8
	addu	$2,$2,$3
	sw	$6,0($5)
	sw	$0,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	end_statement
	.size	end_statement, .-end_statement
	.align	2
	.globl	let_dim_sub
	.set	nomips16
	.set	nomicromips
	.ent	let_dim_sub
	.type	let_dim_sub, @function
let_dim_sub:
	.frame	$sp,48,$31		# vars= 8, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_srcpos)($28)
	addiu	$sp,$sp,-48
	addiu	$2,$2,1
	sw	$16,28($sp)
	sw	$4,16($sp)
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	move	$16,$2
	bne	$2,$0,.L218
	lw	$4,16($sp)

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$5,$3,4
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$2,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L226
	lui	$2,%hi(g_err_str+4)

.L219:
	sll	$6,$3,2
	li	$18,131072			# 0x20000
	addu	$6,$2,$6
	addiu	$18,$18,4224
	sw	$18,0($6)
	addiu	$6,$3,1
	sll	$6,$6,2
	sll	$4,$4,2
	li	$7,-1883045888			# 0xffffffff8fc30000
	addu	$6,$2,$6
	or	$4,$4,$7
	sw	$4,0($6)
	addiu	$4,$3,2
	addiu	$3,$3,3
	sll	$3,$3,2
	sll	$4,$4,2
	addu	$4,$2,$4
	li	$6,6422528			# 0x620000
	addu	$2,$2,$3
	li	$3,-1348272128			# 0xffffffffafa30000
	addiu	$6,$6,6177
	addiu	$3,$3,4
	li	$17,-1885143040			# 0xffffffff8fa30000
	sw	$6,0($4)
	li	$19,44			# 0x2c
	sw	$3,0($2)
	addiu	$17,$17,4
	j	.L220
	sw	$5,%gp_rel(g_objpos)($28)

.L222:
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L224
	lw	$3,%gp_rel(g_object)($28)

	lw	$2,%gp_rel(g_objpos)($28)
	addiu	$4,$2,4
	sll	$4,$4,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$3,$4
	sltu	$5,$5,$4
	beq	$5,$0,.L221
	sll	$5,$2,2

	lui	$2,%hi(g_err_str+4)
.L226:
	j	.L218
	lw	$16,%lo(g_err_str+4)($2)

.L221:
	addu	$5,$3,$5
	sw	$18,0($5)
	addiu	$5,$2,1
	sll	$5,$5,2
	addu	$5,$3,$5
	sw	$17,0($5)
	addiu	$5,$2,2
	sll	$5,$5,2
	addu	$5,$3,$5
	li	$6,-1939668992			# 0xffffffff8c630000
	sw	$6,0($5)
	addiu	$5,$2,3
	sll	$5,$5,2
	addu	$3,$3,$5
	li	$5,6422528			# 0x620000
	addiu	$5,$5,6177
	sw	$5,0($3)
	li	$3,-1348272128			# 0xffffffffafa30000
	addiu	$3,$3,4
	addiu	$2,$2,5
	sw	$3,0($4)
	sw	$2,%gp_rel(g_objpos)($28)
.L220:
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	beq	$3,$19,.L222
	addiu	$2,$2,1

	li	$4,41			# 0x29
	beql	$3,$4,.L218
	sw	$2,%gp_rel(g_srcpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L218
	lw	$16,%lo(g_err_str)($2)

.L224:
	move	$16,$2
.L218:
	lw	$31,44($sp)
	move	$2,$16
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	let_dim_sub
	.size	let_dim_sub, .-let_dim_sub
	.align	2
	.globl	let_statement
	.set	nomips16
	.set	nomicromips
	.ent	let_statement
	.type	let_statement, @function
let_statement:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lw	$4,%gp_rel(g_source)($28)
	j	.L228
	li	$3,32			# 0x20

.L229:
	sw	$2,%gp_rel(g_srcpos)($28)
.L228:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$5,$4,$2
	lb	$5,0($5)
	beq	$5,$3,.L229
	addiu	$2,$2,1

	jal	get_var_number
	nop

	bltz	$2,.L261
	move	$4,$2

.L230:
	lw	$2,%gp_rel(g_source)($28)
	lw	$5,%gp_rel(g_srcpos)($28)
	li	$7,35			# 0x23
	addu	$6,$2,$5
	lb	$3,0($6)
	bne	$3,$7,.L232
	lb	$6,1($6)

	li	$3,40			# 0x28
	bne	$6,$3,.L233
	addiu	$5,$5,1

	sw	$5,%gp_rel(g_srcpos)($28)
	lw	$5,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$5,1
	sll	$6,$2,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L271
	lui	$2,%hi(g_err_str+4)

.L234:
	sll	$5,$5,2
	addu	$3,$3,$5
	li	$5,666697728			# 0x27bd0000
	ori	$5,$5,0xfffc
	sw	$5,0($3)
	jal	let_dim_sub
	sw	$2,%gp_rel(g_objpos)($28)

	lw	$5,%gp_rel(g_source)($28)
	j	.L235
	li	$4,32			# 0x20

.L236:
	sw	$2,%gp_rel(g_srcpos)($28)
.L235:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$5,$2
	lb	$3,0($3)
	beql	$3,$4,.L236
	addiu	$2,$2,1

	li	$4,61			# 0x3d
	bnel	$3,$4,.L272
	lui	$2,%hi(g_err_str)

.L237:
	addiu	$2,$2,1
	jal	get_float
	sw	$2,%gp_rel(g_srcpos)($28)

	j	.L267
	nop

.L233:
	sw	$5,%gp_rel(g_srcpos)($28)
	j	.L239
	li	$6,32			# 0x20

.L240:
	sw	$3,%gp_rel(g_srcpos)($28)
.L239:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$5,$2,$3
	lb	$5,0($5)
	beql	$5,$6,.L240
	addiu	$3,$3,1

	li	$2,61			# 0x3d
	bnel	$5,$2,.L272
	lui	$2,%hi(g_err_str)

.L241:
	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	jal	get_float
	sw	$4,16($sp)

	j	.L270
	lw	$4,16($sp)

.L232:
	li	$6,36			# 0x24
	bnel	$3,$6,.L243
	li	$5,40			# 0x28

	addiu	$5,$5,1
	sw	$5,%gp_rel(g_srcpos)($28)
	j	.L244
	li	$6,32			# 0x20

.L245:
	sw	$3,%gp_rel(g_srcpos)($28)
.L244:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$5,$2,$3
	lb	$5,0($5)
	beql	$5,$6,.L245
	addiu	$3,$3,1

	li	$2,61			# 0x3d
	bne	$5,$2,.L272
	lui	$2,%hi(g_err_str)

.L246:
	addiu	$3,$3,1
	sw	$4,16($sp)
	jal	get_string
	sw	$3,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L231
	lw	$4,16($sp)

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$8,$5,1
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$8,2
	addu	$6,$3,$6
	sltu	$9,$7,$6
	bnel	$9,$0,.L271
	lui	$2,%hi(g_err_str+4)

.L247:
	sll	$9,$5,2
	li	$10,604241920			# 0x24040000
	or	$4,$4,$10
	addu	$9,$3,$9
	sw	$4,0($9)
	addiu	$4,$5,3
	sw	$8,%gp_rel(g_objpos)($28)
	sll	$8,$4,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	bnel	$7,$0,.L271
	lui	$2,%hi(g_err_str+4)

.L248:
	addiu	$5,$5,2
	sll	$5,$5,2
	addu	$3,$3,$5
	li	$7,48234496			# 0x2e00000
	li	$5,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$5,$5,10240
	sw	$7,0($6)
	sw	$5,0($3)
	j	.L231
	sw	$4,%gp_rel(g_objpos)($28)

.L243:
	bne	$3,$5,.L258
	li	$6,32			# 0x20

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$5,1
	sll	$6,$2,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L271
	lui	$2,%hi(g_err_str+4)

.L250:
	sll	$5,$5,2
	addu	$3,$3,$5
	li	$5,666697728			# 0x27bd0000
	ori	$5,$5,0xfffc
	sw	$5,0($3)
	jal	let_dim_sub
	sw	$2,%gp_rel(g_objpos)($28)

	lw	$5,%gp_rel(g_source)($28)
	j	.L251
	li	$4,32			# 0x20

.L252:
	sw	$2,%gp_rel(g_srcpos)($28)
.L251:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$5,$2
	lb	$3,0($3)
	beql	$3,$4,.L252
	addiu	$2,$2,1

	li	$4,61			# 0x3d
	bnel	$3,$4,.L272
	lui	$2,%hi(g_err_str)

.L253:
	addiu	$2,$2,1
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

.L267:
	bne	$2,$0,.L273
	lw	$31,28($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,3
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L271
	lui	$2,%hi(g_err_str+4)

.L254:
	sll	$6,$4,2
	li	$7,-1885143040			# 0xffffffff8fa30000
	addu	$6,$3,$6
	addiu	$7,$7,4
	sw	$7,0($6)
	addiu	$6,$4,1
	addiu	$4,$4,2
	sll	$4,$4,2
	sll	$6,$6,2
	li	$7,666697728			# 0x27bd0000
	addu	$6,$3,$6
	addiu	$7,$7,4
	addu	$3,$3,$4
	li	$4,-1402863616			# 0xffffffffac620000
	sw	$7,0($6)
	sw	$4,0($3)
	j	.L231
	sw	$5,%gp_rel(g_objpos)($28)

.L255:
	sw	$3,%gp_rel(g_srcpos)($28)
.L258:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$5,$2,$3
	lb	$5,0($5)
	beql	$5,$6,.L255
	addiu	$3,$3,1

	li	$2,61			# 0x3d
	beql	$5,$2,.L256
	addiu	$3,$3,1

.L261:
	lui	$2,%hi(g_err_str)
.L272:
	j	.L231
	lw	$2,%lo(g_err_str)($2)

.L256:
	sw	$3,%gp_rel(g_srcpos)($28)
	jal	get_value
	sw	$4,16($sp)

	lw	$4,16($sp)
.L270:
	bne	$2,$0,.L273
	lw	$31,28($sp)

	lw	$6,%gp_rel(g_objpos)($28)
	lw	$5,%gp_rel(g_object)($28)
	addiu	$3,$6,1
	sll	$7,$3,2
	lw	$8,%gp_rel(g_objmax)($28)
	addu	$7,$5,$7
	sltu	$7,$8,$7
	beql	$7,$0,.L257
	sll	$6,$6,2

	lui	$2,%hi(g_err_str+4)
.L271:
	j	.L231
	lw	$2,%lo(g_err_str+4)($2)

.L257:
	addu	$5,$5,$6
	sll	$4,$4,2
	li	$6,-1346240512			# 0xffffffffafc20000
	or	$4,$4,$6
	sw	$4,0($5)
	sw	$3,%gp_rel(g_objpos)($28)
.L231:
	lw	$31,28($sp)
.L273:
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	let_statement
	.size	let_statement, .-let_statement
	.section	.rodata,code
	.align	2
.LC3:
	.ascii	"ELSE \000"
	.section	.text,code
	.align	2
	.globl	print_statement
	.set	nomips16
	.set	nomicromips
	.ent	print_statement
	.type	print_statement, @function
print_statement:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$20,32($sp)
	sw	$18,24($sp)
	sw	$16,16($sp)
	lui	$18,%hi(.LC3)
	li	$16,604438528			# 0x24070000
	andi	$4,$4,0xffff
	andi	$20,$5,0xffff
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$19,28($sp)
	sw	$17,20($sp)
	sw	$31,44($sp)
	move	$17,$5
	move	$22,$0
	addiu	$18,$18,%lo(.LC3)
	or	$19,$4,$16
	or	$20,$20,$16
	j	.L298
	addiu	$21,$16,11776

.L276:
	sw	$2,%gp_rel(g_srcpos)($28)
.L298:
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,32			# 0x20
	beq	$4,$3,.L276
	addiu	$2,$2,1

	jal	endOfStatement
	nop

	bne	$2,$0,.L277
	lw	$2,%gp_rel(g_srcpos)($28)

	lw	$4,%gp_rel(g_source)($28)
	move	$5,$18
	addu	$4,$4,$2
	jal	strncmp
	li	$6,5			# 0x5

	beq	$2,$0,.L277
	nop

	jal	get_stringFloatOrValue
	nop

	bne	$2,$0,.L278
	lw	$5,%gp_rel(g_lastvar)($28)

	lw	$2,%gp_rel(g_object)($28)
	lw	$3,%gp_rel(g_objpos)($28)
	beq	$5,$0,.L280
	lw	$4,%gp_rel(g_objmax)($28)

	li	$6,1			# 0x1
	bnel	$5,$6,.L303
	lw	$4,%gp_rel(g_objpos)($28)

	j	.L302
	addiu	$5,$3,2

.L280:
	addiu	$5,$3,2
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L282:
	sll	$4,$3,2
	addiu	$3,$3,1
	li	$6,48234496			# 0x2e00000
	sll	$3,$3,2
	addu	$4,$2,$4
	ori	$6,$6,0xf809
	addu	$2,$2,$3
	sw	$6,0($4)
	j	.L299
	sw	$21,0($2)

.L302:
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$7,$4,$6
	bnel	$7,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L283:
	sll	$7,$3,2
	li	$8,131072			# 0x20000
	addu	$7,$2,$7
	addiu	$8,$8,8225
	sw	$8,0($7)
	addiu	$7,$3,1
	sll	$7,$7,2
	addu	$7,$2,$7
	li	$8,872546304			# 0x34020000
	sw	$8,0($7)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$3,4
	sll	$7,$5,2
	addu	$7,$2,$7
	sltu	$4,$4,$7
	bnel	$4,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L284:
	addiu	$3,$3,3
	sll	$3,$3,2
	li	$4,48234496			# 0x2e00000
	addu	$2,$2,$3
	ori	$4,$4,0xf809
	addiu	$3,$16,20992
	sw	$4,0($6)
	sw	$3,0($2)
.L299:
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
.L303:
	addiu	$3,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	sll	$5,$3,2
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L285:
	sll	$5,$4,2
	addiu	$4,$4,1
	li	$7,48234496			# 0x2e00000
	sll	$4,$4,2
	ori	$7,$7,0xf809
	addu	$5,$2,$5
	addu	$4,$2,$4
	sw	$7,0($5)
	lw	$8,%gp_rel(g_source)($28)
	sw	$19,0($4)
	li	$7,32			# 0x20
	j	.L286
	sw	$3,%gp_rel(g_objpos)($28)

.L287:
	sw	$4,%gp_rel(g_srcpos)($28)
.L286:
	lw	$4,%gp_rel(g_srcpos)($28)
	addu	$5,$8,$4
	lb	$5,0($5)
	beql	$5,$7,.L287
	addiu	$4,$4,1

	li	$7,44			# 0x2c
	bnel	$5,$7,.L288
	li	$2,59			# 0x3b

	addiu	$4,$4,1
	sw	$4,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,1
	sll	$5,$4,2
	addu	$5,$2,$5
	sltu	$7,$6,$5
	bnel	$7,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L289:
	sll	$7,$3,2
	li	$8,872546304			# 0x34020000
	addu	$7,$2,$7
	addiu	$8,$8,1
	sw	$8,0($7)
	sw	$4,%gp_rel(g_objpos)($28)
	addiu	$4,$3,3
	sll	$7,$4,2
	addu	$7,$2,$7
	sltu	$6,$6,$7
	bnel	$6,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L290:
	addiu	$3,$3,2
	li	$6,48234496			# 0x2e00000
	sll	$3,$3,2
	ori	$6,$6,0xf809
	addu	$2,$2,$3
	sw	$6,0($5)
	li	$22,1			# 0x1
	sw	$20,0($2)
	j	.L298
	sw	$4,%gp_rel(g_objpos)($28)

.L288:
	bne	$5,$2,.L298
	move	$22,$0

	addiu	$4,$4,1
	sw	$4,%gp_rel(g_srcpos)($28)
	j	.L298
	li	$22,2			# 0x2

.L277:
	bne	$22,$0,.L278
	move	$2,$0

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,1
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L304
	lui	$2,%hi(g_err_str+4)

.L292:
	sll	$8,$4,2
	addu	$8,$3,$8
	li	$9,872546304			# 0x34020000
	sw	$9,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,3
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beql	$7,$0,.L293
	addiu	$4,$4,2

	lui	$2,%hi(g_err_str+4)
.L304:
	j	.L278
	lw	$2,%lo(g_err_str+4)($2)

.L293:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$7,48234496			# 0x2e00000
	andi	$17,$17,0xffff
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	or	$17,$17,$4
	sw	$7,0($6)
	sw	$17,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L278:
	lw	$31,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	print_statement
	.size	print_statement, .-print_statement
	.align	2
	.globl	break_statement
	.set	nomips16
	.set	nomicromips
	.ent	break_statement
	.type	break_statement, @function
break_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L306
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L306:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,135659520			# 0x8160000
	addu	$2,$2,$3
	sw	$6,0($5)
	sw	$0,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	break_statement
	.size	break_statement, .-break_statement
	.align	2
	.globl	continue_statement
	.set	nomips16
	.set	nomicromips
	.ent	continue_statement
	.type	continue_statement, @function
continue_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L309
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L309:
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,135659520			# 0x8160000
	addu	$5,$2,$5
	addiu	$6,$6,8
	addu	$2,$2,$3
	sw	$6,0($5)
	sw	$0,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	continue_statement
	.size	continue_statement, .-continue_statement
	.section	.rodata,code
	.align	2
.LC4:
	.ascii	"TO \000"
	.align	2
.LC5:
	.ascii	"STEP \000"
	.section	.text,code
	.align	2
	.globl	for_statement
	.set	nomips16
	.set	nomicromips
	.ent	for_statement
	.type	for_statement, @function
for_statement:
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
	jal	get_var_number
	lw	$17,%gp_rel(g_srcpos)($28)

	bltz	$2,.L321
	move	$16,$2

.L312:
	jal	let_statement
	sw	$17,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L313
	move	$17,$2

	lui	$4,%hi(.LC4)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC4)

	bne	$2,$0,.L314
	nop

.L321:
	lui	$2,%hi(g_err_str)
	j	.L313
	lw	$17,%lo(g_err_str)($2)

.L314:
	jal	get_value
	nop

	bne	$2,$0,.L313
	move	$17,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L325
	lui	$2,%hi(g_err_str+4)

.L315:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,136314880			# 0x8200000
	addu	$2,$2,$3
	li	$3,-1348337664			# 0xffffffffafa20000
	ori	$6,$6,0xfff4
	addiu	$3,$3,12
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	lui	$4,%hi(.LC5)
	li	$2,1			# 0x1
	addiu	$4,$4,%lo(.LC5)
	jal	nextCodeIs
	sb	$2,%gp_rel(g_valueisconst)($28)

	beq	$2,$0,.L316
	lw	$4,%gp_rel(g_objpos)($28)

	jal	get_value
	nop

	bnel	$2,$0,.L320
	move	$17,$2

	j	.L323
	lw	$2,%gp_rel(g_objpos)($28)

.L316:
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L325
	lui	$2,%hi(g_err_str+4)

.L318:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,604110848			# 0x24020000
	addiu	$4,$4,1
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	li	$2,1			# 0x1
	sw	$2,%gp_rel(g_intconst)($28)
	lw	$2,%gp_rel(g_objpos)($28)
.L323:
	lw	$3,%gp_rel(g_object)($28)
	addiu	$4,$2,14
	sll	$4,$4,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$3,$4
	sltu	$4,$5,$4
	beq	$4,$0,.L319
	sll	$4,$2,2

	lui	$2,%hi(g_err_str+4)
.L325:
	j	.L313
	lw	$17,%lo(g_err_str+4)($2)

.L319:
	li	$5,-1348337664			# 0xffffffffafa20000
	addu	$4,$3,$4
	addiu	$5,$5,8
	sw	$5,0($4)
	addiu	$4,$2,1
	sll	$4,$4,2
	li	$5,68354048			# 0x4130000
	addu	$4,$3,$4
	addiu	$5,$5,4
	sw	$5,0($4)
	addiu	$5,$2,2
	sll	$16,$16,2
	li	$4,-1882980352			# 0xffffffff8fc40000
	sll	$5,$5,2
	or	$4,$16,$4
	addu	$5,$3,$5
	sw	$4,0($5)
	addiu	$5,$2,3
	sll	$5,$5,2
	addu	$5,$3,$5
	sw	$4,0($5)
	addiu	$4,$2,4
	sll	$4,$4,2
	li	$5,8519680			# 0x820000
	addu	$4,$3,$4
	addiu	$5,$5,8225
	sw	$5,0($4)
	addiu	$4,$2,5
	li	$5,-1346109440			# 0xffffffffafc40000
	sll	$4,$4,2
	addu	$4,$3,$4
	or	$16,$16,$5
	sw	$16,0($4)
	addiu	$4,$2,6
	sll	$4,$4,2
	li	$5,-1885143040			# 0xffffffff8fa30000
	addu	$4,$3,$4
	addiu	$5,$5,12
	sw	$5,0($4)
	addiu	$4,$2,7
	sll	$4,$4,2
	li	$5,6553600			# 0x640000
	addu	$4,$3,$4
	addiu	$5,$5,6179
	sw	$5,0($4)
	addiu	$4,$2,8
	sll	$4,$4,2
	li	$5,71434240			# 0x4420000
	addu	$4,$3,$4
	addiu	$5,$5,1
	sw	$5,0($4)
	addiu	$4,$2,9
	sll	$4,$4,2
	li	$5,196608			# 0x30000
	addu	$4,$3,$4
	addiu	$5,$5,6179
	sw	$5,0($4)
	addiu	$4,$2,10
	sll	$4,$4,2
	li	$5,73465856			# 0x4610000
	addu	$4,$3,$4
	addiu	$5,$5,3
	sw	$5,0($4)
	addiu	$4,$2,11
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,-1346437120			# 0xffffffffafbf0000
	addiu	$4,$4,4
	sw	$4,0($3)
	addiu	$2,$2,12
	jal	break_statement
	sw	$2,%gp_rel(g_objpos)($28)

	j	.L324
	lw	$31,28($sp)

.L320:
.L313:
	lw	$31,28($sp)
.L324:
	move	$2,$17
	lw	$16,20($sp)
	lw	$17,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	for_statement
	.size	for_statement, .-for_statement
	.align	2
	.globl	next_statement
	.set	nomips16
	.set	nomicromips
	.ent	next_statement
	.type	next_statement, @function
next_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,4
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L327
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L327:
	li	$6,-1883308032			# 0xffffffff8fbf0000
	addu	$5,$2,$5
	addiu	$6,$6,4
	sw	$6,0($5)
	addiu	$5,$3,1
	sll	$5,$5,2
	li	$6,65011712			# 0x3e00000
	addu	$5,$2,$5
	addiu	$6,$6,8
	sw	$6,0($5)
	addiu	$5,$3,2
	addiu	$3,$3,3
	sll	$3,$3,2
	sll	$5,$5,2
	addu	$5,$2,$5
	li	$6,-1885208576			# 0xffffffff8fa20000
	addu	$2,$2,$3
	li	$3,137363456			# 0x8300000
	addiu	$6,$6,8
	addiu	$3,$3,12
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	next_statement
	.size	next_statement, .-next_statement
	.section	.rodata,code
	.align	2
.LC6:
	.ascii	"WHILE \000"
	.align	2
.LC7:
	.ascii	"UNTIL \000"
	.section	.text,code
	.align	2
	.globl	do_statement
	.set	nomips16
	.set	nomicromips
	.ent	do_statement
	.type	do_statement, @function
do_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,3
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	addiu	$sp,$sp,-24
	sltu	$5,$6,$5
	bne	$5,$0,.L336
	sw	$31,20($sp)

.L330:
	sll	$5,$3,2
	li	$6,68354048			# 0x4130000
	addu	$5,$2,$5
	addiu	$6,$6,1
	sw	$6,0($5)
	addiu	$5,$3,1
	addiu	$3,$3,2
	sll	$3,$3,2
	sll	$5,$5,2
	addu	$5,$2,$5
	li	$6,136445952			# 0x8220000
	addu	$2,$2,$3
	li	$3,-1346437120			# 0xffffffffafbf0000
	ori	$6,$6,0xfffc
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	lui	$4,%hi(.LC6)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC6)

	beq	$2,$0,.L332
	lui	$4,%hi(.LC7)

	jal	get_floatOrValue
	nop

	bne	$2,$0,.L331
	move	$3,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L338
	lui	$2,%hi(g_err_str+4)

.L333:
	sll	$5,$3,2
	addu	$5,$2,$5
	j	.L337
	li	$6,339738624			# 0x14400000

.L332:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC7)

	beq	$2,$0,.L331
	move	$3,$0

	jal	get_floatOrValue
	nop

	bne	$2,$0,.L331
	move	$3,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L334
	sll	$5,$3,2

.L336:
	lui	$2,%hi(g_err_str+4)
.L338:
	j	.L331
	lw	$3,%lo(g_err_str+4)($2)

.L334:
	addu	$5,$2,$5
	li	$6,272629760			# 0x10400000
.L337:
	addiu	$3,$3,1
	sll	$3,$3,2
	addiu	$6,$6,3
	addu	$2,$2,$3
	sw	$6,0($5)
	lw	$31,20($sp)
	sw	$0,0($2)
	addiu	$sp,$sp,24
	j	break_statement
	sw	$4,%gp_rel(g_objpos)($28)

.L331:
	lw	$31,20($sp)
	move	$2,$3
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	do_statement
	.size	do_statement, .-do_statement
	.align	2
	.globl	loop_statement
	.set	nomips16
	.set	nomicromips
	.ent	loop_statement
	.type	loop_statement, @function
loop_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(.LC6)
	addiu	$sp,$sp,-24
	addiu	$4,$4,%lo(.LC6)
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	nextCodeIs
	lw	$16,%gp_rel(g_objpos)($28)

	beq	$2,$0,.L340
	lui	$4,%hi(.LC7)

	jal	get_floatOrValue
	nop

	bne	$2,$0,.L349
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L350
	lui	$2,%hi(g_err_str+4)

.L342:
	sll	$4,$4,2
	addu	$3,$3,$4
	j	.L346
	li	$4,272629760			# 0x10400000

.L340:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC7)

	beq	$2,$0,.L351
	lw	$3,%gp_rel(g_objpos)($28)

	jal	get_floatOrValue
	nop

	bne	$2,$0,.L349
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L350
	lui	$2,%hi(g_err_str+4)

.L344:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,339738624			# 0x14400000
.L346:
	addiu	$4,$4,3
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_objpos)($28)
.L351:
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,4
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L345
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L350:
	j	.L341
	lw	$2,%lo(g_err_str+4)($2)

.L345:
	li	$6,-1883308032			# 0xffffffff8fbf0000
	addu	$5,$2,$5
	addiu	$6,$6,4
	sw	$6,0($5)
	addiu	$5,$3,1
	sll	$5,$5,2
	li	$6,65011712			# 0x3e00000
	addu	$5,$2,$5
	addiu	$6,$6,8
	sw	$6,0($5)
	addiu	$5,$3,2
	addiu	$3,$3,3
	subu	$16,$3,$16
	sll	$5,$5,2
	sll	$3,$3,2
	li	$6,805306368			# 0x30000000
	addu	$5,$2,$5
	ori	$6,$6,0xf000
	addu	$2,$2,$3
	li	$3,137494528			# 0x8320000
	or	$16,$16,$6
	addiu	$3,$3,4
	sw	$16,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L341:
	lw	$31,20($sp)
.L349:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	loop_statement
	.size	loop_statement, .-loop_statement
	.align	2
	.globl	while_statement
	.set	nomips16
	.set	nomicromips
	.ent	while_statement
	.type	while_statement, @function
while_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,3
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	addiu	$sp,$sp,-24
	sltu	$5,$6,$5
	bne	$5,$0,.L356
	sw	$31,20($sp)

.L353:
	sll	$5,$3,2
	li	$6,68354048			# 0x4130000
	addu	$5,$2,$5
	addiu	$6,$6,1
	sw	$6,0($5)
	addiu	$5,$3,1
	addiu	$3,$3,2
	sll	$3,$3,2
	sll	$5,$5,2
	addu	$5,$2,$5
	li	$6,136380416			# 0x8210000
	addu	$2,$2,$3
	li	$3,-1346437120			# 0xffffffffafbf0000
	ori	$6,$6,0xfffc
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_floatOrValue
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L357
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L355
	sll	$5,$3,2

.L356:
	lui	$2,%hi(g_err_str+4)
	j	.L354
	lw	$2,%lo(g_err_str+4)($2)

.L355:
	addiu	$3,$3,1
	li	$6,339738624			# 0x14400000
	sll	$3,$3,2
	addu	$5,$2,$5
	addiu	$6,$6,3
	addu	$2,$2,$3
	sw	$6,0($5)
	lw	$31,20($sp)
	sw	$0,0($2)
	addiu	$sp,$sp,24
	j	break_statement
	sw	$4,%gp_rel(g_objpos)($28)

.L354:
	lw	$31,20($sp)
.L357:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	while_statement
	.size	while_statement, .-while_statement
	.align	2
	.globl	wend_statement
	.set	nomips16
	.set	nomicromips
	.ent	wend_statement
	.type	wend_statement, @function
wend_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,4
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L359
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L359:
	li	$6,-1883308032			# 0xffffffff8fbf0000
	addu	$5,$2,$5
	addiu	$6,$6,4
	sw	$6,0($5)
	addiu	$5,$3,1
	sll	$5,$5,2
	li	$6,65011712			# 0x3e00000
	addu	$5,$2,$5
	addiu	$6,$6,8
	sw	$6,0($5)
	addiu	$5,$3,2
	addiu	$3,$3,3
	sll	$3,$3,2
	sll	$5,$5,2
	addu	$5,$2,$5
	li	$6,805306368			# 0x30000000
	addu	$2,$2,$3
	li	$3,137428992			# 0x8310000
	ori	$6,$6,0xf003
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	wend_statement
	.size	wend_statement, .-wend_statement
	.align	2
	.globl	param4_statement
	.set	nomips16
	.set	nomicromips
	.ent	param4_statement
	.type	param4_statement, @function
param4_statement:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$16,20($sp)
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	jal	get_value
	move	$16,$4

	bne	$2,$0,.L374
	lw	$31,36($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$19,0($3)
	li	$3,44			# 0x2c
	bnel	$19,$3,.L375
	lui	$2,%hi(g_err_str)

.L363:
	lw	$3,%gp_rel(g_objpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L376
	lui	$2,%hi(g_err_str+4)

.L364:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,666697728			# 0x27bd0000
	li	$17,-1348337664			# 0xffffffffafa20000
	addu	$5,$2,$5
	ori	$6,$6,0xfff4
	addu	$2,$2,$3
	addiu	$3,$17,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_value
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L374
	lw	$31,36($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$18,0($3)
	bnel	$18,$19,.L375
	lui	$2,%hi(g_err_str)

.L365:
	lw	$4,%gp_rel(g_objpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L376
	lui	$2,%hi(g_err_str+4)

.L366:
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$4,$17,8
	sw	$4,0($3)
	jal	get_value
	sw	$2,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L374
	lw	$31,36($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	beq	$3,$18,.L367
	lw	$4,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
.L375:
	j	.L362
	lw	$2,%lo(g_err_str)($2)

.L367:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L376
	lui	$2,%hi(g_err_str+4)

.L368:
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$17,$17,12
	sw	$17,0($3)
	jal	get_value
	sw	$2,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L374
	lw	$31,36($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$7,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	sll	$5,$7,2
	addu	$5,$3,$5
	sltu	$8,$6,$5
	bnel	$8,$0,.L376
	lui	$2,%hi(g_err_str+4)

.L369:
	sll	$8,$4,2
	li	$9,48234496			# 0x2e00000
	addu	$8,$3,$8
	ori	$9,$9,0xf809
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	andi	$16,$16,0xffff
	li	$9,604438528			# 0x24070000
	addu	$8,$3,$8
	or	$16,$16,$9
	addiu	$4,$4,3
	sw	$16,0($8)
	sw	$7,%gp_rel(g_objpos)($28)
	sll	$7,$4,2
	addu	$3,$3,$7
	sltu	$6,$6,$3
	beq	$6,$0,.L370
	li	$3,666697728			# 0x27bd0000

	lui	$2,%hi(g_err_str+4)
.L376:
	j	.L362
	lw	$2,%lo(g_err_str+4)($2)

.L370:
	addiu	$3,$3,12
	sw	$3,0($5)
	sw	$4,%gp_rel(g_objpos)($28)
.L362:
	lw	$31,36($sp)
.L374:
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
	.end	param4_statement
	.size	param4_statement, .-param4_statement
	.align	2
	.globl	param3_statement
	.set	nomips16
	.set	nomicromips
	.ent	param3_statement
	.type	param3_statement, @function
param3_statement:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$17,24($sp)
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$16,20($sp)
	jal	get_value
	move	$17,$4

	bne	$2,$0,.L387
	lw	$31,36($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$19,0($3)
	li	$3,44			# 0x2c
	bnel	$19,$3,.L388
	lui	$2,%hi(g_err_str)

.L379:
	lw	$3,%gp_rel(g_objpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L389
	lui	$2,%hi(g_err_str+4)

.L380:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$16,666697728			# 0x27bd0000
	li	$18,-1348337664			# 0xffffffffafa20000
	addu	$5,$2,$5
	ori	$6,$16,0xfff8
	addu	$2,$2,$3
	addiu	$3,$18,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_value
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L387
	lw	$31,36($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	beq	$3,$19,.L381
	lw	$4,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
.L388:
	j	.L378
	lw	$2,%lo(g_err_str)($2)

.L381:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L389
	lui	$2,%hi(g_err_str+4)

.L382:
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$18,$18,8
	sw	$18,0($3)
	jal	get_value
	sw	$2,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L387
	lw	$31,36($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$7,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	sll	$5,$7,2
	addu	$5,$3,$5
	sltu	$8,$6,$5
	bnel	$8,$0,.L389
	lui	$2,%hi(g_err_str+4)

.L383:
	sll	$8,$4,2
	li	$9,48234496			# 0x2e00000
	addu	$8,$3,$8
	ori	$9,$9,0xf809
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	andi	$17,$17,0xffff
	li	$9,604438528			# 0x24070000
	addu	$8,$3,$8
	or	$17,$17,$9
	addiu	$4,$4,3
	sw	$17,0($8)
	sw	$7,%gp_rel(g_objpos)($28)
	sll	$7,$4,2
	addu	$3,$3,$7
	sltu	$6,$6,$3
	beq	$6,$0,.L384
	addiu	$16,$16,8

	lui	$2,%hi(g_err_str+4)
.L389:
	j	.L378
	lw	$2,%lo(g_err_str+4)($2)

.L384:
	sw	$16,0($5)
	sw	$4,%gp_rel(g_objpos)($28)
.L378:
	lw	$31,36($sp)
.L387:
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
	.end	param3_statement
	.size	param3_statement, .-param3_statement
	.align	2
	.globl	bgcolor_statement
	.set	nomips16
	.set	nomicromips
	.ent	bgcolor_statement
	.type	bgcolor_statement, @function
bgcolor_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	param3_statement
	li	$4,3584			# 0xe00

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	bgcolor_statement
	.size	bgcolor_statement, .-bgcolor_statement
	.align	2
	.globl	pcg_statement
	.set	nomips16
	.set	nomicromips
	.ent	pcg_statement
	.type	pcg_statement, @function
pcg_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	param3_statement
	li	$4,17920			# 0x4600

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pcg_statement
	.size	pcg_statement, .-pcg_statement
	.align	2
	.globl	usepcg_statement
	.set	nomips16
	.set	nomicromips
	.ent	usepcg_statement
	.type	usepcg_statement, @function
usepcg_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	get_value
	lw	$16,%gp_rel(g_objpos)($28)

	beq	$2,$0,.L393
	lw	$3,%gp_rel(g_object)($28)

	addiu	$2,$16,1
	sll	$4,$2,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$3,$4
	sltu	$4,$5,$4
	bne	$4,$0,.L397
	sw	$16,%gp_rel(g_objpos)($28)

.L394:
	sll	$16,$16,2
	li	$4,872546304			# 0x34020000
	addu	$3,$3,$16
	addiu	$4,$4,1
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
.L393:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L396
	sll	$5,$3,2

.L397:
	lui	$2,%hi(g_err_str+4)
	j	.L395
	lw	$2,%lo(g_err_str+4)($2)

.L396:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,17408
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L395:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	usepcg_statement
	.size	usepcg_statement, .-usepcg_statement
	.align	2
	.globl	usegraphic_statement
	.set	nomips16
	.set	nomicromips
	.ent	usegraphic_statement
	.type	usegraphic_statement, @function
usegraphic_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	get_value
	lw	$16,%gp_rel(g_objpos)($28)

	beq	$2,$0,.L399
	lw	$3,%gp_rel(g_object)($28)

	addiu	$2,$16,1
	sll	$4,$2,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$3,$4
	sltu	$4,$5,$4
	bne	$4,$0,.L403
	sw	$16,%gp_rel(g_objpos)($28)

.L400:
	sll	$16,$16,2
	li	$4,872546304			# 0x34020000
	addu	$3,$3,$16
	addiu	$4,$4,1
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
.L399:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L402
	sll	$5,$3,2

.L403:
	lui	$2,%hi(g_err_str+4)
	j	.L401
	lw	$2,%lo(g_err_str+4)($2)

.L402:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,23040
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L401:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	usegraphic_statement
	.size	usegraphic_statement, .-usegraphic_statement
	.align	2
	.globl	cls_statement
	.set	nomips16
	.set	nomicromips
	.ent	cls_statement
	.type	cls_statement, @function
cls_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L405
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L405:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,4608
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cls_statement
	.size	cls_statement, .-cls_statement
	.align	2
	.globl	gcls_statement
	.set	nomips16
	.set	nomicromips
	.ent	gcls_statement
	.type	gcls_statement, @function
gcls_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L408
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L408:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,5120
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gcls_statement
	.size	gcls_statement, .-gcls_statement
	.align	2
	.globl	color_statement
	.set	nomips16
	.set	nomicromips
	.ent	color_statement
	.type	color_statement, @function
color_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L413
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L412
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L413
	lw	$2,%lo(g_err_str+4)($2)

.L412:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,5632
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L413:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	color_statement
	.size	color_statement, .-color_statement
	.align	2
	.globl	gcolor_statement
	.set	nomips16
	.set	nomicromips
	.ent	gcolor_statement
	.type	gcolor_statement, @function
gcolor_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L417
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L416
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L417
	lw	$2,%lo(g_err_str+4)($2)

.L416:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,6144
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L417:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gcolor_statement
	.size	gcolor_statement, .-gcolor_statement
	.align	2
	.globl	param2_statement
	.set	nomips16
	.set	nomicromips
	.ent	param2_statement
	.type	param2_statement, @function
param2_statement:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$16,20($sp)
	sw	$31,28($sp)
	sw	$17,24($sp)
	jal	get_value
	move	$16,$4

	bne	$2,$0,.L426
	lw	$31,28($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,44			# 0x2c
	beq	$4,$3,.L420
	lw	$3,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L426
	lw	$2,%lo(g_err_str)($2)

.L420:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L427
	lui	$2,%hi(g_err_str+4)

.L421:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$17,666697728			# 0x27bd0000
	addu	$2,$2,$3
	li	$3,-1348337664			# 0xffffffffafa20000
	ori	$6,$17,0xfffc
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_value
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L426
	lw	$31,28($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$7,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	sll	$5,$7,2
	addu	$5,$3,$5
	sltu	$8,$6,$5
	bnel	$8,$0,.L427
	lui	$2,%hi(g_err_str+4)

.L422:
	sll	$8,$4,2
	li	$9,48234496			# 0x2e00000
	addu	$8,$3,$8
	ori	$9,$9,0xf809
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	andi	$16,$16,0xffff
	li	$9,604438528			# 0x24070000
	addu	$8,$3,$8
	or	$16,$16,$9
	addiu	$4,$4,3
	sw	$16,0($8)
	sw	$7,%gp_rel(g_objpos)($28)
	sll	$7,$4,2
	addu	$3,$3,$7
	sltu	$6,$6,$3
	beq	$6,$0,.L423
	addiu	$17,$17,4

	lui	$2,%hi(g_err_str+4)
.L427:
	j	.L419
	lw	$2,%lo(g_err_str+4)($2)

.L423:
	sw	$17,0($5)
	sw	$4,%gp_rel(g_objpos)($28)
.L419:
	lw	$31,28($sp)
.L426:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	param2_statement
	.size	param2_statement, .-param2_statement
	.align	2
	.globl	system_statement
	.set	nomips16
	.set	nomicromips
	.ent	system_statement
	.type	system_statement, @function
system_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	sw	$16,16($sp)

	bne	$2,$0,.L436
	lw	$31,20($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,44			# 0x2c
	beq	$4,$3,.L430
	lw	$3,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L436
	lw	$2,%lo(g_err_str)($2)

.L430:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L437
	lui	$2,%hi(g_err_str+4)

.L431:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$16,666697728			# 0x27bd0000
	addu	$2,$2,$3
	li	$3,-1348337664			# 0xffffffffafa20000
	ori	$6,$16,0xfffc
	addiu	$3,$3,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_value
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L436
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L437
	lui	$2,%hi(g_err_str+4)

.L432:
	sll	$8,$4,2
	li	$9,-1885077504			# 0xffffffff8fa40000
	addu	$8,$3,$8
	addiu	$9,$9,4
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	addu	$8,$3,$8
	addiu	$16,$16,4
	sw	$16,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,4
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beql	$7,$0,.L433
	addiu	$4,$4,3

	lui	$2,%hi(g_err_str+4)
.L437:
	j	.L429
	lw	$2,%lo(g_err_str+4)($2)

.L433:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$7,48234496			# 0x2e00000
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,20480
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L429:
	lw	$31,20($sp)
.L436:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	system_statement
	.size	system_statement, .-system_statement
	.align	2
	.globl	cursor_statement
	.set	nomips16
	.set	nomicromips
	.ent	cursor_statement
	.type	cursor_statement, @function
cursor_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	param2_statement
	li	$4,4096			# 0x1000

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cursor_statement
	.size	cursor_statement, .-cursor_statement
	.align	2
	.globl	scroll_statement
	.set	nomips16
	.set	nomicromips
	.ent	scroll_statement
	.type	scroll_statement, @function
scroll_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	param2_statement
	li	$4,18432			# 0x4800

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	scroll_statement
	.size	scroll_statement, .-scroll_statement
	.align	2
	.globl	drawcount_statement
	.set	nomips16
	.set	nomicromips
	.ent	drawcount_statement
	.type	drawcount_statement, @function
drawcount_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L443
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L442
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L443
	lw	$2,%lo(g_err_str+4)($2)

.L442:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,1536
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L443:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	drawcount_statement
	.size	drawcount_statement, .-drawcount_statement
	.align	2
	.globl	wait_statement
	.set	nomips16
	.set	nomicromips
	.ent	wait_statement
	.type	wait_statement, @function
wait_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L447
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L446
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L447
	lw	$2,%lo(g_err_str+4)($2)

.L446:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,18944
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L447:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	wait_statement
	.size	wait_statement, .-wait_statement
	.align	2
	.globl	width_statement
	.set	nomips16
	.set	nomicromips
	.ent	width_statement
	.type	width_statement, @function
width_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L451
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L450
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L451
	lw	$2,%lo(g_err_str+4)($2)

.L450:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,24064
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L451:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	width_statement
	.size	width_statement, .-width_statement
	.align	2
	.globl	var_statement_sub
	.set	nomips16
	.set	nomicromips
	.ent	var_statement_sub
	.type	var_statement_sub, @function
var_statement_sub:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,-65536			# 0xffffffffffff0000
	and	$2,$4,$2
	beq	$2,$0,.L453
	andi	$3,$4,0xffff

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$7,$3,1
	lw	$8,%gp_rel(g_objmax)($28)
	sll	$6,$7,2
	addu	$6,$2,$6
	sltu	$9,$8,$6
	bnel	$9,$0,.L469
	lui	$2,%hi(g_err_str+4)

.L454:
	sll	$9,$3,2
	sra	$11,$4,16
	li	$10,1006895104			# 0x3c040000
	addu	$9,$2,$9
	or	$10,$11,$10
	sw	$10,0($9)
	sw	$7,%gp_rel(g_objpos)($28)
	andi	$7,$4,0xffff
	beql	$7,$0,.L470
	li	$2,-65536			# 0xffffffffffff0000

	addiu	$3,$3,2
	sll	$9,$3,2
	addu	$2,$2,$9
	sltu	$8,$8,$2
	bne	$8,$0,.L469
	lui	$2,%hi(g_err_str+4)

.L457:
	li	$2,881065984			# 0x34840000
	or	$7,$7,$2
	sw	$7,0($6)
	j	.L456
	sw	$3,%gp_rel(g_objpos)($28)

.L453:
	beq	$3,$0,.L470
	li	$2,-65536			# 0xffffffffffff0000

	lw	$7,%gp_rel(g_objpos)($28)
	lw	$6,%gp_rel(g_object)($28)
	addiu	$2,$7,1
	sll	$8,$2,2
	lw	$9,%gp_rel(g_objmax)($28)
	addu	$8,$6,$8
	sltu	$8,$9,$8
	bnel	$8,$0,.L469
	lui	$2,%hi(g_err_str+4)

.L458:
	sll	$7,$7,2
	addu	$6,$6,$7
	li	$7,872677376			# 0x34040000
	or	$3,$3,$7
	sw	$3,0($6)
	sw	$2,%gp_rel(g_objpos)($28)
.L456:
	li	$2,-65536			# 0xffffffffffff0000
.L470:
	and	$2,$5,$2
	beql	$2,$0,.L459
	andi	$5,$5,0xffff

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$2,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L469
	lui	$2,%hi(g_err_str+4)

.L460:
	sra	$10,$5,16
	sll	$8,$4,2
	li	$9,1006960640			# 0x3c050000
	addu	$8,$3,$8
	or	$9,$10,$9
	andi	$5,$5,0xffff
	sw	$9,0($8)
	sw	$2,%gp_rel(g_objpos)($28)
	beq	$5,$0,.L471
	move	$2,$0

	addiu	$4,$4,2
	sll	$8,$4,2
	addu	$3,$3,$8
	sltu	$7,$7,$3
	bnel	$7,$0,.L469
	lui	$2,%hi(g_err_str+4)

.L461:
	li	$3,883228672			# 0x34a50000
	or	$5,$5,$3
	sw	$5,0($6)
	j	$31
	sw	$4,%gp_rel(g_objpos)($28)

.L459:
	beq	$5,$0,.L462
	lw	$3,%gp_rel(g_object)($28)

	lw	$4,%gp_rel(g_objpos)($28)
	addiu	$2,$4,1
	sll	$6,$2,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L469
	lui	$2,%hi(g_err_str+4)

.L463:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,872742912			# 0x34050000
	or	$5,$5,$4
	sw	$5,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

.L462:
	li	$2,-16777216			# 0xffffffffff000000
	and	$4,$4,$2
	beq	$4,$0,.L471
	move	$2,$0

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L464
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
.L469:
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L464:
	addu	$4,$4,$5
	li	$5,872742912			# 0x34050000
	sw	$5,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
.L471:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	var_statement_sub
	.size	var_statement_sub, .-var_statement_sub
	.align	2
	.globl	var_statement
	.set	nomips16
	.set	nomicromips
	.ent	var_statement
	.type	var_statement, @function
var_statement:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$17,20($sp)
	sw	$16,16($sp)
	li	$17,604438528			# 0x24070000
	li	$16,48234496			# 0x2e00000
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$31,52($sp)
	addiu	$18,$17,19968
	sw	$fp,48($sp)
	sw	$23,44($sp)
	li	$19,8			# 0x8
	move	$21,$0
	move	$20,$0
	move	$22,$0
	ori	$16,$16,0xf809
	j	.L490
	addiu	$17,$17,19456

.L482:
	jal	get_var_number
	nop

	bgez	$2,.L474
	addiu	$19,$19,4

	lui	$2,%hi(g_err_str)
	j	.L475
	lw	$2,%lo(g_err_str)($2)

.L474:
	slt	$3,$22,4
	seh	$19,$19
	beq	$3,$0,.L476
	addiu	$2,$2,1

	sll	$20,$20,8
	j	.L477
	or	$20,$2,$20

.L476:
	sll	$21,$21,8
	or	$21,$2,$21
.L477:
	lw	$4,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lbu	$3,0($3)
	addiu	$3,$3,-35
	sltu	$3,$3,2
	beq	$3,$0,.L494
	li	$5,32			# 0x20

	addiu	$2,$2,1
	j	.L491
	sw	$2,%gp_rel(g_srcpos)($28)

.L480:
	sw	$2,%gp_rel(g_srcpos)($28)
.L491:
	lw	$2,%gp_rel(g_srcpos)($28)
.L494:
	addu	$3,$4,$2
	lb	$3,0($3)
	beq	$3,$5,.L480
	addiu	$2,$2,1

	li	$4,44			# 0x2c
	bne	$3,$4,.L481
	addiu	$22,$22,1

	sw	$2,%gp_rel(g_srcpos)($28)
	j	.L490
	nop

.L489:
	move	$21,$0
	move	$20,$0
	j	.L482
	move	$22,$0

.L490:
	slt	$2,$22,8
	bne	$2,$0,.L482
	nop

.L481:
	lw	$22,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$3,$22,2
	sll	$4,$3,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$2,$4
	sltu	$4,$5,$4
	bnel	$4,$0,.L495
	lui	$2,%hi(g_err_str+4)

.L483:
	sll	$23,$22,2
	addu	$4,$2,$23
	li	$5,68354048			# 0x4130000
	sw	$22,%gp_rel(prevpos.2301)($28)
	sw	$5,0($4)
	addiu	$4,$22,1
	sll	$4,$4,2
	addu	$2,$2,$4
	subu	$4,$0,$19
	andi	$4,$4,0xffff
	li	$fp,666697728			# 0x27bd0000
	or	$4,$4,$fp
	sw	$4,0($2)
	move	$5,$21
	move	$4,$20
	jal	var_statement_sub
	sw	$3,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L475
	lw	$3,%gp_rel(g_objpos)($28)

	lw	$2,%gp_rel(g_object)($28)
	addiu	$5,$3,2
	lw	$4,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$7,$4,$6
	bnel	$7,$0,.L495
	lui	$2,%hi(g_err_str+4)

.L484:
	sll	$7,$3,2
	addu	$7,$2,$7
	sw	$16,0($7)
	addiu	$7,$3,1
	sll	$7,$7,2
	addu	$7,$2,$7
	sw	$18,0($7)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$3,5
	sll	$7,$5,2
	addu	$7,$2,$7
	sltu	$7,$4,$7
	bnel	$7,$0,.L495
	lui	$2,%hi(g_err_str+4)

.L485:
	li	$7,-1885143040			# 0xffffffff8fa30000
	or	$7,$19,$7
	sw	$7,0($6)
	addiu	$6,$3,3
	addiu	$3,$3,4
	sll	$6,$6,2
	li	$7,6291456			# 0x600000
	sll	$3,$3,2
	addu	$6,$2,$6
	addu	$3,$2,$3
	addiu	$7,$7,8
	or	$19,$19,$fp
	sw	$7,0($6)
	addu	$23,$2,$23
	sw	$19,0($3)
	nor	$22,$0,$22
	sw	$5,%gp_rel(g_objpos)($28)
	addu	$5,$22,$5
	lw	$22,0($23)
	or	$5,$22,$5
	sw	$5,0($23)
	lw	$5,%gp_rel(g_objpos)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L495
	lui	$2,%hi(g_err_str+4)

.L486:
	sll	$5,$5,2
	li	$4,-1346437120			# 0xffffffffafbf0000
	addu	$2,$2,$5
	addiu	$4,$4,4
	sw	$4,0($2)
	move	$5,$21
	move	$4,$20
	jal	var_statement_sub
	sw	$3,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L475
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L487
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
.L495:
	j	.L475
	lw	$2,%lo(g_err_str+4)($2)

.L487:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	addu	$3,$3,$4
	sw	$16,0($6)
	sw	$17,0($3)
	lw	$4,%gp_rel(g_source)($28)
	lw	$3,%gp_rel(g_srcpos)($28)
	sw	$5,%gp_rel(g_objpos)($28)
	addu	$3,$4,$3
	lb	$4,-1($3)
	li	$3,44			# 0x2c
	beq	$4,$3,.L489
	li	$19,8			# 0x8

.L475:
	lw	$31,52($sp)
	lw	$fp,48($sp)
	lw	$23,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	var_statement
	.size	var_statement, .-var_statement
	.align	2
	.globl	graphic_statement
	.set	nomips16
	.set	nomicromips
	.ent	graphic_statement
	.type	graphic_statement, @function
graphic_statement:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$2,$4,-23
	addiu	$sp,$sp,-40
	sltu	$3,$2,10
	sw	$16,20($sp)
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	beq	$3,$0,.L497
	move	$16,$4

	lui	$3,%hi(.L502)
	sll	$2,$2,2
	addiu	$3,$3,%lo(.L502)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L502:
	.word	.L498
	.word	.L499
	.word	.L499
	.word	.L528
	.word	.L528
	.word	.L501
	.word	.L501
	.word	.L497
	.word	.L498
	.word	.L498
.L498:
	j	.L500
	li	$17,2			# 0x2

.L499:
	j	.L500
	li	$17,4			# 0x4

.L528:
	li	$17,3			# 0x3
.L500:
	lw	$5,%gp_rel(g_source)($28)
	j	.L503
	li	$4,32			# 0x20

.L501:
	j	.L500
	li	$17,5			# 0x5

.L497:
	lui	$2,%hi(g_err_str+36)
	j	.L504
	lw	$2,%lo(g_err_str+36)($2)

.L505:
	sw	$3,%gp_rel(g_srcpos)($28)
.L503:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beq	$2,$4,.L505
	addiu	$3,$3,1

	li	$19,44			# 0x2c
	bne	$2,$19,.L506
	lw	$3,%gp_rel(g_objpos)($28)

	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,4
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L507:
	sll	$5,$3,2
	li	$6,666697728			# 0x27bd0000
	addu	$5,$2,$5
	ori	$6,$6,0xfff0
	sw	$6,0($5)
	addiu	$5,$3,1
	sll	$5,$5,2
	li	$6,1006764032			# 0x3c020000
	addu	$5,$2,$5
	ori	$6,$6,0x8000
	sw	$6,0($5)
	addiu	$6,$3,2
	addiu	$3,$3,3
	li	$5,-1348337664			# 0xffffffffafa20000
	sll	$6,$6,2
	sll	$3,$3,2
	addu	$6,$2,$6
	addiu	$7,$5,4
	addu	$2,$2,$3
	addiu	$5,$5,8
	sw	$7,0($6)
	sw	$5,0($2)
	j	.L508
	sw	$4,%gp_rel(g_objpos)($28)

.L506:
	jal	get_value
	nop

	bne	$2,$0,.L540
	lw	$31,36($sp)

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L509:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,666697728			# 0x27bd0000
	li	$18,-1348337664			# 0xffffffffafa20000
	addu	$5,$2,$5
	ori	$6,$6,0xfff0
	addu	$2,$2,$3
	addiu	$3,$18,4
	sw	$6,0($5)
	sw	$3,0($2)
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	sw	$4,%gp_rel(g_objpos)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	bnel	$3,$19,.L541
	lui	$2,%hi(g_err_str)

.L510:
	addiu	$2,$2,1
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L540
	lw	$31,36($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L511:
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$18,$18,8
	sw	$18,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
.L508:
	li	$2,2			# 0x2
	beq	$17,$2,.L542
	li	$4,28			# 0x1c

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$19,0($3)
	li	$3,44			# 0x2c
	bnel	$19,$3,.L541
	lui	$2,%hi(g_err_str)

.L513:
	addiu	$2,$2,1
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L540
	lw	$31,36($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L514:
	sll	$4,$4,2
	li	$18,-1348337664			# 0xffffffffafa20000
	addu	$3,$3,$4
	addiu	$4,$18,12
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	li	$2,3			# 0x3
	beq	$17,$2,.L542
	li	$4,28			# 0x1c

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	bnel	$3,$19,.L541
	lui	$2,%hi(g_err_str)

.L515:
	addiu	$2,$2,1
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L540
	lw	$31,36($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L516:
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$18,$18,16
	sw	$18,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	li	$4,28			# 0x1c
.L542:
	lw	$3,%gp_rel(g_source)($28)
	bne	$16,$4,.L517
	lw	$2,%gp_rel(g_srcpos)($28)

	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,44			# 0x2c
	bnel	$4,$3,.L541
	lui	$2,%hi(g_err_str)

.L518:
	addiu	$2,$2,1
	jal	get_string
	sw	$2,%gp_rel(g_srcpos)($28)

	j	.L532
	nop

.L517:
	li	$4,29			# 0x1d
	bne	$16,$4,.L520
	addu	$3,$3,$2

	lb	$4,0($3)
	li	$3,44			# 0x2c
	beql	$4,$3,.L521
	addiu	$2,$2,1

	lui	$2,%hi(g_err_str)
.L541:
	j	.L504
	lw	$2,%lo(g_err_str)($2)

.L521:
	jal	get_label
	sw	$2,%gp_rel(g_srcpos)($28)

	lw	$5,%gp_rel(g_label)($28)
	beq	$5,$0,.L537
	nop

	bne	$2,$0,.L537
	lw	$3,%gp_rel(g_objpos)($28)

	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$6,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$2,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L523:
	sll	$6,$3,2
	srl	$5,$5,16
	li	$7,135528448			# 0x8140000
	addu	$6,$2,$6
	or	$5,$5,$7
	sw	$5,0($6)
	addiu	$3,$3,1
	sll	$3,$3,2
	lhu	$5,%gp_rel(g_label)($28)
	addu	$2,$2,$3
	li	$3,135593984			# 0x8150000
	or	$3,$5,$3
	sw	$3,0($2)
	li	$16,30			# 0x1e
	j	.L519
	sw	$4,%gp_rel(g_objpos)($28)

.L520:
	lb	$4,0($3)
	li	$3,44			# 0x2c
	bne	$4,$3,.L524
	lw	$4,%gp_rel(g_objpos)($28)

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
.L537:
	jal	get_value
	nop

.L532:
	bne	$2,$0,.L540
	lw	$31,36($sp)

	j	.L538
	lw	$3,%gp_rel(g_objpos)($28)

.L524:
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L525:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,604110848			# 0x24020000
	ori	$4,$4,0xffff
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
.L519:
	lw	$3,%gp_rel(g_objpos)($28)
.L538:
	lw	$2,%gp_rel(g_object)($28)
	addiu	$6,$3,2
	lw	$5,%gp_rel(g_objmax)($28)
	sll	$4,$6,2
	addu	$4,$2,$4
	sltu	$7,$5,$4
	bnel	$7,$0,.L539
	lui	$2,%hi(g_err_str+4)

.L526:
	sll	$7,$3,2
	li	$8,48234496			# 0x2e00000
	addu	$7,$2,$7
	ori	$8,$8,0xf809
	sw	$8,0($7)
	addiu	$7,$3,1
	li	$8,604438528			# 0x24070000
	sll	$7,$7,2
	andi	$16,$16,0xffff
	addiu	$8,$8,23552
	addu	$7,$2,$7
	or	$16,$16,$8
	addiu	$3,$3,3
	sw	$16,0($7)
	sw	$6,%gp_rel(g_objpos)($28)
	sll	$6,$3,2
	addu	$2,$2,$6
	sltu	$5,$5,$2
	beq	$5,$0,.L527
	lui	$2,%hi(g_err_str+4)

.L539:
	j	.L504
	lw	$2,%lo(g_err_str+4)($2)

.L527:
	li	$2,666697728			# 0x27bd0000
	addiu	$2,$2,16
	sw	$2,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
	move	$2,$0
.L504:
	lw	$31,36($sp)
.L540:
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
	.end	graphic_statement
	.size	graphic_statement, .-graphic_statement
	.align	2
	.globl	fopen_statement
	.set	nomips16
	.set	nomicromips
	.ent	fopen_statement
	.type	fopen_statement, @function
fopen_statement:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	jal	get_string
	move	$16,$4

	bne	$2,$0,.L544
	move	$17,$2

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$18,0($3)
	li	$3,44			# 0x2c
	beq	$18,$3,.L545
	lw	$3,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L544
	lw	$17,%lo(g_err_str)($2)

.L545:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L556
	lui	$2,%hi(g_err_str+4)

.L546:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,666697728			# 0x27bd0000
	li	$19,-1348337664			# 0xffffffffafa20000
	addu	$5,$2,$5
	ori	$6,$6,0xfff8
	addu	$2,$2,$3
	addiu	$3,$19,4
	sw	$6,0($5)
	sw	$3,0($2)
	jal	get_string
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L544
	move	$17,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$6,$3,1
	lw	$5,%gp_rel(g_objmax)($28)
	sll	$4,$6,2
	addu	$4,$2,$4
	sltu	$7,$5,$4
	bnel	$7,$0,.L556
	lui	$2,%hi(g_err_str+4)

.L547:
	sll	$7,$3,2
	addu	$7,$2,$7
	addiu	$19,$19,8
	sw	$19,0($7)
	sw	$6,%gp_rel(g_objpos)($28)
	lw	$7,%gp_rel(g_source)($28)
	lw	$6,%gp_rel(g_srcpos)($28)
	addu	$7,$7,$6
	lb	$7,0($7)
	bne	$7,$18,.L548
	addiu	$3,$3,2

	addiu	$6,$6,1
	jal	get_value
	sw	$6,%gp_rel(g_srcpos)($28)

	bnel	$2,$0,.L553
	move	$17,$2

	j	.L555
	lw	$3,%gp_rel(g_objpos)($28)

.L548:
	sll	$6,$3,2
	addu	$2,$2,$6
	sltu	$5,$5,$2
	bne	$5,$0,.L556
	lui	$2,%hi(g_err_str+4)

.L550:
	li	$2,604110848			# 0x24020000
	sw	$2,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_objpos)($28)
.L555:
	lw	$2,%gp_rel(g_object)($28)
	addiu	$6,$3,2
	lw	$5,%gp_rel(g_objmax)($28)
	sll	$4,$6,2
	addu	$4,$2,$4
	sltu	$7,$5,$4
	bnel	$7,$0,.L556
	lui	$2,%hi(g_err_str+4)

.L551:
	sll	$7,$3,2
	li	$8,48234496			# 0x2e00000
	addu	$7,$2,$7
	ori	$8,$8,0xf809
	sw	$8,0($7)
	addiu	$7,$3,1
	li	$8,604438528			# 0x24070000
	sll	$7,$7,2
	andi	$16,$16,0xffff
	addiu	$8,$8,24576
	addu	$7,$2,$7
	or	$16,$16,$8
	addiu	$3,$3,3
	sw	$16,0($7)
	sw	$6,%gp_rel(g_objpos)($28)
	sll	$6,$3,2
	addu	$2,$2,$6
	sltu	$5,$5,$2
	beq	$5,$0,.L552
	lui	$2,%hi(g_err_str+4)

.L556:
	j	.L544
	lw	$17,%lo(g_err_str+4)($2)

.L552:
	li	$2,666697728			# 0x27bd0000
	addiu	$2,$2,8
	sw	$2,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
.L553:
.L544:
	lw	$31,36($sp)
	move	$2,$17
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
	.end	fopen_statement
	.size	fopen_statement, .-fopen_statement
	.align	2
	.globl	file_statement
	.set	nomips16
	.set	nomicromips
	.ent	file_statement
	.type	file_statement, @function
file_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L560
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L559
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L560
	lw	$2,%lo(g_err_str+4)($2)

.L559:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,24611
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L560:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	file_statement
	.size	file_statement, .-file_statement
	.align	2
	.globl	fclose_statement
	.set	nomips16
	.set	nomicromips
	.ent	fclose_statement
	.type	fclose_statement, @function
fclose_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	endOfStatement
	nop

	beq	$2,$0,.L562
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L568
	lui	$2,%hi(g_err_str+4)

.L563:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,604110848			# 0x24020000
	sw	$4,0($3)
	j	.L565
	sw	$2,%gp_rel(g_objpos)($28)

.L562:
	jal	get_value
	nop

	bne	$2,$0,.L569
	lw	$31,20($sp)

.L565:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L566
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L568:
	j	.L564
	lw	$2,%lo(g_err_str+4)($2)

.L566:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,24612
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L564:
	lw	$31,20($sp)
.L569:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fclose_statement
	.size	fclose_statement, .-fclose_statement
	.align	2
	.globl	fprint_statement
	.set	nomips16
	.set	nomicromips
	.ent	fprint_statement
	.type	fprint_statement, @function
fprint_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$4,24614			# 0x6026
	j	print_statement
	li	$5,24620			# 0x602c

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fprint_statement
	.size	fprint_statement, .-fprint_statement
	.align	2
	.globl	fget_statement
	.set	nomips16
	.set	nomicromips
	.ent	fget_statement
	.type	fget_statement, @function
fget_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	param2_statement
	li	$4,24615			# 0x6027

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fget_statement
	.size	fget_statement, .-fget_statement
	.align	2
	.globl	fput_statement
	.set	nomips16
	.set	nomicromips
	.ent	fput_statement
	.type	fput_statement, @function
fput_statement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	param2_statement
	li	$4,24616			# 0x6028

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fput_statement
	.size	fput_statement, .-fput_statement
	.align	2
	.globl	fseek_statement
	.set	nomips16
	.set	nomicromips
	.ent	fseek_statement
	.type	fseek_statement, @function
fseek_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L576
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L575
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L576
	lw	$2,%lo(g_err_str+4)($2)

.L575:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,24617
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L576:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fseek_statement
	.size	fseek_statement, .-fseek_statement
	.align	2
	.globl	fputc_statement
	.set	nomips16
	.set	nomicromips
	.ent	fputc_statement
	.type	fputc_statement, @function
fputc_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_value
	nop

	bne	$2,$0,.L580
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L579
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L580
	lw	$2,%lo(g_err_str+4)($2)

.L579:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,24622
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L580:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fputc_statement
	.size	fputc_statement, .-fputc_statement
	.align	2
	.globl	fremove_statement
	.set	nomips16
	.set	nomicromips
	.ent	fremove_statement
	.type	fremove_statement, @function
fremove_statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_string
	nop

	bne	$2,$0,.L584
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L583
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L584
	lw	$2,%lo(g_err_str+4)($2)

.L583:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,24623
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L584:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fremove_statement
	.size	fremove_statement, .-fremove_statement
	.align	2
	.globl	usevar_statement
	.set	nomips16
	.set	nomicromips
	.ent	usevar_statement
	.type	usevar_statement, @function
usevar_statement:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	sw	$31,28($sp)
	li	$16,32			# 0x20
	li	$18,65536			# 0x10000
	j	.L595
	li	$17,44			# 0x2c

.L587:
	sw	$2,%gp_rel(g_srcpos)($28)
.L595:
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	beq	$3,$16,.L587
	addiu	$2,$2,1

	jal	check_var_name
	nop

	slt	$3,$2,$18
	beq	$3,$0,.L588
	nop

	lui	$2,%hi(g_err_str)
	j	.L589
	lw	$2,%lo(g_err_str)($2)

.L588:
	jal	register_var_name
	move	$4,$2

	bne	$2,$0,.L589
	lw	$5,%gp_rel(g_source)($28)

	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$3
	lbu	$4,0($4)
	addiu	$4,$4,-35
	sltu	$4,$4,2
	beq	$4,$0,.L596
	addu	$4,$5,$3

	addiu	$3,$3,1
.L597:
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$3
.L596:
	lb	$4,0($4)
	beq	$4,$16,.L597
	addiu	$3,$3,1

	bne	$4,$17,.L598
	lw	$31,28($sp)

	j	.L595
	sw	$3,%gp_rel(g_srcpos)($28)

.L589:
	lw	$31,28($sp)
.L598:
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	usevar_statement
	.size	usevar_statement, .-usevar_statement
	.section	.rodata,code
	.align	2
.LC8:
	.ascii	"SOUND \000"
	.align	2
.LC9:
	.ascii	"MUSIC \000"
	.align	2
.LC10:
	.ascii	"DRAWCOUNT \000"
	.align	2
.LC11:
	.ascii	"CURSOR \000"
	.align	2
.LC12:
	.ascii	"PALETTE \000"
	.align	2
.LC13:
	.ascii	"GPALETTE \000"
	.align	2
.LC14:
	.ascii	"BGCOLOR \000"
	.align	2
.LC15:
	.ascii	"CLS\000"
	.align	2
.LC16:
	.ascii	"GCLS\000"
	.align	2
.LC17:
	.ascii	"COLOR \000"
	.align	2
.LC18:
	.ascii	"GCOLOR \000"
	.align	2
.LC19:
	.ascii	"RESTORE \000"
	.align	2
.LC20:
	.ascii	"DATA \000"
	.align	2
.LC21:
	.ascii	"CDATA \000"
	.align	2
.LC22:
	.ascii	"LABEL \000"
	.align	2
.LC23:
	.ascii	"DIM \000"
	.align	2
.LC24:
	.ascii	"CLEAR\000"
	.align	2
.LC25:
	.ascii	"PRINT\000"
	.align	2
.LC26:
	.ascii	"IF \000"
	.align	2
.LC27:
	.ascii	"ELSEIF \000"
	.align	2
.LC28:
	.ascii	"ELSE\000"
	.align	2
.LC29:
	.ascii	"ENDIF\000"
	.align	2
.LC30:
	.ascii	"END\000"
	.align	2
.LC31:
	.ascii	"EXEC \000"
	.align	2
.LC32:
	.ascii	"GOTO \000"
	.align	2
.LC33:
	.ascii	"GOSUB \000"
	.align	2
.LC34:
	.ascii	"RETURN\000"
	.align	2
.LC35:
	.ascii	"POKE \000"
	.align	2
.LC36:
	.ascii	"FOR \000"
	.align	2
.LC37:
	.ascii	"NEXT\000"
	.align	2
.LC38:
	.ascii	"LET \000"
	.align	2
.LC39:
	.ascii	"PCG \000"
	.align	2
.LC40:
	.ascii	"USEPCG\000"
	.align	2
.LC41:
	.ascii	"SCROLL \000"
	.align	2
.LC42:
	.ascii	"WAIT \000"
	.align	2
.LC43:
	.ascii	"USEGRAPHIC\000"
	.align	2
.LC44:
	.ascii	"PSET \000"
	.align	2
.LC45:
	.ascii	"LINE \000"
	.align	2
.LC46:
	.ascii	"BOXFILL \000"
	.align	2
.LC47:
	.ascii	"CIRCLE \000"
	.align	2
.LC48:
	.ascii	"CIRCLEFILL \000"
	.align	2
.LC49:
	.ascii	"GPRINT \000"
	.align	2
.LC50:
	.ascii	"PUTBMP \000"
	.align	2
.LC51:
	.ascii	"POINT \000"
	.align	2
.LC52:
	.ascii	"VAR \000"
	.align	2
.LC53:
	.ascii	"DO\000"
	.align	2
.LC54:
	.ascii	"LOOP\000"
	.align	2
.LC55:
	.ascii	"WEND\000"
	.align	2
.LC56:
	.ascii	"BREAK\000"
	.align	2
.LC57:
	.ascii	"CONTINUE\000"
	.align	2
.LC58:
	.ascii	"SYSTEM\000"
	.align	2
.LC59:
	.ascii	"WIDTH \000"
	.align	2
.LC60:
	.ascii	"FOPEN \000"
	.align	2
.LC61:
	.ascii	"FILE \000"
	.align	2
.LC62:
	.ascii	"FCLOSE\000"
	.align	2
.LC63:
	.ascii	"FPRINT \000"
	.align	2
.LC64:
	.ascii	"FGET \000"
	.align	2
.LC65:
	.ascii	"FPUT \000"
	.align	2
.LC66:
	.ascii	"FPUTC \000"
	.align	2
.LC67:
	.ascii	"FSEEK \000"
	.align	2
.LC68:
	.ascii	"FREMOVE \000"
	.align	2
.LC69:
	.ascii	"USEVAR \000"
	.section	.text,code
	.align	2
	.globl	statement
	.set	nomips16
	.set	nomicromips
	.ent	statement
	.type	statement, @function
statement:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(.LC2)
	addiu	$sp,$sp,-24
	addiu	$4,$4,%lo(.LC2)
	sw	$31,20($sp)
	sb	$0,%gp_rel(g_temp_area_used)($28)
	sw	$0,%gp_rel(g_maxsdepth)($28)
	jal	nextCodeIs
	sw	$0,%gp_rel(g_sdepth)($28)

	beq	$2,$0,.L600
	lui	$4,%hi(.LC8)

	jal	rem_statement
	nop

	j	.L601
	nop

.L600:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC8)

	beq	$2,$0,.L602
	lui	$4,%hi(.LC9)

	jal	sound_statement
	nop

	j	.L601
	nop

.L602:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC9)

	beq	$2,$0,.L603
	lui	$4,%hi(.LC10)

	jal	music_statement
	nop

	j	.L601
	nop

.L603:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC10)

	beq	$2,$0,.L604
	lui	$4,%hi(.LC11)

	jal	drawcount_statement
	nop

	j	.L601
	nop

.L604:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC11)

	beq	$2,$0,.L605
	lui	$4,%hi(.LC12)

	jal	cursor_statement
	nop

	j	.L601
	nop

.L605:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC12)

	bne	$2,$0,.L668
	li	$4,2560			# 0xa00

	lui	$4,%hi(.LC13)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC13)

	beq	$2,$0,.L607
	lui	$4,%hi(.LC14)

	li	$4,3072			# 0xc00
.L668:
	jal	param4_statement
	nop

	j	.L601
	nop

.L607:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC14)

	beq	$2,$0,.L608
	lui	$4,%hi(.LC15)

	jal	bgcolor_statement
	nop

	j	.L601
	nop

.L608:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC15)

	beq	$2,$0,.L609
	lui	$4,%hi(.LC16)

	jal	cls_statement
	nop

	j	.L601
	nop

.L609:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC16)

	beq	$2,$0,.L610
	lui	$4,%hi(.LC17)

	jal	gcls_statement
	nop

	j	.L601
	nop

.L610:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC17)

	beq	$2,$0,.L611
	lui	$4,%hi(.LC18)

	jal	color_statement
	nop

	j	.L601
	nop

.L611:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC18)

	beq	$2,$0,.L612
	lui	$4,%hi(.LC19)

	jal	gcolor_statement
	nop

	j	.L601
	nop

.L612:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC19)

	beq	$2,$0,.L613
	lui	$4,%hi(.LC20)

	jal	restore_statement
	nop

	j	.L601
	nop

.L613:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC20)

	beq	$2,$0,.L614
	lui	$4,%hi(.LC21)

	jal	data_statement
	nop

	j	.L601
	nop

.L614:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC21)

	beq	$2,$0,.L615
	lui	$4,%hi(.LC22)

	jal	cdata_statement
	nop

	j	.L601
	nop

.L615:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC22)

	beq	$2,$0,.L616
	lui	$4,%hi(.LC23)

	jal	label_statement
	nop

	j	.L601
	nop

.L616:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC23)

	beq	$2,$0,.L617
	lui	$4,%hi(.LC24)

	jal	dim_statement
	nop

	j	.L601
	nop

.L617:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC24)

	beq	$2,$0,.L618
	lui	$4,%hi(.LC25)

	jal	clear_statement
	nop

	j	.L601
	nop

.L618:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC25)

	beq	$2,$0,.L619
	lui	$4,%hi(.LC26)

	li	$4,14336			# 0x3800
	jal	print_statement
	li	$5,13824			# 0x3600

	j	.L601
	nop

.L619:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC26)

	beq	$2,$0,.L620
	lui	$4,%hi(.LC27)

	jal	if_statement
	nop

	j	.L601
	nop

.L620:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC27)

	beq	$2,$0,.L621
	lui	$4,%hi(.LC28)

	jal	elseif_statement
	nop

	j	.L601
	nop

.L621:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC28)

	beq	$2,$0,.L622
	lui	$4,%hi(.LC29)

	jal	else_statement
	nop

	j	.L601
	nop

.L622:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC29)

	beq	$2,$0,.L623
	lui	$4,%hi(.LC30)

	jal	endif_statement
	nop

	j	.L601
	nop

.L623:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC30)

	beq	$2,$0,.L624
	lui	$4,%hi(.LC31)

	jal	end_statement
	nop

	j	.L601
	nop

.L624:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC31)

	beq	$2,$0,.L625
	lui	$4,%hi(.LC32)

	jal	exec_statement
	nop

	j	.L601
	nop

.L625:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC32)

	beq	$2,$0,.L626
	lui	$4,%hi(.LC33)

	jal	goto_statement
	nop

	j	.L601
	nop

.L626:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC33)

	beq	$2,$0,.L627
	lui	$4,%hi(.LC34)

	jal	gosub_statement
	nop

	j	.L601
	nop

.L627:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC34)

	beq	$2,$0,.L628
	lui	$4,%hi(.LC35)

	jal	return_statement
	nop

	j	.L601
	nop

.L628:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC35)

	beq	$2,$0,.L629
	lui	$4,%hi(.LC36)

	jal	poke_statement
	nop

	j	.L601
	nop

.L629:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC36)

	beq	$2,$0,.L630
	lui	$4,%hi(.LC37)

	jal	for_statement
	nop

	j	.L601
	nop

.L630:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC37)

	beq	$2,$0,.L631
	lui	$4,%hi(.LC38)

	jal	next_statement
	nop

	j	.L601
	nop

.L631:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC38)

	bne	$2,$0,.L664
	nop

.L632:
	lui	$4,%hi(.LC39)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC39)

	beq	$2,$0,.L633
	lui	$4,%hi(.LC40)

	jal	pcg_statement
	nop

	j	.L601
	nop

.L633:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC40)

	beq	$2,$0,.L634
	lui	$4,%hi(.LC41)

	jal	usepcg_statement
	nop

	j	.L601
	nop

.L634:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC41)

	beq	$2,$0,.L635
	lui	$4,%hi(.LC42)

	jal	scroll_statement
	nop

	j	.L601
	nop

.L635:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC42)

	beq	$2,$0,.L636
	lui	$4,%hi(.LC43)

	jal	wait_statement
	nop

	j	.L601
	nop

.L636:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC43)

	beq	$2,$0,.L637
	lui	$4,%hi(.LC44)

	jal	usegraphic_statement
	nop

	j	.L601
	nop

.L637:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC44)

	bne	$2,$0,.L669
	li	$4,23			# 0x17

	lui	$4,%hi(.LC45)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC45)

	beq	$2,$0,.L639
	lui	$4,%hi(.LC46)

	li	$4,24			# 0x18
.L669:
	jal	graphic_statement
	nop

	j	.L601
	nop

.L639:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC46)

	bne	$2,$0,.L669
	li	$4,25			# 0x19

	lui	$4,%hi(.LC47)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC47)

	bne	$2,$0,.L669
	li	$4,26			# 0x1a

	lui	$4,%hi(.LC48)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC48)

	bne	$2,$0,.L669
	li	$4,27			# 0x1b

	lui	$4,%hi(.LC49)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC49)

	bne	$2,$0,.L669
	li	$4,28			# 0x1c

	lui	$4,%hi(.LC50)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC50)

	bne	$2,$0,.L669
	li	$4,29			# 0x1d

	lui	$4,%hi(.LC51)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC51)

	bne	$2,$0,.L669
	li	$4,32			# 0x20

	lui	$4,%hi(.LC52)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC52)

	beq	$2,$0,.L646
	lui	$4,%hi(.LC53)

	jal	var_statement
	nop

	j	.L601
	nop

.L646:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC53)

	beq	$2,$0,.L647
	lui	$4,%hi(.LC54)

	jal	do_statement
	nop

	j	.L601
	nop

.L647:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC54)

	beq	$2,$0,.L648
	lui	$4,%hi(.LC6)

	jal	loop_statement
	nop

	j	.L601
	nop

.L648:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC6)

	beq	$2,$0,.L649
	lui	$4,%hi(.LC55)

	jal	while_statement
	nop

	j	.L601
	nop

.L649:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC55)

	beq	$2,$0,.L650
	lui	$4,%hi(.LC56)

	jal	wend_statement
	nop

	j	.L601
	nop

.L650:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC56)

	beq	$2,$0,.L651
	lui	$4,%hi(.LC57)

	jal	break_statement
	nop

	j	.L601
	nop

.L651:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC57)

	beq	$2,$0,.L652
	lui	$4,%hi(.LC58)

	jal	continue_statement
	nop

	j	.L601
	nop

.L652:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC58)

	beq	$2,$0,.L653
	lui	$4,%hi(.LC59)

	jal	system_statement
	nop

	j	.L601
	nop

.L653:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC59)

	beq	$2,$0,.L654
	lui	$4,%hi(.LC60)

	jal	width_statement
	nop

	j	.L601
	nop

.L654:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC60)

	beq	$2,$0,.L655
	lui	$4,%hi(.LC61)

	jal	fopen_statement
	li	$4,34			# 0x22

	j	.L601
	nop

.L655:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC61)

	beq	$2,$0,.L656
	lui	$4,%hi(.LC62)

	jal	file_statement
	nop

	j	.L601
	nop

.L656:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC62)

	beq	$2,$0,.L657
	lui	$4,%hi(.LC63)

	jal	fclose_statement
	nop

	j	.L601
	nop

.L657:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC63)

	beq	$2,$0,.L658
	lui	$4,%hi(.LC64)

	jal	fprint_statement
	nop

	j	.L601
	nop

.L658:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC64)

	beq	$2,$0,.L659
	lui	$4,%hi(.LC65)

	jal	fget_statement
	nop

	j	.L601
	nop

.L659:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC65)

	beq	$2,$0,.L660
	lui	$4,%hi(.LC66)

	jal	fput_statement
	nop

	j	.L601
	nop

.L660:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC66)

	beq	$2,$0,.L661
	lui	$4,%hi(.LC67)

	jal	fputc_statement
	nop

	j	.L601
	nop

.L661:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC67)

	beq	$2,$0,.L662
	lui	$4,%hi(.LC68)

	jal	fseek_statement
	nop

	j	.L601
	nop

.L662:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC68)

	beq	$2,$0,.L663
	lui	$4,%hi(.LC69)

	jal	fremove_statement
	nop

	j	.L601
	nop

.L663:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC69)

	beq	$2,$0,.L664
	nop

	jal	usevar_statement
	nop

	j	.L601
	nop

.L664:
	jal	let_statement
	nop

.L601:
	bne	$2,$0,.L670
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_sdepth)($28)
	beq	$3,$0,.L666
	lb	$3,%gp_rel(g_temp_area_used)($28)

	lui	$2,%hi(g_err_str+36)
	j	.L670
	lw	$2,%lo(g_err_str+36)($2)

.L666:
	beq	$3,$0,.L665
	lw	$5,%gp_rel(g_objpos)($28)

	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L667
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
	j	.L665
	lw	$2,%lo(g_err_str+4)($2)

.L667:
	addu	$4,$4,$5
	li	$5,2127953920			# 0x7ed60000
	ori	$5,$5,0xf000
	sw	$5,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
.L665:
	lw	$31,20($sp)
.L670:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	statement
	.size	statement, .-statement
	.align	2
	.globl	if_statement
	.set	nomips16
	.set	nomicromips
	.ent	if_statement
	.type	if_statement, @function
if_statement:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$16,20($sp)
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	jal	get_floatOrValue
	sw	$17,24($sp)

	bne	$2,$0,.L672
	move	$16,$2

	lui	$4,%hi(.LC1)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC1)

	beq	$2,$0,.L673
	lw	$4,%gp_rel(g_source)($28)

	j	.L674
	li	$3,32			# 0x20

.L673:
	lui	$2,%hi(g_err_str)
	j	.L672
	lw	$16,%lo(g_err_str)($2)

.L675:
	sw	$2,%gp_rel(g_srcpos)($28)
.L674:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$5,$4,$2
	lb	$5,0($5)
	beq	$5,$3,.L675
	addiu	$2,$2,1

	lui	$4,%hi(.LC2)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC2)

	beq	$2,$0,.L695
	lw	$3,%gp_rel(g_source)($28)

	jal	rem_statement
	nop

	lw	$3,%gp_rel(g_source)($28)
.L695:
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$18,%gp_rel(g_objpos)($28)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$4,%gp_rel(g_objmax)($28)
	slt	$3,$3,32
	beq	$3,$0,.L677
	lw	$2,%gp_rel(g_object)($28)

	addiu	$3,$18,3
	sll	$5,$3,2
	addu	$5,$2,$5
	sltu	$4,$4,$5
	bnel	$4,$0,.L696
	lui	$2,%hi(g_err_str+4)

.L678:
	sll	$5,$18,2
	addu	$5,$2,$5
	li	$4,805306368			# 0x30000000
	sw	$4,0($5)
	addiu	$5,$18,1
	addiu	$18,$18,2
	sll	$5,$5,2
	sll	$18,$18,2
	addu	$5,$2,$5
	li	$6,272629760			# 0x10400000
	addu	$2,$2,$18
	sw	$6,0($5)
	sw	$4,0($2)
	j	.L672
	sw	$3,%gp_rel(g_objpos)($28)

.L677:
	addiu	$3,$18,2
	sll	$5,$3,2
	addu	$5,$2,$5
	sltu	$4,$4,$5
	bnel	$4,$0,.L696
	lui	$2,%hi(g_err_str+4)

.L679:
	sll	$17,$18,2
	addu	$4,$2,$17
	li	$5,272629760			# 0x10400000
	sw	$5,0($4)
	addiu	$4,$18,1
	sll	$4,$4,2
	addu	$2,$2,$4
	sw	$0,0($2)
	lw	$19,%gp_rel(g_srcpos)($28)
	jal	statement
	sw	$3,%gp_rel(g_objpos)($28)

	beql	$2,$0,.L680
	li	$19,58			# 0x3a

	jal	goto_statement
	sw	$19,%gp_rel(g_srcpos)($28)

	bnel	$2,$0,.L672
	move	$16,$2

	j	.L693
	lui	$4,%hi(.LC3)

.L680:
	lw	$2,%gp_rel(g_srcpos)($28)
.L697:
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	bne	$3,$19,.L681
	addiu	$2,$2,1

	jal	statement
	sw	$2,%gp_rel(g_srcpos)($28)

	beql	$2,$0,.L697
	lw	$2,%gp_rel(g_srcpos)($28)

	j	.L672
	move	$16,$2

.L681:
	lui	$4,%hi(.LC3)
.L693:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC3)

	lw	$3,%gp_rel(g_object)($28)
	bne	$2,$0,.L682
	lw	$4,%gp_rel(g_objpos)($28)

	addiu	$4,$4,-1
	subu	$18,$4,$18
	li	$2,272629760			# 0x10400000
	addu	$17,$3,$17
	or	$18,$18,$2
	j	.L672
	sw	$18,0($17)

.L682:
	addiu	$2,$4,2
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L683
	sll	$5,$4,2

	lui	$2,%hi(g_err_str+4)
.L696:
	j	.L672
	lw	$16,%lo(g_err_str+4)($2)

.L683:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$5,$3,$5
	addu	$4,$3,$4
	nor	$18,$0,$18
	li	$6,268435456			# 0x10000000
	sw	$6,0($5)
	addu	$17,$3,$17
	sw	$0,0($4)
	li	$3,272629760			# 0x10400000
	sw	$2,%gp_rel(g_objpos)($28)
	addu	$2,$18,$2
	or	$2,$2,$3
	sw	$2,0($17)
	lw	$17,%gp_rel(g_objpos)($28)
	jal	statement
	lw	$18,%gp_rel(g_srcpos)($28)

	beql	$2,$0,.L684
	li	$18,58			# 0x3a

	jal	goto_statement
	sw	$18,%gp_rel(g_srcpos)($28)

	bnel	$2,$0,.L689
	move	$16,$2

	j	.L694
	lw	$3,%gp_rel(g_object)($28)

.L684:
	lw	$2,%gp_rel(g_srcpos)($28)
.L698:
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	bne	$3,$18,.L685
	addiu	$2,$2,1

	jal	statement
	sw	$2,%gp_rel(g_srcpos)($28)

	beql	$2,$0,.L698
	lw	$2,%gp_rel(g_srcpos)($28)

	j	.L672
	move	$16,$2

.L685:
	lw	$3,%gp_rel(g_object)($28)
.L694:
	addiu	$17,$17,-2
	sll	$2,$17,2
	addu	$2,$3,$2
	lw	$3,%gp_rel(g_objpos)($28)
	addiu	$3,$3,-1
	subu	$17,$3,$17
	li	$3,268435456			# 0x10000000
	or	$17,$17,$3
	sw	$17,0($2)
.L689:
.L672:
	lw	$31,36($sp)
	move	$2,$16
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
	.end	if_statement
	.size	if_statement, .-if_statement
	.section	.sbss,bss
	.align	2
	.type	prevpos.2301, @object
	.size	prevpos.2301, 4
prevpos.2301:
	.space	4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
