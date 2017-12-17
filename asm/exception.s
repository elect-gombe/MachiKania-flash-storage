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
