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
