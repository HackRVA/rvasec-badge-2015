	.file	1 "time_date.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	setupRTCC
	.set	nomips16
	.set	nomicromips
	.ent	setupRTCC
	.type	setupRTCC, @function
setupRTCC:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(SYSKEY)
	sw	$0,%lo(SYSKEY)($2)
	li	$3,-1432813568			# 0xffffffffaa990000
	addiu	$3,$3,26197
	sw	$3,%lo(SYSKEY)($2)
	li	$3,1432748032			# 0x55660000
	ori	$3,$3,0x99aa
	sw	$3,%lo(SYSKEY)($2)
	lui	$2,%hi(OSCCON)
	lw	$3,%lo(OSCCON)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(OSCCON)($2)
	jal	INTDisableInterrupts
	nop

	lui	$3,%hi(DMACON)
	lw	$3,%lo(DMACON)($3)
	ext	$3,$3,12,1
	bne	$3,$0,.L2
	lui	$3,%hi(SYSKEY)

	li	$4,4096			# 0x1000
	lui	$3,%hi(DMACONSET)
	sw	$4,%lo(DMACONSET)($3)
	lui	$5,%hi(DMACON)
.L3:
	lw	$3,%lo(DMACON)($5)
	andi	$3,$3,0x800
	bne	$3,$0,.L3
	lui	$3,%hi(SYSKEY)

	j	.L16
	nop

.L2:
	sw	$0,%lo(SYSKEY)($3)
	li	$4,-1432813568			# 0xffffffffaa990000
	addiu	$4,$4,26197
	sw	$4,%lo(SYSKEY)($3)
	li	$4,1432748032			# 0x55660000
	ori	$4,$4,0x99aa
	sw	$4,%lo(SYSKEY)($3)
	li	$5,2			# 0x2
	lui	$4,%hi(OSCCONSET)
	sw	$5,%lo(OSCCONSET)($4)
	li	$4,858980352			# 0x33330000
	addiu	$4,$4,13107
	sw	$4,%lo(SYSKEY)($3)
	lui	$3,%hi(DMACON)
	lw	$3,%lo(DMACON)($3)
	ext	$3,$3,12,1
	bne	$3,$0,.L5
	li	$4,4096			# 0x1000

	lui	$3,%hi(DMACONSET)
	sw	$4,%lo(DMACONSET)($3)
	lui	$5,%hi(DMACON)
.L6:
	lw	$3,%lo(DMACON)($5)
	andi	$3,$3,0x800
	bne	$3,$0,.L6
	nop

.L5:
	jal	INTRestoreInterrupts
	move	$4,$2

	lui	$2,%hi(OSCCON)
	lw	$3,%lo(OSCCON)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(OSCCON)($2)
	jal	RtccInit
	nop

	lui	$2,%hi(SYSKEY)
	sw	$0,%lo(SYSKEY)($2)
	lui	$3,%hi(OSCCON)
	li	$4,4194304			# 0x400000
	lui	$5,%hi(RTCCON)
.L13:
	lw	$2,%lo(OSCCON)($3)
	andi	$2,$2,0x2
	beq	$2,$0,.L13
	nop

	lw	$2,%lo(OSCCON)($3)
	and	$2,$2,$4
	beq	$2,$0,.L13
	nop

	lw	$2,%lo(RTCCON)($5)
	andi	$2,$2,0x40
	beq	$2,$0,.L13
	nop

	j	.L17
	sw	$0,%gp_rel(G_time)($28)

.L16:
	sw	$0,%lo(SYSKEY)($3)
	li	$4,-1432813568			# 0xffffffffaa990000
	addiu	$4,$4,26197
	sw	$4,%lo(SYSKEY)($3)
	li	$4,1432748032			# 0x55660000
	ori	$4,$4,0x99aa
	sw	$4,%lo(SYSKEY)($3)
	li	$5,2			# 0x2
	lui	$4,%hi(OSCCONSET)
	sw	$5,%lo(OSCCONSET)($4)
	li	$4,858980352			# 0x33330000
	addiu	$4,$4,13107
	sw	$4,%lo(SYSKEY)($3)
	li	$4,4096			# 0x1000
	lui	$3,%hi(DMACONCLR)
	sw	$4,%lo(DMACONCLR)($3)
	j	.L5
	nop

.L17:
	li	$2,7			# 0x7
	sb	$2,%gp_rel(G_time+2)($28)
	li	$2,16			# 0x10
	sb	$2,%gp_rel(G_time+3)($28)
	li	$2,2			# 0x2
	sb	$2,%gp_rel(G_date)($28)
	sb	$2,%gp_rel(G_date+1)($28)
	li	$2,6			# 0x6
	sb	$2,%gp_rel(G_date+2)($28)
	li	$2,20			# 0x14
	sb	$2,%gp_rel(G_date+3)($28)
	lw	$4,%gp_rel(G_time)($28)
	lw	$5,%gp_rel(G_date)($28)
	jal	RtccOpen
	move	$6,$0

	li	$3,8			# 0x8
	lui	$2,%hi(RTCCONCLR)
	sw	$3,%lo(RTCCONCLR)($2)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setupRTCC
	.size	setupRTCC, .-setupRTCC
	.align	2
	.globl	setRTCC
	.set	nomips16
	.set	nomicromips
	.ent	setRTCC
	.type	setRTCC, @function
setRTCC:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,%gp_rel(G_time)($28)
	jal	RtccSetTimeDate
	lw	$5,%gp_rel(G_date)($28)

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setRTCC
	.size	setRTCC, .-setRTCC
	.align	2
	.globl	getRTCC
	.set	nomips16
	.set	nomicromips
	.ent	getRTCC
	.type	getRTCC, @function
getRTCC:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$3,%hi(RTCTIME)
.L20:
	lw	$2,%lo(RTCTIME)($3)
	lw	$4,%lo(RTCTIME)($3)
	bne	$2,$4,.L20
	nop

	sw	$2,%gp_rel(G_time)($28)
	lui	$3,%hi(RTCDATE)
.L21:
	lw	$2,%lo(RTCDATE)($3)
	lw	$4,%lo(RTCDATE)($3)
	bne	$2,$4,.L21
	nop

	j	$31
	sw	$2,%gp_rel(G_date)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getRTCC
	.size	getRTCC, .-getRTCC
	.align	2
	.globl	CheckRtccRunning
	.set	nomips16
	.set	nomicromips
	.ent	CheckRtccRunning
	.type	CheckRtccRunning, @function
CheckRtccRunning:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$21,$4
	blez	$4,.L25
	move	$2,$0

	move	$20,$0
	lui	$16,%hi(RTCTIME)
	li	$19,21954560			# 0x14f0000
	ori	$19,$19,0xb180
.L30:
	jal	ReadCoreTimer
	nop

	move	$18,$2
.L26:
	lw	$17,%lo(RTCTIME)($16)
	lw	$2,%lo(RTCTIME)($16)
	bne	$17,$2,.L26
	ext	$17,$17,8,8

.L36:
	lw	$2,%lo(RTCTIME)($16)
	lw	$3,%lo(RTCTIME)($16)
	bne	$2,$3,.L36
	ext	$2,$2,8,8

	bnel	$2,$17,.L28
	addiu	$20,$20,1

	jal	ReadCoreTimer
	nop

	subu	$2,$2,$18
	sltu	$2,$2,$19
	bne	$2,$0,.L36
	li	$2,1			# 0x1

	j	.L37
	sltu	$2,$2,1

.L28:
	bne	$20,$21,.L30
	move	$2,$0

.L25:
	sltu	$2,$2,1
.L37:
	lw	$31,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CheckRtccRunning
	.size	CheckRtccRunning, .-CheckRtccRunning

	.comm	G_time,4,4

	.comm	G_date,4,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
