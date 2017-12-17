	.file	1 "operator.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	get_operator
	.set	nomips16
	.set	nomicromips
	.ent	get_operator
	.type	get_operator, @function
get_operator:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$6,%gp_rel(g_source)($28)
	j	.L2
	li	$4,32			# 0x20

.L3:
	sw	$3,%gp_rel(g_srcpos)($28)
.L2:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$5,$6,$3
	lb	$2,0($5)
	beql	$2,$4,.L3
	addiu	$3,$3,1

	lb	$4,1($5)
	lb	$6,2($5)
	li	$5,61			# 0x3d
	beq	$2,$5,.L12
	slt	$7,$2,62

	beql	$7,$0,.L17
	li	$7,79			# 0x4f

	li	$6,43			# 0x2b
	beq	$2,$6,.L8
	slt	$6,$2,44

	beq	$6,$0,.L18
	li	$6,47			# 0x2f

	li	$6,37			# 0x25
	beq	$2,$6,.L6
	li	$6,42			# 0x2a

	beq	$2,$6,.L7
	li	$6,33			# 0x21

	bne	$2,$6,.L42
	lui	$2,%hi(g_err_str)

	j	.L37
	nop

.L18:
	beq	$2,$6,.L10
	li	$6,60			# 0x3c

	beq	$2,$6,.L11
	nop

	li	$3,45			# 0x2d
	bnel	$2,$3,.L42
	lui	$2,%hi(g_err_str)

	j	.L38
	li	$2,13			# 0xd

.L17:
	beq	$2,$7,.L15
	slt	$8,$2,80

	beql	$8,$0,.L19
	li	$5,88			# 0x58

	li	$7,62			# 0x3e
	beq	$2,$7,.L13
	nop

	li	$5,65			# 0x41
	bnel	$2,$5,.L42
	lui	$2,%hi(g_err_str)

	j	.L39
	li	$2,78			# 0x4e

.L19:
	bne	$2,$5,.L42
	lui	$2,%hi(g_err_str)

	j	.L40
	nop

.L6:
	j	.L35
	li	$2,16			# 0x10

.L10:
	j	.L35
	li	$2,15			# 0xf

.L7:
	j	.L35
	li	$2,14			# 0xe

.L38:
	j	.L41
	sw	$2,%gp_rel(g_last_op)($28)

.L8:
	j	.L35
	li	$2,12			# 0xc

.L13:
	bne	$4,$2,.L21
	nop

	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	li	$2,11			# 0xb
.L35:
	sw	$2,%gp_rel(g_last_op)($28)
.L41:
	lw	$2,%gp_rel(g_srcpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	j	$31
	move	$2,$0

.L21:
	bne	$4,$5,.L35
	li	$2,8			# 0x8

	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,9			# 0x9

.L11:
	bne	$4,$2,.L23
	nop

	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,10			# 0xa

.L23:
	bne	$4,$5,.L35
	li	$2,6			# 0x6

	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,7			# 0x7

.L37:
	bnel	$4,$5,.L42
	lui	$2,%hi(g_err_str)

.L25:
	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,5			# 0x5

.L12:
	bne	$4,$2,.L35
	li	$2,4			# 0x4

	addiu	$3,$3,1
	j	.L35
	sw	$3,%gp_rel(g_srcpos)($28)

.L40:
	bne	$4,$7,.L42
	lui	$2,%hi(g_err_str)

.L28:
	li	$2,82			# 0x52
	bnel	$6,$2,.L42
	lui	$2,%hi(g_err_str)

.L29:
	addiu	$3,$3,2
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,3			# 0x3

.L15:
	li	$2,82			# 0x52
	bnel	$4,$2,.L42
	lui	$2,%hi(g_err_str)

.L30:
	addiu	$3,$3,1
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,1			# 0x1

.L39:
	bne	$4,$2,.L42
	lui	$2,%hi(g_err_str)

.L31:
	li	$2,68			# 0x44
	bnel	$6,$2,.L4
	lui	$2,%hi(g_err_str)

.L32:
	addiu	$3,$3,2
	sw	$3,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$2,2			# 0x2

.L4:
.L42:
	j	$31
	lw	$2,%lo(g_err_str)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_operator
	.size	get_operator, .-get_operator
	.align	2
	.globl	get_floatOperator
	.set	nomips16
	.set	nomicromips
	.ent	get_floatOperator
	.type	get_floatOperator, @function
get_floatOperator:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lw	$3,%gp_rel(g_source)($28)
	j	.L44
	li	$2,32			# 0x20

.L45:
	sw	$16,%gp_rel(g_srcpos)($28)
.L44:
	lw	$16,%gp_rel(g_srcpos)($28)
	addu	$4,$3,$16
	lb	$4,0($4)
	beql	$4,$2,.L45
	addiu	$16,$16,1

	jal	get_operator
	nop

	bne	$2,$0,.L48
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_last_op)($28)
	sltu	$4,$3,17
	beq	$4,$0,.L48
	li	$4,271581184			# 0x10300000

	ori	$4,$4,0x8000
	sll	$3,$4,$3
	bgezl	$3,.L49
	lw	$16,16($sp)

	lui	$2,%hi(g_err_str)
	lw	$2,%lo(g_err_str)($2)
	sw	$16,%gp_rel(g_srcpos)($28)
	lw	$31,20($sp)
.L48:
	lw	$16,16($sp)
.L49:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_floatOperator
	.size	get_floatOperator, .-get_floatOperator
	.align	2
	.globl	calculation
	.set	nomips16
	.set	nomicromips
	.ent	calculation
	.type	calculation, @function
calculation:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$4,$4,-1
	sltu	$2,$4,16
	beq	$2,$0,.L51
	lui	$2,%hi(g_err_str)

	lui	$2,%hi(.L68)
	addiu	$2,$2,%lo(.L68)
	sll	$4,$4,2
	addu	$4,$2,$4
	lw	$5,0($4)
	lw	$2,%gp_rel(g_object)($28)
	lw	$3,%gp_rel(g_objpos)($28)
	j	$5
	lw	$4,%gp_rel(g_objmax)($28)

	.align	2
	.align	2
.L68:
	.word	.L52
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L65
	.word	.L66
	.word	.L67
.L52:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L69:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,6422528			# 0x620000
	j	.L92
	addiu	$3,$3,4133

.L53:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L71:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,6422528			# 0x620000
	addiu	$3,$3,4132
.L92:
	j	.L89
	sw	$3,0($2)

.L54:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L72:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,6422528			# 0x620000
	j	.L92
	addiu	$3,$3,4134

.L55:
	addiu	$5,$3,2
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L73:
	sll	$4,$3,2
	li	$6,6422528			# 0x620000
	addiu	$3,$3,1
	addu	$4,$2,$4
	sll	$3,$3,2
	addiu	$6,$6,4134
	addu	$2,$2,$3
	sw	$6,0($4)
	j	.L94
	li	$3,742522880			# 0x2c420000

.L56:
	addiu	$5,$3,2
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L74:
	sll	$4,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	li	$6,6422528			# 0x620000
	addu	$4,$2,$4
	addiu	$6,$6,4134
	addu	$2,$2,$3
	li	$3,131072			# 0x20000
	sw	$6,0($4)
	j	.L92
	addiu	$3,$3,4139

.L57:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L75:
	sll	$3,$3,2
	addu	$2,$2,$3
	j	.L95
	li	$3,6422528			# 0x620000

.L58:
	addiu	$5,$3,2
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L76:
	sll	$4,$3,2
	addu	$4,$2,$4
	li	$6,4390912			# 0x430000
.L96:
	addiu	$3,$3,1
	sll	$3,$3,2
	addiu	$6,$6,4138
	addu	$2,$2,$3
	sw	$6,0($4)
	li	$3,943849472			# 0x38420000
.L94:
	j	.L92
	addiu	$3,$3,1

.L59:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L77:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,4390912			# 0x430000
.L95:
	j	.L92
	addiu	$3,$3,4138

.L60:
	addiu	$5,$3,2
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L78:
	sll	$4,$3,2
	addu	$4,$2,$4
	j	.L96
	li	$6,6422528			# 0x620000

.L62:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L79:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,4390912			# 0x430000
	j	.L92
	addiu	$3,$3,4102

.L61:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L80:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,4390912			# 0x430000
	j	.L92
	addiu	$3,$3,4100

.L63:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L81:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,6422528			# 0x620000
	j	.L92
	addiu	$3,$3,4129

.L64:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L82:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,6422528			# 0x620000
	j	.L92
	addiu	$3,$3,4131

.L65:
	addiu	$5,$3,1
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$4,$4,$6
	bnel	$4,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L83:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,1885470720			# 0x70620000
	j	.L92
	addiu	$3,$3,4098

.L66:
	addiu	$5,$3,5
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$6,$4,$6
	bnel	$6,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L84:
	sll	$6,$3,2
	li	$7,339738624			# 0x14400000
	addu	$6,$2,$6
	addiu	$7,$7,3
	sw	$7,0($6)
	addiu	$6,$3,1
	sll	$6,$6,2
	li	$7,6422528			# 0x620000
	addu	$6,$2,$6
	addiu	$7,$7,26
	sw	$7,0($6)
	addiu	$6,$3,4
	sll	$6,$6,2
	addu	$6,$2,$6
	addiu	$7,$3,2
	sltu	$4,$4,$6
	bne	$4,$0,.L91
	sw	$7,%gp_rel(g_objpos)($28)

.L85:
	addiu	$3,$3,3
	sll	$3,$3,2
	sll	$7,$7,2
	addu	$7,$2,$7
	li	$4,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$4,$4,0xf809
	addiu	$3,$3,9728
	sw	$4,0($7)
	sw	$3,0($2)
	j	.L93
	li	$2,4114			# 0x1012

.L67:
	addiu	$5,$3,5
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$6,$4,$6
	bnel	$6,$0,.L97
	lui	$2,%hi(g_err_str+4)

.L86:
	sll	$6,$3,2
	li	$7,339738624			# 0x14400000
	addu	$6,$2,$6
	addiu	$7,$7,3
	sw	$7,0($6)
	addiu	$6,$3,1
	sll	$6,$6,2
	li	$7,6422528			# 0x620000
	addu	$6,$2,$6
	addiu	$7,$7,26
	sw	$7,0($6)
	addiu	$6,$3,4
	sll	$6,$6,2
	addu	$6,$2,$6
	addiu	$7,$3,2
	sltu	$4,$4,$6
	beq	$4,$0,.L87
	sw	$7,%gp_rel(g_objpos)($28)

.L91:
	lui	$2,%hi(g_err_str+4)
.L97:
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L87:
	addiu	$3,$3,3
	sll	$3,$3,2
	sll	$7,$7,2
	addu	$7,$2,$7
	li	$4,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$4,$4,0xf809
	addiu	$3,$3,9728
	sw	$4,0($7)
	sw	$3,0($2)
	li	$2,4112			# 0x1010
.L93:
	sw	$2,0($6)
.L89:
	sw	$5,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

.L51:
	j	$31
	lw	$2,%lo(g_err_str)($2)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	calculation
	.size	calculation, .-calculation
	.align	2
	.globl	calculation_float
	.set	nomips16
	.set	nomicromips
	.ent	calculation_float
	.type	calculation_float, @function
calculation_float:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$5,$3,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$2,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L99
	sll	$6,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L99:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$6,$2,$6
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	addiu	$3,$3,21504
	li	$7,48234496			# 0x2e00000
	andi	$4,$4,0xffff
	ori	$7,$7,0xf809
	or	$4,$4,$3
	sw	$7,0($6)
	sw	$4,0($2)
	sw	$5,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	calculation_float
	.size	calculation_float, .-calculation_float
	.globl	__eqsf2
	.globl	__nesf2
	.globl	__ltsf2
	.globl	__lesf2
	.globl	__gtsf2
	.globl	__gesf2
	.globl	__addsf3
	.globl	__subsf3
	.globl	__mulsf3
	.globl	__divsf3
	.globl	__floatsisf
	.align	2
	.globl	lib_float
	.set	nomips16
	.set	nomicromips
	.ent	lib_float
	.type	lib_float, @function
lib_float:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$6,$6,-1
	addiu	$sp,$sp,-32
	sltu	$2,$6,15
	sw	$31,28($sp)
	sw	$4,16($sp)
	beq	$2,$0,.L102
	sw	$5,20($sp)

	lui	$2,%hi(.L115)
	addiu	$2,$2,%lo(.L115)
	sll	$6,$6,2
	addu	$6,$2,$6
	lw	$2,0($6)
	j	$2
	nop

	.align	2
	.align	2
.L115:
	.word	.L103
	.word	.L104
	.word	.L102
	.word	.L105
	.word	.L106
	.word	.L107
	.word	.L108
	.word	.L109
	.word	.L110
	.word	.L102
	.word	.L102
	.word	.L111
	.word	.L112
	.word	.L113
	.word	.L114
.L105:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__eqsf2
	nop

	bnel	$2,$0,.L160
	move	$2,$0

	j	.L163
	lui	$2,%hi(.LC0)

.L106:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__nesf2
	nop

	beql	$2,$0,.L160
	move	$2,$0

	j	.L163
	lui	$2,%hi(.LC0)

.L107:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__ltsf2
	nop

	bgezl	$2,.L160
	move	$2,$0

	j	.L163
	lui	$2,%hi(.LC0)

.L108:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__lesf2
	nop

	bgtzl	$2,.L160
	move	$2,$0

	j	.L163
	lui	$2,%hi(.LC0)

.L109:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__gtsf2
	nop

	blezl	$2,.L160
	move	$2,$0

	j	.L163
	lui	$2,%hi(.LC0)

.L110:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__gesf2
	nop

	bltzl	$2,.L160
	move	$2,$0

	lui	$2,%hi(.LC0)
.L163:
	j	.L160
	lw	$2,%lo(.LC0)($2)

.L111:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__addsf3
	nop

	j	.L160
	nop

.L112:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__subsf3
	nop

	j	.L160
	nop

.L113:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__mulsf3
	nop

	j	.L160
	nop

.L114:
	lw	$4,20($sp)
	jal	__eqsf2
	move	$5,$0

	bne	$2,$0,.L129
	nop

	jal	err_div_zero
	nop

.L129:
	lw	$4,16($sp)
	lw	$5,20($sp)
	jal	__divsf3
	nop

	j	.L160
	nop

.L103:
	lw	$4,16($sp)
	jal	__nesf2
	move	$5,$0

	bne	$2,$0,.L133
	li	$4,1			# 0x1

	j	.L161
	nop

.L104:
	lw	$4,16($sp)
	jal	__nesf2
	move	$5,$0

	beq	$2,$0,.L133
	move	$4,$0

.L161:
	lw	$4,20($sp)
	jal	__nesf2
	move	$5,$0

	sltu	$4,$0,$2
.L133:
	jal	__floatsisf
	nop

.L160:
	sw	$2,20($sp)
	j	.L136
	lw	$2,20($sp)

.L102:
	jal	err_unknown
	nop

	move	$2,$0
.L136:
	lw	$31,28($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_float
	.size	lib_float, .-lib_float
	.globl	g_priority
	.section	.rodata,code
	.align	2
	.type	g_priority, @object
	.size	g_priority, 17
g_priority:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8

	.comm	g_last_op,4,4
	.align	2
.LC0:
	.word	1065353216
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
