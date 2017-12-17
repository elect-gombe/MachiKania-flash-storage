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
