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
