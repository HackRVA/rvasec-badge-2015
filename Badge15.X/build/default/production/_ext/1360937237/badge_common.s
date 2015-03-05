	.file	1 "badge_common.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	b_strcpy
	.set	nomips16
	.set	nomicromips
	.ent	b_strcpy
	.type	b_strcpy, @function
b_strcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lb	$2,0($5)
	beq	$2,$0,.L2
	move	$3,$0

.L3:
	sb	$2,0($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$2,$5,$3
	lb	$2,0($2)
	bne	$2,$0,.L3
	addiu	$4,$4,1

.L2:
	j	$31
	sb	$0,0($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	b_strcpy
	.size	b_strcpy, .-b_strcpy
	.align	2
	.globl	intTime_to_charTime
	.set	nomips16
	.set	nomicromips
	.ent	intTime_to_charTime
	.type	intTime_to_charTime, @function
intTime_to_charTime:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$2,10000			# 0x2710
	divu	$0,$5,$2
	teq	$2,$0,7
	mflo	$2
	andi	$2,$2,0x00ff
	sll	$3,$2,2
	sll	$6,$2,7
	subu	$3,$6,$3
	addu	$3,$3,$2
	sll	$6,$3,2
	addu	$3,$3,$6
	sll	$3,$3,4
	subu	$5,$5,$3
	li	$3,100			# 0x64
	divu	$0,$5,$3
	teq	$3,$0,7
	mflo	$5
	andi	$5,$5,0x00ff
	li	$3,10			# 0xa
	divu	$0,$2,$3
	teq	$3,$0,7
	mfhi	$2
	mflo	$6
	addiu	$6,$6,48
	sb	$6,0($4)
	addiu	$2,$2,48
	sb	$2,1($4)
	li	$2,58			# 0x3a
	sb	$2,2($4)
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$3
	addiu	$3,$3,48
	sb	$3,3($4)
	addiu	$5,$5,48
	sb	$5,4($4)
	j	$31
	sb	$0,5($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	intTime_to_charTime
	.size	intTime_to_charTime, .-intTime_to_charTime
	.align	2
	.globl	setBase10String
	.set	nomips16
	.set	nomicromips
	.ent	setBase10String
	.type	setBase10String, @function
setBase10String:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	srl	$2,$4,4
	addiu	$2,$2,48
	sb	$2,0($5)
	andi	$4,$4,0xf
	addiu	$4,$4,48
	j	$31
	sb	$4,1($5)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setBase10String
	.size	setBase10String, .-setBase10String
	.align	2
	.globl	setTimeString
	.set	nomips16
	.set	nomicromips
	.ent	setTimeString
	.type	setTimeString, @function
setTimeString:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$16,$4
	move	$17,$5
	jal	setBase10String
	srl	$4,$4,24

	li	$2,58			# 0x3a
	sb	$2,2($17)
	ext	$4,$16,16,8
	jal	setBase10String
	addiu	$5,$17,3

	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setTimeString
	.size	setTimeString, .-setTimeString
	.align	2
	.globl	bcdDecrement
	.set	nomips16
	.set	nomicromips
	.ent	bcdDecrement
	.type	bcdDecrement, @function
bcdDecrement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$2,0($4)
	andi	$3,$2,0xf
	beql	$3,$0,.L9
	andi	$2,$2,0xf0

	addiu	$3,$2,-1
	andi	$3,$3,0xf
	andi	$2,$2,0xf0
	or	$2,$3,$2
	j	$31
	sb	$2,0($4)

.L9:
	addiu	$2,$2,-16
	ori	$2,$2,0x9
	j	$31
	sb	$2,0($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	bcdDecrement
	.size	bcdDecrement, .-bcdDecrement
	.align	2
	.globl	bcdIncrement
	.set	nomips16
	.set	nomicromips
	.ent	bcdIncrement
	.type	bcdIncrement, @function
bcdIncrement:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$2,0($4)
	andi	$5,$2,0xf
	li	$3,9			# 0x9
	beq	$5,$3,.L12
	addiu	$3,$2,1

	andi	$3,$3,0xf
	andi	$2,$2,0xf0
	or	$2,$3,$2
	j	$31
	sb	$2,0($4)

.L12:
	andi	$2,$2,0xf0
	addiu	$2,$2,16
	j	$31
	sb	$2,0($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	bcdIncrement
	.size	bcdIncrement, .-bcdIncrement
	.align	2
	.globl	uINT_to_chars
	.set	nomips16
	.set	nomicromips
	.ent	uINT_to_chars
	.type	uINT_to_chars, @function
uINT_to_chars:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	srl	$2,$4,24
	sb	$2,0($5)
	ext	$2,$4,16,4
	sb	$2,1($5)
	ext	$2,$4,8,4
	sb	$2,2($5)
	andi	$4,$4,0xf
	j	$31
	sb	$4,3($5)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uINT_to_chars
	.size	uINT_to_chars, .-uINT_to_chars

	.comm	core,16,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
