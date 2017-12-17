	.file	1 "value.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	get_value_sub
	.set	nomips16
	.set	nomicromips
	.ent	get_value_sub
	.type	get_value_sub, @function
get_value_sub:
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
	jal	get_simple_value
	move	$19,$4

	bne	$2,$0,.L2
	move	$20,$2

	lui	$18,%hi(g_priority)
	addiu	$18,$18,%lo(g_priority)
	li	$17,-1348337664			# 0xffffffffafa20000
	li	$16,-1885143040			# 0xffffffff8fa30000
.L9:
	jal	get_operator
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
	jal	get_value_sub
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
	jal	calculation
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
	.end	get_value_sub
	.size	get_value_sub, .-get_value_sub
	.align	2
	.globl	get_dim_value
	.set	nomips16
	.set	nomicromips
	.ent	get_dim_value
	.type	get_dim_value, @function
get_dim_value:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	lui	$2,%hi(g_priority)
	sw	$16,16($sp)
	lbu	$16,%lo(g_priority)($2)
	sw	$18,24($sp)
	move	$18,$4
	move	$4,$16
	sw	$17,20($sp)
	sw	$31,36($sp)
	sw	$20,32($sp)
	jal	get_value_sub
	sw	$19,28($sp)

	bne	$2,$0,.L14
	move	$17,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$5,$3,4
	lw	$4,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$2,$6
	sltu	$6,$4,$6
	bnel	$6,$0,.L28
	lui	$2,%hi(g_err_str+4)

.L15:
	sll	$6,$3,2
	li	$7,131072			# 0x20000
	addu	$6,$2,$6
	addiu	$7,$7,4224
	sw	$7,0($6)
	addiu	$6,$3,1
	li	$7,-1883045888			# 0xffffffff8fc30000
	sll	$6,$6,2
	sll	$18,$18,2
	addu	$6,$2,$6
	or	$18,$18,$7
	sw	$18,0($6)
	addiu	$6,$3,2
	sll	$6,$6,2
	li	$7,6422528			# 0x620000
	addiu	$3,$3,3
	addu	$6,$2,$6
	addiu	$7,$7,6177
	sll	$3,$3,2
	sw	$7,0($6)
	addu	$3,$2,$3
	li	$6,-1939734528			# 0xffffffff8c620000
	sw	$6,0($3)
	lw	$8,%gp_rel(g_source)($28)
	sw	$5,%gp_rel(g_objpos)($28)
	j	.L16
	li	$7,32			# 0x20

.L17:
	sw	$6,%gp_rel(g_srcpos)($28)
.L16:
	lw	$6,%gp_rel(g_srcpos)($28)
	addu	$3,$8,$6
	lb	$3,0($3)
	beq	$3,$7,.L17
	addiu	$6,$6,1

	li	$6,44			# 0x2c
	bnel	$3,$6,.L29
	lw	$2,%gp_rel(g_srcpos)($28)

	lw	$3,%gp_rel(g_sdepth)($28)
	lw	$6,%gp_rel(g_maxsdepth)($28)
	addiu	$3,$3,4
	slt	$6,$6,$3
	beq	$6,$0,.L19
	sw	$3,%gp_rel(g_sdepth)($28)

	sw	$3,%gp_rel(g_maxsdepth)($28)
.L19:
	addiu	$5,$5,1
	sll	$5,$5,2
	addu	$2,$2,$5
	sltu	$4,$4,$2
	bne	$4,$0,.L28
	lui	$2,%hi(g_err_str+4)

.L20:
	li	$19,131072			# 0x20000
	li	$18,6422528			# 0x620000
	li	$20,-1348337664			# 0xffffffffafa20000
	addiu	$19,$19,4224
	addiu	$18,$18,6177
	lw	$2,%gp_rel(g_srcpos)($28)
.L30:
	lw	$4,%gp_rel(g_object)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_objpos)($28)
	sll	$3,$2,2
	addu	$3,$4,$3
	lw	$4,%gp_rel(g_sdepth)($28)
	addiu	$2,$2,1
	or	$4,$4,$20
	sw	$4,0($3)
	move	$4,$16
	jal	get_value_sub
	sw	$2,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L23
	lw	$3,%gp_rel(g_object)($28)

	lw	$2,%gp_rel(g_objpos)($28)
	addiu	$4,$2,5
	sll	$4,$4,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$4,$3,$4
	sltu	$4,$5,$4
	beq	$4,$0,.L21
	sll	$4,$2,2

	lui	$2,%hi(g_err_str+4)
.L28:
	j	.L14
	lw	$17,%lo(g_err_str+4)($2)

.L21:
	addu	$4,$3,$4
	sw	$19,0($4)
	lw	$6,%gp_rel(g_sdepth)($28)
	addiu	$4,$2,1
	sll	$4,$4,2
	li	$5,-1885143040			# 0xffffffff8fa30000
	addu	$4,$3,$4
	or	$5,$6,$5
	sw	$5,0($4)
	addiu	$4,$2,2
	sll	$4,$4,2
	addu	$4,$3,$4
	sw	$18,0($4)
	addiu	$4,$2,3
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,-1939734528			# 0xffffffff8c620000
	sw	$4,0($3)
	addiu	$2,$2,4
	sw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$2,$3,$2
	lb	$3,0($2)
	li	$2,44			# 0x2c
	beq	$3,$2,.L30
	lw	$2,%gp_rel(g_srcpos)($28)

	lw	$2,%gp_rel(g_sdepth)($28)
	addiu	$2,$2,-4
	sw	$2,%gp_rel(g_sdepth)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
.L29:
	lw	$3,%gp_rel(g_source)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,41			# 0x29
	beq	$4,$3,.L22
	addiu	$2,$2,1

	lui	$2,%hi(g_err_str)
	j	.L14
	lw	$17,%lo(g_err_str)($2)

.L22:
	j	.L14
	sw	$2,%gp_rel(g_srcpos)($28)

.L23:
	move	$17,$2
.L14:
	lw	$31,36($sp)
	move	$2,$17
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
	.end	get_dim_value
	.size	get_dim_value, .-get_dim_value
	.align	2
	.globl	get_simple_value
	.set	nomips16
	.set	nomicromips
	.ent	get_simple_value
	.type	get_simple_value, @function
get_simple_value:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$3,%gp_rel(g_source)($28)
	j	.L32
	li	$5,32			# 0x20

.L33:
	sw	$2,%gp_rel(g_srcpos)($28)
.L32:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$4,$3,$2
	lb	$4,0($4)
	beql	$4,$5,.L33
	addiu	$2,$2,1

	li	$5,40			# 0x28
	bne	$4,$5,.L34
	li	$5,45			# 0x2d

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	j	.L35
	li	$4,32			# 0x20

.L36:
	sw	$2,%gp_rel(g_srcpos)($28)
.L35:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$5,$3,$2
	lb	$5,0($5)
	beq	$5,$4,.L36
	addiu	$2,$2,1

	lui	$2,%hi(g_priority)
	jal	get_value_sub
	lbu	$4,%lo(g_priority)($2)

	bne	$2,$0,.L81
	lw	$31,20($sp)

	lw	$6,%gp_rel(g_source)($28)
	j	.L38
	li	$5,32			# 0x20

.L39:
	sw	$3,%gp_rel(g_srcpos)($28)
.L38:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$6,$3
	lb	$4,0($4)
	beql	$4,$5,.L39
	addiu	$3,$3,1

	li	$5,41			# 0x29
	bnel	$4,$5,.L82
	lui	$2,%hi(g_err_str)

.L40:
	addiu	$3,$3,1
	j	.L37
	sw	$3,%gp_rel(g_srcpos)($28)

.L34:
	bne	$4,$5,.L41
	li	$5,43			# 0x2b

	addiu	$2,$2,1
	jal	get_simple_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L81
	lw	$31,20($sp)

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L83
	lui	$2,%hi(g_err_str+4)

.L42:
	sll	$5,$5,2
	addu	$4,$4,$5
	li	$5,131072			# 0x20000
	addiu	$5,$5,4131
	sw	$5,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_intconst)($28)
	subu	$3,$0,$3
	j	.L37
	sw	$3,%gp_rel(g_intconst)($28)

.L41:
	bne	$4,$5,.L70
	li	$6,32			# 0x20

	addiu	$2,$2,1
	j	.L70
	sw	$2,%gp_rel(g_srcpos)($28)

.L45:
	sw	$4,%gp_rel(g_srcpos)($28)
.L70:
	lw	$4,%gp_rel(g_srcpos)($28)
	addu	$5,$3,$4
	lb	$2,0($5)
	beql	$2,$6,.L45
	addiu	$4,$4,1

	lb	$6,1($5)
	li	$5,48			# 0x30
	bne	$2,$5,.L46
	li	$5,36			# 0x24

	li	$5,88			# 0x58
	bnel	$6,$5,.L84
	addiu	$2,$2,-48

	j	.L79
	addiu	$5,$4,1

.L46:
	bnel	$2,$5,.L48
	addiu	$2,$2,-48

	addiu	$5,$4,1
.L79:
	sw	$5,%gp_rel(g_srcpos)($28)
	li	$5,48			# 0x30
	bne	$2,$5,.L50
	move	$2,$0

	addiu	$4,$4,2
	j	.L50
	sw	$4,%gp_rel(g_srcpos)($28)

.L54:
	addiu	$7,$6,-48
	sltu	$7,$7,10
	beql	$7,$0,.L51
	addiu	$6,$6,-65

	sll	$2,$2,4
	j	.L71
	addiu	$4,$4,-48

.L51:
	andi	$6,$6,0x00ff
	sltu	$6,$6,6
	beq	$6,$0,.L62
	addiu	$4,$4,-55

	sll	$2,$2,4
.L71:
	addiu	$5,$5,1
	addu	$2,$4,$2
	sw	$5,%gp_rel(g_srcpos)($28)
.L50:
	lw	$5,%gp_rel(g_srcpos)($28)
	addu	$4,$3,$5
	lb	$4,0($4)
	bne	$4,$0,.L54
	andi	$6,$4,0x00ff

	j	.L80
	li	$5,-65536			# 0xffffffffffff0000

.L57:
	addu	$3,$3,$4
	andi	$2,$2,0xffff
	li	$4,872546304			# 0x34020000
.L74:
	or	$2,$2,$4
	sw	$2,0($3)
	j	.L72
	sw	$5,%gp_rel(g_objpos)($28)

.L48:
.L84:
	andi	$2,$2,0x00ff
	sltu	$2,$2,10
	beq	$2,$0,.L58
	move	$2,$0

	j	.L59
	li	$7,10			# 0xa

.L61:
	andi	$8,$6,0x00ff
	sltu	$8,$8,10
	beq	$8,$0,.L60
	addiu	$5,$5,1

	mul	$4,$2,$7
	addu	$2,$4,$6
	sw	$5,%gp_rel(g_srcpos)($28)
.L59:
	lw	$5,%gp_rel(g_srcpos)($28)
	addu	$4,$3,$5
	lb	$4,0($4)
	bne	$4,$0,.L61
	addiu	$6,$4,-48

	j	.L80
	li	$5,-65536			# 0xffffffffffff0000

.L60:
	li	$3,46			# 0x2e
	beq	$4,$3,.L63
	li	$3,69			# 0x45

	bne	$4,$3,.L80
	li	$5,-65536			# 0xffffffffffff0000

.L63:
	lui	$2,%hi(g_err_str)
.L82:
	j	.L37
	lw	$2,%lo(g_err_str)($2)

.L62:
	li	$5,-65536			# 0xffffffffffff0000
.L80:
	and	$5,$2,$5
	sw	$2,%gp_rel(g_intconst)($28)
	lw	$3,%gp_rel(g_object)($28)
	lw	$4,%gp_rel(g_objpos)($28)
	beq	$5,$0,.L64
	lw	$6,%gp_rel(g_objmax)($28)

	addiu	$5,$4,2
	sll	$7,$5,2
	addu	$7,$3,$7
	sltu	$6,$6,$7
	bnel	$6,$0,.L83
	lui	$2,%hi(g_err_str+4)

.L65:
	sll	$6,$4,2
	srl	$8,$2,16
	li	$7,1006764032			# 0x3c020000
	addiu	$4,$4,1
	addu	$6,$3,$6
	sll	$4,$4,2
	or	$7,$8,$7
	addu	$3,$3,$4
	sw	$7,0($6)
	andi	$2,$2,0xffff
	j	.L74
	li	$4,876740608			# 0x34420000

.L64:
	addiu	$5,$4,1
	sll	$7,$5,2
	addu	$7,$3,$7
	sltu	$6,$6,$7
	bnel	$6,$0,.L83
	lui	$2,%hi(g_err_str+4)

	j	.L57
	sll	$4,$4,2

.L58:
	jal	get_var_number
	sb	$0,%gp_rel(g_valueisconst)($28)

	bgez	$2,.L67
	lw	$3,%gp_rel(g_srcpos)($28)

	lw	$31,20($sp)
	j	function
	addiu	$sp,$sp,24

.L67:
	lw	$4,%gp_rel(g_source)($28)
	addu	$4,$4,$3
	lb	$5,0($4)
	li	$4,40			# 0x28
	bne	$5,$4,.L68
	lw	$5,%gp_rel(g_objpos)($28)

	addiu	$3,$3,1
	lw	$31,20($sp)
	move	$4,$2
	addiu	$sp,$sp,24
	j	get_dim_value
	sw	$3,%gp_rel(g_srcpos)($28)

.L68:
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L69
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
.L83:
	j	.L37
	lw	$2,%lo(g_err_str+4)($2)

.L69:
	addu	$4,$4,$5
	sll	$2,$2,2
	li	$5,-1883111424			# 0xffffffff8fc20000
	or	$2,$2,$5
	sw	$2,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
.L72:
	move	$2,$0
.L37:
	lw	$31,20($sp)
.L81:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_simple_value
	.size	get_simple_value, .-get_simple_value
	.align	2
	.globl	get_value
	.set	nomips16
	.set	nomicromips
	.ent	get_value
	.type	get_value, @function
get_value:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_sdepth)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	bne	$2,$0,.L86
	sw	$16,24($sp)

	lw	$16,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$2,$16,1
	sll	$3,$2,2
	addu	$3,$4,$3
	lw	$4,%gp_rel(g_objmax)($28)
	sltu	$3,$4,$3
	bne	$3,$0,.L92
	sw	$0,%gp_rel(g_maxsdepth)($28)

.L87:
	sw	$2,%gp_rel(g_objpos)($28)
.L86:
	lui	$2,%hi(g_priority)
	jal	get_value_sub
	lbu	$4,%lo(g_priority)($2)

	bne	$2,$0,.L93
	lw	$31,28($sp)

	lw	$3,%gp_rel(g_sdepth)($28)
	bne	$3,$0,.L89
	lw	$4,%gp_rel(g_maxsdepth)($28)

	lw	$6,%gp_rel(g_objpos)($28)
	bne	$4,$0,.L90
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
	j	.L89
	sw	$3,%gp_rel(g_objpos)($28)

.L90:
	addiu	$6,$6,1
	sll	$6,$6,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$5,$6
	beql	$6,$0,.L91
	subu	$4,$0,$4

.L92:
	lui	$2,%hi(g_err_str+4)
	j	.L88
	lw	$2,%lo(g_err_str+4)($2)

.L91:
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
.L89:
	sw	$0,%gp_rel(g_lastvar)($28)
.L88:
	lw	$31,28($sp)
.L93:
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_value
	.size	get_value, .-get_value
	.align	2
	.globl	get_floatOrValue
	.set	nomips16
	.set	nomicromips
	.ent	get_floatOrValue
	.type	get_floatOrValue, @function
get_floatOrValue:
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
	lw	$18,%gp_rel(g_sdepth)($28)
	lw	$17,%gp_rel(g_objpos)($28)
	jal	get_value
	lw	$16,%gp_rel(g_srcpos)($28)

	lw	$4,%gp_rel(g_source)($28)
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$3
	bne	$2,$0,.L95
	lb	$4,0($3)

	li	$3,35			# 0x23
	bne	$4,$3,.L96
	lw	$31,28($sp)

.L95:
	sw	$18,%gp_rel(g_sdepth)($28)
	sw	$17,%gp_rel(g_objpos)($28)
	sw	$16,%gp_rel(g_srcpos)($28)
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	get_float
	addiu	$sp,$sp,32

.L96:
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_floatOrValue
	.size	get_floatOrValue, .-get_floatOrValue
	.align	2
	.globl	get_stringFloatOrValue
	.set	nomips16
	.set	nomicromips
	.ent	get_stringFloatOrValue
	.type	get_stringFloatOrValue, @function
get_stringFloatOrValue:
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
	lw	$17,%gp_rel(g_objpos)($28)
	jal	get_string
	lw	$16,%gp_rel(g_srcpos)($28)

	beq	$2,$0,.L98
	lw	$31,28($sp)

	sw	$17,%gp_rel(g_objpos)($28)
	sw	$16,%gp_rel(g_srcpos)($28)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	get_floatOrValue
	addiu	$sp,$sp,32

.L98:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_stringFloatOrValue
	.size	get_stringFloatOrValue, .-get_stringFloatOrValue
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
