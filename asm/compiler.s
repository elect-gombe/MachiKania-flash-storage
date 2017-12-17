	.file	1 "compiler.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	start_program
	.set	nomips16
	.set	nomicromips
	.ent	start_program
	.type	start_program, @function
start_program:
	.frame	$sp,40,$31		# vars= 0, regs= 10/0, args= 0, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$23,28($sp)
	sw	$22,24($sp)
	sw	$21,20($sp)
	sw	$20,16($sp)
	sw	$19,12($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	sw	$16,0($sp)
 #APP
 # 15 "compiler.c" 1
	#
 # 0 "" 2
 # 16 "compiler.c" 1
	#
 # 0 "" 2
 # 17 "compiler.c" 1
	#
 # 0 "" 2
 # 18 "compiler.c" 1
	#
 # 0 "" 2
 # 19 "compiler.c" 1
	#
 # 0 "" 2
 # 20 "compiler.c" 1
	#
 # 0 "" 2
 # 21 "compiler.c" 1
	#
 # 0 "" 2
 # 22 "compiler.c" 1
	#
 # 0 "" 2
 # 23 "compiler.c" 1
	#
 # 0 "" 2
 # 24 "compiler.c" 1
	#
 # 0 "" 2
 # 26 "compiler.c" 1
	la $v0,stored_sp.1576
 # 0 "" 2
 # 27 "compiler.c" 1
	sw $sp,0($v0)
 # 0 "" 2
 # 29 "compiler.c" 1
	addiu $sp,$sp,-8
 # 0 "" 2
 # 31 "compiler.c" 1
	la $v0,err_unexp_next
 # 0 "" 2
 # 32 "compiler.c" 1
	sw $v0,4($sp)
 # 0 "" 2
 # 34 "compiler.c" 1
	la $v0,g_end_addr
 # 0 "" 2
 # 35 "compiler.c" 1
	la $v1,label
 # 0 "" 2
 # 36 "compiler.c" 1
	sw $v1,0($v0)
 # 0 "" 2
 # 38 "compiler.c" 1
	la $s7,call_library
 # 0 "" 2
 # 40 "compiler.c" 1
	addu $30,$zero,$a1
 # 0 "" 2
 # 41 "compiler.c" 1
	jr $a0
 # 0 "" 2
 # 43 "compiler.c" 1
	label:
 # 0 "" 2
 # 44 "compiler.c" 1
	la $v0,stored_sp.1576
 # 0 "" 2
 # 45 "compiler.c" 1
	lw $sp,0($v0)
 # 0 "" 2
 #NO_APP
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$23,28($sp)
	lw	$22,24($sp)
	lw	$21,20($sp)
	lw	$20,16($sp)
	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	start_program
	.size	start_program, .-start_program
	.align	2
	.globl	get_gp
	.set	nomips16
	.set	nomicromips
	.ent	get_gp
	.type	get_gp, @function
get_gp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
# End mchp_output_function_prologue
 #APP
 # 52 "compiler.c" 1
	addu $v0,$gp,$zero
 # 0 "" 2
 #NO_APP
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_gp
	.size	get_gp, .-get_gp
	.align	2
	.globl	get_fp
	.set	nomips16
	.set	nomicromips
	.ent	get_fp
	.type	get_fp, @function
get_fp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
# End mchp_output_function_prologue
 #APP
 # 56 "compiler.c" 1
	addu $v0,$30,$zero
 # 0 "" 2
 #NO_APP
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_fp
	.size	get_fp, .-get_fp
	.align	2
	.globl	shift_obj
	.set	nomips16
	.set	nomicromips
	.ent	shift_obj
	.type	shift_obj, @function
shift_obj:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sltu	$2,$5,$4
	beq	$2,$0,.L5
	sltu	$2,$4,$5

	blez	$6,.L12
	move	$2,$0

.L7:
	lw	$3,0($4)
	sw	$3,0($5)
	addiu	$2,$2,1
	addiu	$4,$4,4
	bne	$2,$6,.L7
	addiu	$5,$5,4

.L12:
	j	$31
	nop

.L5:
	beq	$2,$0,.L12
	addiu	$2,$6,-1

	bltz	$2,.L12
	sll	$6,$6,2

	addu	$4,$4,$6
	addu	$5,$5,$6
	li	$6,-1			# 0xffffffffffffffff
.L8:
	lw	$3,-4($4)
	sw	$3,-4($5)
	addiu	$2,$2,-1
	addiu	$4,$4,-4
	bne	$2,$6,.L8
	addiu	$5,$5,-4

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	shift_obj
	.size	shift_obj, .-shift_obj
	.align	2
	.globl	strncmp
	.set	nomips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	blez	$6,.L23
	move	$2,$0

	lb	$7,0($4)
	lb	$3,0($5)
	slt	$8,$3,$7
	bne	$8,$0,.L23
	li	$2,1			# 0x1

	slt	$3,$7,$3
	bne	$3,$0,.L23
	li	$2,-1			# 0xffffffffffffffff

	j	.L16
	move	$2,$0

.L17:
	lb	$7,0($3)
	addu	$3,$5,$2
	lb	$3,0($3)
	slt	$8,$3,$7
	bne	$8,$0,.L21
	slt	$3,$7,$3

	bnel	$3,$0,.L23
	li	$2,-1			# 0xffffffffffffffff

.L16:
	addiu	$2,$2,1
	bne	$2,$6,.L17
	addu	$3,$4,$2

	j	$31
	move	$2,$0

.L21:
	j	$31
	li	$2,1			# 0x1

.L23:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	nextCodeIs
	.set	nomips16
	.set	nomicromips
	.ent	nextCodeIs
	.type	nextCodeIs, @function
nextCodeIs:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	move	$18,$4
	lw	$20,%gp_rel(g_source)($28)
	lw	$17,%gp_rel(g_srcpos)($28)
	addu	$4,$20,$17
	lb	$3,0($4)
	li	$2,32			# 0x20
	bne	$3,$2,.L25
	addiu	$2,$17,1

	addu	$2,$20,$2
	li	$5,32			# 0x20
.L26:
	addiu	$17,$17,1
	sw	$17,%gp_rel(g_srcpos)($28)
	move	$4,$2
	lb	$3,0($2)
	beq	$3,$5,.L26
	addiu	$2,$2,1

.L25:
	lb	$2,0($18)
	beq	$2,$0,.L31
	move	$16,$0

.L28:
	addiu	$16,$16,1
	addu	$2,$18,$16
	lb	$2,0($2)
	bne	$2,$0,.L28
	move	$19,$16

	move	$5,$18
	jal	strncmp
	move	$6,$16

	beq	$2,$0,.L38
	addu	$18,$18,$19

	j	.L36
	move	$16,$0

.L31:
	move	$19,$0
	addu	$18,$18,$19
.L38:
	lbu	$2,-1($18)
	addiu	$2,$2,-65
	andi	$2,$2,0x00ff
	sltu	$2,$2,26
	beql	$2,$0,.L39
	addu	$17,$16,$17

	addu	$20,$20,$17
	addu	$20,$20,$16
	lb	$2,0($20)
	slt	$3,$2,33
	bnel	$3,$0,.L39
	addu	$17,$16,$17

	li	$3,58			# 0x3a
	bnel	$2,$3,.L33
	move	$16,$0

	addu	$17,$16,$17
.L39:
	j	.L29
	sw	$17,%gp_rel(g_srcpos)($28)

.L36:
	j	.L37
	move	$2,$16

.L33:
.L29:
	move	$2,$16
.L37:
	lw	$31,36($sp)
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
	.end	nextCodeIs
	.size	nextCodeIs, .-nextCodeIs
	.align	2
	.globl	endOfStatement
	.set	nomips16
	.set	nomicromips
	.ent	endOfStatement
	.type	endOfStatement, @function
endOfStatement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$4,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	li	$5,32			# 0x20
	bne	$3,$5,.L47
	andi	$3,$3,0x00ff

	addiu	$2,$2,1
.L48:
	sw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	beq	$3,$5,.L48
	addiu	$2,$2,1

	andi	$3,$3,0x00ff
.L47:
	sltu	$4,$3,32
	bne	$4,$0,.L49
	li	$2,1			# 0x1

	xori	$3,$3,0x3a
	sltu	$2,$3,1
.L49:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	endOfStatement
	.size	endOfStatement, .-endOfStatement
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Line \000"
	.section	.text,code
	.align	2
	.globl	compile_line
	.set	nomips16
	.set	nomicromips
	.ent	compile_line
	.type	compile_line, @function
compile_line:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	lw	$2,%gp_rel(g_line)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_line)($28)
	lw	$2,%gp_rel(g_fileline)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_fileline)($28)
	lw	$4,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	li	$6,32			# 0x20
	bne	$3,$6,.L51
	move	$5,$2

.L73:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	beq	$3,$6,.L73
	move	$5,$2

.L51:
	slt	$6,$3,32
	beql	$6,$0,.L53
	addiu	$2,$3,-48

	li	$6,13			# 0xd
	bnel	$3,$6,.L81
	lw	$2,%gp_rel(g_srcpos)($28)

	addu	$4,$4,$5
	lb	$4,1($4)
	li	$3,10			# 0xa
	bnel	$4,$3,.L81
	lw	$2,%gp_rel(g_srcpos)($28)

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
.L81:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	j	.L55
	move	$2,$0

.L53:
	andi	$2,$2,0x00ff
	sltu	$2,$2,10
	beq	$2,$0,.L82
	lw	$4,%gp_rel(g_line)($28)

	jal	get_label
	nop

	bne	$2,$0,.L83
	lw	$31,36($sp)

	lw	$2,%gp_rel(g_label)($28)
	sw	$2,%gp_rel(g_line)($28)
	lw	$4,%gp_rel(g_line)($28)
.L82:
	li	$2,-65536			# 0xffffffffffff0000
	and	$2,$4,$2
	bne	$2,$0,.L84
	li	$17,13			# 0xd

	jal	search_label
	nop

	beq	$2,$0,.L58
	lui	$4,%hi(.LC0)

	jal	printstr
	addiu	$4,$4,%lo(.LC0)

	jal	resolve_label
	lw	$4,%gp_rel(g_line)($28)

	jal	printstr
	move	$4,$2

	lui	$2,%hi(g_err_str+44)
	j	.L55
	lw	$2,%lo(g_err_str+44)($2)

.L58:
	lw	$3,%gp_rel(g_object)($28)
	lw	$2,%gp_rel(g_objpos)($28)
	addiu	$4,$2,1
	sll	$4,$4,2
	addu	$4,$3,$4
	lw	$5,%gp_rel(g_objmax)($28)
	sltu	$4,$5,$4
	beq	$4,$0,.L59
	sll	$4,$2,2

	lui	$2,%hi(g_err_str+4)
	j	.L55
	lw	$2,%lo(g_err_str+4)($2)

.L59:
	addu	$3,$3,$4
	lw	$5,%gp_rel(g_line)($28)
	li	$4,873857024			# 0x34160000
	or	$4,$5,$4
	sw	$4,0($3)
	addiu	$2,$2,1
	j	.L70
	sw	$2,%gp_rel(g_objpos)($28)

.L67:
	jal	statement
	nop

	bne	$2,$0,.L55
	lw	$4,%gp_rel(g_source)($28)

	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	bne	$3,$16,.L60
	nop

	addiu	$2,$2,1
.L85:
	sw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	beql	$3,$16,.L85
	addiu	$2,$2,1

.L60:
	bnel	$3,$19,.L86
	lw	$4,%gp_rel(g_source)($28)

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	bnel	$3,$16,.L86
	lw	$4,%gp_rel(g_source)($28)

	addiu	$2,$2,1
.L79:
	sw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	bnel	$3,$16,.L86
	lw	$4,%gp_rel(g_source)($28)

	j	.L79
	addiu	$2,$2,1

.L70:
	li	$17,13			# 0xd
.L84:
	li	$18,10			# 0xa
	li	$16,32			# 0x20
	li	$19,58			# 0x3a
	lw	$4,%gp_rel(g_source)($28)
.L86:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$4,$2
	lb	$3,0($3)
	beql	$3,$17,.L66
	addu	$4,$4,$2

	bne	$3,$18,.L67
	addiu	$2,$2,1

	j	.L88
	sw	$2,%gp_rel(g_srcpos)($28)

.L66:
	lb	$4,1($4)
	li	$3,10			# 0xa
	bnel	$4,$3,.L87
	lw	$2,%gp_rel(g_srcpos)($28)

	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
.L87:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
.L88:
	move	$2,$0
.L55:
	lw	$31,36($sp)
.L83:
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
	.end	compile_line
	.size	compile_line, .-compile_line
	.section	.sbss,bss
	.align	2
	.type	stored_sp.1576, @object
	.size	stored_sp.1576, 4
stored_sp.1576:
	.space	4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
