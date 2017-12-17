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
