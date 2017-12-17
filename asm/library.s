	.file	1 "library.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	lib_read
	.set	nomips16
	.set	nomicromips
	.ent	lib_read
	.type	lib_read, @function
lib_read:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$16,24($sp)
	sw	$31,28($sp)
	beq	$5,$0,.L2
	move	$16,$4

	beql	$4,$0,.L4
	move	$4,$5

	li	$2,1			# 0x1
	bnel	$4,$2,.L18
	sw	$0,%gp_rel(pos.8761)($28)

	j	.L23
	move	$2,$5

.L4:
	jal	search_label
	sw	$5,16($sp)

	bne	$2,$0,.L5
	lw	$5,16($sp)

	j	.L22
	nop

.L18:
	sw	$0,%gp_rel(in_data.8762)($28)
	sb	$0,%gp_rel(skip.8763)($28)
	j	.L6
	move	$2,$0

.L23:
.L5:
	lw	$3,%gp_rel(g_object)($28)
	sw	$0,%gp_rel(in_data.8762)($28)
	subu	$2,$2,$3
	srl	$2,$2,2
	sw	$2,%gp_rel(pos.8761)($28)
.L2:
	lw	$2,%gp_rel(in_data.8762)($28)
	bne	$2,$0,.L24
	lw	$4,%gp_rel(g_object)($28)

	lw	$2,%gp_rel(pos.8761)($28)
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$7,%gp_rel(g_object)($28)
	li	$11,-65536			# 0xffffffffffff0000
	li	$10,68222976			# 0x4110000
	li	$9,-4			# 0xfffffffffffffffc
	j	.L8
	li	$8,32			# 0x20

.L12:
	addu	$4,$7,$4
	lw	$6,0($4)
	addiu	$4,$2,1
	sll	$4,$4,2
	addu	$4,$7,$4
	and	$12,$6,$11
	bne	$12,$10,.L9
	lw	$4,0($4)

	and	$12,$4,$9
	beq	$12,$8,.L10
	andi	$6,$6,0xffff

	j	.L9
	addu	$2,$2,$6

.L10:
	addiu	$6,$6,-1
	sw	$6,%gp_rel(in_data.8762)($28)
	andi	$4,$4,0x3
	addiu	$6,$2,2
	sw	$6,%gp_rel(pos.8761)($28)
	j	.L11
	sb	$4,%gp_rel(skip.8763)($28)

.L9:
	addiu	$2,$2,1
.L8:
	sltu	$4,$2,$3
	bne	$4,$0,.L12
	sll	$4,$2,2

.L11:
	sltu	$2,$2,$3
	bne	$2,$0,.L7
	lw	$4,%gp_rel(g_object)($28)

.L22:
	jal	err_data_not_found
	nop

	j	.L6
	move	$2,$0

.L7:
.L24:
	beq	$5,$0,.L13
	lw	$3,%gp_rel(pos.8761)($28)

	sll	$2,$3,2
	lbu	$5,%gp_rel(skip.8763)($28)
	addu	$2,$4,$2
	j	.L6
	addu	$2,$2,$5

.L13:
	bnel	$16,$0,.L19
	sll	$2,$3,2

	lw	$2,%gp_rel(in_data.8762)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(in_data.8762)($28)
	sll	$2,$3,2
	addu	$4,$4,$2
	j	.L21
	lw	$2,0($4)

.L19:
	addu	$4,$4,$2
	lw	$5,0($4)
	lbu	$4,%gp_rel(skip.8763)($28)
	sll	$2,$4,3
	addiu	$4,$4,1
	srl	$2,$5,$2
	andi	$4,$4,0x00ff
	li	$5,4			# 0x4
	andi	$2,$2,0xff
	bne	$4,$5,.L6
	sb	$4,%gp_rel(skip.8763)($28)

	lw	$4,%gp_rel(in_data.8762)($28)
	sb	$0,%gp_rel(skip.8763)($28)
	addiu	$4,$4,-1
	sw	$4,%gp_rel(in_data.8762)($28)
.L21:
	addiu	$3,$3,1
	sw	$3,%gp_rel(pos.8761)($28)
.L6:
	lw	$31,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_read
	.size	lib_read, .-lib_read
	.align	2
	.globl	reset_dataread
	.set	nomips16
	.set	nomicromips
	.ent	reset_dataread
	.type	reset_dataread, @function
reset_dataread:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$4,2			# 0x2
	j	lib_read
	li	$5,1			# 0x1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	reset_dataread
	.size	reset_dataread, .-reset_dataread
	.align	2
	.globl	lib_midstr
	.set	nomips16
	.set	nomicromips
	.ent	lib_midstr
	.type	lib_midstr, @function
lib_midstr:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	lui	$2,%hi(g_var_mem)
	sw	$31,28($sp)
	sw	$16,24($sp)
	sll	$4,$4,2
	bltz	$5,.L27
	addiu	$2,$2,%lo(g_var_mem)

	addu	$4,$2,$4
	lw	$16,0($4)
	j	.L28
	addu	$16,$5,$16

.L27:
	addu	$4,$2,$4
	lw	$3,0($4)
	move	$2,$0
	move	$16,$3
.L30:
	addu	$4,$2,$3
	lb	$4,0($4)
	bnel	$4,$0,.L30
	addiu	$2,$2,1

	addu	$4,$2,$5
	bltz	$4,.L28
	nop

	addu	$16,$3,$5
	addu	$16,$16,$2
.L28:
	bltz	$6,.L31
	addiu	$4,$6,4

	sra	$4,$4,2
	li	$5,-1			# 0xffffffffffffffff
	jal	alloc_memory
	sw	$6,16($sp)

	move	$3,$0
	lw	$6,16($sp)
.L34:
	addu	$4,$16,$3
	lb	$4,0($4)
	addu	$5,$2,$3
	beq	$4,$0,.L33
	sb	$4,0($5)

	bnel	$3,$6,.L34
	addiu	$3,$3,1

.L33:
	addu	$6,$2,$6
	sb	$0,0($6)
	move	$16,$2
.L31:
	lw	$31,28($sp)
	move	$2,$16
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_midstr
	.size	lib_midstr, .-lib_midstr
	.align	2
	.globl	lib_clear
	.set	nomips16
	.set	nomicromips
	.ent	lib_clear
	.type	lib_clear, @function
lib_clear:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(g_var_mem)
	addiu	$sp,$sp,-24
	addiu	$2,$2,%lo(g_var_mem)
	sw	$31,20($sp)
	addiu	$3,$2,104
	sw	$0,0($2)
.L40:
	addiu	$2,$2,4
	bnel	$2,$3,.L40
	sw	$0,0($2)

	lui	$2,%hi(g_var_size)
	addiu	$2,$2,%lo(g_var_size)
	addiu	$3,$2,476
	sh	$0,0($2)
.L41:
	addiu	$2,$2,2
	bnel	$2,$3,.L41
	sh	$0,0($2)

	jal	stopPCG
	nop

	lw	$31,20($sp)
	sw	$0,%gp_rel(g_pcg_font)($28)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_clear
	.size	lib_clear, .-lib_clear
	.align	2
	.globl	lib_let_str
	.set	nomips16
	.set	nomicromips
	.ent	lib_let_str
	.type	lib_let_str, @function
lib_let_str:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(g_var_mem)
	sll	$3,$5,2
	addiu	$2,$2,%lo(g_var_mem)
	addu	$2,$3,$2
	sw	$4,0($2)
	move	$3,$4
.L43:
	lb	$2,0($3)
	move	$6,$3
	bne	$2,$0,.L43
	addiu	$3,$3,1

	lw	$2,%gp_rel(g_heap_mem)($28)
	slt	$3,$4,$2
	bne	$3,$0,.L46
	lw	$3,%gp_rel(g_max_mem)($28)

	sll	$3,$3,2
	addu	$3,$2,$3
	slt	$3,$6,$3
	beq	$3,$0,.L46
	lui	$3,%hi(g_var_pointer)

	subu	$4,$4,$2
	sll	$5,$5,1
	addiu	$3,$3,%lo(g_var_pointer)
	addu	$3,$5,$3
	sra	$4,$4,2
	subu	$2,$6,$2
	sh	$4,0($3)
	li	$6,1			# 0x1
	lui	$3,%hi(g_var_size)
	addiu	$3,$3,%lo(g_var_size)
	subu	$4,$6,$4
	sra	$2,$2,2
	addu	$5,$5,$3
	addu	$4,$4,$2
	sh	$4,0($5)
.L46:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_let_str
	.size	lib_let_str, .-lib_let_str
	.align	2
	.globl	lib_rnd
	.set	nomips16
	.set	nomicromips
	.ent	lib_rnd
	.type	lib_rnd, @function
lib_rnd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_rnd_seed)($28)
	sll	$3,$2,13
	xor	$2,$3,$2
	sra	$3,$2,17
	xor	$2,$3,$2
	sll	$3,$2,5
	xor	$2,$3,$2
	sw	$2,%gp_rel(g_rnd_seed)($28)
	j	$31
	andi	$2,$2,0x7fff

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_rnd
	.size	lib_rnd, .-lib_rnd
	.align	2
	.globl	lib_chr
	.set	nomips16
	.set	nomicromips
	.ent	lib_chr
	.type	lib_chr, @function
lib_chr:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	li	$5,-1			# 0xffffffffffffffff
	move	$16,$4
	sw	$31,20($sp)
	jal	alloc_memory
	li	$4,1			# 0x1

	sb	$16,0($2)
	sb	$0,1($2)
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_chr
	.size	lib_chr, .-lib_chr
	.align	2
	.globl	lib_dec
	.set	nomips16
	.set	nomicromips
	.ent	lib_dec
	.type	lib_dec, @function
lib_dec:
	.frame	$sp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$16,32($sp)
	sb	$0,27($sp)
	bgez	$4,.L50
	move	$2,$0

	subu	$4,$0,$4
	li	$2,1			# 0x1
.L50:
	li	$6,-859045888			# 0xffffffffcccc0000
	li	$16,10			# 0xa
	li	$7,10			# 0xa
	ori	$6,$6,0xcccd
	li	$5,10			# 0xa
.L53:
	bne	$4,$0,.L59
	multu	$4,$6

	bne	$16,$7,.L52
	nop

.L59:
	addiu	$4,$4,48
	mfhi	$9
	srl	$3,$9,3
	addiu	$9,$sp,16
	addu	$8,$9,$16
	mul	$9,$3,$5
	addiu	$16,$16,-1
	subu	$4,$4,$9
	beq	$16,$0,.L52
	sb	$4,0($8)

	j	.L53
	move	$4,$3

.L52:
	beql	$2,$0,.L54
	addiu	$16,$16,1

	addu	$2,$sp,$16
	li	$3,45			# 0x2d
	sb	$3,16($2)
.L54:
	li	$4,3			# 0x3
	jal	alloc_memory
	li	$5,-1			# 0xffffffffffffffff

	move	$3,$2
	addiu	$10,$sp,16
.L60:
	addu	$4,$10,$16
	lb	$4,0($4)
	addiu	$16,$16,1
	sb	$4,0($3)
	bne	$4,$0,.L60
	addiu	$3,$3,1

	lw	$31,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_dec
	.size	lib_dec, .-lib_dec
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"0123456789ABCDEF\000"
	.section	.text,code
	.align	2
	.globl	lib_hex
	.set	nomips16
	.set	nomicromips
	.ent	lib_hex
	.type	lib_hex, @function
lib_hex:
	.frame	$sp,40,$31		# vars= 8, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$17,$4
	move	$16,$5
	li	$4,3			# 0x3
	sw	$31,36($sp)
	jal	alloc_memory
	li	$5,-1			# 0xffffffffffffffff

	lui	$5,%hi(.LC0)
	move	$3,$0
	addiu	$5,$5,%lo(.LC0)
	li	$4,8			# 0x8
.L62:
	addiu	$7,$sp,16
	addu	$6,$7,$3
	sll	$7,$3,2
	sra	$7,$17,$7
	andi	$7,$7,0xf
	addu	$7,$7,$5
	lbu	$7,0($7)
	addiu	$3,$3,1
	bne	$3,$4,.L62
	sb	$7,0($6)

	sltu	$3,$16,9
	beql	$3,$0,.L68
	li	$16,8			# 0x8

	bne	$16,$0,.L71
	addiu	$16,$16,-1

	li	$16,7			# 0x7
	addiu	$4,$sp,16
	addu	$3,$4,$16
.L73:
	lb	$3,0($3)
	slt	$3,$3,49
	beq	$3,$0,.L72
	move	$3,$0

	addiu	$16,$16,-1
	bnel	$16,$0,.L73
	addu	$3,$4,$16

	j	.L66
	nop

.L68:
	addiu	$16,$16,-1
.L71:
	j	.L66
	move	$3,$0

.L67:
	addiu	$6,$sp,16
	addu	$5,$6,$16
	lbu	$5,0($5)
	addiu	$3,$3,1
	sb	$5,0($4)
	addiu	$16,$16,-1
.L66:
.L72:
	bgez	$16,.L67
	addu	$4,$2,$3

	sb	$0,0($4)
	lw	$31,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_hex
	.size	lib_hex, .-lib_hex
	.align	2
	.globl	lib_connect_string
	.set	nomips16
	.set	nomicromips
	.ent	lib_connect_string
	.type	lib_connect_string, @function
lib_connect_string:
	.frame	$sp,40,$31		# vars= 8, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$17,32($sp)
	sw	$16,28($sp)
	move	$17,$4
	sw	$31,36($sp)
	move	$16,$5
	move	$4,$0
.L76:
	addu	$2,$17,$4
	lb	$2,0($2)
	bnel	$2,$0,.L76
	addiu	$4,$4,1

	j	.L83
	addu	$3,$16,$2

.L78:
	addu	$3,$16,$2
.L83:
	lb	$3,0($3)
	bnel	$3,$0,.L78
	addiu	$2,$2,1

	addiu	$4,$4,4
	addu	$4,$4,$2
	sra	$4,$4,2
	jal	alloc_memory
	li	$5,-1			# 0xffffffffffffffff

	j	.L79
	move	$4,$0

.L80:
	sb	$3,0($5)
	addiu	$4,$4,1
.L79:
	addu	$3,$17,$4
	lb	$3,0($3)
	bne	$3,$0,.L80
	addu	$5,$2,$4

	j	.L81
	addu	$4,$2,$4

.L82:
	sb	$5,0($6)
	addiu	$3,$3,1
.L81:
	addu	$5,$16,$3
	lb	$5,0($5)
	bne	$5,$0,.L82
	addu	$6,$4,$3

	addu	$4,$4,$3
	sb	$0,0($4)
	move	$4,$17
	jal	free_temp_str
	sw	$2,16($sp)

	jal	free_temp_str
	move	$4,$16

	lw	$31,36($sp)
	lw	$2,16($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_connect_string
	.size	lib_connect_string, .-lib_connect_string
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"          \000"
	.section	.text,code
	.align	2
	.globl	lib_string
	.set	nomips16
	.set	nomicromips
	.ent	lib_string
	.type	lib_string, @function
lib_string:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	beq	$4,$0,.L86
	li	$2,1			# 0x1

	bne	$4,$2,.L90
	lw	$4,%gp_rel(cursor)($28)

	j	.L89
	lui	$2,%hi(TVRAM)

.L86:
	j	printchar
	li	$4,10			# 0xa

.L89:
	addiu	$2,$2,%lo(TVRAM)
	li	$3,-859045888			# 0xffffffffcccc0000
	subu	$5,$4,$2
	ori	$3,$3,0xcccd
	multu	$5,$3
	move	$2,$5
	mfhi	$5
	srl	$3,$5,3
	li	$5,10			# 0xa
	mul	$4,$5,$3
	subu	$2,$2,$4
	lui	$4,%hi(.LC1)
	addiu	$4,$4,%lo(.LC1)
	j	printstr
	addu	$4,$4,$2

.L90:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_string
	.size	lib_string, .-lib_string
	.align	2
	.globl	lib_label
	.set	nomips16
	.set	nomicromips
	.ent	lib_label
	.type	lib_label, @function
lib_label:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,-65536			# 0xffffffffffff0000
	addiu	$sp,$sp,-24
	and	$2,$4,$2
	bne	$2,$0,.L96
	sw	$31,20($sp)

.L92:
	jal	search_label
	nop

	bne	$2,$0,.L97
	lw	$31,20($sp)

.L96:
	jal	err_label_not_found
	nop

	lw	$31,20($sp)
.L97:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_label
	.size	lib_label, .-lib_label
	.align	2
	.globl	lib_keys
	.set	nomips16
	.set	nomicromips
	.ent	lib_keys
	.type	lib_keys, @function
lib_keys:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(LATA)
	lw	$2,%lo(LATA)($2)
	addiu	$sp,$sp,-32
	ext	$2,$2,1,1
	beq	$2,$0,.L99
	sw	$31,28($sp)

	jal	buttonmode
	sw	$4,16($sp)

	lw	$4,16($sp)
.L99:
	lui	$2,%hi(PORTB)
	lw	$3,%lo(PORTB)($2)
	li	$2,2			# 0x2
	andi	$6,$3,0x80
	andi	$5,$3,0x400
	sltu	$5,$5,1
	movn	$2,$0,$6
	or	$2,$2,$5
	andi	$6,$3,0x100
	li	$5,4			# 0x4
	movn	$5,$0,$6
	or	$2,$2,$5
	andi	$6,$3,0x200
	li	$5,8			# 0x8
	movn	$5,$0,$6
	or	$2,$2,$5
	andi	$6,$3,0x800
	li	$5,16			# 0x10
	movn	$5,$0,$6
	or	$2,$2,$5
	andi	$3,$3,0x4000
	li	$5,32			# 0x20
	movn	$5,$0,$3
	lw	$31,28($sp)
	or	$2,$2,$5
	and	$2,$2,$4
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_keys
	.size	lib_keys, .-lib_keys
	.align	2
	.globl	lib_val
	.set	nomips16
	.set	nomicromips
	.ent	lib_val
	.type	lib_val, @function
lib_val:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	move	$3,$0
.L112:
	addu	$2,$4,$3
	lb	$2,0($2)
	andi	$5,$2,0x00ff
	sltu	$5,$5,33
	bnel	$5,$0,.L112
	addiu	$3,$3,1

	xori	$2,$2,0x2b
	sltu	$2,$2,1
	addu	$3,$3,$2
	addu	$2,$4,$3
	lb	$5,0($2)
	li	$2,45			# 0x2d
	bne	$5,$2,.L114
	li	$7,1			# 0x1

	addiu	$3,$3,1
	li	$7,-1			# 0xffffffffffffffff
.L114:
	addu	$5,$4,$3
	lb	$6,0($5)
	li	$2,36			# 0x24
	beq	$6,$2,.L115
	li	$2,48			# 0x30

	bnel	$6,$2,.L127
	move	$3,$5

	lb	$2,1($5)
	li	$8,120			# 0x78
	beq	$2,$8,.L115
	li	$8,88			# 0x58

	beql	$2,$8,.L128
	addiu	$5,$3,1

	move	$3,$5
.L127:
	move	$2,$0
	j	.L117
	li	$5,10			# 0xa

.L115:
	addiu	$5,$3,1
.L128:
	xori	$6,$6,0x30
	addiu	$3,$3,2
	movz	$5,$3,$6
	move	$2,$0
.L125:
	addu	$3,$4,$5
	lb	$3,0($3)
	andi	$6,$3,0x00ff
	addiu	$8,$6,-48
	sltu	$8,$8,10
	beq	$8,$0,.L120
	addiu	$5,$5,1

	sll	$2,$2,4
	j	.L126
	addiu	$3,$3,-48

.L120:
	addiu	$8,$6,-97
	andi	$8,$8,0x00ff
	sltu	$8,$8,6
	beq	$8,$0,.L122
	addiu	$6,$6,-65

	sll	$2,$2,4
	j	.L126
	addiu	$3,$3,-87

.L122:
	andi	$6,$6,0x00ff
	sltu	$6,$6,6
	beq	$6,$0,.L123
	addiu	$3,$3,-55

	sll	$2,$2,4
.L126:
	j	.L125
	addu	$2,$3,$2

.L117:
	lb	$4,0($3)
	addiu	$4,$4,-48
	andi	$6,$4,0x00ff
	sltu	$6,$6,10
	beq	$6,$0,.L123
	addiu	$3,$3,1

	mul	$6,$2,$5
	j	.L117
	addu	$2,$6,$4

.L123:
	j	$31
	mul	$2,$2,$7

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_val
	.size	lib_val, .-lib_val
	.align	2
	.globl	lib_input
	.set	nomips16
	.set	nomicromips
	.ent	lib_input
	.type	lib_input, @function
lib_input:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	li	$4,16			# 0x10
	li	$5,-1			# 0xffffffffffffffff
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,28($sp)
	jal	calloc_memory
	lui	$17,%hi(LATA)

	move	$16,$2
	lw	$2,%lo(LATA)($17)
	ext	$2,$2,1,1
	bne	$2,$0,.L134
	nop

	jal	ps2mode
	nop

	jal	ps2init
	nop

.L134:
	jal	ps2readkey
	nop

	lhu	$2,%gp_rel(vkey)($28)
	andi	$2,$2,0xffff
	bne	$2,$0,.L134
	move	$4,$16

	jal	lineinput
	li	$5,63			# 0x3f

	lb	$2,%gp_rel(g_disable_break)($28)
	bne	$2,$0,.L137
	lw	$31,28($sp)

	lw	$2,%lo(LATA)($17)
	ext	$2,$2,1,1
	beq	$2,$0,.L133
	lui	$2,%hi(PORTB)

	lui	$2,%hi(ps2keystatus)
	addiu	$2,$2,%lo(ps2keystatus)
	lbu	$2,3($2)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L138
	move	$2,$16

	j	.L136
	nop

.L133:
	lw	$2,%lo(PORTB)($2)
	andi	$2,$2,0x4c80
	bne	$2,$0,.L137
	lw	$31,28($sp)

.L136:
	jal	err_break
	nop

	lw	$31,28($sp)
.L137:
	move	$2,$16
.L138:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_input
	.size	lib_input, .-lib_input
	.align	2
	.globl	lib_inkey
	.set	nomips16
	.set	nomicromips
	.ent	lib_inkey
	.type	lib_inkey, @function
lib_inkey:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(LATA)
	lw	$2,%lo(LATA)($2)
	addiu	$sp,$sp,-32
	ext	$2,$2,1,1
	bne	$2,$0,.L140
	sw	$31,28($sp)

	jal	ps2mode
	sw	$4,16($sp)

	jal	ps2init
	nop

	lw	$4,16($sp)
.L140:
	lui	$3,%hi(ps2keystatus)
	beq	$4,$0,.L144
	move	$2,$0

	andi	$4,$4,0xff
	addiu	$3,$3,%lo(ps2keystatus)
	addu	$3,$4,$3
	lbu	$2,0($3)
	j	.L142
	andi	$2,$2,0x00ff

.L144:
	addiu	$3,$3,%lo(ps2keystatus)
	li	$5,256			# 0x100
	addu	$4,$2,$3
.L148:
	lbu	$4,0($4)
	andi	$4,$4,0x00ff
	beql	$4,$0,.L143
	addiu	$2,$2,1

	j	.L142
	andi	$2,$2,0x00ff

.L143:
	bne	$2,$5,.L148
	addu	$4,$2,$3

	move	$2,$0
.L142:
	lw	$31,28($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_inkey
	.size	lib_inkey, .-lib_inkey
	.align	2
	.globl	lib_usepcg
	.set	nomips16
	.set	nomicromips
	.ent	lib_usepcg
	.type	lib_usepcg, @function
lib_usepcg:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	beq	$4,$0,.L151
	sw	$31,20($sp)

	li	$2,2			# 0x2
	bne	$4,$2,.L156
	lw	$4,%gp_rel(g_pcg_font)($28)

	j	.L155
	nop

.L151:
	lw	$31,20($sp)
	j	stopPCG
	addiu	$sp,$sp,24

.L155:
	beql	$4,$0,.L156
	lw	$4,%gp_rel(g_pcg_font)($28)

	jal	free_temp_str
	nop

	sw	$0,%gp_rel(g_pcg_font)($28)
	lw	$4,%gp_rel(g_pcg_font)($28)
.L156:
	bne	$4,$0,.L154
	move	$5,$0

	li	$4,512			# 0x200
	jal	alloc_memory
	li	$5,36			# 0x24

	sw	$2,%gp_rel(g_pcg_font)($28)
	move	$4,$2
	li	$5,1			# 0x1
.L154:
	lw	$31,20($sp)
	j	startPCG
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_usepcg
	.size	lib_usepcg, .-lib_usepcg
	.align	2
	.globl	lib_pcg
	.set	nomips16
	.set	nomicromips
	.ent	lib_pcg
	.type	lib_pcg, @function
lib_pcg:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_pcg_font)($28)
	addiu	$sp,$sp,-32
	sw	$16,24($sp)
	sw	$31,28($sp)
	bne	$2,$0,.L158
	move	$16,$4

	li	$4,1			# 0x1
	sw	$5,16($sp)
	jal	lib_usepcg
	sw	$6,20($sp)

	lw	$6,20($sp)
	lw	$5,16($sp)
.L158:
	srl	$2,$5,24
	sll	$7,$5,24
	or	$7,$7,$2
	li	$2,16711680			# 0xff0000
	and	$8,$5,$2
	lw	$3,%gp_rel(g_pcg_font)($28)
	andi	$16,$16,0xff
	srl	$8,$8,8
	andi	$5,$5,0xff00
	sll	$4,$16,3
	or	$7,$7,$8
	sll	$5,$5,8
	addu	$4,$3,$4
	or	$5,$7,$5
	sw	$5,0($4)
	move	$3,$4
	sll	$5,$6,24
	srl	$4,$6,24
	and	$2,$6,$2
	or	$4,$5,$4
	srl	$2,$2,8
	andi	$6,$6,0xff00
	or	$2,$4,$2
	sll	$6,$6,8
	lw	$31,28($sp)
	or	$6,$2,$6
	lw	$16,24($sp)
	sw	$6,4($3)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_pcg
	.size	lib_pcg, .-lib_pcg
	.align	2
	.globl	lib_scroll30
	.set	nomips16
	.set	nomicromips
	.ent	lib_scroll30
	.type	lib_scroll30, @function
lib_scroll30:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$7,30			# 0x1e
	mul	$7,$5,$7
	addu	$2,$7,$4
	bgez	$2,.L160
	lui	$3,%hi(TVRAM)

	subu	$6,$0,$2
	addiu	$3,$3,%lo(TVRAM)
	j	.L161
	addu	$3,$3,$6

.L162:
	addu	$8,$3,$2
	sb	$9,0($8)
	lbu	$9,810($3)
	addiu	$6,$6,1
	sb	$9,810($8)
	addiu	$3,$3,1
.L161:
	slt	$8,$6,810
	bnel	$8,$0,.L162
	lbu	$9,0($3)

	j	.L163
	nop

.L160:
	beq	$2,$0,.L184
	li	$6,809			# 0x329

	lui	$3,%hi(TVRAM)
	subu	$6,$6,$2
	addiu	$3,$3,%lo(TVRAM)
	j	.L165
	addu	$3,$3,$6

.L166:
	addu	$8,$3,$2
	sb	$9,0($8)
	lbu	$9,810($3)
	addiu	$6,$6,-1
	sb	$9,810($8)
	addiu	$3,$3,-1
.L165:
	bgezl	$6,.L166
	lbu	$9,0($3)

.L163:
	bgez	$4,.L167
	lui	$6,%hi(TVRAM)

	lbu	$8,%gp_rel(cursorcolor)($28)
	addiu	$6,$6,%lo(TVRAM)
	addiu	$3,$4,30
.L182:
	addu	$2,$6,$3
.L181:
	addiu	$3,$3,30
	sb	$0,0($2)
	sb	$8,810($2)
	slt	$2,$3,810
	bnel	$2,$0,.L181
	addu	$2,$6,$3

	addiu	$4,$4,1
	bnel	$4,$0,.L182
	addiu	$3,$4,30

	j	.L170
	nop

.L167:
	beq	$4,$0,.L170
	lui	$8,%hi(TVRAM)

	lbu	$9,%gp_rel(cursorcolor)($28)
	move	$2,$0
	j	.L171
	addiu	$8,$8,%lo(TVRAM)

.L172:
	sb	$0,0($6)
	sb	$9,810($6)
	addiu	$3,$3,30
.L173:
	slt	$6,$3,810
	bne	$6,$0,.L172
	addu	$6,$8,$3

	addiu	$2,$2,1
	slt	$3,$2,$4
	beq	$3,$0,.L170
	nop

.L171:
	j	.L173
	move	$3,$2

.L170:
	bgez	$5,.L174
	lui	$4,%hi(TVRAM)

	addiu	$2,$7,810
	lbu	$5,%gp_rel(cursorcolor)($28)
	j	.L175
	addiu	$4,$4,%lo(TVRAM)

.L176:
	sb	$0,0($3)
	sb	$5,810($3)
	addiu	$2,$2,1
.L175:
	slt	$3,$2,810
	bne	$3,$0,.L176
	addu	$3,$4,$2

.L184:
	j	$31
	nop

.L174:
	beq	$5,$0,.L184
	lui	$2,%hi(TVRAM)

	lbu	$4,%gp_rel(cursorcolor)($28)
	addiu	$2,$2,%lo(TVRAM)
	j	.L177
	move	$3,$0

.L178:
	sb	$4,810($2)
	addiu	$3,$3,1
	addiu	$2,$2,1
.L177:
	slt	$5,$3,$7
	bnel	$5,$0,.L178
	sb	$0,0($2)

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_scroll30
	.size	lib_scroll30, .-lib_scroll30
	.align	2
	.globl	lib_scroll40
	.set	nomips16
	.set	nomicromips
	.ent	lib_scroll40
	.type	lib_scroll40, @function
lib_scroll40:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$7,40			# 0x28
	mul	$7,$5,$7
	addu	$2,$7,$4
	bgez	$2,.L186
	lui	$3,%hi(TVRAM)

	subu	$6,$0,$2
	addiu	$3,$3,%lo(TVRAM)
	j	.L187
	addu	$3,$3,$6

.L188:
	addu	$8,$3,$2
	sb	$9,0($8)
	lbu	$9,1080($3)
	addiu	$6,$6,1
	sb	$9,1080($8)
	addiu	$3,$3,1
.L187:
	slt	$8,$6,1080
	bnel	$8,$0,.L188
	lbu	$9,0($3)

	j	.L189
	nop

.L186:
	beq	$2,$0,.L210
	li	$6,1079			# 0x437

	lui	$3,%hi(TVRAM)
	subu	$6,$6,$2
	addiu	$3,$3,%lo(TVRAM)
	j	.L191
	addu	$3,$3,$6

.L192:
	addu	$8,$3,$2
	sb	$9,0($8)
	lbu	$9,1080($3)
	addiu	$6,$6,-1
	sb	$9,1080($8)
	addiu	$3,$3,-1
.L191:
	bgezl	$6,.L192
	lbu	$9,0($3)

.L189:
	bgez	$4,.L193
	lui	$6,%hi(TVRAM)

	lbu	$8,%gp_rel(cursorcolor)($28)
	addiu	$6,$6,%lo(TVRAM)
	addiu	$3,$4,40
.L208:
	addu	$2,$6,$3
.L207:
	addiu	$3,$3,40
	sb	$0,0($2)
	sb	$8,1080($2)
	slt	$2,$3,1080
	bnel	$2,$0,.L207
	addu	$2,$6,$3

	addiu	$4,$4,1
	bnel	$4,$0,.L208
	addiu	$3,$4,40

	j	.L196
	nop

.L193:
	beq	$4,$0,.L196
	lui	$8,%hi(TVRAM)

	lbu	$9,%gp_rel(cursorcolor)($28)
	move	$2,$0
	j	.L197
	addiu	$8,$8,%lo(TVRAM)

.L198:
	sb	$0,0($6)
	sb	$9,1080($6)
	addiu	$3,$3,40
.L199:
	slt	$6,$3,1080
	bne	$6,$0,.L198
	addu	$6,$8,$3

	addiu	$2,$2,1
	slt	$3,$2,$4
	beq	$3,$0,.L196
	nop

.L197:
	j	.L199
	move	$3,$2

.L196:
	bgez	$5,.L200
	lui	$4,%hi(TVRAM)

	addiu	$2,$7,1080
	lbu	$5,%gp_rel(cursorcolor)($28)
	j	.L201
	addiu	$4,$4,%lo(TVRAM)

.L202:
	sb	$0,0($3)
	sb	$5,1080($3)
	addiu	$2,$2,1
.L201:
	slt	$3,$2,1080
	bne	$3,$0,.L202
	addu	$3,$4,$2

.L210:
	j	$31
	nop

.L200:
	beq	$5,$0,.L210
	lui	$2,%hi(TVRAM)

	lbu	$4,%gp_rel(cursorcolor)($28)
	addiu	$2,$2,%lo(TVRAM)
	j	.L203
	move	$3,$0

.L204:
	sb	$4,1080($2)
	addiu	$3,$3,1
	addiu	$2,$2,1
.L203:
	slt	$5,$3,$7
	bnel	$5,$0,.L204
	sb	$0,0($2)

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_scroll40
	.size	lib_scroll40, .-lib_scroll40
	.align	2
	.globl	lib_wait
	.set	nomips16
	.set	nomicromips
	.ent	lib_wait
	.type	lib_wait, @function
lib_wait:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	sw	$31,44($sp)
	sw	$19,32($sp)
	move	$20,$4
	move	$21,$0
	lui	$18,%hi(LATA)
	lui	$17,%hi(PORTB)
	.set	noreorder
	.set	nomacro
	j	.L212
	lui	$16,%hi(ps2keystatus)
	.set	macro
	.set	reorder

.L218:
	lhu	$19,%gp_rel(drawcount)($28)
	.set	noreorder
	.set	nomacro
	j	.L222
	andi	$19,$19,0xffff
	.set	macro
	.set	reorder

.L217:
 #APP
 # 547 "library.c" 1
	wait
 # 0 "" 2
 #NO_APP
	bne	$2,$0,.L214
	lw	$2,%lo(LATA)($18)
	ext	$2,$2,1,1
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L215
	addiu	$2,$16,%lo(ps2keystatus)
	.set	macro
	.set	reorder

	lbu	$2,3($2)
	andi	$2,$2,0x00ff
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L214
	lb	$2,%gp_rel(g_disable_break)($28)
	.set	macro
	.set	reorder

	j	.L223
.L215:
	lw	$2,%lo(PORTB)($17)
	andi	$2,$2,0x4c80
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L214
	lb	$2,%gp_rel(g_disable_break)($28)
	.set	macro
	.set	reorder

.L223:
	jal	err_break
.L222:
	lb	$2,%gp_rel(g_disable_break)($28)
.L214:
	lhu	$3,%gp_rel(drawcount)($28)
	andi	$3,$3,0xffff
	beq	$19,$3,.L217
	addiu	$21,$21,1
.L212:
	slt	$2,$21,$20
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L218
	lw	$31,44($sp)
	.set	macro
	.set	reorder

	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,48
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_wait
	.size	lib_wait, .-lib_wait
	.align	2
	.globl	allocate_graphic_area
	.set	nomips16
	.set	nomicromips
	.ent	allocate_graphic_area
	.type	allocate_graphic_area, @function
allocate_graphic_area:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_graphic_area)($28)
	addiu	$sp,$sp,-24
	bne	$2,$0,.L224
	sw	$31,20($sp)

	li	$4,7168			# 0x1c00
	jal	alloc_memory
	li	$5,37			# 0x25

	move	$4,$2
	jal	init_graphic
	sw	$2,%gp_rel(g_graphic_area)($28)

	sw	$0,%gp_rel(g_prev_y)($28)
	sw	$0,%gp_rel(g_prev_x)($28)
.L224:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	allocate_graphic_area
	.size	allocate_graphic_area, .-allocate_graphic_area
	.align	2
	.globl	lib_usegraphic
	.set	nomips16
	.set	nomicromips
	.ent	lib_usegraphic
	.type	lib_usegraphic, @function
lib_usegraphic:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	beq	$4,$0,.L228
	move	$16,$4

	li	$2,2			# 0x2
	bne	$4,$2,.L227
	nop

	j	.L233
	sw	$0,%gp_rel(g_graphic_area)($28)

.L228:
	lb	$2,%gp_rel(g_use_graphic)($28)
	beq	$2,$0,.L230
	lw	$31,20($sp)

	jal	set_graphmode
	nop

	sb	$0,%gp_rel(g_use_graphic)($28)
	j	.L232
	li	$3,59473			# 0xe851

.L230:
	lw	$16,16($sp)
	j	allocate_graphic_area
	addiu	$sp,$sp,24

.L233:
.L227:
	jal	allocate_graphic_area
	nop

	li	$2,3			# 0x3
	beq	$16,$2,.L226
	lb	$2,%gp_rel(g_use_graphic)($28)

	bne	$2,$0,.L234
	lw	$31,20($sp)

	jal	set_graphmode
	li	$4,1			# 0x1

	li	$2,1			# 0x1
	sb	$2,%gp_rel(g_use_graphic)($28)
	li	$3,55756			# 0xd9cc
.L232:
	lui	$2,%hi(PR4)
	sw	$3,%lo(PR4)($2)
.L226:
	lw	$31,20($sp)
.L234:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_usegraphic
	.size	lib_usegraphic, .-lib_usegraphic
	.align	2
	.globl	lib_graphic
	.set	nomips16
	.set	nomicromips
	.ent	lib_graphic
	.type	lib_graphic, @function
lib_graphic:
	.frame	$sp,48,$31		# vars= 0, regs= 6/0, args= 24, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_libparams)($28)
	addiu	$sp,$sp,-48
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lw	$17,8($2)
	lw	$16,4($2)
	lw	$19,12($2)
	lw	$20,16($2)
	lw	$2,%gp_rel(g_graphic_area)($28)
	sw	$18,32($sp)
	sw	$31,44($sp)
	beq	$2,$0,.L260
	move	$18,$4

	lw	$2,%gp_rel(g_gcolor)($28)
	nor	$3,$0,$4
	movz	$18,$2,$3
	li	$2,-2147483648			# 0xffffffff80000000
	lw	$3,%gp_rel(g_prev_x)($28)
	xor	$4,$16,$2
	movz	$16,$3,$4
	lw	$3,%gp_rel(g_prev_y)($28)
	xor	$2,$17,$2
	addiu	$5,$5,-23
	movz	$17,$3,$2
	sltu	$2,$5,10
	beq	$2,$0,.L235
	move	$2,$18

	lui	$2,%hi(.L251)
	addiu	$2,$2,%lo(.L251)
	sll	$5,$5,2
	addu	$5,$2,$5
	lw	$2,0($5)
	j	$2
	nop

	.align	2
	.align	2
.L251:
	.word	.L241
	.word	.L242
	.word	.L243
	.word	.L244
	.word	.L245
	.word	.L246
	.word	.L247
	.word	.L252
	.word	.L249
	.word	.L265
.L241:
	move	$4,$16
	move	$5,$17
	jal	g_pset
	andi	$6,$18,0xf

.L265:
	sw	$16,%gp_rel(g_prev_x)($28)
.L268:
	j	.L240
	sw	$17,%gp_rel(g_prev_y)($28)

.L242:
	bne	$17,$20,.L253
	andi	$7,$18,0xf

	move	$4,$16
	move	$5,$19
	jal	g_hline
	move	$6,$20

	j	.L267
	sw	$19,%gp_rel(g_prev_x)($28)

.L253:
	sw	$7,16($sp)
	move	$4,$16
	move	$5,$17
	move	$6,$19
	jal	g_gline
	move	$7,$20

	j	.L267
	sw	$19,%gp_rel(g_prev_x)($28)

.L243:
	andi	$2,$18,0xf
	move	$4,$16
	move	$5,$17
	move	$6,$19
	move	$7,$20
	jal	g_boxfill
	sw	$2,16($sp)

	sw	$19,%gp_rel(g_prev_x)($28)
.L267:
	j	.L240
	sw	$20,%gp_rel(g_prev_y)($28)

.L244:
	move	$4,$16
	move	$5,$17
	move	$6,$19
	jal	g_circle
	andi	$7,$18,0xf

	j	.L268
	sw	$16,%gp_rel(g_prev_x)($28)

.L245:
	move	$4,$16
	move	$5,$17
	move	$6,$19
	jal	g_circlefill
	andi	$7,$18,0xf

	j	.L268
	sw	$16,%gp_rel(g_prev_x)($28)

.L246:
	move	$4,$16
	move	$5,$17
	move	$6,$19
	move	$7,$20
	jal	g_printstr
	sw	$18,16($sp)

	j	.L263
	li	$3,13			# 0xd

.L258:
	bne	$2,$3,.L263
	addiu	$16,$16,8

	addiu	$17,$17,8
	move	$16,$0
.L263:
	lbu	$2,0($18)
	bnel	$2,$0,.L258
	addiu	$18,$18,1

	j	.L268
	sw	$16,%gp_rel(g_prev_x)($28)

.L252:
	li	$4,-4			# 0xfffffffffffffffc
	li	$3,32			# 0x20
.L264:
	lw	$2,0($18)
	and	$5,$2,$4
	bnel	$5,$3,.L264
	addiu	$18,$18,4

	andi	$2,$2,0x3
	addu	$18,$18,$2
	addiu	$18,$18,4
.L247:
	move	$4,$16
	move	$5,$17
	seb	$6,$19
	seb	$7,$20
	jal	g_putbmpmn
	sw	$18,16($sp)

	j	.L268
	sw	$16,%gp_rel(g_prev_x)($28)

.L249:
	move	$4,$16
	move	$5,$17
	lw	$31,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	g_color
	addiu	$sp,$sp,48

.L240:
	move	$2,$18
.L260:
.L235:
	lw	$31,44($sp)
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
	.end	lib_graphic
	.size	lib_graphic, .-lib_graphic
	.align	2
	.globl	lib_var_push
	.set	nomips16
	.set	nomicromips
	.ent	lib_var_push
	.type	lib_var_push, @function
lib_var_push:
	.frame	$sp,72,$31		# vars= 16, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72
	sw	$22,56($sp)
	lui	$22,%hi(g_var_mem)
	sw	$fp,64($sp)
	addiu	$22,$22,%lo(g_var_mem)
	lui	$2,%hi(g_var_size)
	lui	$fp,%hi(g_var_pointer)
	sw	$23,60($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$31,68($sp)
	sw	$19,44($sp)
	sw	$16,32($sp)
	move	$17,$4
	move	$21,$6
	move	$20,$0
	move	$18,$0
	addiu	$2,$2,%lo(g_var_size)
	addiu	$fp,$fp,%lo(g_var_pointer)
	move	$23,$22
.L275:
	beql	$18,$0,.L271
	move	$16,$17

	xori	$3,$18,0x4
	movz	$16,$5,$3
.L271:
	andi	$19,$16,0x00ff
	beq	$19,$0,.L273
	addiu	$19,$19,-1

	andi	$19,$19,0x00ff
	sll	$3,$19,2
	addu	$3,$3,$22
	lw	$4,0($3)
	sw	$4,12($21)
	sll	$4,$19,1
	addu	$7,$4,$2
	lhu	$7,0($7)
	beql	$7,$0,.L276
	sll	$19,$19,2

	lw	$3,0($3)
	addu	$4,$fp,$4
	bnel	$3,$4,.L276
	sll	$19,$19,2

	li	$3,1			# 0x1
	sll	$3,$3,$18
	move	$4,$19
	sw	$2,24($sp)
	sw	$5,16($sp)
	sw	$6,20($sp)
	jal	move_to_perm_block
	or	$20,$20,$3

	lw	$6,20($sp)
	lw	$5,16($sp)
	lw	$2,24($sp)
	sll	$19,$19,2
.L276:
	addu	$19,$19,$23
	addiu	$18,$18,1
	li	$3,8			# 0x8
	sw	$0,0($19)
	beq	$18,$3,.L273
	addiu	$21,$21,4

	j	.L275
	sra	$16,$16,8

.L273:
	lw	$31,68($sp)
	sw	$20,8($6)
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
	.end	lib_var_push
	.size	lib_var_push, .-lib_var_push
	.align	2
	.globl	lib_var_pop
	.set	nomips16
	.set	nomicromips
	.ent	lib_var_pop
	.type	lib_var_pop, @function
lib_var_pop:
	.frame	$sp,64,$31		# vars= 8, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$23,56($sp)
	sw	$22,52($sp)
	lw	$23,4($6)
	lui	$22,%hi(g_var_mem)
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$31,60($sp)
	sw	$16,28($sp)
	move	$17,$4
	move	$19,$6
	move	$18,$0
	addiu	$22,$22,%lo(g_var_mem)
	li	$21,1			# 0x1
	li	$20,8			# 0x8
.L283:
	beql	$18,$0,.L279
	move	$16,$17

	xori	$2,$18,0x4
	movz	$16,$5,$2
.L279:
	andi	$4,$16,0x00ff
	beq	$4,$0,.L277
	addiu	$4,$4,-1

	andi	$4,$4,0x00ff
	sll	$2,$4,2
	lw	$3,8($19)
	addu	$2,$2,$22
	sw	$3,0($2)
	sll	$2,$21,$18
	and	$2,$2,$23
	beql	$2,$0,.L284
	addiu	$18,$18,1

	jal	move_from_perm_block
	sw	$5,16($sp)

	lw	$5,16($sp)
	addiu	$18,$18,1
.L284:
	beq	$18,$20,.L277
	addiu	$19,$19,4

	j	.L283
	sra	$16,$16,8

.L277:
	lw	$31,60($sp)
	lw	$23,56($sp)
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
	.end	lib_var_pop
	.size	lib_var_pop, .-lib_var_pop
	.section	.rodata,code
	.align	2
.LC2:
	.ascii	"Zoea\000"
	.align	2
.LC3:
	.ascii	"1.06\000"
	.align	2
.LC4:
	.ascii	"KM-1204\000"
	.section	.text,code
	.align	2
	.globl	lib_system
	.set	nomips16
	.set	nomicromips
	.ent	lib_system
	.type	lib_system, @function
lib_system:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	li	$2,28			# 0x1c
	beq	$4,$2,.L299
	sw	$31,20($sp)

	slt	$2,$4,29
	beq	$2,$0,.L312
	li	$2,100			# 0x64

	li	$3,21			# 0x15
	beq	$4,$3,.L292
	li	$2,27			# 0x1b

	slt	$2,$4,22
	beq	$2,$0,.L313
	li	$2,24			# 0x18

	li	$2,2			# 0x2
	beq	$4,$2,.L289
	lui	$2,%hi(.LC4)

	slt	$2,$4,3
	beql	$2,$0,.L314
	li	$2,3			# 0x3

	beq	$4,$0,.L287
	lui	$2,%hi(.LC2)

	li	$2,1			# 0x1
	bnel	$4,$2,.L292
	move	$2,$0

	j	.L323
	lui	$2,%hi(.LC3)

.L314:
	beq	$4,$2,.L290
	li	$2,-1660944384			# 0xffffffff9d000000

	li	$2,20			# 0x14
	bnel	$4,$2,.L292
	move	$2,$0

	j	.L324
	lbu	$2,%gp_rel(twidth)($28)

.L313:
	beq	$4,$2,.L292
	lbu	$2,%gp_rel(cursorcolor)($28)

	slt	$2,$4,25
	beql	$2,$0,.L315
	li	$2,26			# 0x1a

	li	$3,22			# 0x16
	beq	$4,$3,.L292
	li	$2,256			# 0x100

	li	$3,23			# 0x17
	bne	$4,$3,.L322
	li	$2,224			# 0xe0

	j	.L330
	lw	$31,20($sp)

.L315:
	beq	$4,$2,.L297
	slt	$4,$4,27

	beq	$4,$0,.L298
	lw	$3,%gp_rel(cursor)($28)

	j	.L325
	lw	$2,%gp_rel(g_gcolor)($28)

.L312:
	beq	$4,$2,.L305
	lui	$2,%hi(g_var_mem)

	slt	$2,$4,101
	beq	$2,$0,.L316
	li	$2,103			# 0x67

	li	$2,41			# 0x29
	beq	$4,$2,.L302
	nop

	slt	$2,$4,42
	beq	$2,$0,.L317
	li	$2,42			# 0x2a

	li	$2,29			# 0x1d
	beq	$4,$2,.L292
	lw	$2,%gp_rel(g_prev_y)($28)

	li	$2,40			# 0x28
	bnel	$4,$2,.L292
	move	$2,$0

	j	.L326
	lui	$2,%hi(LATA)

.L317:
	beq	$4,$2,.L292
	lbu	$2,%gp_rel(lockkey)($28)

	li	$2,43			# 0x2b
	bnel	$4,$2,.L292
	move	$2,$0

	j	.L327
	lbu	$2,%gp_rel(keytype)($28)

.L316:
	beq	$4,$2,.L308
	lui	$2,%hi(FontData)

	slt	$2,$4,104
	beq	$2,$0,.L318
	li	$2,105			# 0x69

	li	$3,101			# 0x65
	beq	$4,$3,.L292
	addiu	$2,$28,%gp_rel(g_rnd_seed)

	li	$2,102			# 0x66
	bnel	$4,$2,.L292
	move	$2,$0

	j	.L328
	lui	$2,%hi(TVRAM)

.L318:
	beq	$4,$2,.L310
	lui	$2,%hi(g_var_mem+148)

	slt	$2,$4,105
	bne	$2,$0,.L309
	lui	$2,%hi(g_var_mem+144)

	li	$2,200			# 0xc8
	bne	$4,$2,.L292
	move	$2,$0

	j	.L329
	nop

.L290:
	j	.L292
	addiu	$2,$2,22528

.L287:
	j	.L292
	addiu	$2,$2,%lo(.LC2)

.L323:
	j	.L292
	addiu	$2,$2,%lo(.LC3)

.L289:
	j	.L292
	addiu	$2,$2,%lo(.LC4)

.L324:
	j	.L330
	lw	$31,20($sp)

.L325:
	j	.L330
	lw	$31,20($sp)

.L297:
	lw	$3,%gp_rel(cursor)($28)
	lui	$2,%hi(TVRAM)
	addiu	$2,$2,%lo(TVRAM)
	subu	$2,$3,$2
	lbu	$3,%gp_rel(twidth)($28)
	div	$0,$2,$3
	teq	$3,$0,7
	j	.L292
	mfhi	$2

.L298:
	lui	$2,%hi(TVRAM)
	addiu	$2,$2,%lo(TVRAM)
	subu	$2,$3,$2
	lbu	$3,%gp_rel(twidth)($28)
	div	$0,$2,$3
	teq	$3,$0,7
	j	.L292
	mflo	$2

.L299:
	j	.L292
	lw	$2,%gp_rel(g_prev_x)($28)

.L326:
	lw	$2,%lo(LATA)($2)
	j	.L292
	ext	$2,$2,1,1

.L302:
	lhu	$2,%gp_rel(vkey)($28)
	j	.L292
	andi	$2,$2,0xffff

.L327:
	j	.L330
	lw	$31,20($sp)

.L305:
	j	.L292
	addiu	$2,$2,%lo(g_var_mem)

.L328:
	j	.L292
	addiu	$2,$2,%lo(TVRAM)

.L308:
	j	.L292
	addiu	$2,$2,%lo(FontData)

.L309:
	j	.L292
	lw	$2,%lo(g_var_mem+144)($2)

.L310:
	j	.L292
	lw	$2,%lo(g_var_mem+148)($2)

.L329:
	beq	$5,$0,.L319
	nop

	jal	start_composite
	nop

	j	.L292
	move	$2,$0

.L319:
	jal	stop_composite
	nop

.L322:
	move	$2,$0
.L292:
	lw	$31,20($sp)
.L330:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_system
	.size	lib_system, .-lib_system
	.section	.rodata,code
	.align	2
.LC5:
	.ascii	"%g\000"
	.section	.text,code
	.align	2
	.globl	lib_sprintf
	.set	nomips16
	.set	nomicromips
	.ent	lib_sprintf
	.type	lib_sprintf, @function
lib_sprintf:
	.frame	$sp,48,$31		# vars= 8, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$18,36($sp)
	sw	$16,28($sp)
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$17,32($sp)
	move	$16,$4
	bne	$4,$0,.L332
	move	$18,$5

	lui	$16,%hi(.LC5)
	addiu	$16,$16,%lo(.LC5)
.L332:
	move	$6,$16
	move	$7,$18
	addiu	$4,$sp,16
	jal	snprintf
	li	$5,4			# 0x4

	addiu	$3,$2,4
	addiu	$19,$2,1
	slt	$4,$3,0
	addiu	$2,$2,7
	movn	$3,$2,$4
	sra	$4,$3,2
	jal	alloc_memory
	li	$5,-1			# 0xffffffffffffffff

	move	$4,$2
	move	$5,$19
	move	$6,$16
	move	$7,$18
	jal	snprintf
	move	$17,$2

	lw	$31,44($sp)
	move	$2,$17
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
	.end	lib_sprintf
	.size	lib_sprintf, .-lib_sprintf
	.globl	__floatsisf
	.globl	__fixsfsi
	.align	2
	.globl	lib_floatfuncs
	.set	nomips16
	.set	nomicromips
	.ent	lib_floatfuncs
	.type	lib_floatfuncs, @function
lib_floatfuncs:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sltu	$2,$6,23
	sw	$31,28($sp)
	sw	$4,16($sp)
	beq	$2,$0,.L335
	sw	$5,20($sp)

	lui	$2,%hi(.L359)
	addiu	$2,$2,%lo(.L359)
	sll	$6,$6,2
	addu	$6,$2,$6
	lw	$2,0($6)
	j	$2
	nop

	.align	2
	.align	2
.L359:
	.word	.L336
	.word	.L337
	.word	.L338
	.word	.L339
	.word	.L340
	.word	.L341
	.word	.L342
	.word	.L343
	.word	.L344
	.word	.L345
	.word	.L346
	.word	.L347
	.word	.L348
	.word	.L349
	.word	.L350
	.word	.L351
	.word	.L352
	.word	.L353
	.word	.L354
	.word	.L355
	.word	.L356
	.word	.L357
	.word	.L358
.L336:
	jal	__floatsisf
	move	$4,$5

	j	.L362
	nop

.L337:
	lw	$4,20($sp)
	jal	__fixsfsi
	nop

	j	.L363
	lw	$31,28($sp)

.L338:
	move	$4,$5
	jal	strtof
	move	$5,$0

.L362:
	sw	$2,20($sp)
	j	.L364
	lw	$2,20($sp)

.L339:
	lw	$4,20($sp)
	jal	sinf
	nop

	j	.L362
	nop

.L340:
	lw	$4,20($sp)
	jal	cosf
	nop

	j	.L362
	nop

.L341:
	lw	$4,20($sp)
	jal	tanf
	nop

	j	.L362
	nop

.L342:
	lw	$4,20($sp)
	jal	asinf
	nop

	j	.L362
	nop

.L343:
	lw	$4,20($sp)
	jal	acosf
	nop

	j	.L362
	nop

.L344:
	lw	$4,20($sp)
	jal	atanf
	nop

	j	.L362
	nop

.L345:
	lw	$4,20($sp)
	lw	$5,16($sp)
	jal	atan2f
	nop

	j	.L362
	nop

.L346:
	lw	$4,20($sp)
	jal	sinhf
	nop

	j	.L362
	nop

.L347:
	lw	$4,20($sp)
	jal	coshf
	nop

	j	.L362
	nop

.L348:
	lw	$4,20($sp)
	jal	tanhf
	nop

	j	.L362
	nop

.L349:
	lw	$4,20($sp)
	jal	expf
	nop

	j	.L362
	nop

.L350:
	lw	$4,20($sp)
	jal	logf
	nop

	j	.L362
	nop

.L351:
	lw	$4,20($sp)
	jal	log10f
	nop

	j	.L362
	nop

.L352:
	lw	$4,20($sp)
	lw	$5,16($sp)
	jal	powf
	nop

	j	.L362
	nop

.L353:
	lw	$4,20($sp)
	jal	sqrtf
	nop

	j	.L362
	nop

.L354:
	lw	$4,20($sp)
	jal	ceilf
	nop

	j	.L362
	nop

.L355:
	lw	$4,20($sp)
	jal	floorf
	nop

	j	.L362
	nop

.L356:
	lw	$2,20($sp)
	j	.L362
	ext	$2,$2,0,31

.L357:
	lw	$4,20($sp)
	jal	modff
	addiu	$5,$sp,16

	j	.L362
	nop

.L358:
	lw	$4,20($sp)
	lw	$5,16($sp)
	jal	fmodf
	nop

	j	.L362
	nop

.L335:
	jal	err_unknown
	nop

	lw	$2,20($sp)
.L364:
	lw	$31,28($sp)
.L363:
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_floatfuncs
	.size	lib_floatfuncs, .-lib_floatfuncs
	.align	2
	.globl	lib_dim
	.set	nomips16
	.set	nomicromips
	.ent	lib_dim
	.type	lib_dim, @function
lib_dim:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$16,24($sp)
	move	$2,$4
	move	$16,$5
	sw	$31,28($sp)
	move	$7,$6
	li	$5,1			# 0x1
	move	$4,$0
	j	.L366
	li	$3,1			# 0x1

.L367:
	lw	$8,0($7)
	addiu	$3,$3,1
	addiu	$8,$8,1
	mul	$5,$5,$8
	addu	$4,$4,$5
.L366:
	slt	$8,$16,$3
	beq	$8,$0,.L367
	addiu	$7,$7,4

	move	$5,$2
	jal	calloc_memory
	sw	$6,16($sp)

	sw	$2,%gp_rel(heap.9153)($28)
	li	$3,1			# 0x1
	move	$7,$0
	li	$5,1			# 0x1
	j	.L368
	lw	$6,16($sp)

.L371:
	sll	$8,$7,2
	addiu	$4,$4,1
	mul	$3,$3,$4
	addu	$8,$2,$8
	move	$4,$0
	j	.L369
	addu	$7,$3,$7

.L370:
	addiu	$9,$9,1
	mul	$10,$4,$9
	addiu	$4,$4,1
	addu	$9,$10,$7
	sll	$9,$9,2
	addu	$9,$2,$9
	sw	$9,0($8)
	addiu	$8,$8,4
.L369:
	slt	$9,$4,$3
	bnel	$9,$0,.L370
	lw	$9,8($6)

	addiu	$5,$5,1
	addiu	$6,$6,4
.L368:
	slt	$4,$5,$16
	bnel	$4,$0,.L371
	lw	$4,4($6)

	lw	$31,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_dim
	.size	lib_dim, .-lib_dim
	.align	2
	.globl	lib_width
	.set	nomips16
	.set	nomicromips
	.ent	lib_width
	.type	lib_width, @function
lib_width:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,30			# 0x1e
	beq	$4,$2,.L374
	li	$2,40			# 0x28

	bne	$4,$2,.L378
	lbu	$2,%gp_rel(twidth)($28)

	j	.L377
	nop

.L374:
	lbu	$2,%gp_rel(twidth)($28)
	beq	$2,$4,.L378
	move	$4,$0

	j	.L376
	nop

.L377:
	beq	$2,$4,.L378
	li	$4,1			# 0x1

.L376:
	j	set_width
	nop

.L378:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_width
	.size	lib_width, .-lib_width
	.align	2
	.globl	lib_file_textlen
	.set	nomips16
	.set	nomicromips
	.ent	lib_file_textlen
	.type	lib_file_textlen, @function
lib_file_textlen:
	.frame	$sp,176,$31		# vars= 128, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-176
	sw	$19,160($sp)
	sw	$16,148($sp)
	addiu	$19,$sp,16
	move	$16,$4
	sw	$31,172($sp)
	sw	$21,168($sp)
	sw	$20,164($sp)
	sw	$18,156($sp)
	jal	FSftell
	sw	$17,152($sp)

	move	$4,$19
	li	$5,1			# 0x1
	li	$6,128			# 0x80
	move	$7,$16
	move	$17,$2
	jal	FSfread
	move	$18,$0

	li	$21,13			# 0xd
	move	$3,$0
	j	.L380
	li	$20,10			# 0xa

.L384:
	lb	$4,0($4)
	bne	$4,$21,.L381
	nop

	slt	$2,$3,$2
	beq	$2,$0,.L382
	addiu	$2,$3,1

	addu	$19,$19,$2
	lb	$4,0($19)
	xori	$4,$4,0xa
	j	.L382
	movz	$3,$2,$4

.L381:
	beq	$4,$20,.L382
	addiu	$4,$2,-2

	bne	$3,$4,.L380
	addiu	$3,$3,1

	lbu	$2,143($sp)
	addiu	$4,$sp,17
	li	$5,1			# 0x1
	li	$6,127			# 0x7f
	move	$7,$16
	sb	$2,16($sp)
	jal	FSfread
	addiu	$18,$18,127

	li	$3,-1			# 0xffffffffffffffff
	addiu	$3,$3,1
.L380:
	addiu	$4,$2,-1
	slt	$4,$3,$4
	bne	$4,$0,.L384
	addu	$4,$19,$3

.L382:
	move	$4,$16
	move	$5,$17
	move	$6,$0
	jal	FSfseek
	addu	$18,$3,$18

	lw	$31,172($sp)
	addiu	$2,$18,1
	lw	$21,168($sp)
	lw	$20,164($sp)
	lw	$19,160($sp)
	lw	$18,156($sp)
	lw	$17,152($sp)
	lw	$16,148($sp)
	j	$31
	addiu	$sp,$sp,176

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_file_textlen
	.size	lib_file_textlen, .-lib_file_textlen
	.section	.rodata,code
	.align	2
.LC6:
	.ascii	"\000"
	.align	2
.LC7:
	.ascii	"\015\012\000"
	.section	.text,code
	.align	2
	.globl	lib_file
	.set	nomips16
	.set	nomicromips
	.ent	lib_file
	.type	lib_file, @function
lib_file:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lb	$2,%gp_rel(activefhandle.9190)($28)
	addiu	$sp,$sp,-48
	sw	$17,36($sp)
	sw	$16,32($sp)
	sw	$31,44($sp)
	move	$16,$7
	sw	$18,40($sp)
	move	$17,$4
	beq	$2,$0,.L387
	move	$7,$0

	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$3,$28,%gp_rel(s_fhandle.9189)
	addu	$2,$3,$2
	lw	$7,0($2)
.L387:
	addiu	$2,$17,-33
	sltu	$3,$2,17
	beq	$3,$0,.L388
	lui	$3,%hi(.L405)

	sll	$2,$2,2
	addiu	$3,$3,%lo(.L405)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L405:
	.word	.L389
	.word	.L389
	.word	.L390
	.word	.L391
	.word	.L392
	.word	.L393
	.word	.L394
	.word	.L395
	.word	.L396
	.word	.L397
	.word	.L398
	.word	.L399
	.word	.L400
	.word	.L401
	.word	.L402
	.word	.L403
	.word	.L404
.L393:
	j	.L406
	move	$17,$0

.L404:
	lw	$4,%gp_rel(s_fhandle.9189)($28)
	beql	$4,$0,.L450
	lw	$4,%gp_rel(s_fhandle.9189+4)($28)

	jal	FSfclose
	nop

	lw	$4,%gp_rel(s_fhandle.9189+4)($28)
.L450:
	beq	$4,$0,.L408
	sw	$0,%gp_rel(s_fhandle.9189)($28)

	jal	FSfclose
	nop

.L408:
	sw	$0,%gp_rel(s_fhandle.9189+4)($28)
	j	.L441
	sb	$0,%gp_rel(activefhandle.9190)($28)

.L389:
	beq	$16,$0,.L438
	sb	$0,%gp_rel(activefhandle.9190)($28)

	bltz	$16,.L410
	slt	$2,$16,3

	beq	$2,$0,.L410
	addiu	$18,$16,-1

	j	.L454
	addiu	$2,$28,%gp_rel(s_fhandle.9189)

.L438:
	li	$16,1			# 0x1
	addiu	$18,$16,-1
	addiu	$2,$28,%gp_rel(s_fhandle.9189)
.L454:
	sll	$18,$18,2
	addu	$18,$2,$18
	lw	$2,0($18)
	beq	$2,$0,.L413
	move	$4,$5

	jal	err_file
	move	$16,$0

	j	.L449
	lw	$31,44($sp)

.L410:
	jal	err_invalid_param
	move	$16,$0

	j	.L449
	lw	$31,44($sp)

.L413:
	jal	FSfopen
	move	$5,$6

	bnel	$2,$0,.L451
	sw	$2,0($18)

	li	$2,34			# 0x22
	bne	$17,$2,.L409
	move	$16,$0

	j	.L436
	nop

.L390:
	addiu	$2,$16,-1
	sltu	$2,$2,2
	beq	$2,$0,.L415
	sll	$2,$16,2

	addiu	$3,$28,%gp_rel(s_fhandle.9189)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,.L415
	nop

.L444:
.L451:
	j	.L409
	sb	$16,%gp_rel(activefhandle.9190)($28)

.L415:
	jal	err_invalid_param
	nop

	j	.L449
	lw	$31,44($sp)

.L391:
	beq	$16,$0,.L418
	nop

	bltz	$16,.L417
	slt	$2,$16,3

	beq	$2,$0,.L417
	addiu	$2,$16,-1

	sll	$2,$2,2
	addiu	$3,$28,%gp_rel(s_fhandle.9189)
	addu	$2,$3,$2
	lw	$2,0($2)
	bnel	$2,$0,.L420
	sb	$16,%gp_rel(activefhandle.9190)($28)

.L420:
	lb	$2,%gp_rel(activefhandle.9190)($28)
	beq	$2,$0,.L418
	addiu	$2,$2,-1

	sll	$2,$2,2
	addiu	$3,$28,%gp_rel(s_fhandle.9189)
	addu	$2,$3,$2
	j	.L418
	lw	$7,0($2)

.L417:
	jal	err_invalid_param
	sw	$7,24($sp)

	lw	$7,24($sp)
.L418:
	beql	$7,$0,.L409
	sb	$0,%gp_rel(activefhandle.9190)($28)

	jal	FSfclose
	move	$4,$7

	lb	$2,%gp_rel(activefhandle.9190)($28)
	addiu	$3,$28,%gp_rel(s_fhandle.9189)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$0,0($2)
	j	.L409
	sb	$0,%gp_rel(activefhandle.9190)($28)

.L392:
	beq	$7,$0,.L422
	nop

	bne	$16,$0,.L452
	addiu	$2,$16,4

	move	$4,$7
	jal	lib_file_textlen
	sw	$7,24($sp)

	lw	$7,24($sp)
	move	$16,$2
	addiu	$2,$16,4
.L452:
	addiu	$3,$16,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$4,$2,2
	li	$5,-1			# 0xffffffffffffffff
	jal	alloc_memory
	sw	$7,24($sp)

	lw	$7,24($sp)
	move	$6,$16
	move	$4,$2
	li	$5,1			# 0x1
	jal	FSfread
	move	$17,$2

	addu	$2,$17,$2
	sb	$0,0($2)
	j	.L409
	move	$16,$17

.L422:
	jal	err_file
	lui	$16,%hi(.LC6)

	j	.L409
	addiu	$16,$16,%lo(.LC6)

.L424:
.L406:
	addu	$2,$17,$16
	lb	$2,0($2)
	bnel	$2,$0,.L424
	addiu	$17,$17,1

	beq	$7,$0,.L425
	move	$4,$16

	li	$5,1			# 0x1
	jal	FSfwrite
	move	$6,$17

	bne	$2,$0,.L453
	lw	$2,%gp_rel(numinline.9191)($28)

.L425:
	jal	err_file
	nop

	lw	$2,%gp_rel(numinline.9191)($28)
.L453:
	addu	$17,$2,$17
	j	.L409
	sw	$17,%gp_rel(numinline.9191)($28)

.L399:
	beq	$16,$0,.L427
	lui	$7,%hi(.LC7)

	li	$2,1			# 0x1
	bnel	$16,$2,.L449
	lw	$31,44($sp)

	j	.L446
	lw	$3,%gp_rel(numinline.9191)($28)

.L427:
	li	$4,38			# 0x26
	jal	lib_file
	addiu	$7,$7,%lo(.LC7)

.L441:
	j	.L409
	sw	$0,%gp_rel(numinline.9191)($28)

.L446:
	li	$2,-859045888			# 0xffffffffcccc0000
	ori	$2,$2,0xcccd
	multu	$3,$2
	li	$4,10			# 0xa
	mfhi	$9
	srl	$2,$9,3
	mul	$7,$4,$2
	li	$4,38			# 0x26
	subu	$2,$3,$7
	lui	$7,%hi(.LC1)
	addiu	$7,$7,%lo(.LC1)
	jal	lib_file
	addu	$7,$7,$2

	j	.L449
	lw	$31,44($sp)

.L394:
	beq	$7,$0,.L436
	move	$4,$5

	move	$6,$16
	jal	FSfread
	li	$5,1			# 0x1

	j	.L409
	move	$16,$2

.L395:
	beq	$7,$0,.L436
	move	$4,$5

	move	$6,$16
	j	.L445
	li	$5,1			# 0x1

.L400:
	beq	$7,$0,.L436
	addiu	$4,$sp,16

	li	$5,1			# 0x1
	jal	FSfread
	li	$6,1			# 0x1

	lbu	$3,16($sp)
	li	$16,-1			# 0xffffffffffffffff
	j	.L409
	movn	$16,$3,$2

.L401:
	beq	$7,$0,.L436
	addiu	$4,$sp,16

	sw	$16,16($sp)
	li	$5,1			# 0x1
	li	$6,1			# 0x1
.L445:
	jal	FSfwrite
	nop

	j	.L409
	move	$16,$2

.L396:
	beq	$7,$0,.L436
	move	$4,$7

	move	$5,$16
	jal	FSfseek
	move	$6,$0

	j	.L409
	move	$16,$2

.L397:
	beq	$7,$0,.L436
	nop

	jal	FSftell
	move	$4,$7

	j	.L409
	move	$16,$2

.L398:
	beq	$7,$0,.L436
	nop

	j	.L409
	lw	$16,20($7)

.L403:
	beq	$7,$0,.L436
	nop

	lw	$16,20($7)
	jal	FSftell
	move	$4,$7

	sltu	$16,$2,$16
	j	.L409
	xori	$16,$16,0x1

.L436:
	jal	err_file
	nop

	j	.L449
	lw	$31,44($sp)

.L402:
	jal	FSremove
	move	$4,$16

	j	.L409
	move	$16,$2

.L388:
	jal	err_unknown
	nop

.L409:
	lw	$31,44($sp)
.L449:
	move	$2,$16
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	lib_file
	.size	lib_file, .-lib_file
	.align	2
	.globl	call_library
	.set	nomips16
	.set	nomicromips
	.ent	call_library
	.type	call_library, @function
call_library:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
# End mchp_output_function_prologue
 #APP
 # 1134 "library.c" 1
	la $a2,g_s6
 # 0 "" 2
 # 1135 "library.c" 1
	sw $s6,0($a2)
 # 0 "" 2
 # 1137 "library.c" 1
	addu $a2,$v0,$zero
 # 0 "" 2
 # 1139 "library.c" 1
	la $v0,g_libparams
 # 0 "" 2
 # 1140 "library.c" 1
	sw $sp,0($v0)
 # 0 "" 2
 # 1142 "library.c" 1
	j _call_library
 # 0 "" 2
 #NO_APP
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	call_library
	.size	call_library, .-call_library
	.align	2
	.globl	_call_library
	.set	nomips16
	.set	nomicromips
	.ent	_call_library
	.type	_call_library, @function
_call_library:
	.frame	$sp,40,$31		# vars= 8, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lb	$2,%gp_rel(g_disable_break)($28)
	addiu	$sp,$sp,-40
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	sw	$31,36($sp)
	move	$17,$4
	move	$16,$6
	bne	$2,$0,.L457
	move	$18,$7

	lui	$2,%hi(LATA)
	lw	$2,%lo(LATA)($2)
	ext	$2,$2,1,1
	beq	$2,$0,.L458
	lui	$2,%hi(PORTB)

	lui	$2,%hi(ps2keystatus)
	addiu	$2,$2,%lo(ps2keystatus)
	lbu	$2,3($2)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L549
	andi	$2,$18,0xfe00

	j	.L527
	nop

.L458:
	lw	$2,%lo(PORTB)($2)
	andi	$2,$2,0x4c80
	bne	$2,$0,.L549
	andi	$2,$18,0xfe00

.L527:
	jal	err_break
	sw	$5,16($sp)

	lw	$5,16($sp)
.L457:
	andi	$2,$18,0xfe00
.L549:
	li	$3,12288			# 0x3000
	beq	$2,$3,.L484
	sltu	$3,$2,12289

	beq	$3,$0,.L509
	li	$3,18432			# 0x4800

	li	$3,5632			# 0x1600
	beq	$2,$3,.L471
	sltu	$3,$2,5633

	beq	$3,$0,.L510
	li	$3,8704			# 0x2200

	li	$3,2560			# 0xa00
	beq	$2,$3,.L465
	sltu	$3,$2,2561

	beq	$3,$0,.L511
	li	$3,4096			# 0x1000

	li	$3,1024			# 0x400
	beq	$2,$3,.L462
	sltu	$3,$2,1025

	beq	$3,$0,.L512
	li	$3,1536			# 0x600

	beq	$2,$0,.L460
	li	$3,512			# 0x200

	bne	$2,$3,.L459
	lw	$31,36($sp)

	j	.L531
	lw	$18,32($sp)

.L512:
	beq	$2,$3,.L463
	li	$3,2048			# 0x800

	bne	$2,$3,.L459
	nop

	j	.L532
	nop

.L511:
	beq	$2,$3,.L468
	sltu	$3,$2,4097

	beq	$3,$0,.L513
	li	$3,4608			# 0x1200

	li	$3,3072			# 0xc00
	beq	$2,$3,.L466
	li	$3,3584			# 0xe00

	bne	$2,$3,.L459
	lw	$2,%gp_rel(g_libparams)($28)

	j	.L533
	andi	$4,$16,0x00ff

.L513:
	beq	$2,$3,.L469
	li	$3,5120			# 0x1400

	bne	$2,$3,.L459
	lw	$2,%gp_rel(g_graphic_area)($28)

	j	.L534
	nop

.L510:
	beq	$2,$3,.L477
	sltu	$3,$2,8705

	beq	$3,$0,.L514
	li	$3,10240			# 0x2800

	li	$3,7168			# 0x1c00
	beq	$2,$3,.L474
	sltu	$3,$2,7169

	beq	$3,$0,.L515
	li	$3,7680			# 0x1e00

	li	$3,6144			# 0x1800
	beq	$2,$3,.L472
	li	$3,6656			# 0x1a00

	bne	$2,$3,.L459
	move	$4,$16

	j	.L535
	lw	$31,36($sp)

.L515:
	beq	$2,$3,.L475
	li	$3,8192			# 0x2000

	bne	$2,$3,.L459
	move	$4,$0

	j	.L529
	move	$5,$0

.L514:
	beq	$2,$3,.L480
	sltu	$3,$2,10241

	beq	$3,$0,.L516
	li	$3,11264			# 0x2c00

	li	$3,9216			# 0x2400
	beq	$2,$3,.L478
	li	$3,9728			# 0x2600

	bne	$2,$3,.L459
	nop

	j	.L537
	nop

.L516:
	beq	$2,$3,.L482
	li	$3,11776			# 0x2e00

	beq	$2,$3,.L483
	li	$3,10752			# 0x2a00

	bne	$2,$3,.L459
	lw	$2,%gp_rel(g_libparams)($28)

	j	.L538
	move	$6,$16

.L509:
	beq	$2,$3,.L496
	sltu	$3,$2,18433

	beq	$3,$0,.L517
	li	$3,21504			# 0x5400

	li	$3,15360			# 0x3c00
	beq	$2,$3,.L490
	sltu	$3,$2,15361

	beq	$3,$0,.L518
	li	$3,16896			# 0x4200

	li	$3,13824			# 0x3600
	beq	$2,$3,.L487
	sltu	$3,$2,13825

	beq	$3,$0,.L519
	li	$3,14336			# 0x3800

	li	$3,12800			# 0x3200
	beq	$2,$3,.L485
	li	$3,13312			# 0x3400

	bne	$2,$3,.L459
	move	$4,$17

	j	.L539
	move	$5,$16

.L519:
	beq	$2,$3,.L488
	li	$3,14848			# 0x3a00

	bne	$2,$3,.L459
	move	$4,$16

	j	.L540
	lw	$31,36($sp)

.L518:
	beq	$2,$3,.L493
	sltu	$3,$2,16897

	beq	$3,$0,.L520
	li	$3,17408			# 0x4400

	li	$3,15872			# 0x3e00
	beq	$2,$3,.L491
	li	$3,16384			# 0x4000

	bne	$2,$3,.L459
	lw	$31,36($sp)

	j	.L541
	lw	$18,32($sp)

.L520:
	beq	$2,$3,.L494
	li	$3,17920			# 0x4600

	bne	$2,$3,.L459
	lw	$2,%gp_rel(g_libparams)($28)

	j	.L542
	move	$6,$16

.L517:
	beq	$2,$3,.L502
	sltu	$3,$2,21505

	beq	$3,$0,.L521
	li	$3,23040			# 0x5a00

	li	$3,19968			# 0x4e00
	beq	$2,$3,.L499
	sltu	$3,$2,19969

	beq	$3,$0,.L522
	li	$3,20480			# 0x5000

	li	$3,18944			# 0x4a00
	beq	$2,$3,.L497
	li	$3,19456			# 0x4c00

	bne	$2,$3,.L459
	lw	$6,%gp_rel(g_libparams)($28)

	j	.L543
	nop

.L522:
	beq	$2,$3,.L500
	li	$3,20992			# 0x5200

	bne	$2,$3,.L459
	move	$4,$16

	j	.L544
	move	$5,$17

.L521:
	beq	$2,$3,.L505
	sltu	$3,$2,23041

	beq	$3,$0,.L523
	li	$3,24064			# 0x5e00

	li	$3,22016			# 0x5600
	beq	$2,$3,.L503
	li	$3,22528			# 0x5800

	bne	$2,$3,.L459
	li	$4,1			# 0x1

	j	.L529
	move	$5,$0

.L523:
	beq	$2,$3,.L507
	li	$3,24576			# 0x6000

	beq	$2,$3,.L508
	li	$3,23552			# 0x5c00

	bne	$2,$3,.L459
	move	$4,$16

	j	.L546
	andi	$5,$18,0x3f

.L502:
	move	$4,$17
	move	$5,$16
	andi	$6,$18,0x1f
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_float
	addiu	$sp,$sp,40

.L503:
	move	$4,$17
	move	$5,$16
	andi	$6,$18,0x3f
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_floatfuncs
	addiu	$sp,$sp,40

.L538:
	lw	$4,4($2)
	lw	$5,8($2)
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	strncmp
	addiu	$sp,$sp,40

.L477:
	move	$4,$5
	move	$6,$17
	move	$5,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_midstr
	addiu	$sp,$sp,40

.L482:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_rnd
	addiu	$sp,$sp,40

.L483:
	move	$4,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_dec
	addiu	$sp,$sp,40

.L484:
	move	$4,$16
	move	$5,$17
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_hex
	addiu	$sp,$sp,40

.L485:
	move	$4,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_chr
	addiu	$sp,$sp,40

.L491:
	move	$4,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_val
	addiu	$sp,$sp,40

.L480:
	move	$4,$16
	jal	lib_let_str
	move	$5,$17

	j	.L547
	lw	$31,36($sp)

.L539:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_connect_string
	addiu	$sp,$sp,40

.L487:
	jal	lib_string
	move	$4,$16

	j	.L548
	move	$2,$16

.L488:
	jal	printstr
	move	$4,$16

	j	.L548
	move	$2,$16

.L546:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_graphic
	addiu	$sp,$sp,40

.L544:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_sprintf
	addiu	$sp,$sp,40

.L543:
	jal	lib_var_push
	move	$4,$17

	j	.L548
	move	$2,$16

.L499:
	lw	$6,%gp_rel(g_libparams)($28)
	jal	lib_var_pop
	move	$4,$17

	j	.L548
	move	$2,$16

.L496:
	lbu	$2,%gp_rel(twidth)($28)
	li	$3,30			# 0x1e
	bne	$2,$3,.L525
	li	$3,40			# 0x28

	lw	$2,%gp_rel(g_libparams)($28)
	move	$5,$16
	jal	lib_scroll30
	lw	$4,4($2)

	j	.L548
	move	$2,$16

.L525:
	bnel	$2,$3,.L548
	move	$2,$16

	lw	$2,%gp_rel(g_libparams)($28)
	move	$5,$16
	jal	lib_scroll40
	lw	$4,4($2)

	j	.L548
	move	$2,$16

.L508:
	lw	$2,%gp_rel(g_libparams)($28)
	andi	$4,$18,0x3f
	lw	$5,4($2)
	lw	$6,8($2)
	move	$7,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_file
	addiu	$sp,$sp,40

.L535:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_keys
	addiu	$sp,$sp,40

.L493:
	jal	lib_inkey
	move	$4,$16

	j	.L524
	move	$16,$2

.L468:
	lw	$2,%gp_rel(g_libparams)($28)
	lbu	$6,%gp_rel(cursorcolor)($28)
	lbu	$4,4($2)
	jal	setcursor
	andi	$5,$16,0x00ff

	j	.L548
	move	$2,$16

.L460:
	jal	set_sound
	move	$4,$16

	j	.L548
	move	$2,$16

.L531:
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	musicRemaining
	addiu	$sp,$sp,40

.L462:
	jal	set_music
	move	$4,$16

	j	.L548
	move	$2,$16

.L463:
	sh	$16,%gp_rel(drawcount)($28)
	j	.L548
	move	$2,$16

.L532:
	lhu	$16,%gp_rel(drawcount)($28)
	j	.L524
	andi	$16,$16,0xffff

.L500:
	move	$4,$17
	move	$5,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_system
	addiu	$sp,$sp,40

.L474:
	j	.L528
	move	$4,$0

.L475:
	li	$4,1			# 0x1
.L528:
	move	$5,$16
.L529:
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_read
	addiu	$sp,$sp,40

.L540:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_label
	addiu	$sp,$sp,40

.L541:
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_input
	addiu	$sp,$sp,40

.L505:
	jal	lib_usegraphic
	move	$4,$16

	j	.L548
	move	$2,$16

.L494:
	jal	lib_usepcg
	move	$4,$16

	j	.L548
	move	$2,$16

.L542:
	lw	$4,4($2)
	jal	lib_pcg
	lw	$5,8($2)

	j	.L548
	move	$2,$16

.L533:
	lbu	$5,4($2)
	jal	set_bgcolor
	lbu	$6,8($2)

	j	.L548
	move	$2,$16

.L465:
	lw	$2,%gp_rel(g_libparams)($28)
	andi	$5,$16,0x00ff
	lbu	$4,4($2)
	lbu	$6,8($2)
	jal	set_palette
	lbu	$7,12($2)

	j	.L548
	move	$2,$16

.L466:
	lw	$2,%gp_rel(g_graphic_area)($28)
	beq	$2,$0,.L524
	lw	$2,%gp_rel(g_libparams)($28)

	andi	$5,$16,0x00ff
	lbu	$4,4($2)
	lbu	$6,8($2)
	jal	g_set_palette
	lbu	$7,12($2)

	j	.L548
	move	$2,$16

.L469:
	jal	clearscreen
	nop

	j	.L548
	move	$2,$16

.L534:
	beql	$2,$0,.L550
	sw	$0,%gp_rel(g_prev_y)($28)

	jal	g_clearscreen
	nop

	sw	$0,%gp_rel(g_prev_y)($28)
.L550:
	j	.L524
	sw	$0,%gp_rel(g_prev_x)($28)

.L507:
	jal	lib_width
	move	$4,$16

	j	.L548
	move	$2,$16

.L471:
	jal	setcursorcolor
	andi	$4,$16,0x00ff

	j	.L548
	move	$2,$16

.L472:
	j	.L524
	sw	$16,%gp_rel(g_gcolor)($28)

.L497:
	jal	lib_wait
	move	$4,$16

	j	.L548
	move	$2,$16

.L478:
	jal	lib_clear
	nop

	j	.L548
	move	$2,$16

.L490:
	move	$4,$17
	move	$6,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	lib_dim
	addiu	$sp,$sp,40

.L537:
	jal	err_div_zero
	nop

	j	.L548
	move	$2,$16

.L459:
	jal	err_unknown
	nop

.L524:
	move	$2,$16
.L548:
	lw	$31,36($sp)
.L547:
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_call_library
	.size	_call_library, .-_call_library
	.section	.sbss,bss
	.align	2
	.type	g_prev_y, @object
	.size	g_prev_y, 4
g_prev_y:
	.space	4
	.align	2
	.type	g_prev_x, @object
	.size	g_prev_x, 4
g_prev_x:
	.space	4
	.section	.sdata,data
	.align	2
	.type	g_gcolor, @object
	.size	g_gcolor, 4
g_gcolor:
	.word	7
	.section	.sbss,bss
	.align	2
	.type	numinline.9191, @object
	.size	numinline.9191, 4
numinline.9191:
	.space	4
	.type	activefhandle.9190, @object
	.size	activefhandle.9190, 1
activefhandle.9190:
	.space	1
	.align	2
	.type	s_fhandle.9189, @object
	.size	s_fhandle.9189, 8
s_fhandle.9189:
	.space	8
	.align	2
	.type	heap.9153, @object
	.size	heap.9153, 4
heap.9153:
	.space	4
	.type	skip.8763, @object
	.size	skip.8763, 1
skip.8763:
	.space	1
	.align	2
	.type	in_data.8762, @object
	.size	in_data.8762, 4
in_data.8762:
	.space	4
	.align	2
	.type	pos.8761, @object
	.size	pos.8761, 4
pos.8761:
	.space	4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
