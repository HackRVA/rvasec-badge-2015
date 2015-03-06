	.file	1 "timer1_int.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	TimerInit
	.set	nomips16
	.set	nomicromips
	.ent	TimerInit
	.type	TimerInit, @function
TimerInit:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(T2CON)
	sw	$0,%lo(T2CON)($2)
	lui	$2,%hi(TMR2)
	sw	$0,%lo(TMR2)($2)
	li	$3,1052			# 0x41c
	lui	$2,%hi(PR2)
	sw	$3,%lo(PR2)($2)
	li	$3,32768			# 0x8000
	lui	$2,%hi(T2CONSET)
	sw	$3,%lo(T2CONSET)($2)
	li	$2,512			# 0x200
	lui	$3,%hi(IFS0CLR)
	sw	$2,%lo(IFS0CLR)($3)
	lui	$4,%hi(IPC2CLR)
	li	$3,28			# 0x1c
	sw	$3,%lo(IPC2CLR)($4)
	lui	$3,%hi(IPC2SET)
	li	$5,8			# 0x8
	sw	$5,%lo(IPC2SET)($3)
	li	$5,3			# 0x3
	sw	$5,%lo(IPC2CLR)($4)
	sw	$0,%lo(IPC2SET)($3)
	lui	$3,%hi(IEC0CLR)
	sw	$2,%lo(IEC0CLR)($3)
	lui	$3,%hi(IEC0SET)
	sw	$2,%lo(IEC0SET)($3)
	jal	INTEnableSystemMultiVectoredInt
	nop

	lui	$2,%hi(IEC0)
	lw	$3,%lo(IEC0)($2)
	ins	$3,$0,23,1
	sw	$3,%lo(IEC0)($2)
	lui	$4,%hi(TRISB)
	lw	$5,%lo(TRISB)($4)
	li	$3,1			# 0x1
	ins	$5,$3,0,1
	sw	$5,%lo(TRISB)($4)
	lui	$4,%hi(SYSKEY)
	sw	$0,%lo(SYSKEY)($4)
	li	$5,-1432813568			# 0xffffffffaa990000
	addiu	$5,$5,26197
	sw	$5,%lo(SYSKEY)($4)
	li	$5,1432748032			# 0x55660000
	ori	$5,$5,0x99aa
	sw	$5,%lo(SYSKEY)($4)
	lui	$5,%hi(CFGCON)
	lw	$6,%lo(CFGCON)($5)
	ins	$6,$0,13,1
	sw	$6,%lo(CFGCON)($5)
	lui	$6,%hi(INT4R)
	lw	$7,%lo(INT4R)($6)
	li	$8,6			# 0x6
	ins	$7,$8,0,4
	sw	$7,%lo(INT4R)($6)
	lw	$6,%lo(CFGCON)($5)
	ins	$6,$3,13,1
	sw	$6,%lo(CFGCON)($5)
	sw	$0,%lo(SYSKEY)($4)
	lui	$4,%hi(INTCON)
	lw	$5,%lo(INTCON)($4)
	ins	$5,$0,4,1
	sw	$5,%lo(INTCON)($4)
	lui	$4,%hi(IPC4)
	lw	$5,%lo(IPC4)($4)
	ins	$5,$3,26,3
	sw	$5,%lo(IPC4)($4)
	lw	$5,%lo(IPC4)($4)
	ins	$5,$3,24,2
	sw	$5,%lo(IPC4)($4)
	lw	$4,%lo(IEC0)($2)
	ins	$4,$3,23,1
	sw	$4,%lo(IEC0)($2)
	lw	$4,%lo(IEC0)($2)
	ins	$4,$3,9,1
	sw	$4,%lo(IEC0)($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	TimerInit
	.size	TimerInit, .-TimerInit
	.align	2
	.globl	Timer2Handler
	.set	nomips16
	.set	nomicromips
	.ent	Timer2Handler
	.type	Timer2Handler, @function
Timer2Handler:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x0000003c,-20
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-32
	sw	$26,28($sp)
	mfc0	$26,$12,2
	sw	$27,24($sp)
	sw	$26,20($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0x800
	mtc0	$27,$12
	sw	$5,12($sp)
	sw	$4,8($sp)
	sw	$3,4($sp)
	sw	$2,0($sp)
	li	$3,512			# 0x200
	lui	$2,%hi(IFS0CLR)
	sw	$3,%lo(IFS0CLR)($2)
	li	$2,1			# 0x1
	lw	$3,%gp_rel(G_IRrecv)($28)
	bne	$3,$2,.L3
	lw	$2,%gp_rel(G_IRsend)($28)

	lbu	$3,%gp_rel(G_bitCnt)($28)
	sltu	$2,$3,32
	bne	$2,$0,.L4
	lbu	$2,%gp_rel(G_halfCount)($28)

	li	$2,2			# 0x2
	sw	$2,%gp_rel(G_IRrecv)($28)
	sb	$0,%gp_rel(G_bitCnt)($28)
	j	.L2
	sb	$0,%gp_rel(G_halfCount)($28)

.L4:
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	li	$4,16			# 0x10
	bne	$2,$4,.L6
	sb	$2,%gp_rel(G_halfCount)($28)

	lui	$2,%hi(PORTB)
	lw	$2,%lo(PORTB)($2)
	andi	$2,$2,0x1
	sltu	$2,$2,1
	j	.L2
	sb	$2,%gp_rel(G_firstHalf)($28)

.L6:
	li	$4,48			# 0x30
	bne	$2,$4,.L7
	sltu	$2,$2,64

	lui	$2,%hi(PORTB)
	lw	$2,%lo(PORTB)($2)
	andi	$2,$2,0x1
	sltu	$2,$2,1
	j	.L2
	sb	$2,%gp_rel(G_lastHalf)($28)

.L7:
	bne	$2,$0,.L2
	lbu	$4,%gp_rel(G_lastHalf)($28)

	lw	$2,%gp_rel(G_IRrecvVal)($28)
	sll	$2,$2,1
	or	$2,$4,$2
	sw	$2,%gp_rel(G_IRrecvVal)($28)
	addiu	$3,$3,1
	sb	$3,%gp_rel(G_bitCnt)($28)
	j	.L2
	sb	$0,%gp_rel(G_halfCount)($28)

.L3:
	beq	$2,$0,.L2
	lw	$2,%gp_rel(sendOne.12175)($28)

	bne	$2,$0,.L17
	lbu	$4,%gp_rel(G_halfCount)($28)

	lw	$2,%gp_rel(sendZero.12176)($28)
	bne	$2,$0,.L18
	addiu	$4,$4,1

	lbu	$2,%gp_rel(G_bitCnt)($28)
	sltu	$3,$2,32
	beql	$3,$0,.L10
	sw	$0,%gp_rel(G_IRsend)($28)

	bnel	$2,$0,.L11
	andi	$4,$2,0x20

	li	$3,1			# 0x1
	j	.L12
	sw	$3,%gp_rel(sendOne.12175)($28)

.L11:
	li	$3,-2147483648			# 0xffffffff80000000
	srl	$3,$3,$2
	movn	$3,$0,$4
	lw	$4,%gp_rel(G_IRsendVal)($28)
	and	$3,$4,$3
	sw	$3,%gp_rel(sendOne.12175)($28)
.L12:
	lw	$3,%gp_rel(sendOne.12175)($28)
	sltu	$3,$3,1
	sw	$3,%gp_rel(sendZero.12176)($28)
	addiu	$2,$2,1
	j	.L13
	sb	$2,%gp_rel(G_bitCnt)($28)

.L10:
	sb	$0,%gp_rel(G_bitCnt)($28)
.L13:
	lw	$2,%gp_rel(sendOne.12175)($28)
	beq	$2,$0,.L19
	lw	$2,%gp_rel(sendZero.12176)($28)

	lbu	$4,%gp_rel(G_halfCount)($28)
.L17:
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	sb	$4,%gp_rel(G_halfCount)($28)
	lbu	$2,%gp_rel(lowHalf.12177)($28)
	beq	$2,$0,.L15
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L19
	lw	$2,%gp_rel(sendZero.12176)($28)

	sb	$0,%gp_rel(lowHalf.12177)($28)
	j	.L14
	sb	$0,%gp_rel(G_halfCount)($28)

.L15:
	lw	$5,%lo(LATB)($2)
	li	$3,1			# 0x1
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L19
	lw	$2,%gp_rel(sendZero.12176)($28)

	li	$2,1			# 0x1
	sb	$2,%gp_rel(lowHalf.12177)($28)
	sb	$0,%gp_rel(G_halfCount)($28)
	sw	$0,%gp_rel(sendOne.12175)($28)
.L14:
	lw	$2,%gp_rel(sendZero.12176)($28)
.L19:
	beq	$2,$0,.L2
	lbu	$4,%gp_rel(G_halfCount)($28)

	addiu	$4,$4,1
.L18:
	andi	$4,$4,0x00ff
	sb	$4,%gp_rel(G_halfCount)($28)
	lbu	$2,%gp_rel(highHalf.12178)($28)
	beq	$2,$0,.L16
	lui	$2,%hi(LATB)

	lw	$5,%lo(LATB)($2)
	li	$3,1			# 0x1
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$5,%lo(LATB)($2)
	ins	$5,$3,13,1
	sw	$5,%lo(LATB)($2)
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L2
	nop

	sb	$0,%gp_rel(highHalf.12178)($28)
	j	.L2
	sb	$0,%gp_rel(G_halfCount)($28)

.L16:
	lw	$3,%lo(LATB)($2)
	ins	$3,$0,13,1
	sw	$3,%lo(LATB)($2)
	sltu	$4,$4,32
	bne	$4,$0,.L2
	li	$2,1			# 0x1

	sb	$2,%gp_rel(highHalf.12178)($28)
	sb	$0,%gp_rel(G_halfCount)($28)
	sw	$0,%gp_rel(sendZero.12176)($28)
.L2:
	lw	$5,12($sp)
	lw	$4,8($sp)
	lw	$3,4($sp)
	lw	$2,0($sp)
	di
	ehb
	lw	$26,28($sp)
	lw	$27,24($sp)
	mtc0	$26,$14
	lw	$26,20($sp)
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
	.end	Timer2Handler
	.size	Timer2Handler, .-Timer2Handler
	.align	2
	.globl	Int4Interrupt
	.set	nomips16
	.set	nomicromips
	.ent	Int4Interrupt
	.type	Int4Interrupt, @function
Int4Interrupt:
	.frame	$sp,16,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0x0000000c,-12
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SOFTWARE_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-16
	sw	$26,12($sp)
	sw	$27,8($sp)
	ins	$27,$0,1,15
	ori	$27,$27,0x400
	mtc0	$27,$12
	sw	$3,4($sp)
	sw	$2,0($sp)
	lui	$2,%hi(IFS0)
	lw	$3,%lo(IFS0)($2)
	ins	$3,$0,23,1
	sw	$3,%lo(IFS0)($2)
	lw	$2,%gp_rel(G_IRsend)($28)
	bne	$2,$0,.L20
	lw	$2,%gp_rel(G_IRrecv)($28)

	bne	$2,$0,.L20
	li	$2,1			# 0x1

	sw	$2,%gp_rel(G_IRrecv)($28)
	sb	$0,%gp_rel(G_firstHalf)($28)
	li	$2,32			# 0x20
	sb	$2,%gp_rel(G_halfCount)($28)
	sw	$0,%gp_rel(G_IRrecvVal)($28)
.L20:
	lw	$3,4($sp)
	lw	$2,0($sp)
	di
	ehb
	lw	$26,12($sp)
	lw	$27,8($sp)
	mtc0	$26,$14
	addiu	$sp,$sp,16
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Int4Interrupt
	.size	Int4Interrupt, .-Int4Interrupt
	.globl	G_IRsendVal
	.section	.sbss,bss
	.align	2
	.type	G_IRsendVal, @object
	.size	G_IRsendVal, 4
G_IRsendVal:
	.space	4
	.globl	G_IRrecvVal
	.align	2
	.type	G_IRrecvVal, @object
	.size	G_IRrecvVal, 4
G_IRrecvVal:
	.space	4
	.globl	G_IRrecv
	.align	2
	.type	G_IRrecv, @object
	.size	G_IRrecv, 4
G_IRrecv:
	.space	4
	.globl	G_IRsend
	.align	2
	.type	G_IRsend, @object
	.size	G_IRsend, 4
G_IRsend:
	.space	4
	.globl	G_bitCnt
	.type	G_bitCnt, @object
	.size	G_bitCnt, 1
G_bitCnt:
	.space	1
	.globl	G_firstHalf
	.type	G_firstHalf, @object
	.size	G_firstHalf, 1
G_firstHalf:
	.space	1
	.globl	G_lastHalf
	.type	G_lastHalf, @object
	.size	G_lastHalf, 1
G_lastHalf:
	.space	1
	.globl	G_halfCount
	.type	G_halfCount, @object
	.size	G_halfCount, 1
G_halfCount:
	.space	1
	.section	.sdata,data
	.type	highHalf.12178, @object
	.size	highHalf.12178, 1
highHalf.12178:
	.byte	1
	.type	lowHalf.12177, @object
	.size	lowHalf.12177, 1
lowHalf.12177:
	.byte	1
	.section	.sbss,bss
	.align	2
	.type	sendZero.12176, @object
	.size	sendZero.12176, 4
sendZero.12176:
	.space	4
	.align	2
	.type	sendOne.12175, @object
	.size	sendOne.12175, 4
sendOne.12175:
	.space	4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_19
	.section	.vector_19,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_19
__vector_dispatch_19:
	j	Int4Interrupt
	nop
	.set reorder
	.end	__vector_dispatch_19
	.size	__vector_dispatch_19, .-__vector_dispatch_19
	.globl	__vector_dispatch_8
	.section	.vector_8,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_8
__vector_dispatch_8:
	j	Timer2Handler
	nop
	.set reorder
	.end	__vector_dispatch_8
	.size	__vector_dispatch_8, .-__vector_dispatch_8
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
