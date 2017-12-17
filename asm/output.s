	.file	1 "cmpdata.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	cmpdata_init
	.set	nomips16
	.set	nomicromips
	.ent	cmpdata_init
	.type	cmpdata_init, @function
cmpdata_init:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_objmax)($28)
	sw	$2,%gp_rel(g_cmpdata_end)($28)
	j	$31
	sw	$2,%gp_rel(g_cmpdata_point)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cmpdata_init
	.size	cmpdata_init, .-cmpdata_init
	.align	2
	.globl	cmpdata_insert
	.set	nomips16
	.set	nomicromips
	.ent	cmpdata_insert
	.type	cmpdata_insert, @function
cmpdata_insert:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$7,$7,0x00ff
	lw	$3,%gp_rel(g_objmax)($28)
	nor	$2,$0,$7
	sll	$2,$2,2
	addu	$2,$3,$2
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$8,%gp_rel(g_object)($28)
	sll	$3,$3,2
	addu	$3,$8,$3
	sltu	$3,$2,$3
	seh	$5,$5
	beq	$3,$0,.L3
	sw	$2,%gp_rel(g_objmax)($28)

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L3:
	sll	$4,$4,24
	addiu	$3,$7,1
	sll	$3,$3,16
	or	$5,$5,$4
	or	$5,$5,$3
	sw	$5,0($2)
	j	.L5
	move	$3,$0

.L6:
	lw	$4,0($6)
	addiu	$3,$3,1
	sw	$4,0($2)
	andi	$3,$3,0x00ff
	addiu	$6,$6,4
.L5:
	bne	$3,$7,.L6
	addiu	$2,$2,4

	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cmpdata_insert
	.size	cmpdata_insert, .-cmpdata_insert
	.align	2
	.globl	cmpdata_reset
	.set	nomips16
	.set	nomicromips
	.ent	cmpdata_reset
	.type	cmpdata_reset, @function
cmpdata_reset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_objmax)($28)
	j	$31
	sw	$2,%gp_rel(g_cmpdata_point)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cmpdata_reset
	.size	cmpdata_reset, .-cmpdata_reset
	.align	2
	.globl	cmpdata_find
	.set	nomips16
	.set	nomicromips
	.ent	cmpdata_find
	.type	cmpdata_find, @function
cmpdata_find:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lw	$6,%gp_rel(g_cmpdata_end)($28)
	j	.L9
	lw	$2,%gp_rel(g_cmpdata_point)($28)

.L11:
	ext	$3,$5,16,8
	sll	$3,$3,2
	sra	$5,$5,24
	bne	$5,$4,.L12
	addu	$3,$2,$3

	j	$31
	sw	$3,%gp_rel(g_cmpdata_point)($28)

.L12:
	move	$2,$3
.L9:
	sltu	$3,$2,$6
	bnel	$3,$0,.L11
	lw	$5,0($2)

	sw	$2,%gp_rel(g_cmpdata_point)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cmpdata_find
	.size	cmpdata_find, .-cmpdata_find
	.align	2
	.globl	cmpdata_findfirst
	.set	nomips16
	.set	nomicromips
	.ent	cmpdata_findfirst
	.type	cmpdata_findfirst, @function
cmpdata_findfirst:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	andi	$4,$4,0x00ff
	sw	$31,28($sp)
	jal	cmpdata_reset
	sw	$4,16($sp)

	lw	$4,16($sp)
	lw	$31,28($sp)
	j	cmpdata_find
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cmpdata_findfirst
	.size	cmpdata_findfirst, .-cmpdata_findfirst
	.section	.sbss,bss
	.align	2
	.type	g_cmpdata_point, @object
	.size	g_cmpdata_point, 4
g_cmpdata_point:
	.space	4
	.align	2
	.type	g_cmpdata_end, @object
	.size	g_cmpdata_end, 4
g_cmpdata_end:
	.space	4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
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
	.file	1 "debug.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
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
	.file	1 "error.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\000"
	.section	.text,code
	.align	2
	.globl	resolve_label
	.set	nomips16
	.set	nomicromips
	.ent	resolve_label
	.type	resolve_label, @function
resolve_label:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,65536			# 0x10000
	slt	$3,$4,$2
	beq	$3,$0,.L2
	li	$9,-477233152			# 0xffffffffe38e0000

	li	$6,-859045888			# 0xffffffffcccc0000
	addiu	$2,$28,%gp_rel(str.1576+5)
	addiu	$7,$28,%gp_rel(str.1576)
	ori	$6,$6,0xcccd
	li	$5,10			# 0xa
.L3:
	multu	$4,$6
	addiu	$4,$4,48
	mfhi	$9
	srl	$3,$9,3
	mul	$8,$3,$5
	subu	$4,$4,$8
	sb	$4,0($2)
	addiu	$2,$2,-1
	bne	$2,$7,.L3
	move	$4,$3

	sb	$0,%gp_rel(str.1576+6)($28)
	li	$2,1			# 0x1
	addiu	$5,$28,%gp_rel(str.1576)
	li	$4,48			# 0x30
	li	$3,5			# 0x5
	addu	$6,$5,$2
.L13:
	lb	$6,0($6)
	bnel	$6,$4,.L12
	addiu	$3,$28,%gp_rel(str.1576)

	addiu	$2,$2,1
	bne	$2,$3,.L13
	addu	$6,$5,$2

	addiu	$3,$28,%gp_rel(str.1576)
.L12:
	j	$31
	addu	$2,$3,$2

.L2:
	lui	$6,%hi(.LC0)
	subu	$4,$4,$2
	sb	$0,%gp_rel(str.1576+6)($28)
	li	$2,5			# 0x5
	addiu	$9,$9,14564
	addiu	$8,$28,%gp_rel(str.1576)
	li	$7,36			# 0x24
	addiu	$6,$6,%lo(.LC0)
	li	$5,-1			# 0xffffffffffffffff
.L9:
	slt	$3,$4,36
	beq	$3,$0,.L7
	multu	$4,$9

	addiu	$3,$28,%gp_rel(str.1576)
	addu	$3,$3,$2
	addiu	$4,$4,64
	j	.L8
	sb	$4,0($3)

.L7:
	addu	$10,$8,$2
	mfhi	$11
	addiu	$2,$2,-1
	srl	$3,$11,5
	mul	$11,$7,$3
	subu	$4,$4,$11
	addu	$4,$6,$4
	lbu	$4,0($4)
	beq	$2,$5,.L8
	sb	$4,0($10)

	j	.L9
	move	$4,$3

.L8:
	addiu	$3,$28,%gp_rel(str.1576)
	j	$31
	addu	$2,$3,$2

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	resolve_label
	.size	resolve_label, .-resolve_label
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"\012In line \000"
	.align	2
.LC2:
	.ascii	"\012After label \000"
	.section	.text,code
	.align	2
	.globl	pre_end_addr
	.set	nomips16
	.set	nomicromips
	.ent	pre_end_addr
	.type	pre_end_addr, @function
pre_end_addr:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	ext	$2,$4,0,31
	sw	$16,16($sp)
	slt	$3,$4,0
	move	$16,$4
	movn	$16,$2,$3
	li	$2,65536			# 0x10000
	slt	$2,$16,$2
	sw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L16
	sw	$16,%gp_rel(g_label)($28)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC1)
	.set	noreorder
	.set	nomacro
	j	.L18
	addiu	$4,$4,%lo(.LC1)
	.set	macro
	.set	reorder

.L16:
	lui	$4,%hi(.LC2)
	addiu	$4,$4,%lo(.LC2)
.L18:
	jal	printstr
	.set	noreorder
	.set	nomacro
	jal	resolve_label
	move	$4,$16
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$2
	.set	macro
	.set	reorder

 #APP
 # 81 "error.c" 1
	la $v0,g_end_addr
 # 0 "" 2
 # 82 "error.c" 1
	lw $v0,0($v0)
 # 0 "" 2
 # 83 "error.c" 1
	nop
 # 0 "" 2
 # 84 "error.c" 1
	jr $v0
 # 0 "" 2
 #NO_APP
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
	.end	pre_end_addr
	.size	pre_end_addr, .-pre_end_addr
	.align	2
	.globl	err_break
	.set	nomips16
	.set	nomicromips
	.ent	err_break
	.type	err_break, @function
err_break:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+48)
	lw	$4,%lo(g_err_str+48)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 93 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 93 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_break
	.size	err_break, .-err_break
	.align	2
	.globl	err_data_not_found
	.set	nomips16
	.set	nomicromips
	.ent	err_data_not_found
	.type	err_data_not_found, @function
err_data_not_found:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+32)
	lw	$4,%lo(g_err_str+32)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 98 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 98 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_data_not_found
	.size	err_data_not_found, .-err_data_not_found
	.section	.rodata,code
	.align	2
.LC3:
	.ascii	"\012\000"
	.section	.text,code
	.align	2
	.globl	err_label_not_found
	.set	nomips16
	.set	nomicromips
	.ent	err_label_not_found
	.type	err_label_not_found, @function
err_label_not_found:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+20)
	lw	$4,%lo(g_err_str+20)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
	.set	noreorder
	.set	nomacro
	jal	resolve_label
	lw	$4,%gp_rel(g_label)($28)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$2
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC3)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC3)
	.set	macro
	.set	reorder

 #APP
 # 105 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 105 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_label_not_found
	.size	err_label_not_found, .-err_label_not_found
	.align	2
	.globl	err_div_zero
	.set	nomips16
	.set	nomicromips
	.ent	err_div_zero
	.type	err_div_zero, @function
err_div_zero:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+12)
	lw	$4,%lo(g_err_str+12)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 110 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 110 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_div_zero
	.size	err_div_zero, .-err_div_zero
	.align	2
	.globl	err_no_mem
	.set	nomips16
	.set	nomicromips
	.ent	err_no_mem
	.type	err_no_mem, @function
err_no_mem:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+8)
	lw	$4,%lo(g_err_str+8)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 115 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 115 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_no_mem
	.size	err_no_mem, .-err_no_mem
	.align	2
	.globl	err_str_complex
	.set	nomips16
	.set	nomicromips
	.ent	err_str_complex
	.type	err_str_complex, @function
err_str_complex:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+28)
	lw	$4,%lo(g_err_str+28)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 120 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 120 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_str_complex
	.size	err_str_complex, .-err_str_complex
	.align	2
	.globl	err_unknown
	.set	nomips16
	.set	nomicromips
	.ent	err_unknown
	.type	err_unknown, @function
err_unknown:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
 #APP
 # 124 "error.c" 1
	la $v0,g_temp
 # 0 "" 2
 # 125 "error.c" 1
	sw $ra,0($v0)
 # 0 "" 2
 #NO_APP
	lui	$2,%hi(g_err_str+36)
	.set	noreorder
	.set	nomacro
	jal	printstr
	lw	$4,%lo(g_err_str+36)($2)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printhex32
	lw	$4,%gp_rel(g_temp)($28)
	.set	macro
	.set	reorder

 #APP
 # 128 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 128 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_unknown
	.size	err_unknown, .-err_unknown
	.section	.rodata,code
	.align	2
.LC4:
	.ascii	"'\012\000"
	.section	.text,code
	.align	2
	.globl	err_music
	.set	nomips16
	.set	nomicromips
	.ent	err_music
	.type	err_music, @function
err_music:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	lui	$2,%hi(g_err_str+40)
	sw	$16,16($sp)
	move	$16,$4
	lw	$4,%lo(g_err_str+40)($2)
	sw	$31,20($sp)
	jal	printstr
	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$16
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC4)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC4)
	.set	macro
	.set	reorder

 #APP
 # 136 "error.c" 1
	la $s6,g_s6
 # 0 "" 2
 # 137 "error.c" 1
	lw $s6,0($s6)
 # 0 "" 2
 # 138 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 138 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
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
	.end	err_music
	.size	err_music, .-err_music
	.align	2
	.globl	err_unexp_next
	.set	nomips16
	.set	nomicromips
	.ent	err_unexp_next
	.type	err_unexp_next, @function
err_unexp_next:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+52)
	lw	$4,%lo(g_err_str+52)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 143 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 143 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_unexp_next
	.size	err_unexp_next, .-err_unexp_next
	.align	2
	.globl	err_no_block
	.set	nomips16
	.set	nomicromips
	.ent	err_no_block
	.type	err_no_block, @function
err_no_block:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+56)
	lw	$4,%lo(g_err_str+56)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 148 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 148 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_no_block
	.size	err_no_block, .-err_no_block
	.align	2
	.globl	err_invalid_param
	.set	nomips16
	.set	nomicromips
	.ent	err_invalid_param
	.type	err_invalid_param, @function
err_invalid_param:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+72)
	lw	$4,%lo(g_err_str+72)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 153 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 153 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_invalid_param
	.size	err_invalid_param, .-err_invalid_param
	.align	2
	.globl	err_file
	.set	nomips16
	.set	nomicromips
	.ent	err_file
	.type	err_file, @function
err_file:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$2,%hi(g_err_str+76)
	lw	$4,%lo(g_err_str+76)($2)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	printstr
 #APP
 # 158 "error.c" 1
	addu $a0,$s6,$zero
 # 0 "" 2
 # 158 "error.c" 1
	j pre_end_addr
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	err_file
	.size	err_file, .-err_file
	.globl	g_err_str
	.section	.rodata,code
	.align	2
.LC5:
	.ascii	"Syntax error\000"
	.align	2
.LC6:
	.ascii	"Not enough binary space\000"
	.align	2
.LC7:
	.ascii	"Not enough memory\000"
	.align	2
.LC8:
	.ascii	"Divided by zero\000"
	.align	2
.LC9:
	.ascii	"Not yet implemented\000"
	.align	2
.LC10:
	.ascii	"Label or line number not found: \000"
	.align	2
.LC11:
	.ascii	"Label too long or too short\000"
	.align	2
.LC12:
	.ascii	"String too complexed\000"
	.align	2
.LC13:
	.ascii	"Data not found\000"
	.align	2
.LC14:
	.ascii	"Unknown error:\000"
	.align	2
.LC15:
	.ascii	"Music syntax error:'\000"
	.align	2
.LC16:
	.ascii	" found more than twice\000"
	.align	2
.LC17:
	.ascii	"Break\000"
	.align	2
.LC18:
	.ascii	"Unexpected NEXT or RETURN statement\000"
	.align	2
.LC19:
	.ascii	"Cannot assign temporary block\000"
	.align	2
.LC20:
	.ascii	"GOSUB fuction cannot be used after string-handling\000"
	.align	2
.LC21:
	.ascii	"Invalid BREAK statement in line \000"
	.align	2
.LC22:
	.ascii	"Invalid ELSE/IF statement in line \000"
	.align	2
.LC23:
	.ascii	"Invalid parameter(s)\000"
	.align	2
.LC24:
	.ascii	"File error\000"
	.align	2
.LC25:
	.ascii	"Invalid variable name\000"
	.section	.data, data
	.align	2
	.type	g_err_str, @object
	.size	g_err_str, 84
g_err_str:
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.section	.sbss,bss
	.align	2
	.type	str.1576, @object
	.size	str.1576, 7
str.1576:
	.space	7
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
	.file	1 "exception.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	dumpMemory
	.set	nomips16
	.set	nomicromips
	.ent	dumpMemory
	.type	dumpMemory, @function
dumpMemory:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	dumpMemory
	.size	dumpMemory, .-dumpMemory
	.align	2
	.globl	_general_exception_handler
	.set	nomips16
	.set	nomicromips
	.ent	_general_exception_handler
	.type	_general_exception_handler, @function
_general_exception_handler:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
 #APP
 # 46 "exception.c" 1
	la $v1,g_ex_data
 # 0 "" 2
 # 48 "exception.c" 1
	addiu $sp,$v1,0xfff0
 # 0 "" 2
 # 50 "exception.c" 1
	sw $s6,8($v1)
 # 0 "" 2
 # 52 "exception.c" 1
	mfc0 $v0,$13
 # 0 "" 2
 # 53 "exception.c" 1
	sw $v0,12($v1)
 # 0 "" 2
 # 55 "exception.c" 1
	mfc0 $v0,$14
 # 0 "" 2
 # 56 "exception.c" 1
	sw $v0,16($v1)
 # 0 "" 2
 #NO_APP
	lui	$3,%hi(g_ex_data)
	li	$2,1			# 0x1
	sw	$2,%lo(g_ex_data)($3)
	lw	$2,%gp_rel(g_s6)($28)
	addiu	$3,$3,%lo(g_ex_data)
	sw	$2,4($3)
	lw	$2,16($3)
	li	$4,-4			# 0xfffffffffffffffc
	and	$2,$4,$2
	lui	$4,%hi(RAM)
	addiu	$4,$4,%lo(RAM)
	sltu	$4,$2,$4
	.set	noreorder
	.set	nomacro
	bne	$4,$0,.L3
	sw	$2,16($3)
	.set	macro
	.set	reorder

	lui	$4,%hi(RAM+55232)
	addiu	$4,$4,%lo(RAM+55232)
	sltu	$2,$2,$4
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L3
	li	$2,-12			# 0xfffffffffffffff4
	.set	macro
	.set	reorder

	li	$4,16			# 0x10
.L4:
	lw	$6,16($3)
	addu	$5,$3,$2
	addu	$6,$2,$6
	lw	$6,0($6)
	addiu	$2,$2,4
	.set	noreorder
	.set	nomacro
	bne	$2,$4,.L4
	sw	$6,32($5)
	.set	macro
	.set	reorder

.L3:
	jal	buttonmode
	li	$3,65536			# 0x10000
	move	$2,$0
	lui	$4,%hi(PORTB)
	ori	$3,$3,0x86a0
.L6:
	lw	$5,%lo(PORTB)($4)
	andi	$5,$5,0x4f80
	xori	$5,$5,0x4f80
	movn	$2,$0,$5
	addiu	$2,$2,1
	slt	$5,$2,$3
	bne	$5,$0,.L6
 #APP
 # 79 "exception.c" 1
	j SoftReset
 # 0 "" 2
 #NO_APP
	lw	$31,20($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_general_exception_handler
	.size	_general_exception_handler, .-_general_exception_handler
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"STOP\000"
	.align	2
.LC1:
	.ascii	"\012Exception at \000"
	.align	2
.LC2:
	.ascii	"\012      Cause: \000"
	.align	2
.LC3:
	.ascii	"\012 \000"
	.align	2
.LC4:
	.ascii	"(Interrupt)\000"
	.align	2
.LC5:
	.ascii	"(TLB modification)\000"
	.align	2
.LC6:
	.ascii	"(TLB load/fetch)\000"
	.align	2
.LC7:
	.ascii	"(TLB store)\000"
	.align	2
.LC8:
	.ascii	"(Address load/fetch error )\000"
	.align	2
.LC9:
	.ascii	"(Address store error)\000"
	.align	2
.LC10:
	.ascii	"(Bus fetch error)\000"
	.align	2
.LC11:
	.ascii	"(Bus load/store error)\000"
	.align	2
.LC12:
	.ascii	"(Syscall)\000"
	.align	2
.LC13:
	.ascii	"(Breakpoint)\000"
	.align	2
.LC14:
	.ascii	"(Reserved instruction)\000"
	.align	2
.LC15:
	.ascii	"(Coprocessor Unusable)\000"
	.align	2
.LC16:
	.ascii	"(Integer Overflow)\000"
	.align	2
.LC17:
	.ascii	"(Trap)\000"
	.align	2
.LC18:
	.ascii	"(Reference to Watch address)\000"
	.align	2
.LC19:
	.ascii	"(Machine check)\000"
	.align	2
.LC20:
	.ascii	"(Unknown)\000"
	.align	2
.LC21:
	.ascii	"\012         s6: \000"
	.align	2
.LC22:
	.ascii	"\012       g_s6: \000"
	.align	2
.LC23:
	.ascii	"\012\000"
	.align	2
.LC24:
	.ascii	"Reset MachiKania to contine.\012\012\000"
	.align	2
.LC25:
	.ascii	"  \000"
	.align	2
.LC26:
	.ascii	"********\000"
	.section	.text,code
	.align	2
	.globl	blue_screen
	.set	nomips16
	.set	nomicromips
	.ent	blue_screen
	.type	blue_screen, @function
blue_screen:
	.frame	$sp,56,$31		# vars= 0, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$3,%hi(RCON)
	lw	$4,%lo(RCON)($3)
	addiu	$sp,$sp,-56
	andi	$4,$4,0x1
	sw	$31,52($sp)
	sw	$fp,48($sp)
	sw	$23,44($sp)
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	.set	noreorder
	.set	nomacro
	bne	$4,$0,.L11
	move	$2,$3
	.set	macro
	.set	reorder

	lw	$3,%lo(RCON)($3)
	andi	$3,$3,0x80
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L12
	lui	$18,%hi(g_ex_data)
	.set	macro
	.set	reorder

.L11:
	lw	$3,%lo(RCON)($2)
	lui	$4,%hi(RAM)
	ins	$3,$0,0,1
	sw	$3,%lo(RCON)($2)
	lw	$3,%lo(RCON)($2)
	addiu	$4,$4,%lo(RAM)
	ins	$3,$0,7,1
	sw	$3,%lo(RCON)($2)
	move	$2,$0
	li	$3,55232			# 0xd7c0
.L13:
	addu	$5,$4,$2
	addiu	$2,$2,1
	.set	noreorder
	.set	nomacro
	bne	$2,$3,.L13
	sb	$0,0($5)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	.L45
	lw	$31,52($sp)
	.set	macro
	.set	reorder

.L12:
	lw	$2,%lo(g_ex_data)($18)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L10
	lw	$31,52($sp)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC0)
	addiu	$21,$18,%lo(g_ex_data)
	addiu	$4,$4,%lo(.LC0)
	lw	$20,8($21)
	lw	$17,4($21)
	.set	noreorder
	.set	nomacro
	jal	printstr
	lw	$16,16($21)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC1)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC1)
	.set	macro
	.set	reorder

	lw	$4,16($21)
	.set	noreorder
	.set	nomacro
	jal	printhex32
	lui	$19,%hi(.LC3)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC2)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC2)
	.set	macro
	.set	reorder

	lw	$4,12($21)
	.set	noreorder
	.set	nomacro
	jal	printhex32
	addiu	$19,$19,%lo(.LC3)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$19
	.set	macro
	.set	reorder

	lw	$2,12($21)
	ext	$20,$20,0,31
	ext	$2,$2,2,5
	sltu	$3,$2,25
	.set	noreorder
	.set	nomacro
	beq	$3,$0,.L15
	ext	$17,$17,0,31
	.set	macro
	.set	reorder

	lui	$3,%hi(.L32)
	sll	$2,$2,2
	addiu	$3,$3,%lo(.L32)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	.align	2
	.align	2
.L32:
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L24
	.word	.L25
	.word	.L26
	.word	.L27
	.word	.L28
	.word	.L29
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L30
	.word	.L31
.L16:
	lui	$4,%hi(.LC4)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC4)
	.set	macro
	.set	reorder

.L17:
	lui	$4,%hi(.LC5)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC5)
	.set	macro
	.set	reorder

.L18:
	lui	$4,%hi(.LC6)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC6)
	.set	macro
	.set	reorder

.L19:
	lui	$4,%hi(.LC7)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC7)
	.set	macro
	.set	reorder

.L20:
	lui	$4,%hi(.LC8)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC8)
	.set	macro
	.set	reorder

.L21:
	lui	$4,%hi(.LC9)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC9)
	.set	macro
	.set	reorder

.L22:
	lui	$4,%hi(.LC10)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC10)
	.set	macro
	.set	reorder

.L23:
	lui	$4,%hi(.LC11)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC11)
	.set	macro
	.set	reorder

.L24:
	lui	$4,%hi(.LC12)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC12)
	.set	macro
	.set	reorder

.L25:
	lui	$4,%hi(.LC13)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC13)
	.set	macro
	.set	reorder

.L26:
	lui	$4,%hi(.LC14)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC14)
	.set	macro
	.set	reorder

.L27:
	lui	$4,%hi(.LC15)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC15)
	.set	macro
	.set	reorder

.L28:
	lui	$4,%hi(.LC16)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC16)
	.set	macro
	.set	reorder

.L29:
	lui	$4,%hi(.LC17)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC17)
	.set	macro
	.set	reorder

.L30:
	lui	$4,%hi(.LC18)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC18)
	.set	macro
	.set	reorder

.L31:
	lui	$4,%hi(.LC19)
	.set	noreorder
	.set	nomacro
	j	.L42
	addiu	$4,$4,%lo(.LC19)
	.set	macro
	.set	reorder

.L15:
	lui	$4,%hi(.LC20)
	addiu	$4,$4,%lo(.LC20)
.L42:
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$18,$18,%lo(g_ex_data)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC21)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC21)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	resolve_label
	move	$4,$20
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$2
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC22)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC22)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	resolve_label
	move	$4,$17
	.set	macro
	.set	reorder

	lui	$20,%hi(.LC23)
	move	$4,$2
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$20,$20,%lo(.LC23)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$20
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC24)
	addiu	$4,$4,%lo(.LC24)
	lui	$17,%hi(g_ex_data+20)
	lui	$21,%hi(.LC25)
	lui	$22,%hi(RAM)
	.set	noreorder
	.set	nomacro
	jal	printstr
	lui	$fp,%hi(RAM+55232)
	.set	macro
	.set	reorder

	addiu	$16,$16,-12
	addiu	$17,$17,%lo(g_ex_data+20)
	addiu	$18,$18,48
	addiu	$21,$21,%lo(.LC25)
	addiu	$22,$22,%lo(RAM)
	lui	$23,%hi(.LC26)
	addiu	$fp,$fp,%lo(RAM+55232)
.L38:
	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$19
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printhex32
	move	$4,$16
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$21
	.set	macro
	.set	reorder

	sltu	$2,$16,$22
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L47
	li	$2,1610612736			# 0x60000000
	.set	macro
	.set	reorder

	sltu	$2,$16,$fp
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L34
	li	$2,1610612736			# 0x60000000
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	.L43
	lw	$4,0($17)
	.set	macro
	.set	reorder

.L34:
.L47:
	addu	$2,$16,$2
	li	$3,65536			# 0x10000
	sltu	$2,$2,$3
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L36
	li	$3,1660944384			# 0x63000000
	.set	macro
	.set	reorder

	li	$2,262144			# 0x40000
	addu	$3,$16,$3
	addiu	$2,$2,1
	sltu	$2,$3,$2
	beq	$2,$0,.L37
.L36:
	lw	$4,0($16)
.L43:
	.set	noreorder
	.set	nomacro
	jal	printhex32
	addiu	$17,$17,4
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	.L46
	addiu	$16,$16,4
	.set	macro
	.set	reorder

.L37:
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$23,%lo(.LC26)
	.set	macro
	.set	reorder

	addiu	$17,$17,4
	addiu	$16,$16,4
.L46:
	bne	$17,$18,.L38
	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$20
	.set	macro
	.set	reorder

.L39:
 #APP
 # 159 "exception.c" 1
	wait
 # 0 "" 2
 #NO_APP
	j	.L39
.L10:
.L45:
	lw	$fp,48($sp)
	lw	$23,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,56
	.set	macro
	.set	reorder

# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	blue_screen
	.size	blue_screen, .-blue_screen
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
	.file	1 "file.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"r\000"
	.section	.text,code
	.align	2
	.globl	init_file
	.set	nomips16
	.set	nomicromips
	.ent	init_file
	.type	init_file, @function
init_file:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	move	$16,$4
	move	$4,$5
	lui	$5,%hi(.LC0)
	sw	$31,20($sp)
	jal	FSfopen
	addiu	$5,$5,%lo(.LC0)

	bne	$2,$0,.L2
	sw	$2,%gp_rel(g_fhandle)($28)

	lui	$2,%hi(g_err_str+36)
	j	.L3
	lw	$2,%lo(g_err_str+36)($2)

.L2:
	sw	$16,%gp_rel(g_fbuff)($28)
	sw	$0,%gp_rel(g_line)($28)
	sw	$0,%gp_rel(g_fileline)($28)
	move	$2,$0
.L3:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	init_file
	.size	init_file, .-init_file
	.align	2
	.globl	close_file
	.set	nomips16
	.set	nomicromips
	.ent	close_file
	.type	close_file, @function
close_file:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	FSfclose
	lw	$4,%gp_rel(g_fhandle)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	close_file
	.size	close_file, .-close_file
	.align	2
	.globl	read_file
	.set	nomips16
	.set	nomicromips
	.ent	read_file
	.type	read_file, @function
read_file:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	li	$2,512			# 0x200
	sw	$31,20($sp)
	sw	$16,16($sp)
	bne	$4,$2,.L6
	move	$6,$4

	sb	$0,%gp_rel(in_string.8235)($28)
	j	.L7
	sb	$0,%gp_rel(escape.8236)($28)

.L6:
	lw	$2,%gp_rel(g_size)($28)
	slt	$2,$2,512
	bne	$2,$0,.L5
	lw	$2,%gp_rel(g_fbuff)($28)

	move	$3,$0
	li	$4,256			# 0x100
.L9:
	lbu	$5,256($2)
	addiu	$3,$3,1
	sb	$5,0($2)
	bne	$3,$4,.L9
	addiu	$2,$2,1

	lw	$2,%gp_rel(g_srcpos)($28)
	addiu	$2,$2,-256
	sw	$2,%gp_rel(g_srcpos)($28)
.L7:
	lw	$4,%gp_rel(g_fbuff)($28)
	li	$16,512			# 0x200
	subu	$16,$16,$6
	lw	$7,%gp_rel(g_fhandle)($28)
	addu	$4,$4,$16
	jal	FSfread
	li	$5,1			# 0x1

	lw	$5,%gp_rel(g_fbuff)($28)
	addu	$2,$16,$2
	sw	$2,%gp_rel(g_size)($28)
	lb	$3,%gp_rel(escape.8236)($28)
	lb	$2,%gp_rel(in_string.8235)($28)
	addu	$4,$5,$16
	li	$13,34			# 0x22
	li	$12,9			# 0x9
	li	$11,32			# 0x20
	li	$10,92			# 0x5c
	li	$9,10			# 0xa
	j	.L10
	li	$8,13			# 0xd

.L17:
	beql	$2,$0,.L11
	lb	$6,0($4)

	addu	$6,$5,$16
	lb	$6,0($6)
	bnel	$6,$10,.L23
	xori	$6,$6,0x22

	beql	$3,$0,.L13
	li	$3,1			# 0x1

	xori	$6,$6,0x22
.L23:
	move	$3,$0
	j	.L13
	movz	$2,$0,$6

.L11:
	beq	$6,$13,.L20
	andi	$7,$6,0x00ff

	addiu	$14,$7,-97
	sltu	$14,$14,26
	beq	$14,$0,.L14
	addiu	$7,$7,-32

	j	.L13
	sb	$7,0($4)

.L14:
	beql	$6,$12,.L13
	sb	$11,0($4)

	j	.L22
	addu	$6,$5,$16

.L20:
	li	$2,1			# 0x1
.L13:
	addu	$6,$5,$16
.L22:
	lb	$6,0($6)
	beql	$6,$9,.L24
	move	$3,$0

	bnel	$6,$8,.L25
	addiu	$16,$16,1

	move	$3,$0
.L24:
	move	$2,$0
	addiu	$16,$16,1
.L25:
	addiu	$4,$4,1
.L10:
	slt	$6,$16,512
	bne	$6,$0,.L17
	nop

	sb	$2,%gp_rel(in_string.8235)($28)
	sb	$3,%gp_rel(escape.8236)($28)
.L5:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	read_file
	.size	read_file, .-read_file
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"DATA 0:END\012\000"
	.section	.text,code
	.align	2
	.globl	compile_file
	.set	nomips16
	.set	nomicromips
	.ent	compile_file
	.type	compile_file, @function
compile_file:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	li	$4,512			# 0x200
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	read_file
	li	$16,512			# 0x200

	j	.L36
	lw	$2,%gp_rel(g_size)($28)

.L30:
	jal	compile_line
	nop

	bne	$2,$0,.L37
	lw	$31,20($sp)

	lw	$2,%gp_rel(g_srcpos)($28)
	slt	$2,$2,256
	bne	$2,$0,.L36
	lw	$2,%gp_rel(g_size)($28)

	jal	read_file
	li	$4,256			# 0x100

	lw	$2,%gp_rel(g_size)($28)
.L36:
	beq	$2,$16,.L30
	lw	$3,%gp_rel(g_source)($28)

	addu	$2,$3,$2
	li	$3,13			# 0xd
	j	.L31
	sb	$3,0($2)

.L32:
	jal	compile_line
	nop

	bne	$2,$0,.L37
	lw	$31,20($sp)

.L31:
	lw	$2,%gp_rel(g_size)($28)
	lw	$3,%gp_rel(g_srcpos)($28)
	addiu	$2,$2,-1
	slt	$2,$3,$2
	bne	$2,$0,.L32
	lui	$2,%hi(.LC1)

	addiu	$2,$2,%lo(.LC1)
	sw	$2,%gp_rel(g_source)($28)
	jal	compile_line
	sw	$0,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L37
	lw	$31,20($sp)

	li	$3,-1			# 0xffffffffffffffff
	sw	$3,%gp_rel(g_srcpos)($28)
	lw	$31,20($sp)
.L37:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	compile_file
	.size	compile_file, .-compile_file
	.section	.sbss,bss
	.align	2
	.type	g_size, @object
	.size	g_size, 4
g_size:
	.space	4
	.align	2
	.type	g_fbuff, @object
	.size	g_fbuff, 4
g_fbuff:
	.space	4
	.align	2
	.type	g_fhandle, @object
	.size	g_fhandle, 4
g_fhandle:
	.space	4
	.type	escape.8236, @object
	.size	escape.8236, 1
escape.8236:
	.space	1
	.type	in_string.8235, @object
	.size	in_string.8235, 1
in_string.8235:
	.space	1
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
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
	.file	1 "function.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	music_function
	.set	nomips16
	.set	nomicromips
	.ent	music_function
	.type	music_function, @function
music_function:
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
	beql	$5,$0,.L2
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L2:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,512
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	music_function
	.size	music_function, .-music_function
	.align	2
	.globl	read_function
	.set	nomips16
	.set	nomicromips
	.ent	read_function
	.type	read_function, @function
read_function:
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
	beql	$5,$0,.L5
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L5:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,8192
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	read_function
	.size	read_function, .-read_function
	.align	2
	.globl	cread_function
	.set	nomips16
	.set	nomicromips
	.ent	cread_function
	.type	cread_function, @function
cread_function:
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
	beql	$5,$0,.L8
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L8:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,22528
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	cread_function
	.size	cread_function, .-cread_function
	.align	2
	.globl	gosub_function
	.set	nomips16
	.set	nomicromips
	.ent	gosub_function
	.type	gosub_function, @function
gosub_function:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lb	$2,%gp_rel(g_temp_area_used)($28)
	beq	$2,$0,.L11
	lui	$2,%hi(g_err_str+60)

	j	$31
	lw	$2,%lo(g_err_str+60)($2)

.L11:
	j	gosub_statement
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	gosub_function
	.size	gosub_function, .-gosub_function
	.align	2
	.globl	strncmp_function
	.set	nomips16
	.set	nomicromips
	.ent	strncmp_function
	.type	strncmp_function, @function
strncmp_function:
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
	jal	get_string
	sw	$16,16($sp)

	bne	$2,$0,.L24
	lw	$31,28($sp)

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L25
	lui	$2,%hi(g_err_str+4)

.L15:
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
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	sw	$4,%gp_rel(g_objpos)($28)
	addu	$3,$3,$2
	lb	$17,0($3)
	li	$3,44			# 0x2c
	bnel	$17,$3,.L26
	lui	$2,%hi(g_err_str)

.L16:
	addiu	$2,$2,1
	jal	get_string
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L24
	lw	$31,28($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L25
	lui	$2,%hi(g_err_str+4)

.L17:
	sll	$4,$4,2
	addu	$3,$3,$4
	addiu	$18,$18,8
	sw	$18,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$3,$2
	lb	$3,0($3)
	beql	$3,$17,.L18
	addiu	$2,$2,1

	lui	$2,%hi(g_err_str)
.L26:
	j	.L14
	lw	$2,%lo(g_err_str)($2)

.L18:
	jal	get_value
	sw	$2,%gp_rel(g_srcpos)($28)

	bne	$2,$0,.L24
	lw	$31,28($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$7,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	sll	$5,$7,2
	addu	$5,$3,$5
	sltu	$8,$6,$5
	bnel	$8,$0,.L25
	lui	$2,%hi(g_err_str+4)

.L19:
	sll	$8,$4,2
	li	$9,48234496			# 0x2e00000
	addu	$8,$3,$8
	ori	$9,$9,0xf809
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	li	$9,604438528			# 0x24070000
	addu	$8,$3,$8
	addiu	$9,$9,10752
	addiu	$4,$4,3
	sw	$9,0($8)
	sw	$7,%gp_rel(g_objpos)($28)
	sll	$7,$4,2
	addu	$3,$3,$7
	sltu	$6,$6,$3
	beq	$6,$0,.L20
	addiu	$16,$16,8

	lui	$2,%hi(g_err_str+4)
.L25:
	j	.L14
	lw	$2,%lo(g_err_str+4)($2)

.L20:
	sw	$16,0($5)
	sw	$4,%gp_rel(g_objpos)($28)
.L14:
	lw	$31,28($sp)
.L24:
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	strncmp_function
	.size	strncmp_function, .-strncmp_function
	.align	2
	.globl	len_function
	.set	nomips16
	.set	nomicromips
	.ent	len_function
	.type	len_function, @function
len_function:
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

	bne	$2,$0,.L30
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,5
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L29
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L30
	lw	$2,%lo(g_err_str+4)($2)

.L29:
	li	$7,608370688			# 0x24430000
	addu	$6,$3,$6
	ori	$7,$7,0xffff
	sw	$7,0($6)
	addiu	$6,$4,1
	sll	$6,$6,2
	li	$7,-2140930048			# 0xffffffff80640000
	addu	$6,$3,$6
	addiu	$7,$7,1
	sw	$7,0($6)
	addiu	$6,$4,2
	sll	$6,$6,2
	li	$7,343932928			# 0x14800000
	addu	$6,$3,$6
	ori	$7,$7,0xfffe
	sw	$7,0($6)
	addiu	$6,$4,3
	addiu	$4,$4,4
	sll	$4,$4,2
	sll	$6,$6,2
	addu	$6,$3,$6
	li	$7,610467840			# 0x24630000
	addu	$3,$3,$4
	li	$4,6422528			# 0x620000
	addiu	$7,$7,1
	addiu	$4,$4,4131
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L30:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	len_function
	.size	len_function, .-len_function
	.align	2
	.globl	asc_function
	.set	nomips16
	.set	nomicromips
	.ent	asc_function
	.type	asc_function, @function
asc_function:
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

	bne	$2,$0,.L34
	lw	$31,20($sp)

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L33
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
	j	.L34
	lw	$2,%lo(g_err_str+4)($2)

.L33:
	addu	$4,$4,$5
	li	$5,-1874722816			# 0xffffffff90420000
	sw	$5,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L34:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	asc_function
	.size	asc_function, .-asc_function
	.align	2
	.globl	val_function
	.set	nomips16
	.set	nomicromips
	.ent	val_function
	.type	val_function, @function
val_function:
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

	bne	$2,$0,.L38
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L37
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L38
	lw	$2,%lo(g_err_str+4)($2)

.L37:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,15872
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L38:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	val_function
	.size	val_function, .-val_function
	.align	2
	.globl	peek_function
	.set	nomips16
	.set	nomicromips
	.ent	peek_function
	.type	peek_function, @function
peek_function:
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

	bne	$2,$0,.L42
	lw	$31,20($sp)

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L41
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
	j	.L42
	lw	$2,%lo(g_err_str+4)($2)

.L41:
	addu	$4,$4,$5
	li	$5,-1874722816			# 0xffffffff90420000
	sw	$5,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L42:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	peek_function
	.size	peek_function, .-peek_function
	.align	2
	.globl	sgn_function
	.set	nomips16
	.set	nomicromips
	.ent	sgn_function
	.type	sgn_function, @function
sgn_function:
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

	bne	$2,$0,.L46
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,5
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L45
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L46
	lw	$2,%lo(g_err_str+4)($2)

.L45:
	li	$7,272629760			# 0x10400000
	addu	$6,$3,$6
	addiu	$7,$7,4
	sw	$7,0($6)
	addiu	$6,$4,1
	sll	$6,$6,2
	li	$7,604176384			# 0x24030000
	addu	$6,$3,$6
	addiu	$7,$7,1
	sw	$7,0($6)
	addiu	$6,$4,2
	sll	$6,$6,2
	li	$7,473956352			# 0x1c400000
	addu	$6,$3,$6
	addiu	$7,$7,2
	sw	$7,0($6)
	addiu	$6,$4,3
	addiu	$4,$4,4
	sll	$4,$4,2
	sll	$6,$6,2
	addu	$6,$3,$6
	li	$7,6291456			# 0x600000
	addu	$3,$3,$4
	li	$4,196608			# 0x30000
	addiu	$7,$7,4129
	addiu	$4,$4,4131
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L46:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	sgn_function
	.size	sgn_function, .-sgn_function
	.align	2
	.globl	abs_function
	.set	nomips16
	.set	nomicromips
	.ent	abs_function
	.type	abs_function, @function
abs_function:
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

	bne	$2,$0,.L50
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,3
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L49
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L50
	lw	$2,%lo(g_err_str+4)($2)

.L49:
	li	$7,131072			# 0x20000
	addu	$6,$3,$6
	addiu	$7,$7,8131
	sw	$7,0($6)
	addiu	$6,$4,1
	addiu	$4,$4,2
	sll	$4,$4,2
	sll	$6,$6,2
	addu	$6,$3,$6
	li	$7,6422528			# 0x620000
	addu	$3,$3,$4
	li	$4,4390912			# 0x430000
	addiu	$7,$7,4134
	addiu	$4,$4,4131
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L50:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	abs_function
	.size	abs_function, .-abs_function
	.align	2
	.globl	not_function
	.set	nomips16
	.set	nomicromips
	.ent	not_function
	.type	not_function, @function
not_function:
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

	bne	$2,$0,.L54
	lw	$31,20($sp)

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$4,%gp_rel(g_object)($28)
	addiu	$3,$5,1
	sll	$6,$3,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$4,$6
	sltu	$6,$7,$6
	beql	$6,$0,.L53
	sll	$5,$5,2

	lui	$2,%hi(g_err_str+4)
	j	.L54
	lw	$2,%lo(g_err_str+4)($2)

.L53:
	addu	$4,$4,$5
	li	$5,742522880			# 0x2c420000
	addiu	$5,$5,1
	sw	$5,0($4)
	sw	$3,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L54:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	not_function
	.size	not_function, .-not_function
	.align	2
	.globl	rnd_function
	.set	nomips16
	.set	nomicromips
	.ent	rnd_function
	.type	rnd_function, @function
rnd_function:
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
	beql	$5,$0,.L56
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L56:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,11264
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	rnd_function
	.size	rnd_function, .-rnd_function
	.align	2
	.globl	chr_function
	.set	nomips16
	.set	nomicromips
	.ent	chr_function
	.type	chr_function, @function
chr_function:
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

	bne	$2,$0,.L61
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L60
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L61
	lw	$2,%lo(g_err_str+4)($2)

.L60:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,12800
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L61:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	chr_function
	.size	chr_function, .-chr_function
	.align	2
	.globl	hex_function
	.set	nomips16
	.set	nomicromips
	.ent	hex_function
	.type	hex_function, @function
hex_function:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$16,20($sp)
	sw	$31,28($sp)
	jal	get_value
	sw	$17,24($sp)

	bne	$2,$0,.L63
	move	$16,$2

	lw	$4,%gp_rel(g_srcpos)($28)
	lw	$2,%gp_rel(g_source)($28)
	li	$6,44			# 0x2c
	addu	$2,$2,$4
	lb	$7,0($2)
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	bne	$7,$6,.L64
	lw	$5,%gp_rel(g_objmax)($28)

	addiu	$4,$4,1
	sw	$4,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	sll	$6,$4,2
	addu	$6,$2,$6
	sltu	$5,$5,$6
	bnel	$5,$0,.L73
	lui	$2,%hi(g_err_str+4)

.L65:
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

	bnel	$2,$0,.L70
	move	$16,$2

	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,3
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L73
	lui	$2,%hi(g_err_str+4)

.L66:
	sll	$5,$3,2
	li	$6,131072			# 0x20000
	addu	$5,$2,$5
	addiu	$6,$6,8225
	sw	$6,0($5)
	addiu	$5,$3,1
	addiu	$3,$3,2
	sll	$5,$5,2
	li	$6,-1885208576			# 0xffffffff8fa20000
	sll	$3,$3,2
	addu	$5,$2,$5
	addiu	$6,$6,4
	addu	$2,$2,$3
	addiu	$17,$17,4
	sw	$6,0($5)
	j	.L71
	sw	$17,0($2)

.L64:
	addiu	$4,$3,1
	sll	$6,$4,2
	addu	$6,$2,$6
	sltu	$5,$5,$6
	bnel	$5,$0,.L73
	lui	$2,%hi(g_err_str+4)

.L68:
	sll	$3,$3,2
	addu	$2,$2,$3
	li	$3,604241920			# 0x24040000
	sw	$3,0($2)
.L71:
	sw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L69
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L73:
	j	.L63
	lw	$16,%lo(g_err_str+4)($2)

.L69:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,12288
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
.L70:
.L63:
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
	.end	hex_function
	.size	hex_function, .-hex_function
	.align	2
	.globl	dec_function
	.set	nomips16
	.set	nomicromips
	.ent	dec_function
	.type	dec_function, @function
dec_function:
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

	bne	$2,$0,.L77
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L76
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L77
	lw	$2,%lo(g_err_str+4)($2)

.L76:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,11776
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L77:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	dec_function
	.size	dec_function, .-dec_function
	.align	2
	.globl	keys_function
	.set	nomips16
	.set	nomicromips
	.ent	keys_function
	.type	keys_function, @function
keys_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$5,%gp_rel(g_source)($28)
	j	.L79
	li	$4,32			# 0x20

.L80:
	sw	$3,%gp_rel(g_srcpos)($28)
.L79:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beq	$2,$4,.L80
	addiu	$3,$3,1

	li	$3,41			# 0x29
	bne	$2,$3,.L81
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L87
	lui	$2,%hi(g_err_str+4)

.L82:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,872546304			# 0x34020000
	addiu	$4,$4,63
	sw	$4,0($3)
	j	.L84
	sw	$2,%gp_rel(g_objpos)($28)

.L81:
	jal	get_value
	nop

	bne	$2,$0,.L88
	lw	$31,20($sp)

.L84:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L85
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L87:
	j	.L83
	lw	$2,%lo(g_err_str+4)($2)

.L85:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,6656
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L83:
	lw	$31,20($sp)
.L88:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	keys_function
	.size	keys_function, .-keys_function
	.align	2
	.globl	tvram_function
	.set	nomips16
	.set	nomicromips
	.ent	tvram_function
	.type	tvram_function, @function
tvram_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$5,%gp_rel(g_source)($28)
	j	.L90
	li	$4,32			# 0x20

.L91:
	sw	$3,%gp_rel(g_srcpos)($28)
.L90:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beq	$2,$4,.L91
	addiu	$3,$3,1

	li	$3,41			# 0x29
	bne	$2,$3,.L92
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$6,$2,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	bne	$6,$0,.L96
	lw	$5,%gp_rel(g_gp)($28)

.L93:
	sll	$4,$4,2
	addu	$3,$3,$4
	lui	$4,%hi(TVRAM)
	addiu	$4,$4,%lo(TVRAM)
	subu	$4,$4,$5
	andi	$4,$4,0xffff
	li	$5,662831104			# 0x27820000
	or	$4,$4,$5
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	j	.L94
	move	$2,$0

.L92:
	jal	get_value
	nop

	bne	$2,$0,.L97
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,3
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L95
	lw	$8,%gp_rel(g_gp)($28)

.L96:
	lui	$2,%hi(g_err_str+4)
	j	.L94
	lw	$2,%lo(g_err_str+4)($2)

.L95:
	lui	$7,%hi(TVRAM)
	addiu	$7,$7,%lo(TVRAM)
	subu	$7,$7,$8
	sll	$6,$4,2
	andi	$7,$7,0xffff
	li	$8,662896640			# 0x27830000
	addu	$6,$3,$6
	or	$7,$7,$8
	sw	$7,0($6)
	addiu	$6,$4,1
	addiu	$4,$4,2
	sll	$4,$4,2
	sll	$6,$6,2
	li	$7,6422528			# 0x620000
	addu	$6,$3,$6
	addiu	$7,$7,6177
	addu	$3,$3,$4
	li	$4,-1872625664			# 0xffffffff90620000
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L94:
	lw	$31,20($sp)
.L97:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	tvram_function
	.size	tvram_function, .-tvram_function
	.align	2
	.globl	drawcount_function
	.set	nomips16
	.set	nomicromips
	.ent	drawcount_function
	.type	drawcount_function, @function
drawcount_function:
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
	beql	$5,$0,.L99
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L99:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,2048
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	drawcount_function
	.size	drawcount_function, .-drawcount_function
	.align	2
	.globl	input_function
	.set	nomips16
	.set	nomicromips
	.ent	input_function
	.type	input_function, @function
input_function:
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
	beql	$5,$0,.L102
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L102:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,16384
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	input_function
	.size	input_function, .-input_function
	.align	2
	.globl	inkey_function
	.set	nomips16
	.set	nomicromips
	.ent	inkey_function
	.type	inkey_function, @function
inkey_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$5,%gp_rel(g_source)($28)
	j	.L105
	li	$4,32			# 0x20

.L106:
	sw	$3,%gp_rel(g_srcpos)($28)
.L105:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beq	$2,$4,.L106
	addiu	$3,$3,1

	li	$3,41			# 0x29
	bne	$2,$3,.L107
	lw	$4,%gp_rel(g_objpos)($28)

	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L113
	lui	$2,%hi(g_err_str+4)

.L108:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,872546304			# 0x34020000
	sw	$4,0($3)
	j	.L110
	sw	$2,%gp_rel(g_objpos)($28)

.L107:
	jal	get_value
	nop

	bne	$2,$0,.L114
	lw	$31,20($sp)

.L110:
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L111
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L113:
	j	.L109
	lw	$2,%lo(g_err_str+4)($2)

.L111:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,16896
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L109:
	lw	$31,20($sp)
.L114:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	inkey_function
	.size	inkey_function, .-inkey_function
	.align	2
	.globl	args_function
	.set	nomips16
	.set	nomicromips
	.ent	args_function
	.type	args_function, @function
args_function:
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

	bne	$2,$0,.L119
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,-1
	sll	$5,$5,2
	addu	$5,$3,$5
	lw	$6,0($5)
	li	$7,13314			# 0x3402
	sra	$8,$6,16
	bnel	$8,$7,.L117
	addiu	$5,$4,3

	andi	$6,$6,0xffff
	addiu	$6,$6,1
	sll	$6,$6,2
	li	$3,-1901985792			# 0xffffffff8ea20000
	or	$6,$6,$3
	j	.L116
	sw	$6,0($5)

.L117:
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L118
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L116
	lw	$2,%lo(g_err_str+4)($2)

.L118:
	li	$7,131072			# 0x20000
	addu	$6,$3,$6
	addiu	$7,$7,4224
	sw	$7,0($6)
	addiu	$6,$4,1
	addiu	$4,$4,2
	sll	$4,$4,2
	sll	$6,$6,2
	addu	$6,$3,$6
	li	$7,44171264			# 0x2a20000
	addu	$3,$3,$4
	li	$4,-1941831680			# 0xffffffff8c420000
	addiu	$7,$7,4129
	addiu	$4,$4,4
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L116:
	lw	$31,20($sp)
.L119:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	args_function
	.size	args_function, .-args_function
	.align	2
	.globl	system_function
	.set	nomips16
	.set	nomicromips
	.ent	system_function
	.type	system_function, @function
system_function:
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

	bne	$2,$0,.L123
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	sll	$5,$4,2
	li	$6,4194304			# 0x400000
	addu	$5,$3,$5
	addiu	$6,$6,8225
	sw	$6,0($5)
	addiu	$5,$4,3
	sll	$7,$5,2
	lw	$8,%gp_rel(g_objmax)($28)
	addu	$7,$3,$7
	addiu	$6,$4,1
	sltu	$7,$8,$7
	beq	$7,$0,.L122
	sw	$6,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str+4)
	j	.L121
	lw	$2,%lo(g_err_str+4)($2)

.L122:
	addiu	$4,$4,2
	sll	$4,$4,2
	sll	$6,$6,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,20480
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L121:
	lw	$31,20($sp)
.L123:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	system_function
	.size	system_function, .-system_function
	.align	2
	.globl	sprintf_function
	.set	nomips16
	.set	nomicromips
	.ent	sprintf_function
	.type	sprintf_function, @function
sprintf_function:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_string
	sw	$16,16($sp)

	bne	$2,$0,.L134
	lw	$31,20($sp)

	lw	$5,%gp_rel(g_source)($28)
	j	.L126
	li	$4,32			# 0x20

.L127:
	sw	$2,%gp_rel(g_srcpos)($28)
.L126:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$5,$2
	lb	$3,0($3)
	beql	$3,$4,.L127
	addiu	$2,$2,1

	li	$4,44			# 0x2c
	beq	$3,$4,.L128
	lw	$3,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L125
	lw	$2,%lo(g_err_str)($2)

.L128:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L135
	lui	$2,%hi(g_err_str+4)

.L129:
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
	jal	get_float
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L134
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,3
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L135
	lui	$2,%hi(g_err_str+4)

.L130:
	sll	$8,$4,2
	li	$9,131072			# 0x20000
	addu	$8,$3,$8
	addiu	$9,$9,8225
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	li	$9,-1885208576			# 0xffffffff8fa20000
	addu	$8,$3,$8
	addiu	$9,$9,4
	sw	$9,0($8)
	addiu	$8,$4,2
	sll	$8,$8,2
	addu	$8,$3,$8
	addiu	$16,$16,4
	sw	$16,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,5
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beql	$7,$0,.L131
	addiu	$4,$4,4

	lui	$2,%hi(g_err_str+4)
.L135:
	j	.L125
	lw	$2,%lo(g_err_str+4)($2)

.L131:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$7,48234496			# 0x2e00000
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,20992
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L125:
	lw	$31,20($sp)
.L134:
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	sprintf_function
	.size	sprintf_function, .-sprintf_function
	.align	2
	.globl	floatstr_function
	.set	nomips16
	.set	nomicromips
	.ent	floatstr_function
	.type	floatstr_function, @function
floatstr_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_float
	nop

	bne	$2,$0,.L141
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L142
	lui	$2,%hi(g_err_str+4)

.L138:
	sll	$8,$4,2
	li	$9,131072			# 0x20000
	addu	$8,$3,$8
	addiu	$9,$9,8225
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	addu	$8,$3,$8
	li	$9,872546304			# 0x34020000
	sw	$9,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,4
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beql	$7,$0,.L139
	addiu	$4,$4,3

	lui	$2,%hi(g_err_str+4)
.L142:
	j	.L137
	lw	$2,%lo(g_err_str+4)($2)

.L139:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$7,48234496			# 0x2e00000
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,20992
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L137:
	lw	$31,20($sp)
.L141:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	floatstr_function
	.size	floatstr_function, .-floatstr_function
	.align	2
	.globl	floatsharp_function
	.set	nomips16
	.set	nomicromips
	.ent	floatsharp_function
	.type	floatsharp_function, @function
floatsharp_function:
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

	bne	$2,$0,.L146
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L145
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L146
	lw	$2,%lo(g_err_str+4)($2)

.L145:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,22016
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L146:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	floatsharp_function
	.size	floatsharp_function, .-floatsharp_function
	.align	2
	.globl	valsharp_function
	.set	nomips16
	.set	nomicromips
	.ent	valsharp_function
	.type	valsharp_function, @function
valsharp_function:
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

	bne	$2,$0,.L150
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L149
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L150
	lw	$2,%lo(g_err_str+4)($2)

.L149:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,22018
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L150:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	valsharp_function
	.size	valsharp_function, .-valsharp_function
	.align	2
	.globl	int_function
	.set	nomips16
	.set	nomicromips
	.ent	int_function
	.type	int_function, @function
int_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_float
	nop

	bne	$2,$0,.L154
	lw	$31,20($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,2
	sll	$6,$5,2
	lw	$7,%gp_rel(g_objmax)($28)
	addu	$6,$3,$6
	sltu	$6,$7,$6
	beq	$6,$0,.L153
	sll	$6,$4,2

	lui	$2,%hi(g_err_str+4)
	j	.L154
	lw	$2,%lo(g_err_str+4)($2)

.L153:
	addiu	$4,$4,1
	sll	$4,$4,2
	addu	$6,$3,$6
	li	$7,48234496			# 0x2e00000
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	ori	$7,$7,0xf809
	addiu	$4,$4,22017
	sw	$7,0($6)
	sw	$4,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
	lw	$31,20($sp)
.L154:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	int_function
	.size	int_function, .-int_function
	.align	2
	.globl	fseek_function
	.set	nomips16
	.set	nomicromips
	.ent	fseek_function
	.type	fseek_function, @function
fseek_function:
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
	beql	$5,$0,.L156
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L156:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,24618
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fseek_function
	.size	fseek_function, .-fseek_function
	.align	2
	.globl	flen_function
	.set	nomips16
	.set	nomicromips
	.ent	flen_function
	.type	flen_function, @function
flen_function:
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
	beql	$5,$0,.L159
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L159:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,24619
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	flen_function
	.size	flen_function, .-flen_function
	.align	2
	.globl	fgetc_function
	.set	nomips16
	.set	nomicromips
	.ent	fgetc_function
	.type	fgetc_function, @function
fgetc_function:
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
	beql	$5,$0,.L162
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L162:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,24621
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fgetc_function
	.size	fgetc_function, .-fgetc_function
	.align	2
	.globl	finput_function
	.set	nomips16
	.set	nomicromips
	.ent	finput_function
	.type	finput_function, @function
finput_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$5,%gp_rel(g_source)($28)
	j	.L165
	li	$4,32			# 0x20

.L166:
	sw	$3,%gp_rel(g_srcpos)($28)
.L165:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$5,$3
	lb	$2,0($2)
	beq	$2,$4,.L166
	addiu	$3,$3,1

	li	$3,41			# 0x29
	beq	$2,$3,.L167
	lw	$4,%gp_rel(g_objpos)($28)

	jal	get_value
	nop

	bne	$2,$0,.L174
	lw	$31,20($sp)

	j	.L173
	lw	$3,%gp_rel(g_objpos)($28)

.L167:
	lw	$3,%gp_rel(g_object)($28)
	addiu	$2,$4,1
	sll	$5,$2,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$3,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L175
	lui	$2,%hi(g_err_str+4)

.L170:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,872546304			# 0x34020000
	sw	$4,0($3)
	sw	$2,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_objpos)($28)
.L173:
	lw	$2,%gp_rel(g_object)($28)
	addiu	$4,$3,2
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	beq	$5,$0,.L171
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
.L175:
	j	.L168
	lw	$2,%lo(g_err_str+4)($2)

.L171:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,24613
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L168:
	lw	$31,20($sp)
.L174:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	finput_function
	.size	finput_function, .-finput_function
	.align	2
	.globl	feof_function
	.set	nomips16
	.set	nomicromips
	.ent	feof_function
	.type	feof_function, @function
feof_function:
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
	beql	$5,$0,.L177
	sll	$5,$3,2

	lui	$2,%hi(g_err_str+4)
	j	$31
	lw	$2,%lo(g_err_str+4)($2)

.L177:
	addiu	$3,$3,1
	sll	$3,$3,2
	addu	$5,$2,$5
	li	$6,48234496			# 0x2e00000
	addu	$2,$2,$3
	li	$3,604438528			# 0x24070000
	ori	$6,$6,0xf809
	addiu	$3,$3,24624
	sw	$6,0($5)
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	feof_function
	.size	feof_function, .-feof_function
	.align	2
	.globl	float_constant
	.set	nomips16
	.set	nomicromips
	.ent	float_constant
	.type	float_constant, @function
float_constant:
	.frame	$sp,8,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
	sw	$4,0($sp)
	lw	$4,0($sp)
	li	$2,-65536			# 0xffffffffffff0000
	and	$4,$4,$2
	lw	$3,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	beq	$4,$0,.L180
	lw	$5,%gp_rel(g_objmax)($28)

	addiu	$4,$3,2
	sll	$6,$4,2
	addu	$6,$2,$6
	sltu	$5,$5,$6
	bnel	$5,$0,.L186
	lui	$2,%hi(g_err_str+4)

.L181:
	lw	$6,0($sp)
	sll	$5,$3,2
	srl	$6,$6,16
	li	$7,1006764032			# 0x3c020000
	addu	$5,$2,$5
	or	$6,$6,$7
	sw	$6,0($5)
	addiu	$3,$3,1
	lw	$5,0($sp)
	sw	$3,%gp_rel(g_objpos)($28)
	sll	$3,$3,2
	addu	$2,$2,$3
	andi	$3,$5,0xffff
	j	.L185
	li	$5,876740608			# 0x34420000

.L180:
	addiu	$4,$3,1
	sll	$6,$4,2
	addu	$6,$2,$6
	sltu	$5,$5,$6
	beq	$5,$0,.L183
	nop

	lui	$2,%hi(g_err_str+4)
.L186:
	j	.L182
	lw	$2,%lo(g_err_str+4)($2)

.L183:
	lw	$5,0($sp)
	sll	$3,$3,2
	addu	$2,$2,$3
	andi	$3,$5,0xffff
	li	$5,872546304			# 0x34020000
.L185:
	or	$3,$3,$5
	sw	$3,0($2)
	sw	$4,%gp_rel(g_objpos)($28)
	move	$2,$0
.L182:
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	float_constant
	.size	float_constant, .-float_constant
	.align	2
	.globl	float_1param_function
	.set	nomips16
	.set	nomicromips
	.ent	float_1param_function
	.type	float_1param_function, @function
float_1param_function:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$4,16($sp)
	sw	$31,28($sp)
	jal	get_float
	nop

	bne	$2,$0,.L188
	lw	$4,16($sp)

	lw	$5,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$6,$5,2
	sll	$7,$6,2
	lw	$8,%gp_rel(g_objmax)($28)
	addu	$7,$3,$7
	sltu	$7,$8,$7
	beq	$7,$0,.L189
	sll	$7,$5,2

	lui	$2,%hi(g_err_str+4)
	j	.L188
	lw	$2,%lo(g_err_str+4)($2)

.L189:
	addiu	$5,$5,1
	sll	$5,$5,2
	addu	$7,$3,$7
	addu	$3,$3,$5
	li	$5,604438528			# 0x24070000
	li	$8,48234496			# 0x2e00000
	andi	$4,$4,0xffff
	addiu	$5,$5,22016
	ori	$8,$8,0xf809
	or	$4,$4,$5
	sw	$8,0($7)
	sw	$4,0($3)
	sw	$6,%gp_rel(g_objpos)($28)
.L188:
	lw	$31,28($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	float_1param_function
	.size	float_1param_function, .-float_1param_function
	.align	2
	.globl	float_2param_function
	.set	nomips16
	.set	nomicromips
	.ent	float_2param_function
	.type	float_2param_function, @function
float_2param_function:
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
	jal	get_float
	move	$16,$4

	bne	$2,$0,.L200
	lw	$31,28($sp)

	lw	$5,%gp_rel(g_source)($28)
	j	.L192
	li	$4,32			# 0x20

.L193:
	sw	$2,%gp_rel(g_srcpos)($28)
.L192:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$5,$2
	lb	$3,0($3)
	beql	$3,$4,.L193
	addiu	$2,$2,1

	li	$4,44			# 0x2c
	beq	$3,$4,.L194
	lw	$3,%gp_rel(g_objpos)($28)

	lui	$2,%hi(g_err_str)
	j	.L191
	lw	$2,%lo(g_err_str)($2)

.L194:
	addiu	$2,$2,1
	sw	$2,%gp_rel(g_srcpos)($28)
	addiu	$4,$3,2
	lw	$2,%gp_rel(g_object)($28)
	sll	$5,$4,2
	lw	$6,%gp_rel(g_objmax)($28)
	addu	$5,$2,$5
	sltu	$5,$6,$5
	bnel	$5,$0,.L201
	lui	$2,%hi(g_err_str+4)

.L195:
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
	jal	get_float
	sw	$4,%gp_rel(g_objpos)($28)

	bne	$2,$0,.L200
	lw	$31,28($sp)

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$3,%gp_rel(g_object)($28)
	addiu	$5,$4,3
	lw	$7,%gp_rel(g_objmax)($28)
	sll	$6,$5,2
	addu	$6,$3,$6
	sltu	$8,$7,$6
	bnel	$8,$0,.L201
	lui	$2,%hi(g_err_str+4)

.L196:
	sll	$8,$4,2
	li	$9,131072			# 0x20000
	addu	$8,$3,$8
	addiu	$9,$9,8225
	sw	$9,0($8)
	addiu	$8,$4,1
	sll	$8,$8,2
	li	$9,-1885208576			# 0xffffffff8fa20000
	addu	$8,$3,$8
	addiu	$9,$9,4
	sw	$9,0($8)
	addiu	$8,$4,2
	sll	$8,$8,2
	addu	$8,$3,$8
	addiu	$17,$17,4
	sw	$17,0($8)
	sw	$5,%gp_rel(g_objpos)($28)
	addiu	$5,$4,5
	sll	$8,$5,2
	addu	$8,$3,$8
	sltu	$7,$7,$8
	beql	$7,$0,.L197
	addiu	$4,$4,4

	lui	$2,%hi(g_err_str+4)
.L201:
	j	.L191
	lw	$2,%lo(g_err_str+4)($2)

.L197:
	sll	$4,$4,2
	addu	$3,$3,$4
	li	$4,604438528			# 0x24070000
	li	$7,48234496			# 0x2e00000
	andi	$16,$16,0xffff
	addiu	$4,$4,22016
	ori	$7,$7,0xf809
	or	$16,$16,$4
	sw	$7,0($6)
	sw	$16,0($3)
	sw	$5,%gp_rel(g_objpos)($28)
.L191:
	lw	$31,28($sp)
.L200:
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	float_2param_function
	.size	float_2param_function, .-float_2param_function
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"FLOAT#(\000"
	.align	2
.LC1:
	.ascii	"VAL#(\000"
	.align	2
.LC2:
	.ascii	"SIN#(\000"
	.align	2
.LC3:
	.ascii	"COS#(\000"
	.align	2
.LC4:
	.ascii	"TAN#(\000"
	.align	2
.LC5:
	.ascii	"ASIN#(\000"
	.align	2
.LC6:
	.ascii	"ACOS#(\000"
	.align	2
.LC7:
	.ascii	"ATAN#(\000"
	.align	2
.LC8:
	.ascii	"ATAN2#(\000"
	.align	2
.LC9:
	.ascii	"SINH#(\000"
	.align	2
.LC10:
	.ascii	"COSH#(\000"
	.align	2
.LC11:
	.ascii	"TANH#(\000"
	.align	2
.LC12:
	.ascii	"EXP#(\000"
	.align	2
.LC13:
	.ascii	"LOG#(\000"
	.align	2
.LC14:
	.ascii	"LOG10#(\000"
	.align	2
.LC15:
	.ascii	"POW#(\000"
	.align	2
.LC16:
	.ascii	"SQRT#(\000"
	.align	2
.LC17:
	.ascii	"CEIL#(\000"
	.align	2
.LC18:
	.ascii	"FLOOR#(\000"
	.align	2
.LC19:
	.ascii	"FABS#(\000"
	.align	2
.LC20:
	.ascii	"MODF#(\000"
	.align	2
.LC21:
	.ascii	"FMOD#(\000"
	.align	2
.LC22:
	.ascii	"GOSUB#(\000"
	.align	2
.LC23:
	.ascii	"ARGS#(\000"
	.align	2
.LC24:
	.ascii	"PI#\000"
	.section	.text,code
	.align	2
	.globl	float_function
	.set	nomips16
	.set	nomicromips
	.ent	float_function
	.type	float_function, @function
float_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(.LC0)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC0)

	beq	$2,$0,.L203
	lui	$4,%hi(.LC1)

	jal	floatsharp_function
	nop

	j	.L204
	nop

.L203:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC1)

	beq	$2,$0,.L205
	lui	$4,%hi(.LC2)

	jal	valsharp_function
	nop

	j	.L204
	nop

.L205:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC2)

	bne	$2,$0,.L231
	li	$4,3			# 0x3

	lui	$4,%hi(.LC3)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC3)

	beq	$2,$0,.L207
	lui	$4,%hi(.LC4)

	li	$4,4			# 0x4
.L231:
	jal	float_1param_function
	nop

	j	.L204
	nop

.L207:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC4)

	bne	$2,$0,.L231
	li	$4,5			# 0x5

	lui	$4,%hi(.LC5)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC5)

	bne	$2,$0,.L231
	li	$4,6			# 0x6

	lui	$4,%hi(.LC6)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC6)

	bne	$2,$0,.L231
	li	$4,7			# 0x7

	lui	$4,%hi(.LC7)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC7)

	bne	$2,$0,.L231
	li	$4,8			# 0x8

	lui	$4,%hi(.LC8)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC8)

	bne	$2,$0,.L232
	li	$4,9			# 0x9

	lui	$4,%hi(.LC9)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC9)

	bne	$2,$0,.L231
	li	$4,10			# 0xa

	lui	$4,%hi(.LC10)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC10)

	bne	$2,$0,.L231
	li	$4,11			# 0xb

	lui	$4,%hi(.LC11)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC11)

	bne	$2,$0,.L231
	li	$4,12			# 0xc

	lui	$4,%hi(.LC12)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC12)

	bne	$2,$0,.L231
	li	$4,13			# 0xd

	lui	$4,%hi(.LC13)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC13)

	bne	$2,$0,.L231
	li	$4,14			# 0xe

	lui	$4,%hi(.LC14)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC14)

	bne	$2,$0,.L231
	li	$4,15			# 0xf

	lui	$4,%hi(.LC15)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC15)

	bne	$2,$0,.L232
	li	$4,16			# 0x10

	lui	$4,%hi(.LC16)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC16)

	bne	$2,$0,.L231
	li	$4,17			# 0x11

	lui	$4,%hi(.LC17)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC17)

	bne	$2,$0,.L231
	li	$4,18			# 0x12

	lui	$4,%hi(.LC18)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC18)

	bne	$2,$0,.L231
	li	$4,19			# 0x13

	lui	$4,%hi(.LC19)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC19)

	bne	$2,$0,.L231
	li	$4,20			# 0x14

	lui	$4,%hi(.LC20)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC20)

	bne	$2,$0,.L231
	li	$4,21			# 0x15

	lui	$4,%hi(.LC21)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC21)

	beq	$2,$0,.L225
	lui	$4,%hi(.LC22)

	li	$4,22			# 0x16
.L232:
	jal	float_2param_function
	nop

	j	.L204
	nop

.L225:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC22)

	beq	$2,$0,.L226
	lui	$4,%hi(.LC23)

	jal	gosub_function
	nop

	j	.L204
	nop

.L226:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC23)

	beq	$2,$0,.L227
	lui	$4,%hi(.LC24)

	jal	args_function
	nop

	j	.L204
	nop

.L227:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC24)

	beq	$2,$0,.L234
	lui	$2,%hi(g_err_str)

	lui	$2,%hi(.LC25)
	lw	$4,%lo(.LC25)($2)
	lw	$31,20($sp)
	j	float_constant
	addiu	$sp,$sp,24

.L204:
	bne	$2,$0,.L235
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_srcpos)($28)
	lw	$4,%gp_rel(g_source)($28)
	addu	$4,$4,$3
	lb	$5,0($4)
	li	$4,41			# 0x29
	beql	$5,$4,.L230
	addiu	$3,$3,1

	lui	$2,%hi(g_err_str)
.L234:
	j	.L229
	lw	$2,%lo(g_err_str)($2)

.L230:
	sw	$3,%gp_rel(g_srcpos)($28)
.L229:
	lw	$31,20($sp)
.L235:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	float_function
	.size	float_function, .-float_function
	.section	.rodata,code
	.align	2
.LC26:
	.ascii	"CHR$(\000"
	.align	2
.LC27:
	.ascii	"HEX$(\000"
	.align	2
.LC28:
	.ascii	"DEC$(\000"
	.align	2
.LC29:
	.ascii	"INPUT$(\000"
	.align	2
.LC30:
	.ascii	"GOSUB$(\000"
	.align	2
.LC31:
	.ascii	"ARGS$(\000"
	.align	2
.LC32:
	.ascii	"READ$(\000"
	.align	2
.LC33:
	.ascii	"SPRINTF$(\000"
	.align	2
.LC34:
	.ascii	"FLOAT$(\000"
	.align	2
.LC35:
	.ascii	"SYSTEM$(\000"
	.align	2
.LC36:
	.ascii	"FINPUT$(\000"
	.section	.text,code
	.align	2
	.globl	str_function
	.set	nomips16
	.set	nomicromips
	.ent	str_function
	.type	str_function, @function
str_function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(.LC26)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC26)

	beq	$2,$0,.L237
	lui	$4,%hi(.LC27)

	jal	chr_function
	nop

	j	.L238
	nop

.L237:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC27)

	beq	$2,$0,.L239
	lui	$4,%hi(.LC28)

	jal	hex_function
	nop

	j	.L238
	nop

.L239:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC28)

	beq	$2,$0,.L240
	lui	$4,%hi(.LC29)

	jal	dec_function
	nop

	j	.L238
	nop

.L240:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC29)

	beq	$2,$0,.L241
	lui	$4,%hi(.LC30)

	jal	input_function
	nop

	j	.L238
	nop

.L241:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC30)

	beq	$2,$0,.L242
	lui	$4,%hi(.LC31)

	jal	gosub_function
	nop

	j	.L238
	nop

.L242:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC31)

	beq	$2,$0,.L243
	lui	$4,%hi(.LC32)

	jal	args_function
	nop

	j	.L238
	nop

.L243:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC32)

	beq	$2,$0,.L244
	lui	$4,%hi(.LC33)

	jal	read_function
	nop

	j	.L238
	nop

.L244:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC33)

	beq	$2,$0,.L245
	lui	$4,%hi(.LC34)

	jal	sprintf_function
	nop

	j	.L238
	nop

.L245:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC34)

	beq	$2,$0,.L246
	lui	$4,%hi(.LC35)

	jal	floatstr_function
	nop

	j	.L238
	nop

.L246:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC35)

	beq	$2,$0,.L247
	lui	$4,%hi(.LC36)

	jal	system_function
	nop

	j	.L238
	nop

.L247:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC36)

	beq	$2,$0,.L252
	lui	$2,%hi(g_err_str)

	jal	finput_function
	nop

.L238:
	bne	$2,$0,.L253
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_srcpos)($28)
	lw	$4,%gp_rel(g_source)($28)
	addu	$4,$4,$3
	lb	$5,0($4)
	li	$4,41			# 0x29
	beql	$5,$4,.L250
	addiu	$3,$3,1

	lui	$2,%hi(g_err_str)
.L252:
	j	.L249
	lw	$2,%lo(g_err_str)($2)

.L250:
	sw	$3,%gp_rel(g_srcpos)($28)
.L249:
	lw	$31,20($sp)
.L253:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	str_function
	.size	str_function, .-str_function
	.section	.rodata,code
	.align	2
.LC37:
	.ascii	"NOT(\000"
	.align	2
.LC38:
	.ascii	"DRAWCOUNT(\000"
	.align	2
.LC39:
	.ascii	"MUSIC(\000"
	.align	2
.LC40:
	.ascii	"TVRAM(\000"
	.align	2
.LC41:
	.ascii	"KEYS(\000"
	.align	2
.LC42:
	.ascii	"READ(\000"
	.align	2
.LC43:
	.ascii	"CREAD(\000"
	.align	2
.LC44:
	.ascii	"GOSUB(\000"
	.align	2
.LC45:
	.ascii	"STRNCMP(\000"
	.align	2
.LC46:
	.ascii	"PEEK(\000"
	.align	2
.LC47:
	.ascii	"LEN(\000"
	.align	2
.LC48:
	.ascii	"ASC(\000"
	.align	2
.LC49:
	.ascii	"SGN(\000"
	.align	2
.LC50:
	.ascii	"ABS(\000"
	.align	2
.LC51:
	.ascii	"RND(\000"
	.align	2
.LC52:
	.ascii	"VAL(\000"
	.align	2
.LC53:
	.ascii	"INKEY(\000"
	.align	2
.LC54:
	.ascii	"ARGS(\000"
	.align	2
.LC55:
	.ascii	"SYSTEM(\000"
	.align	2
.LC56:
	.ascii	"INT(\000"
	.align	2
.LC57:
	.ascii	"GCOLOR(\000"
	.align	2
.LC58:
	.ascii	"FOPEN(\000"
	.align	2
.LC59:
	.ascii	"FSEEK(\000"
	.align	2
.LC60:
	.ascii	"FLEN(\000"
	.align	2
.LC61:
	.ascii	"FGET(\000"
	.align	2
.LC62:
	.ascii	"FPUT(\000"
	.align	2
.LC63:
	.ascii	"FGETC(\000"
	.align	2
.LC64:
	.ascii	"FPUTC(\000"
	.align	2
.LC65:
	.ascii	"FREMOVE(\000"
	.align	2
.LC66:
	.ascii	"FEOF(\000"
	.section	.text,code
	.align	2
	.globl	function
	.set	nomips16
	.set	nomicromips
	.ent	function
	.type	function, @function
function:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(.LC37)
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC37)

	beq	$2,$0,.L255
	lui	$4,%hi(.LC38)

	jal	not_function
	nop

	j	.L256
	nop

.L255:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC38)

	beq	$2,$0,.L257
	lui	$4,%hi(.LC39)

	jal	drawcount_function
	nop

	j	.L256
	nop

.L257:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC39)

	beq	$2,$0,.L258
	lui	$4,%hi(.LC40)

	jal	music_function
	nop

	j	.L256
	nop

.L258:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC40)

	beq	$2,$0,.L259
	lui	$4,%hi(.LC41)

	jal	tvram_function
	nop

	j	.L256
	nop

.L259:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC41)

	beq	$2,$0,.L260
	lui	$4,%hi(.LC42)

	jal	keys_function
	nop

	j	.L256
	nop

.L260:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC42)

	beq	$2,$0,.L261
	lui	$4,%hi(.LC43)

	jal	read_function
	nop

	j	.L256
	nop

.L261:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC43)

	beq	$2,$0,.L262
	lui	$4,%hi(.LC44)

	jal	cread_function
	nop

	j	.L256
	nop

.L262:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC44)

	beq	$2,$0,.L263
	lui	$4,%hi(.LC45)

	jal	gosub_function
	nop

	j	.L256
	nop

.L263:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC45)

	beq	$2,$0,.L264
	lui	$4,%hi(.LC46)

	jal	strncmp_function
	nop

	j	.L256
	nop

.L264:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC46)

	beq	$2,$0,.L265
	lui	$4,%hi(.LC47)

	jal	peek_function
	nop

	j	.L256
	nop

.L265:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC47)

	beq	$2,$0,.L266
	lui	$4,%hi(.LC48)

	jal	len_function
	nop

	j	.L256
	nop

.L266:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC48)

	beq	$2,$0,.L267
	lui	$4,%hi(.LC49)

	jal	asc_function
	nop

	j	.L256
	nop

.L267:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC49)

	beq	$2,$0,.L268
	lui	$4,%hi(.LC50)

	jal	sgn_function
	nop

	j	.L256
	nop

.L268:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC50)

	beq	$2,$0,.L269
	lui	$4,%hi(.LC51)

	jal	abs_function
	nop

	j	.L256
	nop

.L269:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC51)

	beq	$2,$0,.L270
	lui	$4,%hi(.LC52)

	jal	rnd_function
	nop

	j	.L256
	nop

.L270:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC52)

	beq	$2,$0,.L271
	lui	$4,%hi(.LC53)

	jal	val_function
	nop

	j	.L256
	nop

.L271:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC53)

	beq	$2,$0,.L272
	lui	$4,%hi(.LC54)

	jal	inkey_function
	nop

	j	.L256
	nop

.L272:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC54)

	beq	$2,$0,.L273
	lui	$4,%hi(.LC55)

	jal	args_function
	nop

	j	.L256
	nop

.L273:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC55)

	beq	$2,$0,.L274
	lui	$4,%hi(.LC56)

	jal	system_function
	nop

	j	.L256
	nop

.L274:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC56)

	beq	$2,$0,.L275
	lui	$4,%hi(.LC57)

	jal	int_function
	nop

	j	.L256
	nop

.L275:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC57)

	beq	$2,$0,.L276
	lui	$4,%hi(.LC58)

	jal	graphic_statement
	li	$4,31			# 0x1f

	j	.L256
	nop

.L276:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC58)

	beq	$2,$0,.L277
	lui	$4,%hi(.LC59)

	jal	fopen_statement
	li	$4,33			# 0x21

	j	.L256
	nop

.L277:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC59)

	beq	$2,$0,.L278
	lui	$4,%hi(.LC60)

	jal	fseek_function
	nop

	j	.L256
	nop

.L278:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC60)

	beq	$2,$0,.L279
	lui	$4,%hi(.LC61)

	jal	flen_function
	nop

	j	.L256
	nop

.L279:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC61)

	beq	$2,$0,.L280
	lui	$4,%hi(.LC62)

	jal	fget_statement
	nop

	j	.L256
	nop

.L280:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC62)

	beq	$2,$0,.L281
	lui	$4,%hi(.LC63)

	jal	fput_statement
	nop

	j	.L256
	nop

.L281:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC63)

	beq	$2,$0,.L282
	lui	$4,%hi(.LC64)

	jal	fgetc_function
	nop

	j	.L256
	nop

.L282:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC64)

	beq	$2,$0,.L283
	lui	$4,%hi(.LC65)

	jal	fputc_statement
	nop

	j	.L256
	nop

.L283:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC65)

	beq	$2,$0,.L284
	lui	$4,%hi(.LC66)

	jal	fremove_statement
	nop

	j	.L256
	nop

.L284:
	jal	nextCodeIs
	addiu	$4,$4,%lo(.LC66)

	beq	$2,$0,.L289
	lui	$2,%hi(g_err_str)

	jal	feof_function
	nop

.L256:
	bne	$2,$0,.L290
	lw	$31,20($sp)

	lw	$3,%gp_rel(g_srcpos)($28)
	lw	$4,%gp_rel(g_source)($28)
	addu	$4,$4,$3
	lb	$5,0($4)
	li	$4,41			# 0x29
	beql	$5,$4,.L287
	addiu	$3,$3,1

	lui	$2,%hi(g_err_str)
.L289:
	j	.L286
	lw	$2,%lo(g_err_str)($2)

.L287:
	sw	$3,%gp_rel(g_srcpos)($28)
.L286:
	lw	$31,20($sp)
.L290:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	function
	.size	function, .-function
	.section	.rodata,code
	.align	2
.LC25:
	.word	1078530012
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
	.file	1 "globalvars.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3

	.comm	g_intconst,4,4

	.comm	g_valueisconst,1,1

	.comm	g_rnd_seed,4,4

	.comm	g_sdepth,4,4

	.comm	g_maxsdepth,4,4

	.comm	g_lastvar,4,4

	.comm	g_source,4,4

	.comm	g_srcpos,4,4

	.comm	g_line,4,4

	.comm	g_fileline,4,4

	.comm	g_object,4,4

	.comm	g_objpos,4,4

	.comm	g_objmax,4,4

	.comm	g_end_addr,4,4

	.comm	g_gp,4,4

	.comm	g_s6,4,4
	.globl	RAM
	.section	*.RAM,address(0xa0002800),persist,coherent
	.align	2
	.type	RAM, @object
	.size	RAM, 55232
RAM:
	.space	55232
	.globl	g_ex_data
	.section	*.g_ex_data,address(0xa000ffc0),persist,coherent
	.align	2
	.type	g_ex_data, @object
	.size	g_ex_data, 64
g_ex_data:
	.space	64

	.comm	g_var_mem,952,4

	.comm	g_var_pointer,476,4

	.comm	g_var_size,476,4

	.comm	g_temp_area_used,1,1

	.comm	g_heap_mem,4,4

	.comm	g_max_mem,4,4

	.comm	g_disable_break,1,1

	.comm	g_pcg_font,4,4

	.comm	g_use_graphic,1,1

	.comm	g_graphic_area,4,4

	.comm	g_libparams,4,4

	.comm	g_long_name_var_num,4,4

	.comm	g_temp,4,4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
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
	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	freadline
	.set	nomips16
	.set	nomicromips
	.ent	freadline
	.type	freadline, @function
freadline:
	.frame	$sp,56,$31		# vars= 8, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
	sw	$21,48($sp)
	sw	$20,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	sw	$31,52($sp)
	move	$19,$4
	move	$16,$5
	sb	$0,0($4)
	move	$17,$4
	move	$18,$0
	li	$21,10			# 0xa
	li	$20,35			# 0x23
.L16:
	move	$4,$17
.L17:
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	jal	FSfread
	move	$7,$16

	beql	$2,$0,.L1
	sb	$0,0($17)

	lb	$2,0($17)
	bne	$2,$21,.L4
	nop

	j	.L1
	sb	$0,0($17)

.L4:
	bne	$2,$20,.L6
	slt	$2,$2,33

	slt	$18,$18,9
	beq	$18,$0,.L7
	sb	$0,0($17)

	j	.L13
	li	$17,10			# 0xa

.L6:
	beql	$2,$0,.L9
	addiu	$18,$18,1

	beq	$18,$0,.L17
	move	$4,$17

	j	.L11
	sb	$0,0($17)

.L9:
	slt	$2,$18,9
	bne	$2,$0,.L16
	addiu	$17,$17,1

.L7:
	sb	$0,0($19)
.L11:
	li	$17,10			# 0xa
.L13:
	addiu	$4,$sp,16
.L18:
	li	$5,1			# 0x1
	li	$6,1			# 0x1
	jal	FSfread
	move	$7,$16

	beq	$2,$0,.L1
	lb	$2,16($sp)

	bne	$2,$17,.L18
	addiu	$4,$sp,16

.L1:
	lw	$31,52($sp)
	lw	$21,48($sp)
	lw	$20,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	freadline
	.size	freadline, .-freadline
	.align	2
	.globl	searchinittext
	.set	nomips16
	.set	nomicromips
	.ent	searchinittext
	.type	searchinittext, @function
searchinittext:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$3,%hi(InitKeywords)
	addiu	$3,$3,%lo(InitKeywords)
	move	$2,$0
	li	$8,5			# 0x5
.L23:
	move	$6,$3
	j	.L20
	move	$5,$4

.L22:
	beq	$7,$0,.L25
	addiu	$5,$5,1

	addiu	$6,$6,1
.L20:
	lb	$9,0($5)
	lb	$7,0($6)
	beq	$7,$9,.L22
	nop

	addiu	$2,$2,1
	bne	$2,$8,.L23
	addiu	$3,$3,9

	li	$2,-1			# 0xffffffffffffffff
.L25:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	searchinittext
	.size	searchinittext, .-searchinittext
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"MACHIKAZ.INI\000"
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"Initialization File Found\012\000"
	.section	.text,code
	.align	2
	.globl	readinifile
	.set	nomips16
	.set	nomicromips
	.ent	readinifile
	.type	readinifile, @function
readinifile:
	.frame	$sp,48,$31		# vars= 16, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$4,%hi(.LC0)
	lui	$5,%hi(.LC1)
	addiu	$sp,$sp,-48
	addiu	$4,$4,%lo(.LC0)
	addiu	$5,$5,%lo(.LC1)
	sw	$16,32($sp)
	sw	$31,44($sp)
	sw	$18,40($sp)
	jal	FSfopen
	sw	$17,36($sp)

	beq	$2,$0,.L26
	move	$16,$2

	lui	$4,%hi(.LC2)
	addiu	$4,$4,%lo(.LC2)
	jal	printstr
	lui	$18,%hi(.L36)

	addiu	$18,$18,%lo(.L36)
	sb	$0,%gp_rel(lockkey)($28)
	li	$17,1			# 0x1
.L40:
	jal	FSfeof
	move	$4,$16

	bne	$2,$0,.L30
	addiu	$4,$sp,16

	jal	freadline
	move	$5,$16

	jal	searchinittext
	addiu	$4,$sp,16

	sltu	$3,$2,5
	beq	$3,$0,.L40
	sll	$2,$2,2

	addu	$2,$18,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L36:
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
.L31:
	j	.L40
	sb	$0,%gp_rel(keytype)($28)

.L32:
	j	.L40
	sb	$17,%gp_rel(keytype)($28)

.L33:
	lbu	$2,%gp_rel(lockkey)($28)
	j	.L41
	ori	$2,$2,0x2

.L34:
	lbu	$2,%gp_rel(lockkey)($28)
	j	.L41
	ori	$2,$2,0x4

.L35:
	lbu	$2,%gp_rel(lockkey)($28)
	ori	$2,$2,0x1
.L41:
	j	.L40
	sb	$2,%gp_rel(lockkey)($28)

.L30:
	jal	FSfclose
	move	$4,$16

.L26:
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
	.end	readinifile
	.size	readinifile, .-readinifile
	.section	.rodata,code
	.align	2
.LC3:
	.ascii	"0123456789ABCDEF\000"
	.section	.text,code
	.align	2
	.globl	printhex8
	.set	nomips16
	.set	nomicromips
	.ent	printhex8
	.type	printhex8, @function
printhex8:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$17,24($sp)
	sw	$16,20($sp)
	andi	$17,$4,0x00ff
	lui	$16,%hi(.LC3)
	srl	$2,$17,4
	addiu	$16,$16,%lo(.LC3)
	addu	$2,$2,$16
	lbu	$4,0($2)
	andi	$17,$17,0xf
	sw	$31,28($sp)
	jal	printchar
	addu	$16,$17,$16

	lbu	$4,0($16)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	printchar
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printhex8
	.size	printhex8, .-printhex8
	.align	2
	.globl	printhex16
	.set	nomips16
	.set	nomicromips
	.ent	printhex16
	.type	printhex16, @function
printhex16:
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
	jal	printhex8
	srl	$4,$16,8

	andi	$4,$16,0x00ff
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	printhex8
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printhex16
	.size	printhex16, .-printhex16
	.align	2
	.globl	printhex32
	.set	nomips16
	.set	nomicromips
	.ent	printhex32
	.type	printhex32, @function
printhex32:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	move	$16,$4
	sw	$31,20($sp)
	jal	printhex16
	srl	$4,$4,16

	andi	$4,$16,0xffff
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	printhex16
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printhex32
	.size	printhex32, .-printhex32
	.section	.rodata,code
	.align	2
.LC4:
	.ascii	"MACHIKAZ.HEX\000"
	.align	2
.LC5:
	.ascii	".BAS\000"
	.align	2
.LC6:
	.ascii	"MachiKania BASIC System\012\000"
	.align	2
.LC7:
	.ascii	" Ver Zoea 1.06 by KENKEN\012\000"
	.align	2
.LC8:
	.ascii	"BASIC Compiler KM-1204\012\000"
	.align	2
.LC9:
	.ascii	" by Katsumi\012\012\000"
	.align	2
.LC10:
	.ascii	"Init File System...\000"
	.align	2
.LC11:
	.ascii	"\012File System Error\012\000"
	.align	2
.LC12:
	.ascii	"Insert Correct Card\012\000"
	.align	2
.LC13:
	.ascii	"And Reset\012\000"
	.align	2
.LC14:
	.ascii	"OK\012\000"
	.align	2
.LC15:
	.ascii	"Init PS/2...\000"
	.align	2
.LC16:
	.ascii	"Keyboard Not Found\012\000"
	.section	.text,code
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	lui	$4,%hi(DEVCFG1)
	lw	$2,%lo(DEVCFG1)($4)
	addiu	$sp,$sp,-32
	andi	$2,$2,0x8000
	sw	$31,28($sp)
	sw	$17,24($sp)
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L46
	sw	$16,20($sp)
	.set	macro
	.set	reorder

	lw	$2,%lo(DEVCFG1)($4)
	li	$5,-65536			# 0xffffffffffff0000
	addiu	$5,$5,32767
	addiu	$4,$4,%lo(DEVCFG1)
	.set	noreorder
	.set	nomacro
	jal	NVMWriteWord
	and	$5,$2,$5
	.set	macro
	.set	reorder

	jal	SoftReset
.L46:
	lui	$2,%hi(TRISA)
	sw	$0,%lo(TRISA)($2)
	lui	$2,%hi(ANSELA)
	sw	$0,%lo(ANSELA)($2)
	lui	$3,%hi(TRISB)
	li	$2,20352			# 0x4f80
	sw	$2,%lo(TRISB)($3)
	lui	$3,%hi(ANSELB)
	sw	$0,%lo(ANSELB)($3)
	lui	$3,%hi(CNPUBSET)
	sw	$2,%lo(CNPUBSET)($3)
	li	$3,768			# 0x300
	lui	$2,%hi(ODCB)
	sw	$3,%lo(ODCB)($2)
	li	$16,2			# 0x2
	lui	$2,%hi(SDI2R)
	sw	$16,%lo(SDI2R)($2)
	li	$3,4			# 0x4
	lui	$2,%hi(RPB5R)
	sw	$3,%lo(RPB5R)($2)
	li	$3,10304			# 0x2840
	lui	$2,%hi(BMXDKPBA)
	sw	$3,%lo(BMXDKPBA)($2)
	li	$2,65536			# 0x10000
	lui	$3,%hi(BMXDUDBA)
	sw	$2,%lo(BMXDUDBA)($3)
	lui	$3,%hi(BMXDUPBA)
	sw	$2,%lo(BMXDUPBA)($3)
	jal	ps2mode
	jal	init_composite
	move	$5,$0
	li	$6,7			# 0x7
	.set	noreorder
	.set	nomacro
	jal	setcursor
	move	$4,$0
	.set	macro
	.set	reorder

	jal	blue_screen
	lui	$4,%hi(.LC6)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC6)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC7)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC7)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC8)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC8)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC9)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC9)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	setcursorcolor
	li	$4,7			# 0x7
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC10)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC10)
	.set	macro
	.set	reorder

	jal	FSInit
	.set	noreorder
	.set	nomacro
	bne	$2,$0,.L47
	lui	$17,%hi(.LC14)
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	setcursorcolor
	li	$4,4			# 0x4
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC11)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC11)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC12)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC12)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC13)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC13)
	.set	macro
	.set	reorder

.L48:
 #APP
 # 185 "main.c" 1
	wait
 # 0 "" 2
 #NO_APP
	j	.L48
.L47:
	addiu	$17,$17,%lo(.LC14)
	.set	noreorder
	.set	nomacro
	jal	printstr
	move	$4,$17
	.set	macro
	.set	reorder

	sb	$16,%gp_rel(lockkey)($28)
	.set	noreorder
	.set	nomacro
	jal	readinifile
	sb	$0,%gp_rel(keytype)($28)
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC15)
	.set	noreorder
	.set	nomacro
	jal	printstr
	addiu	$4,$4,%lo(.LC15)
	.set	macro
	.set	reorder

	jal	ps2init
	.set	noreorder
	.set	nomacro
	beq	$2,$0,.L62
	move	$4,$17
	.set	macro
	.set	reorder

	lui	$4,%hi(.LC16)
	addiu	$4,$4,%lo(.LC16)
.L62:
	.set	noreorder
	.set	nomacro
	jal	printstr
	lui	$16,%hi(.LC4)
	.set	macro
	.set	reorder

	li	$4,60			# 0x3c
	.set	noreorder
	.set	nomacro
	jal	wait60thsec
	li	$17,-1660944384			# 0xffffffff9d000000
	.set	macro
	.set	reorder

	addiu	$16,$16,%lo(.LC4)
	.set	noreorder
	.set	nomacro
	j	.L61
	addiu	$17,$17,22528
	.set	macro
	.set	reorder

.L53:
	addiu	$16,$16,1
	lb	$2,0($16)
	.set	noreorder
	.set	nomacro
	bnel	$2,$0,.L63
	lb	$2,0($17)
	.set	macro
	.set	reorder

	jal	texteditor
.L61:
	lb	$2,0($17)
.L63:
	lb	$3,0($16)
	.set	noreorder
	.set	nomacro
	beq	$3,$2,.L53
	addiu	$17,$17,1
	.set	macro
	.set	reorder

	lui	$4,%hi(tempfile)
	addiu	$4,$4,%lo(tempfile)
	li	$3,-1660944384			# 0xffffffff9d000000
	move	$2,$4
	addiu	$3,$3,22528
	.set	noreorder
	.set	nomacro
	j	.L54
	li	$6,46			# 0x2e
	.set	macro
	.set	reorder

.L55:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L54:
	lb	$5,0($3)
	.set	noreorder
	.set	nomacro
	bnel	$5,$6,.L55
	sb	$5,0($2)
	.set	macro
	.set	reorder

	lui	$3,%hi(.LC5)
	.set	noreorder
	.set	nomacro
	j	.L56
	addiu	$3,$3,%lo(.LC5)
	.set	macro
	.set	reorder

.L57:
	addiu	$3,$3,1
	addiu	$2,$2,1
.L56:
	lb	$5,0($3)
	.set	noreorder
	.set	nomacro
	bnel	$5,$0,.L57
	sb	$5,0($2)
	.set	macro
	.set	reorder

	sb	$0,0($2)
	li	$2,1			# 0x1
	.set	noreorder
	.set	nomacro
	jal	runbasic
	sb	$2,%gp_rel(g_disable_break)($28)
	.set	macro
	.set	reorder

.L58:
 #APP
 # 215 "main.c" 1
	wait
 # 0 "" 2
 #NO_APP
	j	.L58
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
	.size	main, .-main
	.globl	InitKeywords
	.section	.rodata,code
	.align	2
	.type	InitKeywords, @object
	.size	InitKeywords, 45
InitKeywords:
	.ascii	"106KEY\000"
	.space	2
	.ascii	"101KEY\000"
	.space	2
	.ascii	"NUMLOCK\000"
	.space	1
	.ascii	"CAPSLOCK\000"
	.ascii	"SCRLLOCK\000"
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
# Configuration word @ 0xbfc00bfc
	.section	.config_BFC00BFC, code, keep, address(0xBFC00BFC)
	.type	__config_BFC00BFC, @object
	.size	__config_BFC00BFC, 4
__config_BFC00BFC:
	.word	0x7FFFFFFB
# Configuration word @ 0xbfc00bf8
	.section	.config_BFC00BF8, code, keep, address(0xBFC00BF8)
	.type	__config_BFC00BF8, @object
	.size	__config_BFC00BF8, 4
__config_BFC00BF8:
	.word	0xFF7F4DDB
# Configuration word @ 0xbfc00bf4
	.section	.config_BFC00BF4, code, keep, address(0xBFC00BF4)
	.type	__config_BFC00BF4, @object
	.size	__config_BFC00BF4, 4
__config_BFC00BF4:
	.word	0xFFF8FF98
# Configuration word @ 0xbfc00bf0
	.section	.config_BFC00BF0, code, keep, address(0xBFC00BF0)
	.type	__config_BFC00BF0, @object
	.size	__config_BFC00BF0, 4
__config_BFC00BF0:
	.word	0xCFFFFFFF
	.file	1 "memory.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	set_free_area
	.set	nomips16
	.set	nomicromips
	.ent	set_free_area
	.type	set_free_area, @function
set_free_area:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(g_var_size)
	addiu	$2,$2,%lo(g_var_size)
	addiu	$3,$2,476
	sh	$0,0($2)
.L4:
	addiu	$2,$2,2
	bnel	$2,$3,.L4
	sh	$0,0($2)

	sw	$4,%gp_rel(g_heap_mem)($28)
	subu	$4,$5,$4
	addiu	$2,$4,3
	slt	$3,$4,0
	movn	$4,$2,$3
	sra	$4,$4,2
	j	$31
	sw	$4,%gp_rel(g_max_mem)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	set_free_area
	.size	set_free_area, .-set_free_area
	.align	2
	.globl	alloc_memory
	.set	nomips16
	.set	nomicromips
	.ent	alloc_memory
	.type	alloc_memory, @function
alloc_memory:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
# End mchp_output_function_prologue
 #APP
 # 49 "memory.c" 1
	nop
 # 0 "" 2
 # 50 "memory.c" 1
	bltz $s6,_alloc_memory_main
 # 0 "" 2
 # 53 "memory.c" 1
	lui $v0,0x8000
 # 0 "" 2
 # 54 "memory.c" 1
	or $s6,$v0,$s6
 # 0 "" 2
 # 59 "memory.c" 1
	addiu $v0,$zero,5
 # 0 "" 2
 # 60 "memory.c" 1
	la $v1,g_var_size
 # 0 "" 2
 # 61 "memory.c" 1
	loop:
 # 0 "" 2
 # 62 "memory.c" 1
	sw $zero,(26*2)($v1)
 # 0 "" 2
 # 63 "memory.c" 1
	addiu $v0,$v0,-1
 # 0 "" 2
 # 64 "memory.c" 1
	addiu $v1,$v1,4
 # 0 "" 2
 # 65 "memory.c" 1
	bne $v0,$zero,loop
 # 0 "" 2
 # 66 "memory.c" 1
	b _alloc_memory_main
 # 0 "" 2
 #NO_APP
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	alloc_memory
	.size	alloc_memory, .-alloc_memory
	.align	2
	.globl	calloc_memory
	.set	nomips16
	.set	nomicromips
	.ent	calloc_memory
	.type	calloc_memory, @function
calloc_memory:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	alloc_memory
	move	$16,$4

	move	$4,$2
	j	.L7
	move	$3,$0

.L8:
	addiu	$3,$3,1
	addiu	$4,$4,4
.L7:
	slt	$5,$3,$16
	bnel	$5,$0,.L8
	sw	$0,0($4)

	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	calloc_memory
	.size	calloc_memory, .-calloc_memory
	.align	2
	.globl	_alloc_memory_main
	.set	nomips16
	.set	nomicromips
	.ent	_alloc_memory_main
	.type	_alloc_memory_main, @function
_alloc_memory_main:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	bgez	$5,.L10
	sw	$31,20($sp)

	lui	$2,%hi(g_var_size+52)
	addiu	$2,$2,%lo(g_var_size+52)
	li	$5,26			# 0x1a
	li	$3,36			# 0x24
.L11:
	lhu	$6,0($2)
	beq	$6,$0,.L33
	lui	$7,%hi(g_var_size)

	addiu	$5,$5,1
	bne	$5,$3,.L11
	addiu	$2,$2,2

	j	.L30
	nop

.L10:
	lui	$7,%hi(g_var_size)
.L33:
	lui	$8,%hi(g_var_pointer)
	sll	$2,$5,1
	addiu	$9,$7,%lo(g_var_size)
	addiu	$6,$8,%lo(g_var_pointer)
	addu	$3,$2,$9
	addu	$2,$2,$6
	sh	$0,0($3)
	sh	$0,0($2)
	move	$3,$0
	move	$2,$0
	li	$12,476			# 0x1dc
	addu	$10,$9,$3
.L35:
	lhu	$11,0($10)
	beql	$11,$0,.L34
	addiu	$3,$3,2

	addu	$10,$6,$3
	lhu	$10,0($10)
	slt	$13,$10,$2
	addu	$10,$11,$10
	movz	$2,$10,$13
	addiu	$3,$3,2
.L34:
	bne	$3,$12,.L35
	addu	$10,$9,$3

	lw	$12,%gp_rel(g_max_mem)($28)
	addu	$3,$2,$4
	slt	$3,$12,$3
	beq	$3,$0,.L15
	sll	$3,$5,1

	move	$3,$0
	addiu	$11,$7,%lo(g_var_size)
	addiu	$10,$8,%lo(g_var_pointer)
	li	$9,476			# 0x1dc
	addu	$2,$11,$3
.L39:
	lhu	$6,0($2)
	addu	$2,$10,$3
	lhu	$2,0($2)
	addu	$2,$6,$2
	addu	$15,$2,$4
	move	$6,$0
	addu	$13,$11,$6
.L38:
	lhu	$14,0($13)
	beql	$14,$0,.L36
	addiu	$6,$6,2

	addu	$13,$10,$6
	lhu	$13,0($13)
	slt	$24,$13,$15
	beql	$24,$0,.L36
	addiu	$6,$6,2

	addu	$13,$14,$13
	slt	$13,$2,$13
	bnel	$13,$0,.L37
	addiu	$3,$3,2

	addiu	$6,$6,2
.L36:
	bne	$6,$9,.L38
	addu	$13,$11,$6

	j	.L31
	addu	$6,$2,$4

.L17:
.L37:
	bnel	$3,$9,.L39
	addu	$2,$11,$3

	jal	err_no_mem
	nop

	j	.L21
	move	$2,$0

.L15:
.L32:
	addiu	$8,$8,%lo(g_var_pointer)
	addiu	$7,$7,%lo(g_var_size)
	addu	$8,$3,$8
	addu	$3,$3,$7
	sh	$4,0($3)
	lw	$3,%gp_rel(g_heap_mem)($28)
	sh	$2,0($8)
	sll	$2,$2,2
	addu	$2,$3,$2
	lui	$3,%hi(g_var_mem)
	sll	$5,$5,2
	addiu	$3,$3,%lo(g_var_mem)
	addu	$5,$5,$3
	sw	$2,0($5)
.L21:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

.L30:
	jal	err_str_complex
	nop

	j	.L21
	move	$2,$0

.L31:
	slt	$6,$12,$6
	bnel	$6,$0,.L17
	addiu	$3,$3,2

	j	.L32
	sll	$3,$5,1

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_alloc_memory_main
	.size	_alloc_memory_main, .-_alloc_memory_main
	.align	2
	.globl	free_temp_str
	.set	nomips16
	.set	nomicromips
	.ent	free_temp_str
	.type	free_temp_str, @function
free_temp_str:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	beq	$4,$0,.L45
	lw	$2,%gp_rel(g_heap_mem)($28)

	lui	$3,%hi(g_var_pointer)
	subu	$4,$4,$2
	sra	$4,$4,2
	addiu	$3,$3,%lo(g_var_pointer)
	move	$2,$0
	li	$5,238			# 0xee
.L43:
	lhu	$6,0($3)
	bnel	$6,$4,.L42
	addiu	$2,$2,1

	lui	$3,%hi(g_var_size)
	sll	$2,$2,1
	addiu	$3,$3,%lo(g_var_size)
	addu	$2,$2,$3
	j	$31
	sh	$0,0($2)

.L42:
	bne	$2,$5,.L43
	addiu	$3,$3,2

.L45:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	free_temp_str
	.size	free_temp_str, .-free_temp_str
	.align	2
	.globl	move_to_perm_block
	.set	nomips16
	.set	nomicromips
	.ent	move_to_perm_block
	.type	move_to_perm_block, @function
move_to_perm_block:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	lui	$2,%hi(g_var_size+456)
	sw	$16,24($sp)
	sw	$31,28($sp)
	addiu	$2,$2,%lo(g_var_size+456)
	li	$16,228			# 0xe4
	li	$3,238			# 0xee
.L48:
	lhu	$5,0($2)
	beql	$5,$0,.L53
	lui	$2,%hi(g_var_size)

	addiu	$16,$16,1
	bne	$16,$3,.L48
	addiu	$2,$2,2

	j	.L52
	nop

.L47:
	lui	$2,%hi(g_var_size)
.L53:
	sll	$6,$16,1
	sll	$5,$4,1
	addiu	$2,$2,%lo(g_var_size)
	addu	$3,$6,$2
	addu	$2,$5,$2
	lhu	$7,0($2)
	sll	$4,$4,2
	sh	$7,0($3)
	lui	$3,%hi(g_var_pointer)
	addiu	$3,$3,%lo(g_var_pointer)
	addu	$6,$6,$3
	addu	$3,$5,$3
	lhu	$3,0($3)
	sll	$16,$16,2
	sh	$3,0($6)
	lui	$3,%hi(g_var_mem)
	addiu	$3,$3,%lo(g_var_mem)
	addu	$4,$4,$3
	addu	$16,$16,$3
	lw	$31,28($sp)
	lw	$3,0($4)
	sh	$0,0($2)
	sw	$3,0($16)
	lw	$16,24($sp)
	sw	$0,0($4)
	j	$31
	addiu	$sp,$sp,32

.L52:
	jal	err_no_block
	sw	$4,16($sp)

	j	.L47
	lw	$4,16($sp)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	move_to_perm_block
	.size	move_to_perm_block, .-move_to_perm_block
	.align	2
	.globl	move_from_perm_block
	.set	nomips16
	.set	nomicromips
	.ent	move_from_perm_block
	.type	move_from_perm_block, @function
move_from_perm_block:
	.frame	$sp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(g_var_mem)
	sll	$3,$4,2
	addiu	$2,$2,%lo(g_var_mem)
	addu	$2,$3,$2
	lw	$6,0($2)
	lw	$2,%gp_rel(g_heap_mem)($28)
	addiu	$sp,$sp,-32
	subu	$6,$6,$2
	lui	$3,%hi(g_var_size+456)
	lui	$2,%hi(g_var_pointer+456)
	sw	$16,24($sp)
	sw	$31,28($sp)
	sra	$6,$6,2
	addiu	$3,$3,%lo(g_var_size+456)
	addiu	$2,$2,%lo(g_var_pointer+456)
	li	$16,228			# 0xe4
	li	$5,238			# 0xee
.L57:
	lhu	$7,0($3)
	beql	$7,$0,.L62
	addiu	$16,$16,1

	lhu	$7,0($2)
	beql	$7,$6,.L63
	lui	$2,%hi(g_var_size)

	addiu	$16,$16,1
.L62:
	addiu	$3,$3,2
	bne	$16,$5,.L57
	addiu	$2,$2,2

	j	.L61
	nop

.L56:
	lui	$2,%hi(g_var_size)
.L63:
	sll	$4,$4,1
	addiu	$2,$2,%lo(g_var_size)
	sll	$16,$16,1
	addu	$3,$4,$2
	addu	$2,$16,$2
	lhu	$5,0($2)
	lw	$31,28($sp)
	sh	$5,0($3)
	lui	$3,%hi(g_var_pointer)
	addiu	$3,$3,%lo(g_var_pointer)
	addu	$16,$16,$3
	addu	$4,$4,$3
	lhu	$3,0($16)
	sh	$0,0($2)
	lw	$16,24($sp)
	sh	$3,0($4)
	j	$31
	addiu	$sp,$sp,32

.L61:
	jal	err_unknown
	sw	$4,16($sp)

	j	.L56
	lw	$4,16($sp)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	move_from_perm_block
	.size	move_from_perm_block, .-move_from_perm_block
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
	.file	1 "music.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	musicRemaining
	.set	nomips16
	.set	nomicromips
	.ent	musicRemaining
	.type	musicRemaining, @function
musicRemaining:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(g_musicstart)($28)
	lw	$3,%gp_rel(g_musicend)($28)
	subu	$2,$3,$2
	j	$31
	andi	$2,$2,0x1f

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	musicRemaining
	.size	musicRemaining, .-musicRemaining
	.align	2
	.globl	timer4int
	.set	nomips16
	.set	nomicromips
	.ent	timer4int
	.type	timer4int, @function
timer4int:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x0000001c,-20
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: DEFAULT_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$27,$14
	mfc0	$26,$12,2
	addiu	$sp,$sp,-32
	sw	$27,28($sp)
	mfc0	$27,$12
	sw	$26,24($sp)
	mfc0	$26,$13
	srl	$26,$26,10
	sw	$27,20($sp)
	ins	$27,$26,10,6
	ins	$27,$0,1,4
	mtc0	$27,$12
	sw	$3,8($sp)
	sw	$2,4($sp)
	sw	$4,12($sp)
	li	$3,524288			# 0x80000
	lui	$2,%hi(IFS0CLR)
	sw	$3,%lo(IFS0CLR)($2)
	lw	$2,%gp_rel(g_soundstart)($28)
	lw	$3,%gp_rel(g_soundend)($28)
	beq	$2,$3,.L3
	lui	$3,%hi(g_sound)

	addiu	$3,$3,%lo(g_sound)
	sll	$2,$2,1
	addu	$2,$2,$3
	lhu	$2,0($2)
	li	$3,65535			# 0xffff
	beq	$2,$3,.L4
	li	$3,32768			# 0x8000

	li	$4,32768			# 0x8000
	lui	$3,%hi(T3CONSET)
	sw	$4,%lo(T3CONSET)($3)
	lui	$3,%hi(PR3)
	sw	$2,%lo(PR3)($3)
	lui	$3,%hi(TMR3)
	lw	$4,%lo(TMR3)($3)
	sltu	$2,$2,$4
	bnel	$2,$0,.L5
	sw	$0,%lo(TMR3)($3)

	j	.L20
	lw	$2,%gp_rel(g_soundwait)($28)

.L4:
	lui	$2,%hi(T3CONCLR)
	sw	$3,%lo(T3CONCLR)($2)
.L5:
	lw	$2,%gp_rel(g_soundwait)($28)
.L20:
	addiu	$2,$2,-1
	bgtz	$2,.L6
	sw	$2,%gp_rel(g_soundwait)($28)

	lw	$2,%gp_rel(g_soundstart)($28)
	lw	$3,%gp_rel(g_soundend)($28)
	addiu	$2,$2,1
	beq	$2,$3,.L7
	sw	$2,%gp_rel(g_soundstart)($28)

	slt	$3,$2,32
	bne	$3,$0,.L8
	lui	$3,%hi(g_soundlen)

.L7:
	lw	$2,%gp_rel(g_soundrepeat)($28)
	sw	$0,%gp_rel(g_soundstart)($28)
	addiu	$2,$2,-1
	blez	$2,.L9
	sw	$2,%gp_rel(g_soundrepeat)($28)

	lui	$2,%hi(g_soundlen)
	j	.L18
	lbu	$2,%lo(g_soundlen)($2)

.L9:
	sw	$0,%gp_rel(g_soundwait)($28)
	sw	$0,%gp_rel(g_soundrepeat)($28)
	j	.L6
	sw	$0,%gp_rel(g_soundend)($28)

.L8:
	addiu	$3,$3,%lo(g_soundlen)
	addu	$2,$2,$3
	lbu	$2,0($2)
.L18:
	sw	$2,%gp_rel(g_soundwait)($28)
.L6:
	lw	$2,%gp_rel(g_musicstart)($28)
	lw	$3,%gp_rel(g_musicend)($28)
	beq	$2,$3,.L2
	lw	$3,%gp_rel(g_musicwait)($28)

	addiu	$3,$3,-1
	bgtz	$3,.L2
	sw	$3,%gp_rel(g_musicwait)($28)

	j	.L21
	addiu	$2,$2,1

.L3:
	lw	$2,%gp_rel(g_musicstart)($28)
	lw	$3,%gp_rel(g_musicend)($28)
	beq	$2,$3,.L11
	lui	$3,%hi(g_music)

	addiu	$3,$3,%lo(g_music)
	sll	$2,$2,1
	addu	$2,$2,$3
	lhu	$2,0($2)
	li	$3,65535			# 0xffff
	beq	$2,$3,.L12
	li	$3,32768			# 0x8000

	li	$4,32768			# 0x8000
	lui	$3,%hi(T3CONSET)
	sw	$4,%lo(T3CONSET)($3)
	lui	$3,%hi(PR3)
	sw	$2,%lo(PR3)($3)
	lui	$3,%hi(TMR3)
	lw	$4,%lo(TMR3)($3)
	sltu	$2,$2,$4
	bnel	$2,$0,.L13
	sw	$0,%lo(TMR3)($3)

	j	.L22
	lw	$2,%gp_rel(g_musicwait)($28)

.L12:
	lui	$2,%hi(T3CONCLR)
	sw	$3,%lo(T3CONCLR)($2)
.L13:
	lw	$2,%gp_rel(g_musicwait)($28)
.L22:
	addiu	$2,$2,-1
	bgtz	$2,.L2
	sw	$2,%gp_rel(g_musicwait)($28)

	lw	$2,%gp_rel(g_musicstart)($28)
	addiu	$2,$2,1
.L21:
	andi	$2,$2,0x1f
	lui	$3,%hi(g_musiclen)
	sw	$2,%gp_rel(g_musicstart)($28)
	addiu	$3,$3,%lo(g_musiclen)
	sll	$2,$2,1
	addu	$2,$2,$3
	lhu	$2,0($2)
	j	.L2
	sw	$2,%gp_rel(g_musicwait)($28)

.L11:
	li	$3,32768			# 0x8000
	lui	$2,%hi(T3CONCLR)
	sw	$3,%lo(T3CONCLR)($2)
.L2:
	lw	$4,12($sp)
	lw	$3,8($sp)
	lw	$2,4($sp)
	di
	ehb
	lw	$26,28($sp)
	lw	$27,20($sp)
	mtc0	$26,$14
	lw	$26,24($sp)
	addiu	$sp,$sp,32
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	timer4int
	.size	timer4int, .-timer4int
	.align	2
	.globl	musicGetNum
	.set	nomips16
	.set	nomicromips
	.ent	musicGetNum
	.type	musicGetNum, @function
musicGetNum:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$6,%gp_rel(g_mspos)($28)
	lw	$4,%gp_rel(g_mstr)($28)
	move	$2,$0
	addu	$4,$4,$6
	lb	$5,0($4)
	move	$3,$0
	j	.L24
	li	$7,10			# 0xa

.L25:
	mul	$8,$2,$7
	addiu	$3,$3,1
	addu	$2,$8,$5
	lb	$5,0($4)
	addiu	$2,$2,-48
.L24:
	addiu	$8,$5,-48
	andi	$8,$8,0x00ff
	sltu	$8,$8,10
	bne	$8,$0,.L25
	addiu	$4,$4,1

	addu	$3,$3,$6
	j	$31
	sw	$3,%gp_rel(g_mspos)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	musicGetNum
	.size	musicGetNum, .-musicGetNum
	.align	2
	.globl	init_music
	.set	nomips16
	.set	nomicromips
	.ent	init_music
	.type	init_music, @function
init_music:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,5			# 0x5
	lui	$2,%hi(RPB13R)
	sw	$3,%lo(RPB13R)($2)
	lui	$2,%hi(OC4R)
	sw	$0,%lo(OC4R)($2)
	li	$3,11			# 0xb
	lui	$2,%hi(OC4CON)
	sw	$3,%lo(OC4CON)($2)
	li	$3,32768			# 0x8000
	lui	$2,%hi(OC4CONSET)
	sw	$3,%lo(OC4CONSET)($2)
	li	$3,80			# 0x50
	lui	$2,%hi(T3CON)
	sw	$3,%lo(T3CON)($2)
	li	$3,64			# 0x40
	lui	$2,%hi(T4CON)
	sw	$3,%lo(T4CON)($2)
	li	$3,59473			# 0xe851
	lui	$2,%hi(PR4)
	sw	$3,%lo(PR4)($2)
	lui	$2,%hi(IPC4)
	lw	$3,%lo(IPC4)($2)
	li	$4,3			# 0x3
	ins	$3,$4,2,3
	sw	$3,%lo(IPC4)($2)
	lw	$3,%lo(IPC4)($2)
	li	$4,1			# 0x1
	ins	$3,$0,0,2
	sw	$3,%lo(IPC4)($2)
	lui	$2,%hi(IFS0)
	lw	$3,%lo(IFS0)($2)
	ins	$3,$0,19,1
	sw	$3,%lo(IFS0)($2)
	lui	$2,%hi(IEC0)
	lw	$3,%lo(IEC0)($2)
	ins	$3,$4,19,1
	sw	$3,%lo(IEC0)($2)
.L27:
	lbu	$2,%gp_rel(drawing)($28)
	seb	$2,$2
	beq	$2,$0,.L27
	nop

.L29:
	lbu	$2,%gp_rel(drawing)($28)
	seb	$2,$2
	bne	$2,$0,.L29
	lui	$2,%hi(T4CONSET)

	li	$3,32768			# 0x8000
	sw	$3,%lo(T4CONSET)($2)
	li	$2,160			# 0xa0
	sw	$2,%gp_rel(g_qvalue)($28)
	li	$2,20			# 0x14
	sw	$2,%gp_rel(g_lvalue)($28)
	lui	$2,%hi(g_keys+196)
	addiu	$2,$2,%lo(g_keys+196)
	sw	$2,%gp_rel(g_tones)($28)
	sw	$0,%gp_rel(g_soundrepeat)($28)
	sw	$0,%gp_rel(g_soundwait)($28)
	sw	$0,%gp_rel(g_soundend)($28)
	sw	$0,%gp_rel(g_soundstart)($28)
	sw	$0,%gp_rel(g_musicwait)($28)
	sw	$0,%gp_rel(g_musicend)($28)
	j	$31
	sw	$0,%gp_rel(g_musicstart)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	init_music
	.size	init_music, .-init_music
	.align	2
	.globl	musicSetL
	.set	nomips16
	.set	nomicromips
	.ent	musicSetL
	.type	musicSetL, @function
musicSetL:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	musicGetNum
	sw	$16,16($sp)

	move	$16,$2
	lw	$2,%gp_rel(g_mspos)($28)
	addiu	$2,$2,1
	jal	musicGetNum
	sw	$2,%gp_rel(g_mspos)($28)

	lw	$3,%gp_rel(g_qvalue)($28)
	lw	$31,20($sp)
	mul	$3,$16,$3
	lw	$16,16($sp)
	div	$0,$3,$2
	teq	$2,$0,7
	addiu	$sp,$sp,24
	mflo	$3
	j	$31
	sw	$3,%gp_rel(g_lvalue)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	musicSetL
	.size	musicSetL, .-musicSetL
	.align	2
	.globl	musicSetQ
	.set	nomips16
	.set	nomicromips
	.ent	musicSetQ
	.type	musicSetQ, @function
musicSetQ:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	lw	$5,%gp_rel(g_mstr)($28)
	lw	$2,%gp_rel(g_mspos)($28)
	sw	$31,20($sp)
	li	$4,61			# 0x3d
.L34:
	addu	$6,$5,$2
	lb	$6,0($6)
	bne	$6,$4,.L34
	addiu	$2,$2,1

	jal	musicGetNum
	sw	$2,%gp_rel(g_mspos)($28)

	slt	$3,$2,48
	beq	$3,$0,.L35
	slt	$3,$2,53

	j	.L45
	li	$2,320			# 0x140

.L35:
	beq	$3,$0,.L37
	slt	$3,$2,60

	j	.L45
	li	$2,288			# 0x120

.L37:
	beq	$3,$0,.L38
	slt	$3,$2,70

	j	.L45
	li	$2,256			# 0x100

.L38:
	beq	$3,$0,.L39
	slt	$3,$2,83

	j	.L45
	li	$2,224			# 0xe0

.L39:
	beq	$3,$0,.L40
	slt	$3,$2,102

	j	.L45
	li	$2,192			# 0xc0

.L40:
	beq	$3,$0,.L41
	slt	$3,$2,132

	j	.L45
	li	$2,160			# 0xa0

.L41:
	beql	$3,$0,.L42
	slt	$2,$2,188

	j	.L45
	li	$2,128			# 0x80

.L42:
	beql	$2,$0,.L43
	li	$2,64			# 0x40

	li	$2,96			# 0x60
.L43:
.L45:
	sw	$2,%gp_rel(g_qvalue)($28)
	lw	$2,%gp_rel(g_qvalue)($28)
	lw	$31,20($sp)
	sra	$2,$2,3
	sw	$2,%gp_rel(g_lvalue)($28)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	musicSetQ
	.size	musicSetQ, .-musicSetQ
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"A#m\000"
	.align	2
.LC1:
	.ascii	"D#m\000"
	.align	2
.LC2:
	.ascii	"G#m\000"
	.align	2
.LC3:
	.ascii	"C#m\000"
	.align	2
.LC4:
	.ascii	"F#m\000"
	.align	2
.LC5:
	.ascii	"Bbm\000"
	.align	2
.LC6:
	.ascii	"Ebm\000"
	.align	2
.LC7:
	.ascii	"Abm\000"
	.align	2
.LC8:
	.ascii	"C#\000"
	.align	2
.LC9:
	.ascii	"F#\000"
	.align	2
.LC10:
	.ascii	"Bm\000"
	.align	2
.LC11:
	.ascii	"Em\000"
	.align	2
.LC12:
	.ascii	"Am\000"
	.align	2
.LC13:
	.ascii	"Dm\000"
	.align	2
.LC14:
	.ascii	"Gm\000"
	.align	2
.LC15:
	.ascii	"Bb\000"
	.align	2
.LC16:
	.ascii	"Cm\000"
	.align	2
.LC17:
	.ascii	"Eb\000"
	.align	2
.LC18:
	.ascii	"Fm\000"
	.align	2
.LC19:
	.ascii	"Ab\000"
	.align	2
.LC20:
	.ascii	"Db\000"
	.align	2
.LC21:
	.ascii	"Gb\000"
	.align	2
.LC22:
	.ascii	"Cb\000"
	.section	.text,code
	.align	2
	.globl	musicSetK
	.set	nomips16
	.set	nomicromips
	.ent	musicSetK
	.type	musicSetK, @function
musicSetK:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$18,24($sp)
	sw	$17,20($sp)
	lw	$18,%gp_rel(g_mstr)($28)
	lw	$17,%gp_rel(g_mspos)($28)
	sw	$16,16($sp)
	lui	$5,%hi(.LC0)
	addu	$16,$18,$17
	move	$4,$16
	addiu	$5,$5,%lo(.LC0)
	sw	$31,28($sp)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L47
	lui	$5,%hi(.LC1)

	j	.L81
	addiu	$17,$17,3

.L47:
	move	$4,$16
	addiu	$5,$5,%lo(.LC1)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L49
	lui	$5,%hi(.LC2)

	j	.L82
	addiu	$17,$17,3

.L49:
	move	$4,$16
	addiu	$5,$5,%lo(.LC2)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L50
	lui	$5,%hi(.LC3)

	j	.L73
	addiu	$17,$17,3

.L50:
	move	$4,$16
	addiu	$5,$5,%lo(.LC3)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L51
	lui	$5,%hi(.LC4)

	j	.L76
	addiu	$17,$17,3

.L51:
	move	$4,$16
	addiu	$5,$5,%lo(.LC4)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L52
	lui	$5,%hi(.LC5)

	j	.L72
	addiu	$17,$17,3

.L52:
	move	$4,$16
	addiu	$5,$5,%lo(.LC5)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L53
	lui	$5,%hi(.LC6)

	j	.L83
	addiu	$17,$17,3

.L53:
	move	$4,$16
	addiu	$5,$5,%lo(.LC6)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L54
	lui	$5,%hi(.LC7)

	j	.L84
	addiu	$17,$17,3

.L54:
	move	$4,$16
	addiu	$5,$5,%lo(.LC7)
	jal	strncmp
	li	$6,3			# 0x3

	bne	$2,$0,.L55
	lui	$5,%hi(.LC8)

	j	.L85
	addiu	$17,$17,3

.L55:
	move	$4,$16
	addiu	$5,$5,%lo(.LC8)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L56
	lui	$5,%hi(.LC9)

	addiu	$17,$17,2
.L81:
	lui	$2,%hi(g_keys)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys)

.L56:
	move	$4,$16
	addiu	$5,$5,%lo(.LC9)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L57
	lui	$5,%hi(.LC10)

	addiu	$17,$17,2
.L82:
	lui	$2,%hi(g_keys+28)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+28)

.L57:
	move	$4,$16
	addiu	$5,$5,%lo(.LC10)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L58
	lui	$5,%hi(.LC11)

	j	.L75
	addiu	$17,$17,2

.L58:
	move	$4,$16
	addiu	$5,$5,%lo(.LC11)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L59
	lui	$5,%hi(.LC12)

	j	.L78
	addiu	$17,$17,2

.L59:
	move	$4,$16
	addiu	$5,$5,%lo(.LC12)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L60
	lui	$5,%hi(.LC13)

	j	.L74
	addiu	$17,$17,2

.L60:
	move	$4,$16
	addiu	$5,$5,%lo(.LC13)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L61
	lui	$5,%hi(.LC14)

	j	.L77
	addiu	$17,$17,2

.L61:
	move	$4,$16
	addiu	$5,$5,%lo(.LC14)
	jal	strncmp
	li	$6,2			# 0x2

	beq	$2,$0,.L62
	lui	$5,%hi(.LC15)

	move	$4,$16
	addiu	$5,$5,%lo(.LC15)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L63
	lui	$5,%hi(.LC16)

.L62:
	addiu	$17,$17,2
	lui	$2,%hi(g_keys+252)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+252)

.L63:
	move	$4,$16
	addiu	$5,$5,%lo(.LC16)
	jal	strncmp
	li	$6,2			# 0x2

	beq	$2,$0,.L64
	lui	$5,%hi(.LC17)

	move	$4,$16
	addiu	$5,$5,%lo(.LC17)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L65
	lui	$5,%hi(.LC18)

.L64:
	addiu	$17,$17,2
	lui	$2,%hi(g_keys+280)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+280)

.L65:
	move	$4,$16
	addiu	$5,$5,%lo(.LC18)
	jal	strncmp
	li	$6,2			# 0x2

	beq	$2,$0,.L66
	lui	$5,%hi(.LC19)

	move	$4,$16
	addiu	$5,$5,%lo(.LC19)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L67
	lui	$5,%hi(.LC20)

.L66:
	addiu	$17,$17,2
	lui	$2,%hi(g_keys+308)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+308)

.L67:
	move	$4,$16
	addiu	$5,$5,%lo(.LC20)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L68
	lui	$5,%hi(.LC21)

	addiu	$17,$17,2
.L83:
	lui	$2,%hi(g_keys+336)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+336)

.L68:
	move	$4,$16
	addiu	$5,$5,%lo(.LC21)
	jal	strncmp
	li	$6,2			# 0x2

	bne	$2,$0,.L69
	lui	$5,%hi(.LC22)

	addiu	$17,$17,2
.L84:
	lui	$2,%hi(g_keys+364)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+364)

.L69:
	move	$4,$16
	addiu	$5,$5,%lo(.LC22)
	jal	strncmp
	li	$6,2			# 0x2

	bnel	$2,$0,.L70
	lbu	$2,0($16)

	addiu	$17,$17,2
.L85:
	lui	$2,%hi(g_keys+392)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+392)

.L70:
	addiu	$2,$2,-65
	andi	$2,$2,0x00ff
	sltu	$3,$2,7
	beq	$3,$0,.L71
	move	$4,$18

	lui	$3,%hi(.L79)
	sll	$2,$2,2
	addiu	$3,$3,%lo(.L79)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	addiu	$17,$17,1

	.align	2
	.align	2
.L79:
	.word	.L72
	.word	.L73
	.word	.L74
	.word	.L75
	.word	.L76
	.word	.L77
	.word	.L78
.L73:
	lui	$2,%hi(g_keys+56)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+56)

.L76:
	lui	$2,%hi(g_keys+84)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+84)

.L72:
	lui	$2,%hi(g_keys+112)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+112)

.L75:
	lui	$2,%hi(g_keys+140)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+140)

.L78:
	lui	$2,%hi(g_keys+168)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+168)

.L74:
	lui	$2,%hi(g_keys+196)
	sw	$17,%gp_rel(g_mspos)($28)
	j	.L80
	addiu	$2,$2,%lo(g_keys+196)

.L77:
	lui	$2,%hi(g_keys+224)
	sw	$17,%gp_rel(g_mspos)($28)
	addiu	$2,$2,%lo(g_keys+224)
.L80:
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	sw	$2,%gp_rel(g_tones)($28)
	j	$31
	addiu	$sp,$sp,32

.L71:
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	err_music
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	musicSetK
	.size	musicSetK, .-musicSetK
	.align	2
	.globl	musicSetM
	.set	nomips16
	.set	nomicromips
	.ent	musicSetM
	.type	musicSetM, @function
musicSetM:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	musicGetNum
	nop

	lw	$31,20($sp)
	j	musicGetNum
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	musicSetM
	.size	musicSetM, .-musicSetM
	.section	.rodata,code
	.align	2
.LC23:
	.ascii	"Sound data too long.\000"
	.section	.text,code
	.align	2
	.globl	set_sound
	.set	nomips16
	.set	nomicromips
	.ent	set_sound
	.type	set_sound, @function
set_sound:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$5,%hi(IEC0)
	lw	$3,%lo(IEC0)($5)
	lui	$10,%hi(g_sound)
	ins	$3,$0,19,1
	lui	$9,%hi(g_soundlen)
	sw	$3,%lo(IEC0)($5)
	sw	$0,%gp_rel(g_soundend)($28)
	sw	$0,%gp_rel(g_soundstart)($28)
	sw	$0,%gp_rel(g_soundrepeat)($28)
	lb	$12,%gp_rel(g_use_graphic)($28)
	move	$3,$0
	move	$8,$5
	li	$11,32			# 0x20
	addiu	$10,$10,%lo(g_sound)
	j	.L88
	addiu	$9,$9,%lo(g_soundlen)

.L89:
	move	$4,$5
.L88:
	lw	$6,4($4)
	bne	$6,$11,.L89
	addiu	$5,$4,4

	lw	$7,0($4)
	sll	$6,$3,1
	andi	$7,$7,0x7fff
	addiu	$7,$7,-1
	addiu	$5,$4,8
	j	.L90
	addu	$6,$10,$6

.L95:
	srl	$2,$4,16
	beq	$2,$0,.L91
	andi	$4,$4,0xffff

	beql	$12,$0,.L96
	addiu	$4,$4,-1

	addiu	$13,$4,7
	sra	$13,$13,4
	subu	$4,$4,$13
	addiu	$4,$4,-1
.L96:
	sh	$4,0($6)
	addu	$4,$9,$3
	addiu	$3,$3,1
	sb	$2,0($4)
	slt	$4,$3,33
	bne	$4,$0,.L93
	addiu	$6,$6,2

	lui	$4,%hi(.LC23)
	j	err_music
	addiu	$4,$4,%lo(.LC23)

.L91:
	j	.L94
	sw	$4,%gp_rel(g_soundrepeat)($28)

.L93:
	addiu	$7,$7,-1
	addiu	$5,$5,4
.L90:
	bgtzl	$7,.L95
	lw	$4,0($5)

	bne	$2,$0,.L88
	move	$4,$5

.L94:
	lui	$2,%hi(g_soundlen)
	lbu	$2,%lo(g_soundlen)($2)
	sw	$3,%gp_rel(g_soundend)($28)
	sw	$2,%gp_rel(g_soundwait)($28)
	lw	$2,%lo(IEC0)($8)
	li	$3,1			# 0x1
	ins	$2,$3,19,1
	sw	$2,%lo(IEC0)($8)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	set_sound
	.size	set_sound, .-set_sound
	.align	2
	.globl	set_music
	.set	nomips16
	.set	nomicromips
	.ent	set_music
	.type	set_music, @function
set_music:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$18,32($sp)
	lui	$21,%hi(g_music)
	lui	$22,%hi(g_musiclen)
	lui	$18,%hi(g_keys)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$17,28($sp)
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$16,24($sp)
	move	$17,$4
	sw	$4,%gp_rel(g_mstr)($28)
	sw	$0,%gp_rel(g_mspos)($28)
	li	$20,58			# 0x3a
	lui	$19,%hi(IEC0)
	addiu	$21,$21,%lo(g_music)
	addiu	$22,$22,%lo(g_musiclen)
	j	.L98
	addiu	$18,$18,%lo(g_keys)

.L126:
	bnel	$5,$20,.L99
	andi	$5,$2,0x00ff

	addiu	$3,$3,2
	sw	$3,%gp_rel(g_mspos)($28)
	li	$3,76			# 0x4c
	beq	$2,$3,.L102
	slt	$3,$2,77

	beq	$3,$0,.L105
	li	$3,77			# 0x4d

	li	$3,75			# 0x4b
	bne	$2,$3,.L108
	nop

	j	.L129
	nop

.L105:
	beq	$2,$3,.L103
	li	$3,81			# 0x51

	bne	$2,$3,.L108
	nop

	j	.L130
	nop

.L102:
	jal	musicSetL
	nop

	j	.L132
	lw	$5,%gp_rel(g_mstr)($28)

.L130:
	jal	musicSetQ
	nop

	j	.L132
	lw	$5,%gp_rel(g_mstr)($28)

.L129:
	jal	musicSetK
	nop

	j	.L132
	lw	$5,%gp_rel(g_mstr)($28)

.L103:
	jal	musicSetM
	nop

	j	.L132
	lw	$5,%gp_rel(g_mstr)($28)

.L99:
	addiu	$6,$5,-65
	sltu	$6,$6,7
	bne	$6,$0,.L133
	addiu	$3,$3,1

	addiu	$5,$5,-97
	andi	$5,$5,0x00ff
	sltu	$5,$5,7
	bne	$5,$0,.L133
	nop

	li	$5,122			# 0x7a
	bne	$2,$5,.L108
	nop

.L133:
	li	$5,122			# 0x7a
	sw	$3,%gp_rel(g_mspos)($28)
	beq	$2,$5,.L111
	move	$23,$0

	slt	$6,$2,72
	beq	$6,$0,.L110
	lw	$5,%gp_rel(g_tones)($28)

	addiu	$6,$2,-65
	addiu	$2,$2,-16
	sll	$6,$6,2
	sll	$2,$2,2
	addu	$5,$5,$6
	addu	$2,$2,$18
	lw	$23,0($5)
	j	.L111
	lw	$16,0($2)

.L110:
	addiu	$6,$2,-97
	addiu	$2,$2,-48
	sll	$6,$6,2
	sll	$2,$2,2
	addu	$5,$5,$6
	addu	$2,$2,$18
	lw	$23,0($5)
	lw	$16,0($2)
	sra	$23,$23,1
	j	.L111
	sra	$16,$16,1

.L112:
	j	.L128
	srl	$23,$23,1

.L111:
	li	$2,39			# 0x27
.L128:
	addu	$5,$4,$3
	lb	$5,0($5)
	beql	$5,$2,.L112
	addiu	$3,$3,1

	sw	$3,%gp_rel(g_mspos)($28)
	j	.L113
	li	$5,44			# 0x2c

.L114:
	sll	$23,$23,1
	sll	$16,$16,1
.L113:
	addu	$2,$4,$3
	lb	$2,0($2)
	beql	$2,$5,.L114
	addiu	$3,$3,1

	li	$4,94			# 0x5e
	beq	$2,$4,.L117
	sw	$3,%gp_rel(g_mspos)($28)

	li	$4,95			# 0x5f
	beq	$2,$4,.L118
	li	$4,61			# 0x3d

	bnel	$2,$4,.L134
	lw	$3,%gp_rel(g_mstr)($28)

	j	.L131
	addiu	$3,$3,1

.L117:
	li	$2,1933			# 0x78d
	mul	$23,$23,$2
	addiu	$3,$3,1
	sw	$3,%gp_rel(g_mspos)($28)
	j	.L115
	srl	$23,$23,11

.L118:
	li	$2,65536			# 0x10000
	addiu	$2,$2,3897
	mul	$23,$23,$2
	addiu	$3,$3,1
	sw	$3,%gp_rel(g_mspos)($28)
	j	.L115
	srl	$23,$23,16

.L131:
	sw	$3,%gp_rel(g_mspos)($28)
	move	$23,$16
.L115:
	lw	$3,%gp_rel(g_mstr)($28)
.L134:
	lw	$2,%gp_rel(g_mspos)($28)
	addu	$2,$3,$2
	lbu	$2,0($2)
	addiu	$2,$2,-48
	sltu	$2,$2,10
	beq	$2,$0,.L120
	lw	$fp,%gp_rel(g_lvalue)($28)

	jal	musicGetNum
	sw	$3,16($sp)

	mul	$fp,$2,$fp
	lw	$3,16($sp)
.L120:
	lw	$2,%gp_rel(g_mspos)($28)
	addu	$3,$3,$2
	lb	$4,0($3)
	li	$3,47			# 0x2f
	bnel	$4,$3,.L135
	lb	$2,%gp_rel(g_use_graphic)($28)

	addiu	$2,$2,1
	jal	musicGetNum
	sw	$2,%gp_rel(g_mspos)($28)

	div	$0,$fp,$2
	teq	$2,$0,7
	mflo	$fp
	lb	$2,%gp_rel(g_use_graphic)($28)
.L135:
	beq	$2,$0,.L122
	addiu	$2,$23,7

	srl	$2,$2,4
	subu	$23,$23,$2
.L122:
	lw	$2,%lo(IEC0)($19)
	lw	$4,%gp_rel(g_musicstart)($28)
	ins	$2,$0,19,1
	sw	$2,%lo(IEC0)($19)
	lw	$2,%gp_rel(g_musicend)($28)
	bne	$4,$2,.L123
	lui	$3,%hi(IEC0)

	sw	$fp,%gp_rel(g_musicwait)($28)
.L123:
	sll	$4,$2,1
	addu	$5,$4,$21
	addiu	$23,$23,-1
	addu	$4,$4,$22
	addiu	$2,$2,1
	sh	$fp,0($4)
	sh	$23,0($5)
	andi	$2,$2,0x1f
	sw	$2,%gp_rel(g_musicend)($28)
	lw	$2,%lo(IEC0)($3)
	li	$4,1			# 0x1
	ins	$2,$4,19,1
	sw	$2,%lo(IEC0)($3)
	j	.L132
	lw	$5,%gp_rel(g_mstr)($28)

.L108:
	jal	err_music
	move	$4,$17

	lw	$5,%gp_rel(g_mstr)($28)
.L132:
	lw	$2,%gp_rel(g_mspos)($28)
	li	$4,124			# 0x7c
.L125:
.L124:
	addu	$3,$5,$2
	lb	$3,0($3)
	addiu	$6,$3,-1
	andi	$6,$6,0x00ff
	sltu	$6,$6,32
	bnel	$6,$0,.L124
	addiu	$2,$2,1

	beql	$3,$4,.L125
	addiu	$2,$2,1

	sw	$2,%gp_rel(g_mspos)($28)
.L98:
	lw	$4,%gp_rel(g_mstr)($28)
	lw	$3,%gp_rel(g_mspos)($28)
	addu	$5,$4,$3
	lb	$2,0($5)
	bgtzl	$2,.L126
	lb	$5,1($5)

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
	.end	set_music
	.size	set_music, .-set_music
	.section	.sbss,bss
	.align	2
	.type	g_mstr, @object
	.size	g_mstr, 4
g_mstr:
	.space	4
	.align	2
	.type	g_mspos, @object
	.size	g_mspos, 4
g_mspos:
	.space	4
	.align	2
	.type	g_tones, @object
	.size	g_tones, 4
g_tones:
	.space	4
	.section	.rodata,code
	.align	2
	.type	g_keys, @object
	.size	g_keys, 420
g_keys:
	.word	1933
	.word	1722
	.word	3251
	.word	2896
	.word	2580
	.word	2435
	.word	2170
	.word	1933
	.word	1825
	.word	3251
	.word	2896
	.word	2580
	.word	2435
	.word	2170
	.word	1933
	.word	1825
	.word	3251
	.word	2896
	.word	2734
	.word	2435
	.word	2170
	.word	2048
	.word	1825
	.word	3251
	.word	2896
	.word	2734
	.word	2435
	.word	2170
	.word	2048
	.word	1825
	.word	3251
	.word	3067
	.word	2734
	.word	2435
	.word	2170
	.word	2048
	.word	1825
	.word	3251
	.word	3067
	.word	2734
	.word	2435
	.word	2299
	.word	2048
	.word	1825
	.word	3444
	.word	3067
	.word	2734
	.word	2435
	.word	2299
	.word	2048
	.word	1825
	.word	3444
	.word	3067
	.word	2734
	.word	2580
	.word	2299
	.word	2048
	.word	1933
	.word	3444
	.word	3067
	.word	2734
	.word	2580
	.word	2299
	.word	2048
	.word	1933
	.word	3444
	.word	3067
	.word	2896
	.word	2580
	.word	2299
	.word	2170
	.word	1933
	.word	3444
	.word	3067
	.word	2896
	.word	2580
	.word	2299
	.word	2170
	.word	1933
	.word	3444
	.word	3251
	.word	2896
	.word	2580
	.word	2299
	.word	2170
	.word	1933
	.word	3444
	.word	3251
	.word	2896
	.word	2580
	.word	2435
	.word	2170
	.word	1933
	.word	3650
	.word	3251
	.word	2896
	.word	2580
	.word	2435
	.word	2170
	.word	1933
	.word	3650
	.word	3251
	.word	2896
	.word	2734
	.word	2435
	.section	.sbss,bss
	.align	2
	.type	g_lvalue, @object
	.size	g_lvalue, 4
g_lvalue:
	.space	4
	.align	2
	.type	g_musicstart, @object
	.size	g_musicstart, 4
g_musicstart:
	.space	4
	.align	2
	.type	g_musicend, @object
	.size	g_musicend, 4
g_musicend:
	.space	4
	.align	2
	.type	g_musicwait, @object
	.size	g_musicwait, 4
g_musicwait:
	.space	4
	.section	.bss,bss
	.align	2
	.type	g_music, @object
	.size	g_music, 64
g_music:
	.space	64
	.align	2
	.type	g_musiclen, @object
	.size	g_musiclen, 64
g_musiclen:
	.space	64
	.section	.sbss,bss
	.align	2
	.type	g_soundend, @object
	.size	g_soundend, 4
g_soundend:
	.space	4
	.align	2
	.type	g_soundstart, @object
	.size	g_soundstart, 4
g_soundstart:
	.space	4
	.align	2
	.type	g_soundrepeat, @object
	.size	g_soundrepeat, 4
g_soundrepeat:
	.space	4
	.section	.bss,bss
	.align	2
	.type	g_sound, @object
	.size	g_sound, 64
g_sound:
	.space	64
	.align	2
	.type	g_soundlen, @object
	.size	g_soundlen, 32
g_soundlen:
	.space	32
	.section	.sbss,bss
	.align	2
	.type	g_soundwait, @object
	.size	g_soundwait, 4
g_soundwait:
	.space	4
	.align	2
	.type	g_qvalue, @object
	.size	g_qvalue, 4
g_qvalue:
	.space	4
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_16
	.section	.vector_16,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_16
__vector_dispatch_16:
	j	timer4int
	nop
	.set reorder
	.end	__vector_dispatch_16
	.size	__vector_dispatch_16, .-__vector_dispatch_16
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
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
	.file	1 "run.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	printdec
	.set	nomips16
	.set	nomicromips
	.ent	printdec
	.type	printdec, @function
printdec:
	.frame	$sp,48,$31		# vars= 16, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$16,36($sp)
	sw	$31,44($sp)
	sw	$17,40($sp)
	bgez	$4,.L2
	move	$16,$4

	jal	printchar
	li	$4,45			# 0x2d

	subu	$16,$0,$16
.L2:
	li	$5,-859045888			# 0xffffffffcccc0000
	li	$2,10			# 0xa
	li	$6,10			# 0xa
	ori	$5,$5,0xcccd
	li	$4,10			# 0xa
.L5:
	bne	$16,$0,.L8
	multu	$16,$5

	bnel	$2,$6,.L9
	move	$16,$2

.L8:
	addiu	$8,$sp,16
	mfhi	$9
	addu	$7,$8,$2
	srl	$3,$9,3
	mul	$8,$3,$4
	addiu	$16,$16,48
	subu	$16,$16,$8
	addiu	$2,$2,-1
	beq	$2,$0,.L4
	sb	$16,0($7)

	j	.L5
	move	$16,$3

.L4:
	move	$16,$2
.L9:
	li	$17,10			# 0xa
	addiu	$9,$sp,16
.L10:
	addu	$2,$9,$16
	lbu	$4,1($2)
	jal	printchar
	addiu	$16,$16,1

	bne	$16,$17,.L10
	addiu	$9,$sp,16

	lw	$31,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	printdec
	.size	printdec, .-printdec
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Can't Open \000"
	.align	2
.LC1:
	.ascii	"BASIC KM-1204\012\000"
	.align	2
.LC2:
	.ascii	"Compiling...\000"
	.align	2
.LC3:
	.ascii	"\012Around: '\000"
	.align	2
.LC4:
	.ascii	"' in line \000"
	.align	2
.LC5:
	.ascii	"\012\000"
	.align	2
.LC6:
	.ascii	"done\012\000"
	.align	2
.LC7:
	.ascii	"\012OK\012\000"
	.section	.text,code
	.align	2
	.globl	runbasic
	.set	nomips16
	.set	nomicromips
	.ent	runbasic
	.type	runbasic, @function
runbasic:
	.frame	$sp,40,$31		# vars= 8, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	move	$18,$4
	sw	$31,36($sp)
	jal	get_gp
	move	$17,$5

	lui	$4,%hi(RAM+54720)
	addiu	$3,$4,%lo(RAM+54720)
	lui	$16,%hi(RAM)
	sw	$2,%gp_rel(g_gp)($28)
	sw	$3,%gp_rel(g_source)($28)
	addiu	$2,$16,%lo(RAM)
	sw	$3,%gp_rel(g_objmax)($28)
	li	$3,55232			# 0xd7c0
	sw	$0,%gp_rel(g_srcpos)($28)
	sw	$2,%gp_rel(g_object)($28)
	sw	$0,%gp_rel(g_objpos)($28)
	addu	$3,$2,$3
	sw	$0,0($2)
.L29:
	addiu	$2,$2,4
	bnel	$2,$3,.L29
	sw	$0,0($2)

	addiu	$4,$4,%lo(RAM+54720)
	jal	init_file
	move	$5,$18

	beql	$2,$0,.L13
	sw	$0,%gp_rel(g_pcg_font)($28)

	jal	setcursorcolor
	li	$4,4			# 0x4

	lui	$4,%hi(.LC0)
	jal	printstr
	addiu	$4,$4,%lo(.LC0)

	jal	printstr
	move	$4,$18

	jal	printchar
	li	$4,10			# 0xa

	j	.L14
	li	$2,-1			# 0xffffffffffffffff

.L13:
	sb	$0,%gp_rel(g_use_graphic)($28)
	jal	clearscreen
	sw	$0,%gp_rel(g_graphic_area)($28)

	move	$5,$0
	li	$6,7			# 0x7
	jal	setcursor
	move	$4,$0

	jal	cmpdata_init
	sw	$0,%gp_rel(g_long_name_var_num)($28)

	lui	$4,%hi(.LC1)
	jal	printstr
	addiu	$4,$4,%lo(.LC1)

	jal	wait60thsec
	li	$4,15			# 0xf

	jal	init_music
	nop

	lui	$4,%hi(.LC2)
	jal	printstr
	addiu	$4,$4,%lo(.LC2)

	jal	compile_file
	nop

	jal	close_file
	sw	$2,16($sp)

	lw	$2,16($sp)
	beq	$2,$0,.L15
	nop

	jal	printstr
	move	$4,$2

	lui	$4,%hi(.LC3)
	jal	printstr
	addiu	$4,$4,%lo(.LC3)

	move	$16,$0
	li	$17,5			# 0x5
	lw	$2,%gp_rel(g_source)($28)
.L30:
	lw	$3,%gp_rel(g_srcpos)($28)
	addu	$2,$2,$16
	addu	$2,$2,$3
	lbu	$4,-2($2)
	jal	printchar
	addiu	$16,$16,1

	bnel	$16,$17,.L30
	lw	$2,%gp_rel(g_source)($28)

	lui	$4,%hi(.LC4)
	jal	printstr
	addiu	$4,$4,%lo(.LC4)

	jal	printdec
	lw	$4,%gp_rel(g_line)($28)

	lui	$4,%hi(.LC5)
	jal	printstr
	addiu	$4,$4,%lo(.LC5)

	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
	addu	$2,$3,$2
.L17:
	lb	$4,0($2)
	move	$3,$2
	slt	$4,$4,32
	beq	$4,$0,.L17
	addiu	$2,$2,1

	sb	$0,0($3)
	lw	$2,%gp_rel(g_srcpos)($28)
	lw	$3,%gp_rel(g_source)($28)
.L19:
	addu	$4,$3,$2
	lb	$5,0($4)
	slt	$5,$5,32
	beql	$5,$0,.L19
	addiu	$2,$2,-1

	jal	printstr
	nop

	j	.L14
	lw	$2,%gp_rel(g_fileline)($28)

.L15:
	jal	link
	nop

	beq	$2,$0,.L20
	lui	$4,%hi(.LC6)

	jal	printstr
	move	$4,$2

	jal	resolve_label
	lw	$4,%gp_rel(g_label)($28)

	jal	printstr
	move	$4,$2

	j	.L14
	li	$2,-2			# 0xfffffffffffffffe

.L20:
	jal	printstr
	addiu	$4,$4,%lo(.LC6)

	bne	$17,$0,.L14
	move	$2,$0

	jal	wait60thsec
	li	$4,15			# 0xf

	li	$2,-1831469056			# 0xffffffff92d60000
	ori	$2,$2,0x8ca2
	lui	$17,%hi(g_var_mem)
	sw	$2,%gp_rel(g_rnd_seed)($28)
	lui	$3,%hi(g_var_size)
	addiu	$2,$17,%lo(g_var_mem)
	addiu	$3,$3,%lo(g_var_size)
	addiu	$4,$2,952
.L21:
	sw	$0,0($2)
	addiu	$2,$2,4
	sh	$0,0($3)
	bne	$2,$4,.L21
	addiu	$3,$3,2

	lui	$4,%hi(ps2keystatus)
	move	$2,$0
	addiu	$4,$4,%lo(ps2keystatus)
	li	$3,256			# 0x100
	addu	$5,$2,$4
.L31:
	addiu	$2,$2,1
	sb	$0,0($5)
	bnel	$2,$3,.L31
	addu	$5,$2,$4

	jal	reset_dataread
	nop

	move	$6,$0
	move	$7,$0
	li	$4,49			# 0x31
	jal	lib_file
	move	$5,$0

	lw	$4,%gp_rel(g_objpos)($28)
	lw	$2,%gp_rel(g_object)($28)
	sll	$4,$4,2
	lui	$5,%hi(RAM+55232)
	addu	$4,$2,$4
	jal	set_free_area
	addiu	$5,$5,%lo(RAM+55232)

	addiu	$5,$17,%lo(g_var_mem)
	jal	start_program
	addiu	$4,$16,%lo(RAM)

	lui	$4,%hi(.LC7)
	jal	printstr
	addiu	$4,$4,%lo(.LC7)

	jal	set_graphmode
	move	$4,$0

	li	$4,49			# 0x31
	move	$5,$0
	move	$6,$0
	move	$7,$0
	jal	lib_file
	sb	$0,%gp_rel(g_use_graphic)($28)

	move	$2,$0
.L14:
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
	.end	runbasic
	.size	runbasic, .-runbasic
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
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
	.file	1 "varname.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
	.align	2
	.globl	check_var_name
	.set	nomips16
	.set	nomicromips
	.ent	check_var_name
	.type	check_var_name, @function
check_var_name:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$4,%gp_rel(g_srcpos)($28)
	lw	$6,%gp_rel(g_source)($28)
	j	.L2
	li	$5,32			# 0x20

.L3:
	sw	$2,%gp_rel(g_srcpos)($28)
.L2:
	lw	$2,%gp_rel(g_srcpos)($28)
	addu	$3,$6,$2
	lb	$3,0($3)
	beql	$3,$5,.L3
	addiu	$2,$2,1

	addiu	$5,$3,-65
	andi	$5,$5,0x00ff
	sltu	$5,$5,26
	beq	$5,$0,.L22
	li	$2,-1			# 0xffffffffffffffff

	move	$2,$0
	li	$8,36			# 0x24
	mul	$9,$2,$8
.L20:
	addiu	$7,$3,-48
	andi	$7,$7,0x00ff
	addu	$3,$9,$3
	sltu	$7,$7,10
	lw	$5,%gp_rel(g_srcpos)($28)
	bne	$7,$0,.L7
	addiu	$2,$3,-48

	addiu	$2,$3,-64
	xor	$7,$5,$4
	addiu	$3,$3,-55
	movn	$2,$3,$7
.L7:
	addiu	$5,$5,1
	sw	$5,%gp_rel(g_srcpos)($28)
	addu	$3,$6,$5
	lb	$3,0($3)
	andi	$7,$3,0x00ff
	addiu	$9,$7,-48
	sltu	$9,$9,10
	bnel	$9,$0,.L20
	mul	$9,$2,$8

	addiu	$7,$7,-65
	andi	$7,$7,0x00ff
	sltu	$7,$7,26
	bnel	$7,$0,.L20
	mul	$9,$2,$8

	subu	$5,$5,$4
	slt	$3,$5,2
	beq	$3,$0,.L10
	slt	$5,$5,7

	j	$31
	addiu	$2,$2,-1

.L10:
	beql	$5,$0,.L21
	sw	$4,%gp_rel(g_srcpos)($28)

.L11:
	li	$3,65536			# 0x10000
	addu	$2,$2,$3
	lui	$3,%hi(reserved_var_names)
	addiu	$3,$3,%lo(reserved_var_names)
	j	.L12
	addiu	$5,$3,400

.L13:
	bne	$6,$2,.L12
	addiu	$3,$3,4

	sw	$4,%gp_rel(g_srcpos)($28)
.L21:
	j	$31
	li	$2,-1			# 0xffffffffffffffff

.L12:
	bnel	$3,$5,.L13
	lw	$6,0($3)

.L22:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	check_var_name
	.size	check_var_name, .-check_var_name
	.align	2
	.globl	search_var_name
	.set	nomips16
	.set	nomicromips
	.ent	search_var_name
	.type	search_var_name, @function
search_var_name:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	cmpdata_reset
	move	$16,$4

	j	.L24
	nop

.L26:
	bne	$3,$16,.L24
	nop

	j	.L25
	lhu	$2,0($2)

.L24:
	jal	cmpdata_find
	li	$4,1			# 0x1

	bnel	$2,$0,.L26
	lw	$3,4($2)

	li	$2,-1			# 0xffffffffffffffff
.L25:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	search_var_name
	.size	search_var_name, .-search_var_name
	.align	2
	.globl	get_var_number
	.set	nomips16
	.set	nomicromips
	.ent	get_var_number
	.type	get_var_number, @function
get_var_number:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	check_var_name
	nop

	bltz	$2,.L30
	move	$4,$2

	slt	$2,$2,26
	bne	$2,$0,.L32
	lw	$31,20($sp)

	jal	search_var_name
	nop

	addiu	$3,$2,38
	li	$4,-1			# 0xffffffffffffffff
	slt	$2,$2,0
	j	.L29
	movz	$4,$3,$2

.L30:
	li	$4,-1			# 0xffffffffffffffff
.L29:
	lw	$31,20($sp)
.L32:
	move	$2,$4
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	get_var_number
	.size	get_var_number, .-get_var_number
	.align	2
	.globl	register_var_name
	.set	nomips16
	.set	nomicromips
	.ent	register_var_name
	.type	register_var_name, @function
register_var_name:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$16,16($sp)
	sw	$31,20($sp)
	jal	search_var_name
	move	$16,$4

	li	$3,-1			# 0xffffffffffffffff
	bne	$2,$3,.L38
	lw	$31,20($sp)

.L34:
	lw	$5,%gp_rel(g_long_name_var_num)($28)
	slt	$2,$5,190
	bne	$2,$0,.L36
	lw	$31,20($sp)

.L38:
	lui	$2,%hi(g_err_str+80)
	lw	$2,%lo(g_err_str+80)($2)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

.L36:
	addiu	$2,$5,1
	sw	$16,%gp_rel(g_temp)($28)
	lw	$31,20($sp)
	lw	$16,16($sp)
	li	$4,1			# 0x1
	seh	$5,$5
	addiu	$6,$28,%gp_rel(g_temp)
	li	$7,1			# 0x1
	addiu	$sp,$sp,24
	j	cmpdata_insert
	sw	$2,%gp_rel(g_long_name_var_num)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	register_var_name
	.size	register_var_name, .-register_var_name
	.section	.rodata,code
	.align	2
	.type	reserved_var_names, @object
	.size	reserved_var_names, 400
reserved_var_names:
	.word	67256
	.word	128636
	.word	147788
	.word	67852
	.word	149151
	.word	150159
	.word	3111966
	.word	4703004
	.word	5724926
	.word	224317
	.word	70063
	.word	212973186
	.word	6102691
	.word	70208
	.word	6252235
	.word	70316
	.word	237633
	.word	6382613
	.word	233149435
	.word	266174
	.word	71236
	.word	71390
	.word	65704
	.word	327054
	.word	338993527
	.word	72857
	.word	9554215
	.word	342100
	.word	73229
	.word	358856
	.word	384029886
	.word	364495
	.word	366741
	.word	10908928
	.word	369570
	.word	394202277
	.word	373215
	.word	11154501
	.word	11155003
	.word	374861
	.word	11295903
	.word	74203
	.word	406136889
	.word	378981
	.word	11349568
	.word	11468268
	.word	408464
	.word	444632011
	.word	12979971
	.word	424300
	.word	466603065
	.word	76441
	.word	65875
	.word	16281626
	.word	16288677
	.word	78057
	.word	598148
	.word	20702269
	.word	81615
	.word	81621
	.word	649578
	.word	81968
	.word	21361444
	.word	657401
	.word	703651
	.word	23337172
	.word	738081
	.word	84573
	.word	86720
	.word	830700
	.word	66130
	.word	28083321
	.word	843870
	.word	87168
	.word	28223289
	.word	848853
	.word	1019280929
	.word	923861
	.word	89390
	.word	1113364227
	.word	89705
	.word	1170369865
	.word	90759
	.word	90831
	.word	976173
	.word	33137705
	.word	986697
	.word	1207374302
	.word	91839
	.word	1012461
	.word	35139566
	.word	36448813
	.word	1317570512
	.word	1317578227
	.word	94429
	.word	94435
	.word	1152261
	.word	1157609
	.word	39513954
	.word	39554421
	.ident	"GCC: (chipKIT) 4.5.2 chipKIT Compiler for PIC32 MCUs v1.31"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
