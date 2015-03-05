	.file	1 "TimeDelay.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	Delay1us
	.set	nomips16
	.set	nomicromips
	.ent	Delay1us
	.type	Delay1us, @function
Delay1us:
	.frame	$sp,8,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
	sll	$2,$4,2
	sll	$4,$4,4
	addu	$4,$2,$4
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-24
	sw	$2,0($sp)
	lw	$2,0($sp)
	blez	$2,.L1
	nop

	lw	$2,0($sp)
	blez	$2,.L1
	nop

.L4:
	lw	$2,0($sp)
	addiu	$2,$2,-8
	sw	$2,0($sp)
	lw	$2,0($sp)
	bgtz	$2,.L4
	nop

.L1:
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Delay1us
	.size	Delay1us, .-Delay1us
	.align	2
	.globl	Delay10us
	.set	nomips16
	.set	nomicromips
	.ent	Delay10us
	.type	Delay10us, @function
Delay10us:
	.frame	$sp,8,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
	sll	$2,$4,3
	sll	$4,$4,5
	addu	$4,$2,$4
	sll	$2,$4,2
	addu	$4,$4,$2
	sw	$4,0($sp)
	lw	$2,0($sp)
	addiu	$2,$2,-24
	sw	$2,0($sp)
	lw	$2,0($sp)
	blez	$2,.L6
	nop

	lw	$2,0($sp)
	blez	$2,.L6
	nop

.L9:
	lw	$2,0($sp)
	addiu	$2,$2,-8
	sw	$2,0($sp)
	lw	$2,0($sp)
	bgtz	$2,.L9
	nop

.L6:
	j	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Delay10us
	.size	Delay10us, .-Delay10us
	.align	2
	.globl	DelayMs
	.set	nomips16
	.set	nomicromips
	.ent	DelayMs
	.type	DelayMs, @function
DelayMs:
	.frame	$sp,40,$31		# vars= 8, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	andi	$16,$4,0xffff
	li	$17,65535			# 0xffff
	j	.L20
	li	$18,4			# 0x4

.L15:
	sb	$18,16($sp)
	lbu	$2,16($sp)
	andi	$2,$2,0x00ff
	addiu	$3,$2,-1
	andi	$3,$3,0x00ff
	sb	$3,16($sp)
	beql	$2,$0,.L21
	addiu	$16,$16,-1

.L17:
	jal	Delay10us
	li	$4,25			# 0x19

	lbu	$2,16($sp)
	andi	$2,$2,0x00ff
	addiu	$3,$2,-1
	andi	$3,$3,0x00ff
	sb	$3,16($sp)
	bne	$2,$0,.L17
	nop

.L20:
	addiu	$16,$16,-1
.L21:
	andi	$16,$16,0xffff
	bne	$16,$17,.L15
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
	.end	DelayMs
	.size	DelayMs, .-DelayMs
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
