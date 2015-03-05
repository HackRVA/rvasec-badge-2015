	.file	1 "usb_function_cdc.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	USBCheckCDCRequest
	.set	nomips16
	.set	nomicromips
	.ent	USBCheckCDCRequest
	.type	USBCheckCDCRequest, @function
USBCheckCDCRequest:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lbu	$3,%gp_rel(SetupPkt)($28)
	andi	$3,$3,0x1f
	li	$2,1			# 0x1
	bne	$3,$2,.L10
	nop

	lbu	$3,%gp_rel(SetupPkt)($28)
	andi	$3,$3,0x60
	li	$2,32			# 0x20
	bne	$3,$2,.L10
	nop

	lbu	$2,%gp_rel(SetupPkt+4)($28)
	andi	$2,$2,0x00ff
	beq	$2,$0,.L3
	nop

	lbu	$3,%gp_rel(SetupPkt+4)($28)
	andi	$3,$3,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L10
	nop

.L3:
	lbu	$2,%gp_rel(SetupPkt+1)($28)
	andi	$2,$2,0x00ff
	sltu	$3,$2,35
	beq	$3,$0,.L11
	sll	$2,$2,2

	lui	$3,%hi(.L9)
	addiu	$3,$3,%lo(.L9)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L9:
	.word	.L4
	.word	.L5
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L6
	.word	.L7
	.word	.L8
.L4:
	lui	$2,%hi(inPipes)
	addiu	$3,$28,%gp_rel(dummy_encapsulated_cmd_response)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	li	$3,8			# 0x8
	sh	$3,8($2)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,4($2)
	lw	$3,4($2)
	ins	$3,$4,7,1
	sw	$3,4($2)
.L11:
	j	$31
	nop

.L5:
	lui	$2,%hi(inPipes)
	addiu	$3,$28,%gp_rel(dummy_encapsulated_cmd_response)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
	j	$31
	nop

.L6:
	lbu	$2,%gp_rel(SetupPkt+6)($28)
	andi	$2,$2,0x00ff
	lbu	$3,%gp_rel(SetupPkt+7)($28)
	andi	$3,$3,0x00ff
	sll	$3,$3,8
	or	$3,$3,$2
	lui	$4,%hi(outPipes)
	andi	$5,$3,0xff
	addiu	$2,$4,%lo(outPipes)
	lbu	$6,5($2)
	sb	$5,5($2)
	srl	$3,$3,8
	lbu	$5,6($2)
	sb	$3,6($2)
	lui	$3,%hi(cdc_notice)
	addiu	$3,$3,%lo(cdc_notice)
	andi	$5,$3,0xff
	lbu	$6,%lo(outPipes)($4)
	sb	$5,%lo(outPipes)($4)
	ext	$4,$3,8,8
	lbu	$5,1($2)
	sb	$4,1($2)
	ext	$4,$3,16,8
	lbu	$5,2($2)
	sb	$4,2($2)
	srl	$3,$3,24
	lbu	$4,3($2)
	sb	$3,3($2)
	lui	$3,%hi(mySetLineCodingHandler)
	addiu	$3,$3,%lo(mySetLineCodingHandler)
	andi	$4,$3,0xff
	lbu	$5,7($2)
	sb	$4,7($2)
	ext	$4,$3,8,8
	lbu	$5,8($2)
	sb	$4,8($2)
	ext	$4,$3,16,8
	lbu	$5,9($2)
	sb	$4,9($2)
	srl	$3,$3,24
	lbu	$4,10($2)
	sb	$3,10($2)
	lbu	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sb	$3,4($2)
	j	$31
	nop

.L7:
	lui	$2,%hi(inPipes)
	addiu	$3,$28,%gp_rel(line_coding)
	sw	$3,%lo(inPipes)($2)
	addiu	$2,$2,%lo(inPipes)
	li	$3,7			# 0x7
	sh	$3,8($2)
	li	$3,-63			# 0xffffffffffffffc1
	sb	$3,4($2)
	j	$31
	nop

.L8:
	lbu	$2,%gp_rel(SetupPkt+2)($28)
	sb	$2,%gp_rel(control_signal_bitmap)($28)
	lui	$2,%hi(inPipes)
	addiu	$2,$2,%lo(inPipes)
	lw	$3,4($2)
	li	$4,1			# 0x1
	ins	$3,$4,7,1
	sw	$3,4($2)
.L1:
.L10:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCheckCDCRequest
	.size	USBCheckCDCRequest, .-USBCheckCDCRequest
	.align	2
	.globl	CDCInitEP
	.set	nomips16
	.set	nomicromips
	.ent	CDCInitEP
	.type	CDCInitEP, @function
CDCInitEP:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	li	$2,19200			# 0x4b00
	sw	$2,%gp_rel(line_coding)($28)
	sb	$0,%gp_rel(line_coding+4)($28)
	sb	$0,%gp_rel(line_coding+5)($28)
	li	$2,8			# 0x8
	sb	$2,%gp_rel(line_coding+6)($28)
	sb	$0,%gp_rel(cdc_rx_len)($28)
	li	$4,1			# 0x1
	jal	USBEnableEndpoint
	li	$5,21			# 0x15

	li	$4,2			# 0x2
	jal	USBEnableEndpoint
	li	$5,29			# 0x1d

	li	$4,2			# 0x2
	move	$5,$0
	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
	jal	USBTransferOnePacket
	li	$7,64			# 0x40

	sw	$2,%gp_rel(CDCDataOutHandle)($28)
	sw	$0,%gp_rel(CDCDataInHandle)($28)
	sb	$0,%gp_rel(cdc_trf_state)($28)
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CDCInitEP
	.size	CDCInitEP, .-CDCInitEP
	.align	2
	.globl	USBCDCEventHandler
	.set	nomips16
	.set	nomicromips
	.ent	USBCDCEventHandler
	.type	USBCDCEventHandler, @function
USBCDCEventHandler:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	li	$2,5			# 0x5
	bne	$4,$2,.L19
	move	$16,$5

	lw	$2,%gp_rel(CDCDataOutHandle)($28)
	bne	$5,$2,.L20
	lw	$3,%gp_rel(CDCDataInHandle)($28)

	li	$4,2			# 0x2
	move	$5,$0
	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
	jal	USBTransferOnePacket
	li	$7,64			# 0x40

	sw	$2,%gp_rel(CDCDataOutHandle)($28)
	lw	$3,%gp_rel(CDCDataInHandle)($28)
.L20:
	bne	$16,$3,.L14
	li	$2,1			# 0x1

	sb	$0,%gp_rel(cdc_trf_state)($28)
	j	.L14
	sb	$0,%gp_rel(cdc_tx_len)($28)

.L19:
	move	$2,$0
.L14:
	lw	$31,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCDCEventHandler
	.size	USBCDCEventHandler, .-USBCDCEventHandler
	.align	2
	.globl	getsUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	getsUSBUSART
	.type	getsUSBUSART, @function
getsUSBUSART:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sb	$0,%gp_rel(cdc_rx_len)($28)
	lw	$2,%gp_rel(CDCDataOutHandle)($28)
	beq	$2,$0,.L22
	andi	$5,$5,0x00ff

	lbu	$3,0($2)
	andi	$3,$3,0x80
	andi	$3,$3,0x00ff
	bnel	$3,$0,.L28
	lbu	$2,%gp_rel(cdc_rx_len)($28)

.L22:
	lbu	$6,2($2)
	andi	$6,$6,0x00ff
	lbu	$3,3($2)
	andi	$3,$3,0x3
	sll	$3,$3,8
	or	$3,$3,$6
	slt	$3,$3,$5
	beq	$3,$0,.L24
	nop

	lbu	$5,2($2)
	lbu	$2,3($2)
	andi	$5,$5,0x00ff
.L24:
	beq	$5,$0,.L25
	move	$2,$0

	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
.L26:
	addu	$3,$2,$6
	lbu	$3,0($3)
	addu	$2,$4,$2
	sb	$3,0($2)
	lbu	$2,%gp_rel(cdc_rx_len)($28)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	sltu	$3,$2,$5
	bne	$3,$0,.L26
	sb	$2,%gp_rel(cdc_rx_len)($28)

.L25:
	li	$4,2			# 0x2
	move	$5,$0
	lui	$6,%hi(cdc_data_rx)
	addiu	$6,$6,%lo(cdc_data_rx)
	jal	USBTransferOnePacket
	li	$7,64			# 0x40

	sw	$2,%gp_rel(CDCDataOutHandle)($28)
	lbu	$2,%gp_rel(cdc_rx_len)($28)
.L28:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getsUSBUSART
	.size	getsUSBUSART, .-getsUSBUSART
	.align	2
	.globl	putUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	putUSBUSART
	.type	putUSBUSART, @function
putUSBUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	andi	$5,$5,0x00ff
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lbu	$2,%gp_rel(cdc_trf_state)($28)
	bne	$2,$0,.L30
	li	$2,1			# 0x1

	sw	$4,%gp_rel(pCDCSrc)($28)
	sb	$5,%gp_rel(cdc_tx_len)($28)
	sb	$2,%gp_rel(cdc_mem_type)($28)
	sb	$2,%gp_rel(cdc_trf_state)($28)
.L30:
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putUSBUSART
	.size	putUSBUSART, .-putUSBUSART
	.align	2
	.globl	putsUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	putsUSBUSART
	.type	putsUSBUSART, @function
putsUSBUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lbu	$2,%gp_rel(cdc_trf_state)($28)
	beq	$2,$0,.L36
	move	$2,$4

	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

.L35:
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	bnel	$3,$6,.L38
	lb	$5,0($2)

	j	.L37
	sw	$4,%gp_rel(pCDCSrc)($28)

.L36:
	li	$3,1			# 0x1
	li	$6,255			# 0xff
	lb	$5,0($2)
.L38:
	bne	$5,$0,.L35
	addiu	$2,$2,1

	sw	$4,%gp_rel(pCDCSrc)($28)
.L37:
	sb	$3,%gp_rel(cdc_tx_len)($28)
	li	$2,1			# 0x1
	sb	$2,%gp_rel(cdc_mem_type)($28)
	sb	$2,%gp_rel(cdc_trf_state)($28)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putsUSBUSART
	.size	putsUSBUSART, .-putsUSBUSART
	.align	2
	.globl	putrsUSBUSART
	.set	nomips16
	.set	nomicromips
	.ent	putrsUSBUSART
	.type	putrsUSBUSART, @function
putrsUSBUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lbu	$2,%gp_rel(cdc_trf_state)($28)
	beq	$2,$0,.L44
	move	$2,$4

	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

.L43:
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	bnel	$3,$6,.L46
	lb	$5,0($2)

	j	.L45
	sw	$4,%gp_rel(pCDCSrc)($28)

.L44:
	li	$3,1			# 0x1
	li	$6,255			# 0xff
	lb	$5,0($2)
.L46:
	bne	$5,$0,.L43
	addiu	$2,$2,1

	sw	$4,%gp_rel(pCDCSrc)($28)
.L45:
	sb	$3,%gp_rel(cdc_tx_len)($28)
	sb	$0,%gp_rel(cdc_mem_type)($28)
	li	$2,1			# 0x1
	sb	$2,%gp_rel(cdc_trf_state)($28)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	putrsUSBUSART
	.size	putrsUSBUSART, .-putrsUSBUSART
	.align	2
	.globl	CDCTxService
	.set	nomips16
	.set	nomicromips
	.ent	CDCTxService
	.type	CDCTxService, @function
CDCTxService:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lw	$2,%gp_rel(CDCDataInHandle)($28)
	beql	$2,$0,.L68
	lbu	$2,%gp_rel(cdc_trf_state)($28)

	lbu	$2,0($2)
	andi	$2,$2,0x80
	andi	$2,$2,0x00ff
	beq	$2,$0,.L48
	lbu	$2,%gp_rel(cdc_trf_state)($28)

	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	.L66
	lw	$31,20($sp)

.L48:
.L68:
	li	$3,3			# 0x3
	bne	$2,$3,.L50
	nop

	j	.L51
	sb	$0,%gp_rel(cdc_trf_state)($28)

.L50:
	bne	$2,$0,.L52
	li	$3,2			# 0x2

.L51:
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	j	.L66
	lw	$31,20($sp)

.L52:
	bne	$2,$3,.L53
	li	$3,1			# 0x1

	li	$4,2			# 0x2
	li	$5,1			# 0x1
	move	$6,$0
	jal	USBTransferOnePacket
	move	$7,$0

	sw	$2,%gp_rel(CDCDataInHandle)($28)
	li	$2,3			# 0x3
	j	.L54
	sb	$2,%gp_rel(cdc_trf_state)($28)

.L53:
	bne	$2,$3,.L69
	li	$3,8			# 0x8

	lbu	$2,%gp_rel(cdc_tx_len)($28)
	sltu	$3,$2,65
	bne	$3,$0,.L55
	move	$7,$2

	li	$7,64			# 0x40
.L55:
	andi	$7,$7,0x00ff
	subu	$2,$2,$7
	sb	$2,%gp_rel(cdc_tx_len)($28)
	lui	$2,%hi(cdc_data_tx)
	addiu	$2,$2,%lo(cdc_data_tx)
	sw	$2,%gp_rel(pCDCDst)($28)
	lbu	$2,%gp_rel(cdc_mem_type)($28)
	beq	$2,$0,.L56
	nop

	bne	$7,$0,.L63
	move	$2,$7

	j	.L67
	lbu	$2,%gp_rel(cdc_tx_len)($28)

.L56:
	beq	$7,$0,.L58
	move	$2,$7

.L59:
	lw	$3,%gp_rel(pCDCSrc)($28)
	lbu	$4,0($3)
	lw	$3,%gp_rel(pCDCDst)($28)
	sb	$4,0($3)
	lw	$3,%gp_rel(pCDCDst)($28)
	addiu	$3,$3,1
	sw	$3,%gp_rel(pCDCDst)($28)
	lw	$3,%gp_rel(pCDCSrc)($28)
	addiu	$3,$3,1
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L59
	sw	$3,%gp_rel(pCDCSrc)($28)

	j	.L67
	lbu	$2,%gp_rel(cdc_tx_len)($28)

.L63:
	lw	$3,%gp_rel(pCDCSrc)($28)
	lbu	$4,0($3)
	lw	$3,%gp_rel(pCDCDst)($28)
	sb	$4,0($3)
	lw	$3,%gp_rel(pCDCDst)($28)
	addiu	$3,$3,1
	sw	$3,%gp_rel(pCDCDst)($28)
	lw	$3,%gp_rel(pCDCSrc)($28)
	addiu	$3,$3,1
	addiu	$2,$2,-1
	andi	$2,$2,0x00ff
	bne	$2,$0,.L63
	sw	$3,%gp_rel(pCDCSrc)($28)

.L58:
	lbu	$2,%gp_rel(cdc_tx_len)($28)
.L67:
	bne	$2,$0,.L70
	li	$4,2			# 0x2

	li	$2,64			# 0x40
	bne	$7,$2,.L61
	li	$2,3			# 0x3

	li	$2,2			# 0x2
	j	.L70
	sb	$2,%gp_rel(cdc_trf_state)($28)

.L61:
	sb	$2,%gp_rel(cdc_trf_state)($28)
	li	$4,2			# 0x2
.L70:
	li	$5,1			# 0x1
	lui	$6,%hi(cdc_data_tx)
	jal	USBTransferOnePacket
	addiu	$6,$6,%lo(cdc_data_tx)

	sw	$2,%gp_rel(CDCDataInHandle)($28)
.L54:
	li	$3,8			# 0x8
.L69:
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
	lw	$31,20($sp)
.L66:
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CDCTxService
	.size	CDCTxService, .-CDCTxService

	.comm	cdc_rx_len,1,1

	.comm	cdc_trf_state,1,1

	.comm	pCDCSrc,4,4

	.comm	cdc_tx_len,1,1

	.comm	cdc_mem_type,1,1

	.comm	cdc_notice,10,4

	.comm	line_coding,8,4

	.comm	cdc_data_tx,64,4

	.comm	cdc_data_rx,64,4

	.comm	pCDCDst,4,4

	.comm	CDCDataOutHandle,4,4

	.comm	CDCDataInHandle,4,4

	.comm	control_signal_bitmap,4,4

	.comm	BaudRateGen,4,4

	.comm	dummy_encapsulated_cmd_response,8,4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
