	.file	1 "linker.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	get_label
	.set	nomips16
	.set	nomicromips
	.ent	get_label
	.type	get_label, @function
get_label:
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
	lw	$4,%gp_rel(g_source)($28)
	j	.L2
	li	$3,32			# 0x20

.L3:
	sw	$16,%gp_rel(g_srcpos)($28)
.L2:
	lw	$16,%gp_rel(g_srcpos)($28)
	addu	$2,$4,$16
	lb	$2,0($2)
	beql	$2,$3,.L3
	addiu	$16,$16,1

	andi	$3,$2,0x00ff
	addiu	$5,$3,-48
	sltu	$5,$5,10
	beq	$5,$0,.L4
	addiu	$3,$3,-65

	move	$17,$0
	li	$5,10			# 0xa
.L5:
	mul	$6,$17,$5
	addu	$3,$6,$2
	lw	$2,%gp_rel(g_srcpos)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addu	$2,$4,$2
	lb	$2,0($2)
	addiu	$6,$2,-48
	andi	$6,$6,0x00ff
	sltu	$6,$6,10
	bne	$6,$0,.L5
	addiu	$17,$3,-48

	addiu	$3,$3,-49
	li	$2,65535			# 0xffff
	sltu	$3,$3,$2
	bne	$3,$0,.L6
	lui	$2,%hi(g_err_str)

	sw	$16,%gp_rel(g_srcpos)($28)
	j	.L7
	lw	$2,%lo(g_err_str)($2)

.L6:
	jal	get_operator
	nop

	beql	$2,$0,.L9
	sw	$16,%gp_rel(g_srcpos)($28)

	j	.L23
	sw	$17,%gp_rel(g_label)($28)

.L4:
	andi	$3,$3,0x00ff
	sltu	$3,$3,26
	beq	$3,$0,.L9
	move	$3,$0

	li	$7,36			# 0x24
	mul	$8,$3,$7
.L25:
	addiu	$6,$2,-48
	andi	$6,$6,0x00ff
	addu	$2,$8,$2
	sltu	$6,$6,10
	lw	$5,%gp_rel(g_srcpos)($28)
	bne	$6,$0,.L12
	addiu	$3,$2,-48

	addiu	$3,$2,-64
	xor	$6,$5,$16
	addiu	$2,$2,-55
	movn	$3,$2,$6
.L12:
	addiu	$5,$5,1
	sw	$5,%gp_rel(g_srcpos)($28)
	addu	$2,$4,$5
	lb	$2,0($2)
	andi	$6,$2,0x00ff
	addiu	$8,$6,-48
	sltu	$8,$8,10
	bnel	$8,$0,.L25
	mul	$8,$3,$7

	addiu	$6,$6,-65
	andi	$6,$6,0x00ff
	sltu	$6,$6,26
	bnel	$6,$0,.L25
	mul	$8,$3,$7

	subu	$5,$5,$16
	addiu	$5,$5,-2
	sltu	$5,$5,5
	bne	$5,$0,.L22
	li	$6,32			# 0x20

	lui	$2,%hi(g_err_str+24)
	sw	$16,%gp_rel(g_srcpos)($28)
	j	.L7
	lw	$2,%lo(g_err_str+24)($2)

.L16:
	sw	$5,%gp_rel(g_srcpos)($28)
.L22:
	lw	$5,%gp_rel(g_srcpos)($28)
	addu	$2,$4,$5
	lb	$2,0($2)
	beql	$2,$6,.L16
	addiu	$5,$5,1

	li	$4,40			# 0x28
	bne	$2,$4,.L17
	li	$2,65536			# 0x10000

	j	.L9
	sw	$16,%gp_rel(g_srcpos)($28)

.L17:
	addu	$3,$3,$2
	j	.L23
	sw	$3,%gp_rel(g_label)($28)

.L9:
	sw	$0,%gp_rel(g_label)($28)
.L23:
	move	$2,$0
.L7:
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_label
	.size	get_label, .-get_label
	.align	2
	.globl	search_label
	.set	nomips16
	.set	nomicromips
	.ent	search_label
	.type	search_label, @function
search_label:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,-65536			# 0xffffffffffff0000
	and	$3,$4,$3
	lw	$6,%gp_rel(g_objpos)($28)
	beq	$3,$0,.L27
	lw	$2,%gp_rel(g_object)($28)

	srl	$5,$4,16
	li	$3,1008074752			# 0x3c160000
	or	$5,$5,$3
	andi	$4,$4,0xffff
	li	$3,919994368			# 0x36d60000
	or	$4,$4,$3
	j	.L28
	move	$3,$0

.L31:
	bne	$7,$5,.L36
	addiu	$3,$3,1

	lw	$7,4($2)
	beq	$7,$4,.L37
	nop

.L36:
	addiu	$2,$2,4
.L28:
	bnel	$3,$6,.L31
	lw	$7,0($2)

	j	$31
	move	$2,$0

.L27:
	li	$3,873857024			# 0x34160000
	or	$4,$4,$3
	move	$5,$0
	j	.L32
	move	$3,$2

.L33:
	move	$2,$3
	beq	$7,$4,.L37
	addiu	$3,$3,4

	addiu	$5,$5,1
.L32:
	bnel	$5,$6,.L33
	lw	$7,0($3)

	move	$2,$0
.L37:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	search_label
	.size	search_label, .-search_label
	.align	2
	.globl	search_breakout
	.set	nomips16
	.set	nomicromips
	.ent	search_breakout
	.type	search_breakout, @function
search_breakout:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$6,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	move	$7,$0
	j	.L39
	li	$10,1041			# 0x411

.L47:
	addu	$2,$3,$2
	lw	$9,0($2)
	srl	$8,$9,16
	sltu	$11,$8,2083
	beql	$11,$0,.L44
	addiu	$8,$8,-2096

	sltu	$2,$8,2080
	beql	$2,$0,.L40
	addiu	$7,$7,1

	bnel	$8,$10,.L39
	addiu	$4,$4,1

	j	.L50
	andi	$9,$9,0xffff

.L44:
	sltu	$8,$8,3
	beql	$8,$0,.L39
	addiu	$4,$4,1

	j	.L51
	nop

.L50:
	j	.L40
	addu	$4,$4,$9

.L51:
	bne	$7,$0,.L40
	addiu	$7,$7,-1

	beq	$5,$0,.L52
	addiu	$4,$4,-1

	sll	$4,$4,2
	addu	$3,$3,$4
	lw	$3,0($3)
	j	$31
	sw	$3,0($5)

.L40:
	addiu	$4,$4,1
.L39:
	sltu	$2,$4,$6
	bnel	$2,$0,.L47
	sll	$2,$4,2

	move	$2,$0
.L52:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	search_breakout
	.size	search_breakout, .-search_breakout
	.align	2
	.globl	search_ifout
	.set	nomips16
	.set	nomicromips
	.ent	search_ifout
	.type	search_ifout, @function
search_ifout:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$8,805306368			# 0x30000000
	lw	$5,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	move	$6,$0
	li	$12,1041			# 0x411
	li	$11,12288			# 0x3000
	j	.L54
	ori	$10,$8,0x8000

.L60:
	addu	$2,$3,$2
	lw	$7,0($2)
	srl	$9,$7,16
	beql	$9,$12,.L56
	andi	$7,$7,0xffff

	bnel	$9,$11,.L54
	addiu	$4,$4,1

	j	.L62
	nop

.L56:
	j	.L55
	addu	$4,$4,$7

.L62:
	bnel	$7,$10,.L58
	xor	$7,$7,$8

	beq	$6,$0,.L63
	addiu	$6,$6,-1

	j	.L54
	addiu	$4,$4,1

.L58:
	sltu	$7,$7,1
	addu	$6,$6,$7
.L55:
	addiu	$4,$4,1
.L54:
	sltu	$2,$4,$5
	bnel	$2,$0,.L60
	sll	$2,$4,2

	move	$2,$0
.L63:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	search_ifout
	.size	search_ifout, .-search_ifout
	.align	2
	.globl	link
	.set	nomips16
	.set	nomicromips
	.ent	link
	.type	link, @function
link:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$17,24($sp)
	sw	$16,20($sp)
	li	$17,48234496			# 0x2e00000
	li	$16,604438528			# 0x24070000
	sw	$20,36($sp)
	sw	$18,28($sp)
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$19,32($sp)
	sw	$0,%gp_rel(g_fileline)($28)
	move	$20,$0
	li	$18,666697728			# 0x27bd0000
	ori	$17,$17,0xf809
	j	.L65
	addiu	$16,$16,7680

.L95:
	sll	$21,$20,2
	addu	$19,$4,$21
	lw	$3,0($19)
	srl	$2,$3,16
	sltu	$5,$2,2083
	beq	$5,$0,.L76
	li	$5,9223			# 0x2407

	sltu	$5,$2,2080
	beql	$5,$0,.L72
	andi	$3,$3,0xffff

	li	$5,2066			# 0x812
	beq	$2,$5,.L69
	sltu	$5,$2,2067

	beq	$5,$0,.L77
	li	$5,2068			# 0x814

	li	$5,1041			# 0x411
	beq	$2,$5,.L67
	li	$5,2064			# 0x810

	bnel	$2,$5,.L65
	addiu	$20,$20,1

	j	.L102
	addiu	$22,$20,1

.L77:
	beq	$2,$5,.L70
	addiu	$22,$20,1

	li	$4,2070			# 0x816
	bnel	$2,$4,.L65
	addiu	$20,$20,1

	j	.L103
	andi	$3,$3,0xffff

.L76:
	beq	$2,$5,.L73
	sltu	$5,$2,9224

	beql	$5,$0,.L78
	li	$5,12288			# 0x3000

	addiu	$2,$2,-2096
	sltu	$2,$2,3
	beql	$2,$0,.L65
	addiu	$20,$20,1

	j	.L105
	andi	$3,$3,0xffff

.L78:
	beql	$2,$5,.L74
	andi	$3,$3,0xffff

	li	$4,13334			# 0x3416
	bnel	$2,$4,.L65
	addiu	$20,$20,1

	j	.L104
	lw	$2,%gp_rel(g_fileline)($28)

.L67:
	andi	$3,$3,0xffff
	j	.L66
	addu	$20,$3,$20

.L104:
	andi	$3,$3,0xffff
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_fileline)($28)
	j	.L66
	sw	$3,%gp_rel(g_line)($28)

.L102:
	sll	$21,$22,2
	addu	$21,$4,$21
	lw	$2,0($21)
	li	$5,-65536			# 0xffffffffffff0000
	and	$5,$2,$5
	li	$4,135331840			# 0x8110000
	bne	$5,$4,.L66
	andi	$2,$2,0xffff

	sll	$20,$3,16
	or	$20,$20,$2
	jal	search_label
	move	$4,$20

	beq	$2,$0,.L99
	sw	$20,%gp_rel(g_label)($28)

.L79:
	ext	$2,$2,2,26
	li	$3,134217728			# 0x8000000
	or	$2,$2,$3
	sw	$2,0($19)
	move	$20,$22
	j	.L66
	sw	$0,0($21)

.L69:
	addiu	$22,$20,1
	sll	$21,$22,2
	addu	$21,$4,$21
	lw	$2,0($21)
	li	$5,-65536			# 0xffffffffffff0000
	and	$5,$2,$5
	li	$4,135462912			# 0x8130000
	bne	$5,$4,.L66
	andi	$2,$2,0xffff

	sll	$20,$3,16
	or	$20,$20,$2
	jal	search_label
	move	$4,$20

	beq	$2,$0,.L99
	sw	$20,%gp_rel(g_label)($28)

.L81:
	ext	$2,$2,2,26
	sw	$0,0($19)
	j	.L96
	move	$20,$22

.L70:
	sll	$21,$22,2
	addu	$21,$4,$21
	lw	$2,0($21)
	li	$5,-65536			# 0xffffffffffff0000
	and	$5,$2,$5
	li	$4,135593984			# 0x8150000
	bne	$5,$4,.L66
	andi	$2,$2,0xffff

	sll	$20,$3,16
	or	$20,$20,$2
	jal	search_label
	move	$4,$20

	beq	$2,$0,.L99
	sw	$20,%gp_rel(g_label)($28)

.L82:
	srl	$4,$2,16
	li	$3,1006764032			# 0x3c020000
	or	$3,$4,$3
	sw	$3,0($19)
	move	$20,$22
	andi	$2,$2,0xffff
	j	.L97
	li	$3,876740608			# 0x34420000

.L103:
	li	$2,8			# 0x8
	beq	$3,$2,.L84
	li	$2,256			# 0x100

	beq	$3,$2,.L85
	lw	$2,%gp_rel(g_line)($28)

	bnel	$3,$0,.L65
	addiu	$20,$20,1

	lw	$2,%gp_rel(g_line)($28)
	move	$4,$20
	move	$5,$0
	jal	search_breakout
	sw	$2,%gp_rel(g_label)($28)

	beql	$2,$0,.L106
	lui	$2,%hi(g_err_str+64)

.L86:
	lw	$3,%gp_rel(g_object)($28)
	ext	$2,$2,2,26
	addu	$21,$3,$21
.L96:
	li	$3,134217728			# 0x8000000
.L97:
	or	$2,$2,$3
	j	.L66
	sw	$2,0($21)

.L84:
	lw	$2,%gp_rel(g_line)($28)
	move	$4,$20
	addiu	$5,$28,%gp_rel(g_temp)
	jal	search_breakout
	sw	$2,%gp_rel(g_label)($28)

	bne	$2,$0,.L87
	lw	$4,%gp_rel(g_temp)($28)

	lui	$2,%hi(g_err_str+64)
.L106:
	j	.L80
	lw	$2,%lo(g_err_str+64)($2)

.L87:
	li	$6,-4096			# 0xfffffffffffff000
	li	$5,805306368			# 0x30000000
	and	$6,$4,$6
	ori	$5,$5,0xf000
	bne	$6,$5,.L89
	addiu	$3,$2,-12

	andi	$3,$4,0xfff
	sll	$3,$3,2
	subu	$3,$2,$3
.L89:
	lw	$2,%gp_rel(g_object)($28)
	ext	$3,$3,2,26
	addu	$21,$2,$21
	li	$2,134217728			# 0x8000000
	or	$3,$3,$2
	j	.L66
	sw	$3,0($21)

.L85:
	addiu	$4,$20,2
	jal	search_ifout
	sw	$2,%gp_rel(g_label)($28)

	beql	$2,$0,.L107
	lui	$2,%hi(g_err_str+68)

.L90:
	ext	$2,$2,2,26
	li	$3,134217728			# 0x8000000
	or	$2,$2,$3
	j	.L66
	sw	$2,0($19)

.L74:
	bnel	$3,$0,.L65
	addiu	$20,$20,1

	addiu	$21,$20,-1
	sll	$21,$21,2
	addu	$21,$4,$21
	lw	$22,0($21)
	li	$2,272629760			# 0x10400000
	bne	$22,$2,.L66
	lw	$2,%gp_rel(g_line)($28)

	addiu	$4,$20,1
	jal	search_ifout
	sw	$2,%gp_rel(g_label)($28)

	bne	$2,$0,.L92
	subu	$19,$2,$19

	lui	$2,%hi(g_err_str+68)
.L107:
	j	.L80
	lw	$2,%lo(g_err_str+68)($2)

.L92:
	ext	$19,$19,2,16
	or	$22,$19,$22
	j	.L66
	sw	$22,0($21)

.L72:
.L105:
	or	$3,$3,$18
	j	.L66
	sw	$3,0($19)

.L73:
	addiu	$2,$20,-1
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$2,0($2)
	bne	$2,$17,.L66
	andi	$3,$3,0xffff

	li	$2,7168			# 0x1c00
	bnel	$3,$2,.L65
	addiu	$20,$20,1

	addiu	$22,$20,-3
	sll	$22,$22,2
	addu	$22,$4,$22
	lw	$2,0($22)
	addiu	$21,$20,-2
	sll	$21,$21,2
	addu	$21,$4,$21
	li	$3,15362			# 0x3c02
	srl	$4,$2,16
	bne	$4,$3,.L66
	lw	$23,0($21)

	srl	$4,$23,16
	li	$3,13378			# 0x3442
	bne	$4,$3,.L66
	sll	$2,$2,16

	andi	$23,$23,0xffff
	or	$23,$23,$2
	jal	search_label
	move	$4,$23

	bne	$2,$0,.L94
	sw	$23,%gp_rel(g_label)($28)

.L99:
	lui	$2,%hi(g_err_str+20)
	j	.L80
	lw	$2,%lo(g_err_str+20)($2)

.L94:
	srl	$4,$2,16
	li	$3,1006764032			# 0x3c020000
	or	$3,$4,$3
	sw	$3,0($22)
	andi	$2,$2,0xffff
	li	$3,876740608			# 0x34420000
	or	$2,$2,$3
	sw	$2,0($21)
	sw	$16,0($19)
.L66:
	addiu	$20,$20,1
.L65:
	lw	$2,%gp_rel(g_objpos)($28)
	slt	$2,$20,$2
	bne	$2,$0,.L95
	lw	$4,%gp_rel(g_object)($28)

.L80:
	lw	$31,52($sp)
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
	.end	link
	.size	link, .-link

	.comm	g_label,4,4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
