	.file	1 "float.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	get_float_sub
	.set	nomips16
	.set	nomicromips
	.ent	get_float_sub
	.type	get_float_sub, @function
get_float_sub:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$31,44($sp)
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	jal	get_simple_float
	move	$19,$4

	bne	$2,$0,.L2
	move	$20,$2

	lui	$18,%hi(g_priority)
	addiu	$18,$18,%lo(g_priority)
	li	$17,-1348337664			# 0xffffffffafa20000
	li	$16,-1885077504			# 0xffffffff8fa40000
.L9:
	jal	get_floatOperator
	lw	$22,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L2
	lw	$21,%gp_rel(g_last_op)($28)

	addu	$2,$21,$18
	lbu	$4,0($2)
	slt	$2,$19,$4
	bne	$2,$0,.L3
	lw	$2,%gp_rel(g_sdepth)($28)

	sw	$22,%gp_rel(g_srcpos)($28)
	j	.L2
	move	$20,$0

.L3:
	lw	$3,%gp_rel(g_maxsdepth)($28)
	addiu	$2,$2,4
	slt	$3,$3,$2
	beq	$3,$0,.L4
	sw	$2,%gp_rel(g_sdepth)($28)

	sw	$2,%gp_rel(g_maxsdepth)($28)
.L4:
	lw	$6,%gp_rel(g_objpos)($28)
	lw	$5,%gp_rel(g_object)($28)
	addiu	$3,$6,1
	sll	$7,$3,2
	lw	$8,%gp_rel(g_objmax)($28)
	addu	$7,$5,$7
	sltu	$7,$8,$7
	bnel	$7,$0,.L12
	lui	$2,%hi(g_err_str+4)

.L5:
	sll	$6,$6,2
	addu	$5,$5,$6
	or	$2,$2,$17
	sw	$2,0($5)
	jal	get_float_sub
	sw	$3,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L8
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L6
	sll	$4,$4,2

	lui	$2,%hi(g_err_str+4)
.L12:
	j	.L2
	lw	$20,%lo(g_err_str+4)($2)

.L6:
	addu	$3,$3,$4
	lw	$4,%gp_rel(g_sdepth)($28)
	or	$4,$4,$16
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_sdepth)($28)
	move	$4,$21
	addiu	$2,$2,-4
	jal	calculation_float
	sw	$2,%gp_rel(g_sdepth)($28)

	beq	$2,$0,.L9
	nop

.L8:
	move	$20,$2
.L2:
	lw	$31,44($sp)
	move	$2,$20
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
	.end	get_float_sub
	.size	get_float_sub, .-get_float_sub
	.align	2
	.globl	get_simple_float
	.set	nomips16
	.set	nomicromips
	.ent	get_simple_float
	.type	get_simple_float, @function
get_simple_float:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	lw	$5,%gp_rel(g_source)($28)
	j	.L14
	li	$4,32			# 0x20

.L15:
	sw	$2,%gp_rel(g_srcpos)($28)
.L14:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$5,$2
	lb	$3,0($3)
	beql	$3,$4,.L15
	addiu	$2,$2,1

	li	$4,40			# 0x28
	bne	$3,$4,.L16
	li	$4,45			# 0x2d

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	j	.L17
	li	$3,32			# 0x20

.L18:
	sw	$2,%gp_rel(g_srcpos)($28)
.L17:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$2
	lb	$4,0($4)
	beq	$4,$3,.L18
	addiu	$2,$2,1

	lui	$2,%hi(g_priority)
	jal	get_float_sub
	lbu	$4,%lo(g_priority)($2)

	bne	$2,$0,.L19
	sw	$2,20($sp)

	lw	$6,%gp_rel(g_source)($28)
	j	.L20
	li	$5,32			# 0x20

.L21:
	sw	$3,%gp_rel(g_srcpos)($28)
.L20:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$6,$3
	lb	$4,0($4)
	beql	$4,$5,.L21
	addiu	$3,$3,1

	li	$5,41			# 0x29
	bnel	$4,$5,.L44
	lui	$2,%hi(g_err_str)

.L22:
	addiu	$3,$3,1
	j	.L19
	sw	$3,%gp_rel(g_srcpos)($28)

.L16:
	bne	$3,$4,.L23
	li	$4,43			# 0x2b

	addiu	$2,$2,1
	jal	get_simple_float
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L45
	lw	$31,28($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,1
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L46
	lui	$2,%hi(g_err_str+4)

.L24:
	sll	$8,$4,2
	addu	$8,$3,$8
	li	$9,872677376			# 0x34040000
	sw	$9,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,3
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	bnel	$7,$0,.L46
	lui	$2,%hi(g_err_str+4)

.L25:
	addiu	$4,$4,2
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$7,48234496			# 0x2e00000
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,21517
	sw	$7,0($6)
	sw	$4,0($3)
	j	.L19
	sw	$5,%gp_rel(g_objpos)($28)

.L23:
	bne	$3,$4,.L38
	li	$6,32			# 0x20

	addiu	$2,$2,1
	j	.L38
	sw	$2,%gp_rel(g_srcpos)($28)

.L28:
	sw	$3,%gp_rel(g_srcpos)($28)
.L38:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$3
	lb	$2,0($4)
	beq	$2,$6,.L28
	addiu	$3,$3,1

	addiu	$2,$2,-48
	andi	$2,$2,0x00ff
	sltu	$2,$2,10
	beq	$2,$0,.L29
	nop

	jal	strtof
	addiu	$5,$sp,20

	sw	$2,16($sp)
	lw	$4,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_source)($28)
	lw	$3,20($sp)
	addu	$4,$2,$4
	beql	$3,$4,.L44
	lui	$2,%hi(g_err_str)

.L30:
	lw	$4,16($sp)
	li	$5,-65536			# 0xffffffffffff0000
	subu	$2,$3,$2
	and	$5,$4,$5
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$6,%gp_rel(g_objmax)($28)
	lw	$2,%gp_rel(g_object)($28)
	beq	$5,$0,.L31
	lw	$3,%gp_rel(g_objpos)($28)

	addiu	$5,$3,2
	sll	$7,$5,2
	addu	$7,$2,$7
	sltu	$6,$6,$7
	bnel	$6,$0,.L46
	lui	$2,%hi(g_err_str+4)

.L32:
	sll	$6,$3,2
	srl	$8,$4,16
	li	$7,1006764032			# 0x3c020000
	addiu	$3,$3,1
	addu	$6,$2,$6
	sll	$3,$3,2
	or	$7,$8,$7
	addu	$2,$2,$3
	sw	$7,0($6)
	andi	$4,$4,0xffff
	j	.L42
	li	$3,876740608			# 0x34420000

.L31:
	addiu	$5,$3,1
	sll	$7,$5,2
	addu	$7,$2,$7
	sltu	$6,$6,$7
	bnel	$6,$0,.L46
	lui	$2,%hi(g_err_str+4)

.L33:
	sll	$3,$3,2
	addu	$2,$2,$3
	andi	$4,$4,0xffff
	li	$3,872546304			# 0x34020000
.L42:
	or	$4,$4,$3
	sw	$4,0($2)
	j	.L41
	sw	$5,%gp_rel(g_objpos)($28)

.L29:
	jal	get_var_number
	nop

	bgez	$2,.L34
	lw	$5,%gp_rel(g_source)($28)

	jal	float_function
	nop

	j	.L43
	lw	$31,28($sp)

.L34:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$3
	lb	$6,0($4)
	li	$4,35			# 0x23
	beq	$6,$4,.L35
	addiu	$4,$3,1

	lui	$2,%hi(g_err_str)
.L44:
	j	.L19
	lw	$2,%lo(g_err_str)($2)

.L35:
	sw	$4,%gp_rel(g_srcpos)($28)
	addu	$4,$5,$4
	lb	$5,0($4)
	li	$4,40			# 0x28
	bne	$5,$4,.L36
	lw	$5,%gp_rel(g_objpos)($28)

	addiu	$3,$3,2
	move	$4,$2
	jal	get_dim_value
	sw	$3,%gp_rel(g_srcpos)($28)

	j	.L43
	lw	$31,28($sp)

.L36:
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L37
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
.L46:
	j	.L19
	lw	$2,%lo(g_err_str+4)($2)

.L37:
	addu	$4,$4,$5
	sll	$2,$2,2
	li	$5,-1883111424			# 0xffffffff8fc20000
	or	$2,$2,$5
	sw	$2,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
.L41:
	move	$2,$0
.L19:
	lw	$31,28($sp)
.L43:
.L45:
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_simple_float
	.size	get_simple_float, .-get_simple_float
	.align	2
	.globl	get_float
	.set	nomips16
	.set	nomicromips
	.ent	get_float
	.type	get_float, @function
get_float:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_sdepth)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	bne	$2,$0,.L48
	sw	$16,24($sp)

	lw	$16,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$2,$16,1
	sll	$3,$2,2
	addu	$3,$4,$3
	lw	$4,%gp_rel(g_objmax)($28)
	sltu	$3,$4,$3
	bne	$3,$0,.L54
	sw	$0,%gp_rel(g_maxsdepth)($28)

.L49:
	sw	$2,%gp_rel(g_objpos)($28)
.L48:
	lui	$2,%hi(g_priority)
	jal	get_float_sub
	lbu	$4,%lo(g_priority)($2)

	bne	$2,$0,.L55
	lw	$31,28($sp)

	lw	$3,%gp_rel(g_sdepth)($28)
	bne	$3,$0,.L51
	lw	$4,%gp_rel(g_maxsdepth)($28)

	lw	$6,%gp_rel(g_objpos)($28)
	bne	$4,$0,.L52
	lw	$3,%gp_rel(g_object)($28)

	addiu	$4,$16,1
	sll	$4,$4,2
	sll	$5,$16,2
	addiu	$6,$6,-1
	addu	$4,$3,$4
	addu	$5,$3,$5
	subu	$6,$6,$16
	jal	shift_obj
	sw	$2,16($sp)

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,16($sp)
	addiu	$3,$3,-1
	j	.L51
	sw	$3,%gp_rel(g_objpos)($28)

.L52:
	addiu	$6,$6,1
	sll	$6,$6,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$5,$6
	beql	$6,$0,.L53
	subu	$4,$0,$4

.L54:
	lui	$2,%hi(g_err_str+4)
	j	.L50
	lw	$2,%lo(g_err_str+4)($2)

.L53:
	li	$5,666697728			# 0x27bd0000
	sll	$16,$16,2
	andi	$4,$4,0xffff
	or	$4,$4,$5
	addu	$16,$3,$16
	sw	$4,0($16)
	lw	$4,%gp_rel(g_objpos)($28)
	sll	$6,$4,2
	addu	$3,$3,$6
	lhu	$6,%gp_rel(g_maxsdepth)($28)
	addiu	$4,$4,1
	or	$5,$6,$5
	sw	$5,0($3)
	sw	$4,%gp_rel(g_objpos)($28)
.L51:
	li	$3,1			# 0x1
	sw	$3,%gp_rel(g_lastvar)($28)
.L50:
	lw	$31,28($sp)
.L55:
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_float
	.size	get_float, .-get_float
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
