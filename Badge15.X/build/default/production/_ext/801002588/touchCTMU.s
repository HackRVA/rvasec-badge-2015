	.file	1 "touchCTMU.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	getTouch
	.set	nomips16
	.set	nomicromips
	.ent	getTouch
	.type	getTouch, @function
getTouch:
	.frame	$sp,64,$31		# vars= 8, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$23,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	lui	$2,%hi(TRISA)
	lw	$3,%lo(TRISA)($2)
	li	$16,1			# 0x1
	ins	$3,$16,0,1
	sw	$3,%lo(TRISA)($2)
	lw	$3,%lo(TRISA)($2)
	ins	$3,$16,1,1
	sw	$3,%lo(TRISA)($2)
	lui	$2,%hi(TRISB)
	lw	$3,%lo(TRISB)($2)
	ins	$3,$16,1,1
	sw	$3,%lo(TRISB)($2)
	lw	$3,%lo(TRISB)($2)
	ins	$3,$16,2,1
	sw	$3,%lo(TRISB)($2)
	li	$17,3			# 0x3
	lui	$2,%hi(ANSELA)
	sw	$17,%lo(ANSELA)($2)
	li	$3,6			# 0x6
	lui	$2,%hi(ANSELB)
	sw	$3,%lo(ANSELB)($2)
	jal	DelayMs
	li	$4,1			# 0x1

	lui	$2,%hi(CTMUCON)
	lw	$3,%lo(CTMUCON)($2)
	ins	$3,$17,0,2
	sw	$3,%lo(CTMUCON)($2)
	lw	$3,%lo(CTMUCON)($2)
	ins	$3,$16,15,1
	sw	$3,%lo(CTMUCON)($2)
	jal	DelayMs
	li	$4,1			# 0x1

	lui	$2,%hi(AD1CON2)
	sw	$0,%lo(AD1CON2)($2)
	lui	$2,%hi(AD1CON3)
	sw	$16,%lo(AD1CON3)($2)
	lui	$2,%hi(AD1CSSL)
	sw	$0,%lo(AD1CSSL)($2)
	lui	$2,%hi(IEC0)
	lw	$3,%lo(IEC0)($2)
	ins	$3,$0,28,1
	sw	$3,%lo(IEC0)($2)
	lui	$2,%hi(AD1CON1)
	lw	$3,%lo(AD1CON1)($2)
	ins	$3,$16,15,1
	sw	$3,%lo(AD1CON1)($2)
	sh	$0,%gp_rel(CurrentButtonStatus)($28)
	lui	$fp,%hi(ButtonADCChannels)
	addiu	$fp,$fp,%lo(ButtonADCChannels)
	addiu	$2,$28,%gp_rel(ButtonVmeasADC)
	sw	$2,16($sp)
	move	$23,$0
	lui	$16,%hi(AD1CON1)
	li	$18,1			# 0x1
	lui	$17,%hi(CTMUCON)
	lui	$22,%hi(ADC1BUF0)
.L9:
	seh	$21,$23
	sw	$23,20($sp)
	lbu	$3,0($fp)
	lui	$4,%hi(AD1CHS)
	lw	$2,%lo(AD1CHS)($4)
	ins	$2,$3,16,4
	sw	$2,%lo(AD1CHS)($4)
	li	$19,16			# 0x10
	move	$20,$0
	li	$2,3			# 0x3
	sltu	$21,$2,$21
.L7:
	lw	$2,%lo(AD1CON1)($16)
	ins	$2,$18,1,1
	sw	$2,%lo(AD1CON1)($16)
	lw	$2,%lo(CTMUCON)($17)
	ins	$2,$18,9,1
	sw	$2,%lo(CTMUCON)($17)
	jal	DelayMs
	move	$4,$18

	lw	$2,%lo(CTMUCON)($17)
	ins	$2,$0,9,1
	sw	$2,%lo(CTMUCON)($17)
	bne	$21,$0,.L10
	nop

	lw	$2,%lo(CTMUCON)($17)
	ins	$2,$18,24,1
	sw	$2,%lo(CTMUCON)($17)
	lbu	$4,%gp_rel(Nnops)($28)
	beq	$4,$0,.L4
	move	$2,$0

	addiu	$2,$2,1
.L15:
	andi	$2,$2,0xffff
	sltu	$3,$2,$4
	bne	$3,$0,.L15
	addiu	$2,$2,1

.L4:
	lw	$2,%lo(AD1CON1)($16)
	ins	$2,$0,1,1
	sw	$2,%lo(AD1CON1)($16)
	lw	$2,%lo(CTMUCON)($17)
	ins	$2,$0,24,1
	sw	$2,%lo(CTMUCON)($17)
.L10:
	lw	$2,%lo(AD1CON1)($16)
	andi	$2,$2,0x1
	beq	$2,$0,.L10
	nop

	lw	$2,%lo(AD1CON1)($16)
	ins	$2,$0,0,1
	sw	$2,%lo(AD1CON1)($16)
	lw	$2,%lo(ADC1BUF0)($22)
	andi	$2,$2,0xffff
	addiu	$19,$19,-1
	andi	$19,$19,0xffff
	bne	$19,$0,.L7
	addu	$20,$20,$2

	sll	$20,$20,2
	andi	$20,$20,0xffff
	seh	$2,$20
	bltz	$2,.L8
	lw	$2,20($sp)

	sll	$3,$18,$2
	lhu	$2,%gp_rel(CurrentButtonStatus)($28)
	addu	$2,$3,$2
	sh	$2,%gp_rel(CurrentButtonStatus)($28)
.L8:
	lw	$3,16($sp)
	sh	$20,0($3)
	addiu	$23,$23,1
	addiu	$fp,$fp,2
	addiu	$3,$3,2
	li	$2,4			# 0x4
	bne	$23,$2,.L9
	sw	$3,16($sp)

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
	.end	getTouch
	.size	getTouch, .-getTouch
	.globl	Nnops
	.section	.sdata,data
	.type	Nnops, @object
	.size	Nnops, 1
Nnops:
	.byte	3
	.globl	CurrentButtonStatus
	.section	.sbss,bss
	.align	1
	.type	CurrentButtonStatus, @object
	.size	CurrentButtonStatus, 2
CurrentButtonStatus:
	.space	2

	.comm	ButtonVmeasADC,8,4
	.section	.rodata,code
	.align	2
	.type	ButtonADCChannels, @object
	.size	ButtonADCChannels, 8
ButtonADCChannels:
	.half	0
	.half	1
	.half	3
	.half	4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
