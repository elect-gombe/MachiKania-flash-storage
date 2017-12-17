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
