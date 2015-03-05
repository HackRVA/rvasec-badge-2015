	.file	1 "usb_device.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	USBConfigureEndpoint
	.type	USBConfigureEndpoint, @function
USBConfigureEndpoint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	sll	$3,$4,1
	addu	$3,$5,$3
	sll	$3,$3,4
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	addu	$2,$2,$3
	lbu	$3,0($2)
	ins	$3,$0,7,1
	sb	$3,0($2)
	bne	$5,$0,.L2
	sll	$4,$4,2

	lui	$3,%hi(pBDTEntryOut)
	addiu	$3,$3,%lo(pBDTEntryOut)
	addu	$4,$4,$3
	j	.L3
	sw	$2,0($4)

.L2:
	lui	$3,%hi(pBDTEntryIn)
	addiu	$3,$3,%lo(pBDTEntryIn)
	addu	$4,$4,$3
	sw	$2,0($4)
.L3:
	lbu	$3,0($2)
	ins	$3,$0,6,1
	sb	$3,0($2)
	lbu	$3,8($2)
	li	$4,1			# 0x1
	ins	$3,$4,6,1
	sb	$3,8($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBConfigureEndpoint
	.size	USBConfigureEndpoint, .-USBConfigureEndpoint
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	USBCtrlTrfTxService
	.type	USBCtrlTrfTxService, @function
USBCtrlTrfTxService:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lhu	$3,8($2)
	andi	$3,$3,0xffff
	sltu	$3,$3,8
	beq	$3,$0,.L5
	li	$2,8			# 0x8

	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lhu	$2,8($2)
	andi	$2,$2,0x00ff
	lbu	$3,%gp_rel(shortPacketStatus)($28)
	andi	$3,$3,0x00ff
	bne	$3,$0,.L6
	li	$3,1			# 0x1

	sb	$3,%gp_rel(shortPacketStatus)($28)
	j	.L16
	lui	$4,%hi(inPipes)

.L6:
	lbu	$4,%gp_rel(shortPacketStatus)($28)
	andi	$4,$4,0x00ff
	li	$3,1			# 0x1
	bne	$4,$3,.L16
	lui	$4,%hi(inPipes)

	li	$3,2			# 0x2
	sb	$3,%gp_rel(shortPacketStatus)($28)
.L5:
	lui	$4,%hi(inPipes)
.L16:
	addiu	$4,$4,%lo(inPipes)
	lhu	$3,8($4)
	subu	$3,$3,$2
	andi	$3,$3,0xffff
	sh	$3,8($4)
	lui	$3,%hi(pBDTEntryIn)
	lw	$3,%lo(pBDTEntryIn)($3)
	andi	$5,$2,0xff
	lbu	$6,2($3)
	sb	$5,2($3)
	lbu	$5,3($3)
	li	$6,-4			# 0xfffffffffffffffc
	and	$5,$6,$5
	sb	$5,3($3)
	addiu	$3,$28,%gp_rel(CtrlTrfData)
	sw	$3,%gp_rel(pDst)($28)
	lw	$3,4($4)
	andi	$3,$3,0x1
	beq	$3,$0,.L7
	nop

	bne	$2,$0,.L8
	lui	$5,%hi(inPipes)

.L20:
	j	$31
	nop

.L7:
	beq	$2,$0,.L20
	lui	$5,%hi(inPipes)

	lw	$4,%gp_rel(pDst)($28)
.L17:
	lw	$3,%lo(inPipes)($5)
	lbu	$6,0($3)
	sb	$6,0($4)
	addiu	$4,$4,1
	sw	$4,%gp_rel(pDst)($28)
	addiu	$3,$3,1
	sw	$3,%lo(inPipes)($5)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L17
	lw	$4,%gp_rel(pDst)($28)

	j	$31
	nop

.L8:
	lw	$4,%gp_rel(pDst)($28)
.L18:
	lw	$3,%lo(inPipes)($5)
	lbu	$6,0($3)
	sb	$6,0($4)
	addiu	$4,$4,1
	sw	$4,%gp_rel(pDst)($28)
	addiu	$3,$3,1
	sw	$3,%lo(inPipes)($5)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L18
	lw	$4,%gp_rel(pDst)($28)

	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCtrlTrfTxService
	.size	USBCtrlTrfTxService, .-USBCtrlTrfTxService
	.align	2
	.globl	USBDeviceInit
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceInit
	.type	USBDeviceInit, @function
USBDeviceInit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	li	$2,255			# 0xff
	lui	$3,%hi(U1EIR)
	sw	$2,%lo(U1EIR)($3)
	lui	$3,%hi(U1IR)
	sw	$2,%lo(U1IR)($3)
	lui	$2,%hi(U1EP0)
	sw	$0,%lo(U1EP0)($2)
	lui	$2,%hi(U1EP1)
	sw	$0,%lo(U1EP1)($2)
	lui	$2,%hi(U1EP1+16)
	sw	$0,%lo(U1EP1+16)($2)
	lui	$2,%hi(U1CNFG1)
	sw	$0,%lo(U1CNFG1)($2)
	li	$2,159			# 0x9f
	lui	$3,%hi(U1EIE)
	sw	$2,%lo(U1EIE)($3)
	lui	$3,%hi(U1IE)
	sw	$2,%lo(U1IE)($3)
	lui	$2,%hi(U1OTGCON)
	lw	$3,%lo(U1OTGCON)($2)
	andi	$3,$3,0xf
	sw	$3,%lo(U1OTGCON)($2)
	lw	$3,%lo(U1OTGCON)($2)
	sw	$3,%lo(U1OTGCON)($2)
	lui	$2,%hi(U1PWRC)
	lw	$3,%lo(U1PWRC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(U1PWRC)($2)
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	ext	$2,$2,0,29
	srl	$4,$2,24
	lui	$3,%hi(U1BDTP3)
	sw	$4,%lo(U1BDTP3)($3)
	srl	$4,$2,16
	lui	$3,%hi(U1BDTP2)
	sw	$4,%lo(U1BDTP2)($3)
	srl	$2,$2,8
	lui	$3,%hi(U1BDTP1)
	sw	$2,%lo(U1BDTP1)($3)
	move	$2,$0
	lui	$5,%hi(BDT)
	addiu	$5,$5,%lo(BDT)
	li	$4,12			# 0xc
	sll	$3,$2,3
.L28:
	addu	$3,$3,$5
	move	$6,$0
	move	$7,$0
	sw	$6,0($3)
	sw	$7,4($3)
	addiu	$2,$2,1
	bne	$2,$4,.L28
	sll	$3,$2,3

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(U1CON)($2)
	lui	$3,%hi(U1ADDR)
	sw	$0,%lo(U1ADDR)($3)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,5,1
	sw	$3,%lo(U1CON)($2)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1CON)($2)
	lui	$2,%hi(U1IR)
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L23
	lui	$4,%hi(U1IR)

	lui	$8,%hi(U1IR)
	li	$7,8			# 0x8
	lui	$6,%hi(inPipes)
	lui	$5,%hi(outPipes)
.L25:
	sw	$7,%lo(U1IR)($8)
	addiu	$2,$6,%lo(inPipes)
	sb	$0,4($2)
	addiu	$2,$5,%lo(outPipes)
	sb	$0,4($2)
	lw	$3,4($2)
	ins	$3,$0,8,16
	sw	$3,4($2)
	lw	$2,%lo(U1IR)($4)
	andi	$2,$2,0x8
	bne	$2,$0,.L25
	nop

.L23:
	li	$2,1			# 0x1
	sw	$2,%gp_rel(USBStatusStageEnabledFlag1)($28)
	sw	$2,%gp_rel(USBStatusStageEnabledFlag2)($28)
	sw	$0,%gp_rel(USBDeferINDataStagePackets)($28)
	sw	$0,%gp_rel(USBDeferOUTDataStagePackets)($28)
	sw	$0,%gp_rel(USBBusIsSuspended)($28)
	lui	$3,%hi(pBDTEntryOut)
	sw	$0,%lo(pBDTEntryOut)($3)
	sb	$0,%gp_rel(ep_data_in)($28)
	sb	$0,%gp_rel(ep_data_out)($28)
	lui	$2,%hi(pBDTEntryIn)
	addiu	$4,$2,%lo(pBDTEntryIn)
	sw	$0,4($4)
	addiu	$3,$3,%lo(pBDTEntryOut)
	sw	$0,4($3)
	sb	$0,%gp_rel(ep_data_in+1)($28)
	sb	$0,%gp_rel(ep_data_out+1)($28)
	sw	$0,8($4)
	sw	$0,8($3)
	sb	$0,%gp_rel(ep_data_in+2)($28)
	sb	$0,%gp_rel(ep_data_out+2)($28)
	lui	$3,%hi(BDT+16)
	addiu	$3,$3,%lo(BDT+16)
	sw	$3,%lo(pBDTEntryIn)($2)
	li	$3,13			# 0xd
	lui	$2,%hi(U1EP0)
	sw	$3,%lo(U1EP0)($2)
	lui	$2,%hi(BDT)
	addiu	$3,$2,%lo(BDT)
	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$4,$4,0,29
	sw	$4,4($3)
	lw	$3,%lo(BDT)($2)
	li	$4,8			# 0x8
	ins	$3,$4,16,10
	sw	$3,%lo(BDT)($2)
	li	$3,132			# 0x84
	sh	$3,%lo(BDT)($2)
	sb	$0,%gp_rel(USBActiveConfiguration)($28)
	sw	$0,%gp_rel(USBDeviceState)($28)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceInit
	.size	USBDeviceInit, .-USBDeviceInit
	.align	2
	.globl	USBEnableEndpoint
	.set	nomips16
	.set	nomicromips
	.ent	USBEnableEndpoint
	.type	USBEnableEndpoint, @function
USBEnableEndpoint:
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
	andi	$16,$5,0x00ff
	andi	$2,$16,0x8
	beq	$2,$0,.L30
	andi	$17,$4,0x00ff

	move	$4,$17
	jal	USBConfigureEndpoint
	move	$5,$0

.L30:
	andi	$2,$16,0x4
	beql	$2,$0,.L32
	sll	$17,$17,4

	move	$4,$17
	jal	USBConfigureEndpoint
	li	$5,1			# 0x1

	sll	$17,$17,4
.L32:
	lui	$2,%hi(U1EP0)
	addiu	$2,$2,%lo(U1EP0)
	addu	$17,$2,$17
	sb	$16,0($17)
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBEnableEndpoint
	.size	USBEnableEndpoint, .-USBEnableEndpoint
	.align	2
	.globl	USBTransferOnePacket
	.set	nomips16
	.set	nomicromips
	.ent	USBTransferOnePacket
	.type	USBTransferOnePacket, @function
USBTransferOnePacket:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	beq	$5,$0,.L34
	andi	$7,$7,0x00ff

	sll	$3,$4,2
	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$2,$3,$2
	j	.L35
	lw	$3,0($2)

.L34:
	sll	$3,$4,2
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$2,$3,$2
	lw	$3,0($2)
.L35:
	beq	$3,$0,.L39
	move	$2,$0

	ext	$2,$6,0,29
	andi	$6,$6,0xff
	lbu	$8,4($3)
	sb	$6,4($3)
	ext	$6,$2,8,8
	lbu	$8,5($3)
	sb	$6,5($3)
	ext	$6,$2,16,8
	lbu	$8,6($3)
	sb	$6,6($3)
	srl	$2,$2,24
	lbu	$6,7($3)
	sb	$2,7($3)
	andi	$7,$7,0xff
	lbu	$2,2($3)
	sb	$7,2($3)
	lbu	$2,3($3)
	li	$6,-4			# 0xfffffffffffffffc
	and	$2,$6,$2
	sb	$2,3($3)
	lbu	$2,0($3)
	lbu	$6,1($3)
	andi	$2,$2,0x40
	andi	$2,$2,0xffff
	andi	$2,$2,0xff
	lbu	$6,0($3)
	sb	$2,0($3)
	lbu	$2,1($3)
	sb	$0,1($3)
	lbu	$6,0($3)
	andi	$6,$6,0x00ff
	lbu	$2,1($3)
	andi	$2,$2,0x00ff
	sll	$2,$2,8
	or	$2,$2,$6
	ori	$2,$2,0x88
	andi	$6,$2,0xff
	lbu	$7,0($3)
	sb	$6,0($3)
	srl	$2,$2,8
	lbu	$6,1($3)
	sb	$2,1($3)
	beq	$5,$0,.L37
	sll	$4,$4,2

	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$4,$2,$4
	lbu	$2,0($4)
	xori	$2,$2,0x8
	sb	$2,0($4)
	j	$31
	move	$2,$3

.L37:
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$4,$2,$4
	lbu	$2,0($4)
	xori	$2,$2,0x8
	sb	$2,0($4)
	move	$2,$3
.L39:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBTransferOnePacket
	.size	USBTransferOnePacket, .-USBTransferOnePacket
	.align	2
	.globl	USBStallEndpoint
	.set	nomips16
	.set	nomicromips
	.ent	USBStallEndpoint
	.type	USBStallEndpoint, @function
USBStallEndpoint:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	bne	$4,$0,.L41
	andi	$5,$5,0x00ff

	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	$31
	nop

.L41:
	sll	$4,$4,1
	addu	$4,$5,$4
	sll	$4,$4,4
	lui	$3,%hi(BDT)
	addiu	$3,$3,%lo(BDT)
	addu	$2,$3,$4
	lbu	$6,0($2)
	lbu	$5,1($2)
	sll	$5,$5,8
	or	$5,$5,$6
	ori	$5,$5,0x84
	sb	$5,0($2)
	srl	$5,$5,8
	sb	$5,1($2)
	addiu	$4,$4,8
	addu	$4,$3,$4
	lbu	$3,0($4)
	lbu	$2,1($4)
	sll	$2,$2,8
	or	$2,$2,$3
	ori	$2,$2,0x84
	sb	$2,0($4)
	srl	$2,$2,8
	j	$31
	sb	$2,1($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBStallEndpoint
	.size	USBStallEndpoint, .-USBStallEndpoint
	.align	2
	.globl	USBCancelIO
	.set	nomips16
	.set	nomicromips
	.ent	USBCancelIO
	.type	USBCancelIO, @function
USBCancelIO:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$4,$4,0x00ff
	lui	$2,%hi(U1CON)
	lw	$2,%lo(U1CON)($2)
	andi	$2,$2,0x20
	beq	$2,$0,.L45
	sll	$4,$4,2

	lui	$2,%hi(pBDTEntryIn)
	addiu	$2,$2,%lo(pBDTEntryIn)
	addu	$4,$4,$2
	lw	$2,0($4)
	lbu	$3,0($2)
	lbu	$5,1($2)
	lbu	$5,2($2)
	lbu	$5,3($2)
	lbu	$5,4($2)
	lbu	$5,5($2)
	lbu	$5,6($2)
	lbu	$5,7($2)
	andi	$3,$3,0x40
	lbu	$5,0($2)
	sb	$3,0($2)
	lbu	$5,1($2)
	sb	$0,1($2)
	lbu	$5,2($2)
	sb	$0,2($2)
	srl	$3,$3,24
	lbu	$5,3($2)
	sb	$3,3($2)
	lbu	$3,4($2)
	sb	$0,4($2)
	lbu	$3,5($2)
	sb	$0,5($2)
	lbu	$3,6($2)
	sb	$0,6($2)
	lbu	$3,7($2)
	sb	$0,7($2)
	lw	$2,0($4)
	lbu	$7,0($2)
	andi	$7,$7,0x00ff
	lbu	$6,1($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$7
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$6
	lbu	$5,3($2)
	sll	$5,$5,24
	or	$5,$5,$3
	lbu	$8,4($2)
	andi	$8,$8,0x00ff
	lbu	$7,5($2)
	andi	$7,$7,0x00ff
	sll	$7,$7,8
	or	$7,$7,$8
	lbu	$6,6($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,16
	or	$6,$6,$7
	lbu	$3,7($2)
	sll	$3,$3,24
	or	$3,$3,$6
	xori	$5,$5,0x40
	andi	$6,$5,0xff
	lbu	$7,0($2)
	sb	$6,0($2)
	ext	$6,$5,8,8
	lbu	$7,1($2)
	sb	$6,1($2)
	ext	$6,$5,16,8
	lbu	$7,2($2)
	sb	$6,2($2)
	srl	$5,$5,24
	lbu	$6,3($2)
	sb	$5,3($2)
	andi	$5,$3,0xff
	lbu	$6,4($2)
	sb	$5,4($2)
	ext	$5,$3,8,8
	lbu	$6,5($2)
	sb	$5,5($2)
	ext	$5,$3,16,8
	lbu	$6,6($2)
	sb	$5,6($2)
	srl	$3,$3,24
	lbu	$5,7($2)
	sb	$3,7($2)
	lbu	$2,0($4)
	xori	$2,$2,0x8
	sb	$2,0($4)
	lw	$2,0($4)
	lbu	$3,0($2)
	lbu	$5,1($2)
	andi	$3,$3,0x40
	andi	$3,$3,0xffff
	andi	$3,$3,0xff
	lbu	$5,0($2)
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lw	$2,0($4)
	lbu	$4,0($2)
	andi	$4,$4,0x00ff
	lbu	$3,1($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,8
	or	$3,$3,$4
	xori	$3,$3,0x40
	andi	$4,$3,0xff
	lbu	$5,0($2)
	sb	$4,0($2)
	srl	$3,$3,8
	lbu	$4,1($2)
	sb	$3,1($2)
.L45:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCancelIO
	.size	USBCancelIO, .-USBCancelIO
	.align	2
	.globl	USBDeviceDetach
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceDetach
	.type	USBDeviceDetach, @function
USBDeviceDetach:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(U1CON)
	sw	$0,%lo(U1CON)($2)
	lui	$2,%hi(U1IE)
	sw	$0,%lo(U1IE)($2)
	sw	$0,%gp_rel(USBDeviceState)($28)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceDetach
	.size	USBDeviceDetach, .-USBDeviceDetach
	.align	2
	.globl	USBDeviceAttach
	.set	nomips16
	.set	nomicromips
	.ent	USBDeviceAttach
	.type	USBDeviceAttach, @function
USBDeviceAttach:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$2,%gp_rel(USBDeviceState)($28)
	bne	$2,$0,.L53
	lw	$31,20($sp)

	lui	$2,%hi(U1CON)
	sw	$0,%lo(U1CON)($2)
	lui	$2,%hi(U1IE)
	sw	$0,%lo(U1IE)($2)
	lui	$3,%hi(U1CNFG1)
	sw	$0,%lo(U1CNFG1)($3)
	li	$3,159			# 0x9f
	lui	$4,%hi(U1EIE)
	sw	$3,%lo(U1EIE)($4)
	sw	$3,%lo(U1IE)($2)
	lui	$2,%hi(U1OTGCON)
	lw	$3,%lo(U1OTGCON)($2)
	andi	$3,$3,0xf
	sw	$3,%lo(U1OTGCON)($2)
	lw	$3,%lo(U1OTGCON)($2)
	sw	$3,%lo(U1OTGCON)($2)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	li	$3,16711680			# 0xff0000
	lui	$2,%hi(IPC7CLR)
	sw	$3,%lo(IPC7CLR)($2)
	li	$3,1048576			# 0x100000
	lui	$2,%hi(IPC7SET)
	sw	$3,%lo(IPC7SET)($2)
	jal	INTEnableSystemMultiVectoredInt
	nop

	jal	INTEnableInterrupts
	nop

	lui	$2,%hi(U1CON)
	lw	$2,%lo(U1CON)($2)
	andi	$2,$2,0x1
	bne	$2,$0,.L49
	lui	$2,%hi(U1CON)

	li	$4,1			# 0x1
.L51:
	lw	$3,%lo(U1CON)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(U1CON)($2)
	lw	$3,%lo(U1CON)($2)
	andi	$3,$3,0x1
	beq	$3,$0,.L51
	nop

.L49:
	li	$2,1			# 0x1
	sw	$2,%gp_rel(USBDeviceState)($28)
	lw	$31,20($sp)
.L53:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBDeviceAttach
	.size	USBDeviceAttach, .-USBDeviceAttach
	.align	2
	.globl	USBCtrlEPAllowStatusStage
	.set	nomips16
	.set	nomicromips
	.ent	USBCtrlEPAllowStatusStage
	.type	USBCtrlEPAllowStatusStage, @function
USBCtrlEPAllowStatusStage:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(USBStatusStageEnabledFlag1)($28)
	bne	$2,$0,.L58
	li	$2,1			# 0x1

	sw	$2,%gp_rel(USBStatusStageEnabledFlag1)($28)
	lw	$2,%gp_rel(USBStatusStageEnabledFlag2)($28)
	bne	$2,$0,.L58
	li	$2,1			# 0x1

	sw	$2,%gp_rel(USBStatusStageEnabledFlag2)($28)
	lbu	$3,%gp_rel(controlTransferState)($28)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L56
	lui	$3,%hi(pBDTEntryIn)

	lw	$2,%lo(pBDTEntryIn)($3)
	lbu	$4,2($2)
	sb	$0,2($2)
	lbu	$5,3($2)
	li	$4,-4			# 0xfffffffffffffffc
	and	$4,$5,$4
	sb	$4,3($2)
	lw	$2,%lo(pBDTEntryIn)($3)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
.L58:
	j	$31
	nop

.L56:
	lbu	$3,%gp_rel(controlTransferState)($28)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L57
	nop

	sw	$0,%gp_rel(BothEP0OutUOWNsSet)($28)
	lw	$2,%gp_rel(pBDTEntryEP0OutCurrent)($28)
	lbu	$3,2($2)
	li	$8,8			# 0x8
	sb	$8,2($2)
	lbu	$3,3($2)
	li	$7,-4			# 0xfffffffffffffffc
	and	$3,$3,$7
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutCurrent)($28)
	addiu	$6,$28,%gp_rel(SetupPkt)
	ext	$3,$6,0,29
	andi	$6,$6,0xff
	lbu	$4,4($2)
	sb	$6,4($2)
	ext	$5,$3,8,8
	lbu	$4,5($2)
	sb	$5,5($2)
	ext	$4,$3,16,8
	lbu	$9,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$9,7($2)
	sb	$3,7($2)
	lbu	$9,0($2)
	li	$9,-124			# 0xffffffffffffff84
	sb	$9,0($2)
	lbu	$9,1($2)
	sb	$0,1($2)
	li	$2,1			# 0x1
	sw	$2,%gp_rel(BothEP0OutUOWNsSet)($28)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$9,2($2)
	sb	$8,2($2)
	lbu	$8,3($2)
	and	$7,$8,$7
	sb	$7,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$7,4($2)
	sb	$6,4($2)
	lbu	$6,5($2)
	sb	$5,5($2)
	lbu	$5,6($2)
	sb	$4,6($2)
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-128			# 0xffffffffffffff80
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
.L57:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCtrlEPAllowStatusStage
	.size	USBCtrlEPAllowStatusStage, .-USBCtrlEPAllowStatusStage
	.align	2
	.globl	USBCtrlEPAllowDataStage
	.set	nomips16
	.set	nomicromips
	.ent	USBCtrlEPAllowDataStage
	.type	USBCtrlEPAllowDataStage, @function
USBCtrlEPAllowDataStage:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$0,%gp_rel(USBDeferINDataStagePackets)($28)
	sw	$0,%gp_rel(USBDeferOUTDataStagePackets)($28)
	lbu	$3,%gp_rel(controlTransferState)($28)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L60
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)

	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(CtrlTrfData)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L63
	lw	$31,20($sp)

.L60:
	lhu	$3,%gp_rel(SetupPkt+6)($28)
	andi	$3,$3,0xffff
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lhu	$2,8($2)
	andi	$2,$2,0xffff
	sltu	$2,$3,$2
	beq	$2,$0,.L62
	nop

	lhu	$3,%gp_rel(SetupPkt+6)($28)
	andi	$3,$3,0xffff
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	sh	$3,8($2)
.L62:
	jal	USBCtrlTrfTxService
	nop

	lui	$2,%hi(pBDTEntryIn)
	lw	$2,%lo(pBDTEntryIn)($2)
	addiu	$4,$28,%gp_rel(CtrlTrfData)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lw	$31,20($sp)
.L63:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCtrlEPAllowDataStage
	.size	USBCtrlEPAllowDataStage, .-USBCtrlEPAllowDataStage
	.align	2
	.globl	_USB1Interrupt
	.set	nomips16
	.set	nomicromips
	.ent	_USB1Interrupt
	.type	_USB1Interrupt, @function
_USB1Interrupt:
	.frame	$sp,152,$31		# vars= 8, regs= 25/0, args= 16, gp= 0
	.mask	0x837ffffe,-28
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: DEFAULT_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$27,$14
	mfc0	$26,$12,2
	addiu	$sp,$sp,-152
	sw	$27,148($sp)
	mfc0	$27,$12
	sw	$26,144($sp)
	mfc0	$26,$13
	sw	$27,140($sp)
	srl	$26,$26,10
	ins	$27,$26,10,6
	ins	$27,$0,1,4
	mtc0	$27,$12
	sw	$3,36($sp)
	sw	$2,32($sp)
	lw	$3,144($sp)
	andi	$3,$3,0xf
	bne	$3,$0,.L156
	nop

	sw	$31,124($sp)
	sw	$25,120($sp)
	sw	$24,116($sp)
	sw	$22,112($sp)
	sw	$21,108($sp)
	sw	$20,104($sp)
	sw	$19,100($sp)
	sw	$18,96($sp)
	sw	$17,92($sp)
	sw	$16,88($sp)
	sw	$15,84($sp)
	sw	$14,80($sp)
	sw	$13,76($sp)
	sw	$12,72($sp)
	sw	$11,68($sp)
	sw	$10,64($sp)
	sw	$9,60($sp)
	sw	$8,56($sp)
	sw	$7,52($sp)
	sw	$6,48($sp)
	sw	$5,44($sp)
	sw	$4,40($sp)
	sw	$1,28($sp)
.L156:
	mflo	$2
	sw	$2,132($sp)
	mfhi	$3
	sw	$3,128($sp)
	lw	$3,%gp_rel(USBDeviceState)($28)
	li	$2,1			# 0x1
	bne	$3,$2,.L166
	lui	$2,%hi(U1OTGIR)

	li	$3,255			# 0xff
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(U1IE)
	lw	$3,%lo(U1IE)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(U1IE)($2)
	lw	$3,%lo(U1IE)($2)
	ins	$3,$4,4,1
	sw	$3,%lo(U1IE)($2)
	li	$2,2			# 0x2
	sw	$2,%gp_rel(USBDeviceState)($28)
	lui	$2,%hi(U1OTGIR)
.L166:
	lw	$2,%lo(U1OTGIR)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L167
	lui	$2,%hi(U1PWRC)

	lui	$2,%hi(U1OTGIE)
	lw	$2,%lo(U1OTGIE)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L167
	lui	$2,%hi(U1PWRC)

	lui	$17,%hi(U1OTGIR)
	li	$16,16			# 0x10
	sw	$16,%lo(U1OTGIR)($17)
	sw	$0,%gp_rel(USBBusIsSuspended)($28)
	li	$4,116			# 0x74
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	lui	$2,%hi(U1OTGIE)
	lw	$3,%lo(U1OTGIE)($2)
	ins	$3,$0,4,1
	sw	$3,%lo(U1OTGIE)($2)
	sw	$16,%lo(U1OTGIR)($17)
	lui	$2,%hi(U1PWRC)
.L167:
	lw	$2,%lo(U1PWRC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L67
	lui	$2,%hi(U1IR)

	jal	INTClearFlag
	li	$4,69			# 0x45

	j	.L64
	nop

.L67:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L168
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L168
	lui	$2,%hi(U1IR)

	jal	USBDeviceInit
	nop

	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	li	$2,4			# 0x4
	sw	$2,%gp_rel(USBDeviceState)($28)
	li	$3,1			# 0x1
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(U1IR)
.L168:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L169
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x10
	beq	$2,$0,.L169
	lui	$2,%hi(U1IR)

	lui	$3,%hi(U1OTGIE)
	lw	$4,%lo(U1OTGIE)($3)
	li	$2,1			# 0x1
	ins	$4,$2,4,1
	sw	$4,%lo(U1OTGIE)($3)
	lui	$17,%hi(U1IR)
	li	$16,16			# 0x10
	sw	$16,%lo(U1IR)($17)
	sw	$2,%gp_rel(USBBusIsSuspended)($28)
	li	$4,117			# 0x75
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	sw	$16,%lo(U1IR)($17)
	lui	$2,%hi(U1IR)
.L169:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x4
	beq	$2,$0,.L170
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x4
	beq	$2,$0,.L171
	li	$3,4			# 0x4

	li	$4,115			# 0x73
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,1			# 0x1

	li	$3,4			# 0x4
.L171:
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lbu	$2,%gp_rel(USBStatusStageTimeoutCounter)($28)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L73
	nop

	lbu	$2,%gp_rel(USBStatusStageTimeoutCounter)($28)
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	sb	$2,%gp_rel(USBStatusStageTimeoutCounter)($28)
.L73:
	lbu	$2,%gp_rel(USBStatusStageTimeoutCounter)($28)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L170
	lui	$2,%hi(U1IR)

	jal	USBCtrlEPAllowStatusStage
	nop

	lui	$2,%hi(U1IR)
.L170:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x80
	beq	$2,$0,.L172
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1IE)
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x80
	beq	$2,$0,.L172
	lui	$2,%hi(U1IR)

	lui	$2,%hi(U1EP0)
	lw	$2,%lo(U1EP0)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L75
	lw	$2,%gp_rel(pBDTEntryEP0OutCurrent)($28)

	lbu	$3,0($2)
	andi	$3,$3,0x00ff
	lbu	$4,1($2)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$3
	li	$3,128			# 0x80
	bnel	$4,$3,.L173
	lui	$2,%hi(U1EP0)

	lui	$3,%hi(pBDTEntryIn)
	lw	$3,%lo(pBDTEntryIn)($3)
	lbu	$5,0($3)
	andi	$5,$5,0x00ff
	lbu	$4,1($3)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$5
	li	$3,132			# 0x84
	bnel	$4,$3,.L173
	lui	$2,%hi(U1EP0)

	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(U1EP0)
.L173:
	lw	$3,%lo(U1EP0)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1EP0)($2)
.L75:
	li	$3,128			# 0x80
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lui	$2,%hi(U1IR)
.L172:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L77
	lui	$2,%hi(U1IE)

	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L77
	li	$4,2147418112			# 0x7fff0000

	ori	$4,$4,0xffff
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,1			# 0x1

	li	$3,255			# 0xff
	lui	$2,%hi(U1EIR)
	sw	$3,%lo(U1EIR)($2)
	li	$3,2			# 0x2
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
.L77:
	lw	$2,%gp_rel(USBDeviceState)($28)
	sltu	$2,$2,4
	beq	$2,$0,.L78
	lui	$2,%hi(U1IE)

	jal	INTClearFlag
	li	$4,69			# 0x45

	j	.L64
	nop

.L78:
	lw	$2,%lo(U1IE)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L79
	lui	$2,%hi(U1IR)

	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x8
	bne	$2,$0,.L80
	li	$16,4			# 0x4

	j	.L79
	nop

.L149:
	lw	$2,%lo(U1IR)($2)
	andi	$2,$2,0x8
	bne	$2,$0,.L174
	lui	$2,%hi(U1STAT)

	j	.L79
	nop

.L80:
	lui	$17,%hi(pBDTEntryIn)
	lui	$18,%hi(inPipes)
	lui	$19,%hi(BDT+16)
	addiu	$19,$19,%lo(BDT+16)
	lui	$20,%hi(device_dsc)
	addiu	$20,$20,%lo(device_dsc)
	lui	$2,%hi(U1STAT)
.L174:
	lw	$2,%lo(U1STAT)($2)
	andi	$2,$2,0x00ff
	sb	$2,%gp_rel(USTATcopy)($28)
	lbu	$2,%gp_rel(USTATcopy)($28)
	ext	$2,$2,4,4
	sb	$2,%gp_rel(endpoint_number)($28)
	li	$3,8			# 0x8
	lui	$2,%hi(U1IR)
	sw	$3,%lo(U1IR)($2)
	lbu	$2,%gp_rel(USTATcopy)($28)
	andi	$2,$2,0x8
	andi	$2,$2,0x00ff
	bne	$2,$0,.L81
	nop

	lbu	$2,%gp_rel(endpoint_number)($28)
	andi	$2,$2,0x00ff
	addiu	$3,$28,%gp_rel(ep_data_out)
	addu	$2,$3,$2
	lbu	$4,0($2)
	andi	$4,$4,0x1
	xori	$4,$4,0x1
	lbu	$3,0($2)
	ins	$3,$4,0,1
	sb	$3,0($2)
	j	.L82
	nop

.L81:
	lbu	$2,%gp_rel(endpoint_number)($28)
	andi	$2,$2,0x00ff
	addiu	$3,$28,%gp_rel(ep_data_in)
	addu	$2,$3,$2
	lbu	$4,0($2)
	andi	$4,$4,0x1
	xori	$4,$4,0x1
	lbu	$3,0($2)
	ins	$3,$4,0,1
	sb	$3,0($2)
.L82:
	lbu	$2,%gp_rel(endpoint_number)($28)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L83
	li	$4,114			# 0x72

	li	$2,45			# 0x2d
	sb	$2,%gp_rel(USBStatusStageTimeoutCounter)($28)
	lbu	$2,%gp_rel(USTATcopy)($28)
	andi	$2,$2,0xfb
	bne	$2,$0,.L84
	nop

	lbu	$11,%gp_rel(USTATcopy)($28)
	ext	$11,$11,2,6
	sll	$3,$11,3
	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	addu	$2,$2,$3
	sw	$2,%gp_rel(pBDTEntryEP0OutCurrent)($28)
	sw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	xori	$3,$2,0x8
	sb	$3,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$4,0($2)
	andi	$4,$4,0x3c
	li	$3,52			# 0x34
	bne	$4,$3,.L85
	move	$4,$0

	addiu	$10,$28,%gp_rel(SetupPkt)
	li	$9,-1610612736			# 0xffffffffa0000000
	li	$8,8			# 0x8
.L86:
	lbu	$7,4($2)
	andi	$7,$7,0x00ff
	lbu	$6,5($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$7
	lbu	$3,6($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$6
	lbu	$5,7($2)
	sll	$5,$5,24
	or	$5,$5,$3
	addu	$3,$10,$4
	or	$5,$5,$9
	lbu	$5,0($5)
	sb	$5,0($3)
	lbu	$7,4($2)
	andi	$7,$7,0x00ff
	lbu	$6,5($2)
	andi	$6,$6,0x00ff
	sll	$6,$6,8
	or	$6,$6,$7
	lbu	$5,6($2)
	andi	$5,$5,0x00ff
	sll	$5,$5,16
	or	$5,$5,$6
	lbu	$3,7($2)
	sll	$3,$3,24
	or	$3,$3,$5
	addiu	$3,$3,1
	andi	$5,$3,0xff
	lbu	$6,4($2)
	sb	$5,4($2)
	ext	$5,$3,8,8
	lbu	$6,5($2)
	sb	$5,5($2)
	ext	$5,$3,16,8
	lbu	$6,6($2)
	sb	$5,6($2)
	srl	$3,$3,24
	lbu	$5,7($2)
	sb	$3,7($2)
	addiu	$4,$4,1
	bne	$4,$8,.L86
	lui	$3,%hi(BDT)

	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$2,$4,0,29
	sll	$11,$11,3
	addiu	$3,$3,%lo(BDT)
	addu	$11,$11,$3
	sw	$2,4($11)
	sb	$0,%gp_rel(shortPacketStatus)($28)
	sw	$0,%gp_rel(USBDeferStatusStagePacket)($28)
	sw	$0,%gp_rel(USBDeferINDataStagePackets)($28)
	sw	$0,%gp_rel(USBDeferOUTDataStagePackets)($28)
	sw	$0,%gp_rel(BothEP0OutUOWNsSet)($28)
	sb	$0,%gp_rel(controlTransferState)($28)
	lw	$2,%lo(pBDTEntryIn)($17)
	lbu	$3,0($2)
	andi	$3,$3,0x00ff
	lbu	$5,1($2)
	andi	$5,$5,0x00ff
	sll	$5,$5,8
	or	$5,$5,$3
	li	$3,-129			# 0xffffffffffffff7f
	and	$5,$5,$3
	andi	$6,$5,0xff
	lbu	$7,0($2)
	sb	$6,0($2)
	srl	$5,$5,8
	lbu	$6,1($2)
	sb	$5,1($2)
	lbu	$2,%lo(pBDTEntryIn)($17)
	xori	$2,$2,0x8
	sb	$2,%lo(pBDTEntryIn)($17)
	lw	$2,%lo(pBDTEntryIn)($17)
	lbu	$6,0($2)
	andi	$6,$6,0x00ff
	lbu	$5,1($2)
	andi	$5,$5,0x00ff
	sll	$5,$5,8
	or	$5,$5,$6
	and	$5,$5,$3
	andi	$6,$5,0xff
	lbu	$7,0($2)
	sb	$6,0($2)
	srl	$5,$5,8
	lbu	$6,1($2)
	sb	$5,1($2)
	lbu	$2,%lo(pBDTEntryIn)($17)
	xori	$2,$2,0x8
	sb	$2,%lo(pBDTEntryIn)($17)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$6,0($2)
	andi	$6,$6,0x00ff
	lbu	$5,1($2)
	andi	$5,$5,0x00ff
	sll	$5,$5,8
	or	$5,$5,$6
	and	$3,$5,$3
	andi	$5,$3,0xff
	lbu	$6,0($2)
	sb	$5,0($2)
	srl	$3,$3,8
	lbu	$5,1($2)
	sb	$3,1($2)
	addiu	$2,$18,%lo(inPipes)
	sb	$0,4($2)
	sh	$0,8($2)
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	sb	$0,4($2)
	lw	$3,4($2)
	ins	$3,$0,8,16
	sw	$3,4($2)
	lbu	$2,0($4)
	andi	$2,$2,0x60
	bnel	$2,$0,.L160
	li	$4,3			# 0x3

	lbu	$2,%gp_rel(SetupPkt+1)($28)
	andi	$2,$2,0x00ff
	sltu	$3,$2,12
	beql	$3,$0,.L160
	li	$4,3			# 0x3

	sll	$2,$2,2
	lui	$3,%hi(.L97)
	addiu	$3,$3,%lo(.L97)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L97:
	.word	.L88
	.word	.L89
	.word	.L87
	.word	.L89
	.word	.L87
	.word	.L90
	.word	.L91
	.word	.L92
	.word	.L93
	.word	.L94
	.word	.L95
	.word	.L96
.L90:
	addiu	$2,$18,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	li	$2,8			# 0x8
	sw	$2,%gp_rel(USBDeviceState)($28)
	j	.L160
	li	$4,3			# 0x3

.L91:
	lbu	$3,%gp_rel(SetupPkt)($28)
	andi	$3,$3,0x00ff
	li	$2,128			# 0x80
	bne	$3,$2,.L160
	li	$4,3			# 0x3

	addiu	$2,$18,%lo(inPipes)
	li	$3,-64			# 0xffffffffffffffc0
	sb	$3,4($2)
	lbu	$2,%gp_rel(SetupPkt+3)($28)
	andi	$2,$2,0x00ff
	li	$3,2			# 0x2
	beq	$2,$3,.L100
	li	$3,3			# 0x3

	beq	$2,$3,.L101
	li	$3,1			# 0x1

	bne	$2,$3,.L154
	addiu	$2,$18,%lo(inPipes)

	sw	$20,%lo(inPipes)($18)
	addiu	$2,$18,%lo(inPipes)
	li	$3,18			# 0x12
	sh	$3,8($2)
	j	.L160
	li	$4,3			# 0x3

.L100:
	lbu	$3,%gp_rel(SetupPkt+2)($28)
	andi	$3,$3,0x00ff
	sll	$3,$3,2
	lui	$2,%hi(USB_CD_Ptr)
	addiu	$2,$2,%lo(USB_CD_Ptr)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,%lo(inPipes)($18)
	lw	$2,%lo(inPipes)($18)
	lbu	$3,2($2)
	addiu	$2,$18,%lo(inPipes)
	sb	$3,8($2)
	lw	$3,%lo(inPipes)($18)
	lbu	$3,3($3)
	sb	$3,9($2)
	j	.L160
	li	$4,3			# 0x3

.L101:
	lbu	$2,%gp_rel(SetupPkt+2)($28)
	andi	$2,$2,0x00ff
	sltu	$2,$2,3
	beq	$2,$0,.L102
	addiu	$2,$18,%lo(inPipes)

	lbu	$3,%gp_rel(SetupPkt+2)($28)
	andi	$3,$3,0x00ff
	sll	$3,$3,2
	lui	$2,%hi(USB_SD_Ptr)
	addiu	$2,$2,%lo(USB_SD_Ptr)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,%lo(inPipes)($18)
	lw	$2,%lo(inPipes)($18)
	lbu	$3,0($2)
	addiu	$2,$18,%lo(inPipes)
	sh	$3,8($2)
	j	.L160
	li	$4,3			# 0x3

.L102:
	sb	$0,4($2)
	j	.L160
	li	$4,3			# 0x3

.L154:
	sb	$0,4($2)
	j	.L160
	li	$4,3			# 0x3

.L94:
	addiu	$2,$18,%lo(inPipes)
	lw	$3,4($2)
	li	$22,1			# 0x1
	ins	$3,$22,7,1
	sw	$3,4($2)
	lui	$2,%hi(U1EP1)
	sw	$0,%lo(U1EP1)($2)
	lui	$2,%hi(U1EP1+16)
	sw	$0,%lo(U1EP1+16)($2)
	lui	$21,%hi(BDT)
	addiu	$21,$21,%lo(BDT)
	move	$4,$21
	move	$5,$0
	jal	memset
	li	$6,96			# 0x60

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$22,1,1
	sw	$3,%lo(U1CON)($2)
	sb	$0,%gp_rel(ep_data_in)($28)
	sb	$0,%gp_rel(ep_data_out)($28)
	sb	$0,%gp_rel(ep_data_in+1)($28)
	sb	$0,%gp_rel(ep_data_out+1)($28)
	sb	$0,%gp_rel(ep_data_in+2)($28)
	sb	$0,%gp_rel(ep_data_out+2)($28)
	sh	$0,%gp_rel(USBAlternateInterface)($28)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1CON)($2)
	sw	$19,%lo(pBDTEntryIn)($17)
	sw	$21,%gp_rel(pBDTEntryEP0OutCurrent)($28)
	sw	$21,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$2,%gp_rel(SetupPkt+2)($28)
	andi	$2,$2,0x00ff
	sb	$2,%gp_rel(USBActiveConfiguration)($28)
	lbu	$2,%gp_rel(USBActiveConfiguration)($28)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L103
	li	$2,16			# 0x10

	sw	$2,%gp_rel(USBDeviceState)($28)
	j	.L160
	li	$4,3			# 0x3

.L103:
	li	$4,1			# 0x1
	addiu	$5,$28,%gp_rel(USBActiveConfiguration)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,1			# 0x1

	li	$2,32			# 0x20
	sw	$2,%gp_rel(USBDeviceState)($28)
	j	.L160
	li	$4,3			# 0x3

.L93:
	addiu	$2,$28,%gp_rel(USBActiveConfiguration)
	sw	$2,%lo(inPipes)($18)
	addiu	$2,$18,%lo(inPipes)
	lw	$4,4($2)
	li	$3,1			# 0x1
	ins	$4,$3,0,1
	sw	$4,4($2)
	sb	$3,8($2)
	lw	$4,4($2)
	ins	$4,$3,7,1
	sw	$4,4($2)
	j	.L160
	li	$4,3			# 0x3

.L88:
	sb	$0,%gp_rel(CtrlTrfData)($28)
	sb	$0,%gp_rel(CtrlTrfData+1)($28)
	lw	$2,%gp_rel(SetupPkt)($28)
	andi	$2,$2,0x1f
	li	$3,1			# 0x1
	beq	$2,$3,.L106
	li	$3,2			# 0x2

	beql	$2,$3,.L107
	addiu	$2,$18,%lo(inPipes)

	bne	$2,$0,.L161
	addiu	$2,$18,%lo(inPipes)

	addiu	$3,$18,%lo(inPipes)
	lw	$4,4($3)
	li	$2,1			# 0x1
	ins	$4,$2,7,1
	sw	$4,4($3)
	addiu	$3,$28,%gp_rel(CtrlTrfData)
	lbu	$4,0($3)
	andi	$4,$4,0x00ff
	ori	$4,$4,0x1
	sb	$4,0($3)
	lw	$3,%gp_rel(RemoteWakeup)($28)
	bnel	$3,$2,.L161
	addiu	$2,$18,%lo(inPipes)

	addiu	$2,$28,%gp_rel(CtrlTrfData)
	lbu	$3,0($2)
	andi	$3,$3,0x00ff
	ori	$3,$3,0x2
	sb	$3,0($2)
	j	.L161
	addiu	$2,$18,%lo(inPipes)

.L106:
	addiu	$2,$18,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	j	.L161
	addiu	$2,$18,%lo(inPipes)

.L107:
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L108
	nop

	lw	$3,%gp_rel(SetupPkt+4)($28)
	andi	$3,$3,0xf
	sll	$3,$3,2
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$2,$3,$2
	j	.L109
	lw	$2,0($2)

.L108:
	lw	$3,%gp_rel(SetupPkt+4)($28)
	andi	$3,$3,0xf
	sll	$3,$3,2
	addiu	$2,$17,%lo(pBDTEntryIn)
	addu	$2,$3,$2
	lw	$2,0($2)
.L109:
	lbu	$3,0($2)
	andi	$3,$3,0x84
	li	$2,132			# 0x84
	bne	$3,$2,.L161
	addiu	$2,$18,%lo(inPipes)

	li	$2,1			# 0x1
	sb	$2,%gp_rel(CtrlTrfData)($28)
	addiu	$2,$18,%lo(inPipes)
.L161:
	lw	$2,4($2)
	andi	$2,$2,0x80
	beq	$2,$0,.L87
	addiu	$2,$28,%gp_rel(CtrlTrfData)

	sw	$2,%lo(inPipes)($18)
	addiu	$2,$18,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,4($2)
	li	$3,2			# 0x2
	sb	$3,8($2)
	j	.L160
	li	$4,3			# 0x3

.L89:
	lbu	$3,%gp_rel(SetupPkt+2)($28)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L110
	nop

	lbu	$2,%gp_rel(SetupPkt)($28)
	andi	$2,$2,0x1f
	bne	$2,$0,.L110
	addiu	$2,$18,%lo(inPipes)

	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lbu	$3,%gp_rel(SetupPkt+1)($28)
	andi	$3,$3,0x00ff
	li	$2,3			# 0x3
	bne	$3,$2,.L111
	li	$2,1			# 0x1

	sw	$2,%gp_rel(RemoteWakeup)($28)
	j	.L110
	nop

.L111:
	sw	$0,%gp_rel(RemoteWakeup)($28)
.L110:
	lbu	$2,%gp_rel(SetupPkt+2)($28)
	andi	$2,$2,0x00ff
	bne	$2,$0,.L160
	li	$4,3			# 0x3

	lbu	$3,%gp_rel(SetupPkt)($28)
	andi	$3,$3,0x1f
	li	$2,2			# 0x2
	bne	$3,$2,.L175
	move	$5,$0

	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0xf
	beq	$2,$0,.L175
	nop

	lw	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0xf
	slt	$2,$2,3
	beq	$2,$0,.L175
	nop

	lw	$3,%gp_rel(USBDeviceState)($28)
	li	$2,32			# 0x20
	bne	$3,$2,.L175
	addiu	$2,$18,%lo(inPipes)

	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L112
	addiu	$2,$28,%gp_rel(SetupPkt+4)

	lw	$4,0($2)
	andi	$4,$4,0xf
	sll	$4,$4,2
	lui	$3,%hi(pBDTEntryOut)
	addiu	$3,$3,%lo(pBDTEntryOut)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,16($sp)
	lw	$2,0($2)
	andi	$2,$2,0xf
	addiu	$3,$28,%gp_rel(ep_data_out)
	addu	$2,$3,$2
	lbu	$21,0($2)
	j	.L113
	andi	$21,$21,0x00ff

.L112:
	lw	$4,0($2)
	andi	$4,$4,0xf
	sll	$4,$4,2
	addiu	$3,$17,%lo(pBDTEntryIn)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,16($sp)
	lw	$2,0($2)
	andi	$2,$2,0xf
	addiu	$3,$28,%gp_rel(ep_data_in)
	addu	$2,$3,$2
	lbu	$21,0($2)
	andi	$21,$21,0x00ff
.L113:
	andi	$2,$21,0x1
	bne	$2,$0,.L114
	lbu	$2,16($sp)

	andi	$2,$2,0xf7
	j	.L115
	sb	$2,16($sp)

.L114:
	ori	$2,$2,0x8
	sb	$2,16($sp)
.L115:
	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L116
	nop

	lw	$3,%gp_rel(SetupPkt+4)($28)
	andi	$3,$3,0xf
	sll	$3,$3,2
	lui	$2,%hi(pBDTEntryOut)
	addiu	$2,$2,%lo(pBDTEntryOut)
	addu	$2,$3,$2
	lw	$3,16($sp)
	j	.L117
	sw	$3,0($2)

.L116:
	lw	$3,%gp_rel(SetupPkt+4)($28)
	andi	$3,$3,0xf
	sll	$3,$3,2
	addiu	$2,$17,%lo(pBDTEntryIn)
	addu	$2,$3,$2
	lw	$3,16($sp)
	sw	$3,0($2)
.L117:
	lbu	$3,%gp_rel(SetupPkt+1)($28)
	andi	$3,$3,0x00ff
	li	$2,3			# 0x3
	bne	$3,$2,.L118
	lbu	$2,16($sp)

	lw	$2,16($sp)
	lbu	$2,0($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L162
	lw	$2,16($sp)

	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L120
	nop

	lw	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0xf
	addiu	$3,$28,%gp_rel(ep_data_out)
	addu	$2,$3,$2
	lbu	$3,0($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sb	$3,0($2)
	j	.L162
	lw	$2,16($sp)

.L120:
	lw	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0xf
	addiu	$3,$28,%gp_rel(ep_data_in)
	addu	$2,$3,$2
	lbu	$3,0($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sb	$3,0($2)
	lw	$2,16($sp)
.L162:
	lbu	$4,0($2)
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	ori	$3,$3,0x84
	sb	$3,0($2)
	srl	$3,$3,8
	j	.L87
	sb	$3,1($2)

.L118:
	xori	$2,$2,0x8
	sb	$2,16($sp)
	lw	$2,16($sp)
	lbu	$3,0($2)
	andi	$3,$3,0x80
	andi	$3,$3,0x00ff
	beq	$3,$0,.L121
	lbu	$4,0($2)

	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	andi	$3,$3,0xff7f
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	lw	$2,16($sp)
	lbu	$4,0($2)
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	ori	$3,$3,0x40
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	li	$4,5			# 0x5
	lw	$5,16($sp)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,4			# 0x4

	j	.L163
	lbu	$2,16($sp)

.L121:
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	ori	$3,$3,0x40
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	lbu	$2,16($sp)
.L163:
	xori	$2,$2,0x8
	andi	$21,$21,0x2
	andi	$21,$21,0x00ff
	bne	$21,$0,.L123
	sb	$2,16($sp)

	lw	$2,16($sp)
	lbu	$3,0($2)
	andi	$3,$3,0x80
	andi	$3,$3,0x00ff
	beql	$3,$0,.L124
	lbu	$4,0($2)

.L123:
	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	bne	$2,$0,.L125
	nop

	lw	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0xf
	addiu	$3,$28,%gp_rel(ep_data_out)
	addu	$2,$3,$2
	lbu	$3,0($2)
	ins	$3,$0,1,1
	sb	$3,0($2)
	j	.L164
	lw	$2,16($sp)

.L125:
	lw	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0xf
	addiu	$3,$28,%gp_rel(ep_data_in)
	addu	$2,$3,$2
	lbu	$3,0($2)
	ins	$3,$0,1,1
	sb	$3,0($2)
	lw	$2,16($sp)
.L164:
	lbu	$4,0($2)
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	andi	$3,$3,0xff3b
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
	li	$4,5			# 0x5
	lw	$5,16($sp)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	li	$6,4			# 0x4

	j	.L127
	nop

.L124:
	lbu	$3,1($2)
	sll	$3,$3,8
	or	$3,$3,$4
	andi	$3,$3,0xff3b
	sb	$3,0($2)
	srl	$3,$3,8
	sb	$3,1($2)
.L127:
	lw	$3,%gp_rel(SetupPkt+4)($28)
	andi	$3,$3,0xf
	sll	$3,$3,4
	lui	$2,%hi(U1EP0)
	addiu	$2,$2,%lo(U1EP0)
	addu	$2,$2,$3
	lw	$4,0($2)
	li	$3,-3			# 0xfffffffffffffffd
	and	$3,$4,$3
	j	.L87
	sw	$3,0($2)

.L95:
	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x00ff
	addiu	$3,$28,%gp_rel(USBAlternateInterface)
	addu	$2,$3,$2
	sw	$2,%lo(inPipes)($18)
	addiu	$2,$18,%lo(inPipes)
	lw	$4,4($2)
	li	$3,1			# 0x1
	ins	$4,$3,0,1
	sw	$4,4($2)
	sb	$3,8($2)
	lw	$4,4($2)
	ins	$4,$3,7,1
	sw	$4,4($2)
	j	.L160
	li	$4,3			# 0x3

.L96:
	addiu	$2,$18,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x00ff
	lbu	$3,%gp_rel(SetupPkt+2)($28)
	andi	$3,$3,0x00ff
	addiu	$4,$28,%gp_rel(USBAlternateInterface)
	addu	$2,$4,$2
	sb	$3,0($2)
	j	.L160
	li	$4,3			# 0x3

.L92:
	li	$4,2			# 0x2
	move	$5,$0
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

.L87:
	li	$4,3			# 0x3
.L160:
	move	$5,$0
.L175:
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,5,1
	sw	$3,%lo(U1CON)($2)
	addiu	$2,$18,%lo(inPipes)
	lw	$2,4($2)
	andi	$2,$2,0x80
	bne	$2,$0,.L128
	lui	$2,%hi(outPipes)

	addiu	$2,$2,%lo(outPipes)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L129
	li	$2,2			# 0x2

	sb	$2,%gp_rel(controlTransferState)($28)
	lw	$2,%gp_rel(USBDeferOUTDataStagePackets)($28)
	bne	$2,$0,.L130
	nop

	jal	USBCtrlEPAllowDataStage
	nop

.L130:
	sw	$0,%gp_rel(USBStatusStageEnabledFlag2)($28)
	sw	$0,%gp_rel(USBStatusStageEnabledFlag1)($28)
	j	.L159
	addiu	$16,$16,-1

.L129:
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lw	$2,%lo(pBDTEntryIn)($17)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L128:
	lbu	$2,%gp_rel(SetupPkt)($28)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L132
	li	$2,2			# 0x2

	li	$2,1			# 0x1
	sb	$2,%gp_rel(controlTransferState)($28)
	lw	$2,%gp_rel(USBDeferINDataStagePackets)($28)
	bne	$2,$0,.L133
	nop

	jal	USBCtrlEPAllowDataStage
	nop

.L133:
	sw	$0,%gp_rel(USBStatusStageEnabledFlag2)($28)
	sw	$0,%gp_rel(USBStatusStageEnabledFlag1)($28)
	lw	$2,%gp_rel(USBDeferStatusStagePacket)($28)
	bne	$2,$0,.L159
	addiu	$16,$16,-1

	jal	USBCtrlEPAllowStatusStage
	nop

	j	.L165
	andi	$16,$16,0x00ff

.L132:
	sb	$2,%gp_rel(controlTransferState)($28)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	sw	$0,%gp_rel(USBStatusStageEnabledFlag2)($28)
	sw	$0,%gp_rel(USBStatusStageEnabledFlag1)($28)
	lw	$2,%gp_rel(USBDeferStatusStagePacket)($28)
	bne	$2,$0,.L159
	addiu	$16,$16,-1

	jal	USBCtrlEPAllowStatusStage
	nop

	j	.L165
	andi	$16,$16,0x00ff

.L85:
	lbu	$3,%gp_rel(controlTransferState)($28)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L134
	sll	$11,$11,3

	lui	$2,%hi(BDT)
	addiu	$2,$2,%lo(BDT)
	addu	$11,$11,$2
	lw	$6,0($11)
	ext	$6,$6,16,8
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$2,4($2)
	ext	$2,$2,8,16
	sltu	$2,$2,$6
	beq	$2,$0,.L176
	lui	$2,%hi(outPipes)

	addiu	$2,$2,%lo(outPipes)
	lw	$6,4($2)
	ext	$6,$6,8,8
	lui	$2,%hi(outPipes)
.L176:
	addiu	$2,$2,%lo(outPipes)
	lw	$4,4($2)
	ext	$4,$4,8,16
	subu	$4,$4,$6
	andi	$4,$4,0xffff
	lw	$3,4($2)
	ins	$3,$4,8,16
	sw	$3,4($2)
	beq	$6,$0,.L136
	move	$2,$0

	lui	$4,%hi(outPipes)
	addiu	$7,$28,%gp_rel(CtrlTrfData)
.L137:
	lw	$3,%lo(outPipes)($4)
	addu	$5,$7,$2
	lbu	$5,0($5)
	sb	$5,0($3)
	addiu	$3,$3,1
	sw	$3,%lo(outPipes)($4)
	addiu	$2,$2,1
	andi	$3,$2,0x00ff
	sltu	$3,$3,$6
	bne	$3,$0,.L137
	nop

.L136:
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$2,4($2)
	ext	$2,$2,8,16
	beq	$2,$0,.L138
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)

	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(CtrlTrfData)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lw	$3,%gp_rel(pBDTEntryEP0OutCurrent)($28)
	lbu	$3,0($3)
	andi	$3,$3,0x40
	andi	$3,$3,0x00ff
	bne	$3,$0,.L139
	nop

	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L139:
	lbu	$3,0($2)
	li	$3,-120			# 0xffffffffffffff88
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L138:
	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	srl	$3,$3,24
	lw	$2,8($2)
	sll	$2,$2,8
	or	$2,$2,$3
	beq	$2,$0,.L140
	lui	$3,%hi(outPipes)

	addiu	$3,$3,%lo(outPipes)
	lw	$4,4($3)
	srl	$4,$4,24
	lw	$2,8($3)
	sll	$2,$2,8
	or	$2,$2,$4
	jalr	$2
	nop

.L140:
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	ins	$3,$0,7,1
	sw	$3,4($2)
	lw	$2,%gp_rel(USBDeferStatusStagePacket)($28)
	bne	$2,$0,.L159
	addiu	$16,$16,-1

	jal	USBCtrlEPAllowStatusStage
	nop

	j	.L165
	andi	$16,$16,0x00ff

.L134:
	sb	$0,%gp_rel(controlTransferState)($28)
	lw	$2,%gp_rel(BothEP0OutUOWNsSet)($28)
	bne	$2,$0,.L141
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)

	lbu	$3,2($2)
	li	$3,8			# 0x8
	sb	$3,2($2)
	lbu	$4,3($2)
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$4,$3
	sb	$3,3($2)
	lw	$2,%gp_rel(pBDTEntryEP0OutNext)($28)
	addiu	$4,$28,%gp_rel(SetupPkt)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	lbu	$3,0($2)
	li	$3,-116			# 0xffffffffffffff8c
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L141:
	sw	$0,%gp_rel(BothEP0OutUOWNsSet)($28)
	j	.L159
	addiu	$16,$16,-1

.L84:
	lbu	$3,%gp_rel(USTATcopy)($28)
	andi	$3,$3,0xfb
	li	$2,8			# 0x8
	bnel	$3,$2,.L159
	addiu	$16,$16,-1

	lw	$2,%lo(pBDTEntryIn)($17)
	lbu	$21,0($2)
	ext	$21,$21,6,1
	lbu	$2,%lo(pBDTEntryIn)($17)
	xori	$2,$2,0x8
	sb	$2,%lo(pBDTEntryIn)($17)
	lw	$3,%gp_rel(USBDeviceState)($28)
	li	$2,8			# 0x8
	bne	$3,$2,.L142
	nop

	lbu	$3,%gp_rel(SetupPkt+2)($28)
	andi	$3,$3,0x00ff
	lui	$2,%hi(U1ADDR)
	sw	$3,%lo(U1ADDR)($2)
	lw	$2,%lo(U1ADDR)($2)
	beq	$2,$0,.L143
	li	$2,4			# 0x4

	li	$2,16			# 0x10
	sw	$2,%gp_rel(USBDeviceState)($28)
	j	.L142
	nop

.L143:
	sw	$2,%gp_rel(USBDeviceState)($28)
.L142:
	lbu	$3,%gp_rel(controlTransferState)($28)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L144
	lui	$2,%hi(outPipes)

	lw	$2,%lo(pBDTEntryIn)($17)
	addiu	$4,$28,%gp_rel(CtrlTrfData)
	ext	$3,$4,0,29
	andi	$4,$4,0xff
	lbu	$5,4($2)
	sb	$4,4($2)
	ext	$4,$3,8,8
	lbu	$5,5($2)
	sb	$4,5($2)
	ext	$4,$3,16,8
	lbu	$5,6($2)
	sb	$4,6($2)
	srl	$3,$3,24
	lbu	$4,7($2)
	sb	$3,7($2)
	jal	USBCtrlTrfTxService
	nop

	lbu	$3,%gp_rel(shortPacketStatus)($28)
	andi	$3,$3,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L145
	lw	$2,%lo(pBDTEntryIn)($17)

	lbu	$3,0($2)
	li	$3,-124			# 0xffffffffffffff84
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L145:
	bne	$21,$0,.L146
	nop

	lw	$2,%lo(pBDTEntryIn)($17)
	lbu	$3,0($2)
	li	$3,-56			# 0xffffffffffffffc8
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L146:
	lbu	$3,0($2)
	li	$3,-120			# 0xffffffffffffff88
	sb	$3,0($2)
	lbu	$3,1($2)
	sb	$0,1($2)
	j	.L159
	addiu	$16,$16,-1

.L144:
	addiu	$2,$2,%lo(outPipes)
	lbu	$2,4($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L147
	lui	$2,%hi(outPipes)

	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	srl	$3,$3,24
	lw	$2,8($2)
	sll	$2,$2,8
	or	$2,$2,$3
	beq	$2,$0,.L148
	lui	$3,%hi(outPipes)

	addiu	$3,$3,%lo(outPipes)
	lw	$4,4($3)
	srl	$4,$4,24
	lw	$2,8($3)
	sll	$2,$2,8
	or	$2,$2,$4
	jalr	$2
	nop

.L148:
	lui	$2,%hi(outPipes)
	addiu	$2,$2,%lo(outPipes)
	lw	$3,4($2)
	ins	$3,$0,7,1
	sw	$3,4($2)
.L147:
	sb	$0,%gp_rel(controlTransferState)($28)
	j	.L159
	addiu	$16,$16,-1

.L83:
	addiu	$5,$28,%gp_rel(USTATcopy)
	jal	USER_USB_CALLBACK_EVENT_HANDLER
	move	$6,$0

	addiu	$16,$16,-1
.L159:
	andi	$16,$16,0x00ff
.L165:
	bne	$16,$0,.L149
	lui	$2,%hi(U1IR)

.L79:
	jal	INTClearFlag
	li	$4,69			# 0x45

.L64:
	lw	$2,132($sp)
	mtlo	$2
	lw	$3,128($sp)
	lw	$2,144($sp)
	andi	$2,$2,0xf
	bne	$2,$0,.L158
	mthi	$3

	lw	$31,124($sp)
	lw	$25,120($sp)
	lw	$24,116($sp)
	lw	$22,112($sp)
	lw	$21,108($sp)
	lw	$20,104($sp)
	lw	$19,100($sp)
	lw	$18,96($sp)
	lw	$17,92($sp)
	lw	$16,88($sp)
	lw	$15,84($sp)
	lw	$14,80($sp)
	lw	$13,76($sp)
	lw	$12,72($sp)
	lw	$11,68($sp)
	lw	$10,64($sp)
	lw	$9,60($sp)
	lw	$8,56($sp)
	lw	$7,52($sp)
	lw	$6,48($sp)
	lw	$5,44($sp)
	lw	$4,40($sp)
	lw	$3,36($sp)
	lw	$2,32($sp)
	lw	$1,28($sp)
.L158:
	di
	ehb
	lw	$26,148($sp)
	lw	$27,140($sp)
	mtc0	$26,$14
	lw	$26,144($sp)
	addiu	$sp,$sp,152
	mtc0	$26,$12,2
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	_USB1Interrupt
	.size	_USB1Interrupt, .-_USB1Interrupt

	.comm	USBDeferOUTDataStagePackets,4,4

	.comm	USBDeferStatusStagePacket,4,4

	.comm	USBDeferINDataStagePackets,4,4

	.comm	inPipes,16,8

	.comm	RemoteWakeup,4,4

	.comm	USBBusIsSuspended,4,4

	.comm	USBDeviceState,4,4

	.comm	USBActiveConfiguration,1,1

	.comm	outPipes,11,4

	.comm	pBDTEntryOut,12,4

	.comm	pBDTEntryIn,12,4

	.comm	USBAlternateInterface,2,4

	.comm	pBDTEntryEP0OutCurrent,4,4

	.comm	pBDTEntryEP0OutNext,4,4

	.comm	shortPacketStatus,1,1

	.comm	controlTransferState,1,1

	.comm	pDst,4,4

	.comm	USTATcopy,1,4

	.comm	endpoint_number,1,1

	.comm	BothEP0OutUOWNsSet,4,4

	.comm	ep_data_in,3,4

	.comm	ep_data_out,3,4

	.comm	USBStatusStageTimeoutCounter,1,1

	.comm	USBStatusStageEnabledFlag1,4,4

	.comm	USBStatusStageEnabledFlag2,4,4

	.comm	BDT,96,512

	.comm	SetupPkt,8,4

	.comm	CtrlTrfData,8,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_30
	.section	.vector_30,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_30
__vector_dispatch_30:
	j	_USB1Interrupt
	nop
	.set reorder
	.end	__vector_dispatch_30
	.size	__vector_dispatch_30, .-__vector_dispatch_30
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
