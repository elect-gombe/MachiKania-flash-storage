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
