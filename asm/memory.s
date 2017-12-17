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
