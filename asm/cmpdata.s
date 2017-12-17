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
