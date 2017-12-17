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
