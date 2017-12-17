	.file	1 "string.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	simple_string
	.set	nomips16
	.set	nomicromips
	.ent	simple_string
	.type	simple_string, @function
simple_string:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	lw	$6,%gp_rel(g_source)($28)
	j	.L2
	li	$5,32			# 0x20

.L3:
	sw	$3,%gp_rel(g_srcpos)($28)
.L2:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$6,$3
	lb	$2,0($4)
	beql	$2,$5,.L3
	addiu	$3,$3,1

	andi	$2,$2,0x00ff
	li	$5,34			# 0x22
	bne	$2,$5,.L4
	addiu	$2,$2,-65

	move	$2,$0
	move	$7,$4
	li	$6,34			# 0x22
	li	$5,92			# 0x5c
.L43:
	addiu	$2,$2,1
.L51:
	addu	$4,$7,$2
	lbu	$4,0($4)
	beql	$4,$6,.L50
	addiu	$3,$3,1

	bne	$4,$5,.L7
	sltu	$4,$4,32

	j	.L43
	addiu	$2,$2,1

.L7:
	beql	$4,$0,.L51
	addiu	$2,$2,1

	addiu	$3,$3,1
.L50:
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_objpos)($28)
	addiu	$2,$2,3
	sra	$8,$2,2
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	addu	$5,$4,$8
	sll	$5,$5,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L52
	lui	$2,%hi(g_err_str+4)

.L9:
	sll	$5,$3,2
	addiu	$3,$3,1
	sll	$3,$3,2
	addiu	$6,$8,1
	addu	$5,$2,$5
	andi	$6,$6,0xffff
	addu	$2,$2,$3
	li	$7,68222976			# 0x4110000
	li	$3,65011712			# 0x3e00000
	or	$6,$6,$7
	addiu	$3,$3,4129
	sw	$6,0($5)
	li	$13,34			# 0x22
	sw	$3,0($2)
	move	$5,$0
	sw	$4,%gp_rel(g_objpos)($28)
	li	$12,92			# 0x5c
	li	$11,120			# 0x78
	j	.L11
	li	$10,88			# 0x58

.L22:
	bnel	$2,$12,.L53
	sltu	$3,$2,32

	addu	$4,$6,$4
	lbu	$2,0($4)
	addiu	$3,$3,2
	beq	$2,$11,.L13
	sw	$3,%gp_rel(g_srcpos)($28)

	bnel	$2,$10,.L12
	sltu	$3,$2,32

.L13:
	addu	$2,$6,$3
	lbu	$4,0($2)
	addiu	$9,$3,1
	addiu	$7,$4,-48
	andi	$7,$7,0x00ff
	sltu	$2,$7,10
	bne	$2,$0,.L15
	sw	$9,%gp_rel(g_srcpos)($28)

	addiu	$2,$4,-65
	andi	$2,$2,0x00ff
	sltu	$2,$2,6
	beq	$2,$0,.L16
	addiu	$2,$4,-97

	j	.L44
	addiu	$4,$4,-55

.L16:
	andi	$2,$2,0x00ff
	sltu	$2,$2,6
	beq	$2,$0,.L23
	addiu	$4,$4,-87

.L44:
	andi	$7,$4,0x00ff
.L15:
	addu	$6,$6,$9
	lbu	$3,0($6)
	addiu	$9,$9,1
	addiu	$6,$3,-48
	andi	$6,$6,0x00ff
	sltu	$2,$6,10
	bne	$2,$0,.L18
	sw	$9,%gp_rel(g_srcpos)($28)

	addiu	$2,$3,-65
	andi	$2,$2,0x00ff
	sltu	$2,$2,6
	beql	$2,$0,.L19
	addiu	$2,$3,-97

	j	.L45
	addiu	$3,$3,-55

.L19:
	andi	$2,$2,0x00ff
	sltu	$2,$2,6
	beq	$2,$0,.L23
	addiu	$3,$3,-87

.L45:
	andi	$6,$3,0x00ff
.L18:
	sll	$2,$7,4
	or	$2,$6,$2
	j	.L21
	andi	$2,$2,0x00ff

.L12:
.L53:
	bnel	$3,$0,.L54
	lui	$2,%hi(g_err_str)

.L21:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	sll	$3,$3,2
	addu	$3,$3,$5
	addu	$3,$4,$3
	sb	$2,0($3)
	addiu	$5,$5,1
.L11:
	lw	$3,%gp_rel(g_srcpos)($28)
	lw	$6,%gp_rel(g_source)($28)
	addiu	$4,$3,1
	addu	$2,$6,$3
	lbu	$2,0($2)
	bne	$2,$13,.L22
	sw	$4,%gp_rel(g_srcpos)($28)

	lw	$2,%gp_rel(g_objpos)($28)
	sll	$2,$2,2
	addu	$5,$2,$5
	lw	$2,%gp_rel(g_object)($28)
	addu	$5,$2,$5
	sb	$0,0($5)
	lw	$2,%gp_rel(g_objpos)($28)
	addu	$8,$2,$8
	j	.L48
	sw	$8,%gp_rel(g_objpos)($28)

.L4:
	andi	$2,$2,0x00ff
	sltu	$2,$2,26
	beq	$2,$0,.L54
	lui	$2,%hi(g_err_str)

	jal	get_var_number
	nop

	bgez	$2,.L24
	move	$17,$2

	jal	str_function
	nop

	bne	$2,$0,.L10
	move	$16,$2

	li	$2,1			# 0x1
	j	.L10
	sb	$2,%gp_rel(g_temp_area_used)($28)

.L24:
	lw	$4,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$5,0($3)
	li	$3,36			# 0x24
	bnel	$5,$3,.L54
	lui	$2,%hi(g_err_str)

.L25:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	j	.L26
	li	$5,32			# 0x20

.L27:
	sw	$2,%gp_rel(g_srcpos)($28)
.L26:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	beql	$3,$5,.L27
	addiu	$2,$2,1

	li	$4,40			# 0x28
	bne	$3,$4,.L28
	lw	$4,%gp_rel(g_objpos)($28)

	addiu	$2,$2,1
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L10
	move	$16,$2

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	li	$4,41			# 0x29
	addu	$3,$3,$2
	lb	$3,0($3)
	bne	$3,$4,.L29
	li	$4,44			# 0x2c

	lw	$4,%gp_rel(g_objpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L52
	lui	$2,%hi(g_err_str+4)

.L30:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,604241920			# 0x24040000
	ori	$4,$4,0xffff
	sw	$4,0($3)
	j	.L31
	sw	$2,%gp_rel(g_objpos)($28)

.L29:
	bnel	$3,$4,.L54
	lui	$2,%hi(g_err_str)

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_sdepth)($28)
	lw	$3,%gp_rel(g_maxsdepth)($28)
	addiu	$2,$2,4
	slt	$3,$3,$2
	beq	$3,$0,.L33
	sw	$2,%gp_rel(g_sdepth)($28)

	sw	$2,%gp_rel(g_maxsdepth)($28)
.L33:
	lw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	bnel	$6,$0,.L52
	lui	$2,%hi(g_err_str+4)

.L34:
	sll	$5,$5,2
	addu	$4,$4,$5
	li	$5,-1348337664			# 0xffffffffafa20000
	or	$2,$2,$5
	sw	$2,0($4)
	jal	get_value
	sw	$3,%gp_rel(g_objpos)($28)

	bnel	$2,$0,.L40
	move	$16,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L52
	lui	$2,%hi(g_err_str+4)

.L35:
	sll	$5,$3,2
	li	$6,4194304			# 0x400000
	addu	$5,$2,$5
	addiu	$6,$6,8225
	sw	$6,0($5)
	addiu	$3,$3,1
	lw	$5,%gp_rel(g_sdepth)($28)
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,-1885208576			# 0xffffffff8fa20000
	or	$3,$5,$3
	sw	$3,0($2)
	lw	$2,%gp_rel(g_sdepth)($28)
	lw	$3,%gp_rel(g_source)($28)
	addiu	$2,$2,-4
	sw	$2,%gp_rel(g_sdepth)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	sw	$4,%gp_rel(g_objpos)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,41			# 0x29
	bnel	$4,$3,.L54
	lui	$2,%hi(g_err_str)

.L36:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	li	$2,1			# 0x1
	sb	$2,%gp_rel(g_temp_area_used)($28)
.L31:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,1
	lw	$6,%gp_rel(g_objmax)($28)
	sll	$5,$4,2
	addu	$5,$2,$5
	sltu	$7,$6,$5
	bnel	$7,$0,.L52
	lui	$2,%hi(g_err_str+4)

.L37:
	sll	$7,$3,2
	li	$8,604307456			# 0x24050000
	addu	$7,$2,$7
	or	$17,$17,$8
	sw	$17,0($7)
	sw	$4,%gp_rel(g_objpos)($28)
	addiu	$4,$3,3
	sll	$7,$4,2
	addu	$7,$2,$7
	sltu	$6,$6,$7
	bnel	$6,$0,.L52
	lui	$2,%hi(g_err_str+4)

.L38:
	addiu	$3,$3,2
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$6,48234496			# 0x2e00000
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,8704
	sw	$6,0($5)
	sw	$3,0($2)
	j	.L10
	sw	$4,%gp_rel(g_objpos)($28)

.L28:
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	beql	$5,$0,.L39
	sll	$4,$4,2

	lui	$2,%hi(g_err_str+4)
.L52:
	j	.L10
	lw	$16,%lo(g_err_str+4)($2)

.L39:
	addu	$3,$3,$4
	sll	$17,$17,2
	li	$4,-1883111424			# 0xffffffff8fc20000
	or	$17,$17,$4
	sw	$17,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
.L48:
	j	.L10
	move	$16,$0

.L23:
	lui	$2,%hi(g_err_str)
.L54:
	lw	$16,%lo(g_err_str)($2)
.L40:
.L10:
	lw	$31,28($sp)
	move	$2,$16
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	simple_string
	.size	simple_string, .-simple_string
	.align	2
	.globl	get_string_sub
	.set	nomips16
	.set	nomicromips
	.ent	get_string_sub
	.type	get_string_sub, @function
get_string_sub:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	jal	simple_string
	sw	$16,16($sp)

	bne	$2,$0,.L72
	lw	$31,28($sp)

	lw	$6,%gp_rel(g_source)($28)
	j	.L57
	li	$5,32			# 0x20

.L58:
	sw	$3,%gp_rel(g_srcpos)($28)
.L57:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$6,$3
	lb	$4,0($4)
	beql	$4,$5,.L58
	addiu	$3,$3,1

	li	$5,43			# 0x2b
	beql	$4,$5,.L73
	addiu	$3,$3,1

	li	$5,38			# 0x26
	bne	$4,$5,.L72
	lw	$31,28($sp)

	addiu	$3,$3,1
.L73:
	lw	$2,%gp_rel(g_sdepth)($28)
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_maxsdepth)($28)
	addiu	$2,$2,4
	slt	$3,$3,$2
	beq	$3,$0,.L68
	sw	$2,%gp_rel(g_sdepth)($28)

	sw	$2,%gp_rel(g_maxsdepth)($28)
.L68:
	li	$17,48234496			# 0x2e00000
	li	$16,604438528			# 0x24070000
	li	$18,-1348337664			# 0xffffffffafa20000
	ori	$17,$17,0xf809
	addiu	$16,$16,13312
.L69:
	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L74
	lui	$2,%hi(g_err_str+4)

.L61:
	sll	$4,$4,2
	addu	$3,$3,$4
	lw	$4,%gp_rel(g_sdepth)($28)
	or	$4,$4,$18
	sw	$4,0($3)
	jal	simple_string
	sw	$2,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L56
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$5,$5,2
	addu	$5,$3,$5
	sltu	$6,$7,$5
	bnel	$6,$0,.L74
	lui	$2,%hi(g_err_str+4)

.L62:
	lw	$9,%gp_rel(g_sdepth)($28)
	sll	$6,$4,2
	li	$8,-1885077504			# 0xffffffff8fa40000
	addu	$6,$3,$6
	or	$8,$9,$8
	sw	$8,0($6)
	addiu	$6,$4,1
	addiu	$4,$4,3
	sll	$8,$4,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beq	$7,$0,.L63
	sw	$6,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str+4)
.L74:
	j	.L56
	lw	$2,%lo(g_err_str+4)($2)

.L63:
	sll	$6,$6,2
	addu	$3,$3,$6
	sw	$17,0($3)
	li	$3,1			# 0x1
	sw	$16,0($5)
	lw	$6,%gp_rel(g_source)($28)
	sw	$4,%gp_rel(g_objpos)($28)
	sb	$3,%gp_rel(g_temp_area_used)($28)
	j	.L64
	li	$5,32			# 0x20

.L65:
	sw	$3,%gp_rel(g_srcpos)($28)
.L64:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$4,$6,$3
	lb	$4,0($4)
	beql	$4,$5,.L65
	addiu	$3,$3,1

	li	$5,43			# 0x2b
	beq	$4,$5,.L66
	li	$5,38			# 0x26

	bnel	$4,$5,.L67
	lw	$3,%gp_rel(g_sdepth)($28)

.L66:
	addiu	$3,$3,1
	j	.L69
	sw	$3,%gp_rel(g_srcpos)($28)

.L67:
	addiu	$3,$3,-4
	sw	$3,%gp_rel(g_sdepth)($28)
.L56:
	lw	$31,28($sp)
.L72:
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_string_sub
	.size	get_string_sub, .-get_string_sub
	.align	2
	.globl	get_string
	.set	nomips16
	.set	nomicromips
	.ent	get_string
	.type	get_string, @function
get_string:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_sdepth)($28)
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	bne	$2,$0,.L76
	sw	$16,24($sp)

	lw	$16,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$2,$16,1
	sll	$3,$2,2
	addu	$3,$4,$3
	lw	$4,%gp_rel(g_objmax)($28)
	sltu	$3,$4,$3
	bne	$3,$0,.L82
	sw	$0,%gp_rel(g_maxsdepth)($28)

.L77:
	sw	$2,%gp_rel(g_objpos)($28)
.L76:
	jal	get_string_sub
	nop

	bne	$2,$0,.L83
	lw	$31,28($sp)

	lw	$3,%gp_rel(g_sdepth)($28)
	bne	$3,$0,.L79
	lw	$4,%gp_rel(g_maxsdepth)($28)

	lw	$6,%gp_rel(g_objpos)($28)
	bne	$4,$0,.L80
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
	j	.L79
	sw	$3,%gp_rel(g_objpos)($28)

.L80:
	addiu	$6,$6,1
	sll	$6,$6,2
	lw	$5,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$5,$6
	beql	$6,$0,.L81
	subu	$4,$0,$4

.L82:
	lui	$2,%hi(g_err_str+4)
	j	.L78
	lw	$2,%lo(g_err_str+4)($2)

.L81:
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
.L79:
	li	$3,2			# 0x2
	sw	$3,%gp_rel(g_lastvar)($28)
.L78:
	lw	$31,28($sp)
.L83:
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_string
	.size	get_string, .-get_string
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
