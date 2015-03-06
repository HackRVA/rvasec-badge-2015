	.file	1 "main.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	ForthUSB
	.set	nomips16
	.set	nomicromips
	.ent	ForthUSB
	.type	ForthUSB, @function
ForthUSB:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$2,%gp_rel(USBDeviceState)($28)
	sltu	$2,$2,32
	bne	$2,$0,.L1
	lui	$2,%hi(U1PWRC)

	lw	$2,%lo(U1PWRC)($2)
	andi	$2,$2,0x2
	bne	$2,$0,.L1
	lb	$3,%gp_rel(usbkey_fillptr)($28)

	lb	$2,%gp_rel(usbkey_ptr)($28)
	bne	$3,$2,.L8
	lb	$2,%gp_rel(usbkey_fillptr)($28)

	sb	$0,%gp_rel(usbkey_fillptr)($28)
	sb	$0,%gp_rel(usbkey_ptr)($28)
	lb	$2,%gp_rel(usbkey_fillptr)($28)
.L8:
	li	$3,64			# 0x40
	subu	$3,$3,$2
	blez	$3,.L4
	lui	$4,%hi(usbkey_buffer)

	addiu	$4,$4,%lo(usbkey_buffer)
	addu	$4,$4,$2
	jal	getsUSBUSART
	andi	$5,$3,0x00ff

	beq	$2,$0,.L9
	lb	$3,%gp_rel(key_buffer)($28)

	lbu	$3,%gp_rel(usbkey_fillptr)($28)
	addu	$2,$2,$3
	sb	$2,%gp_rel(usbkey_fillptr)($28)
.L4:
	lb	$3,%gp_rel(key_buffer)($28)
.L9:
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L10
	lb	$2,%gp_rel(emit_buffer)($28)

	lb	$2,%gp_rel(usbkey_ptr)($28)
	lb	$3,%gp_rel(usbkey_fillptr)($28)
	beq	$3,$2,.L5
	lui	$3,%hi(usbkey_buffer)

	addiu	$3,$3,%lo(usbkey_buffer)
	addu	$3,$2,$3
	lbu	$3,0($3)
	sb	$3,%gp_rel(key_buffer)($28)
	addiu	$2,$2,1
	sb	$2,%gp_rel(usbkey_ptr)($28)
.L5:
	lb	$2,%gp_rel(emit_buffer)($28)
.L10:
	li	$3,-1			# 0xffffffffffffffff
	beq	$2,$3,.L6
	lbu	$3,%gp_rel(NextUSBOut)($28)

	lui	$4,%hi(USB_Out_Buffer)
	addiu	$4,$4,%lo(USB_Out_Buffer)
	addu	$4,$3,$4
	sb	$2,0($4)
	addiu	$3,$3,1
	sb	$3,%gp_rel(NextUSBOut)($28)
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,%gp_rel(emit_buffer)($28)
.L6:
	lbu	$2,%gp_rel(cdc_trf_state)($28)
	bne	$2,$0,.L7
	lbu	$5,%gp_rel(NextUSBOut)($28)

	beq	$5,$0,.L7
	lui	$4,%hi(USB_Out_Buffer)

	jal	putUSBUSART
	addiu	$4,$4,%lo(USB_Out_Buffer)

	sb	$0,%gp_rel(NextUSBOut)($28)
.L7:
	jal	CDCTxService
	nop

.L1:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ForthUSB
	.size	ForthUSB, .-ForthUSB
	.align	2
	.globl	UserInit
	.set	nomips16
	.set	nomicromips
	.ent	UserInit
	.type	UserInit, @function
UserInit:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(USB_In_Buffer)
	addiu	$2,$2,%lo(USB_In_Buffer)
	lui	$3,%hi(USB_Out_Buffer)
	addiu	$3,$3,%lo(USB_Out_Buffer)
	addiu	$4,$2,64
.L12:
	sb	$0,0($2)
	sb	$0,0($3)
	addiu	$2,$2,1
	bne	$2,$4,.L12
	addiu	$3,$3,1

	li	$2,-1			# 0xffffffffffffffff
	sb	$2,%gp_rel(emit_buffer)($28)
	j	$31
	sb	$2,%gp_rel(key_buffer)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	UserInit
	.size	UserInit, .-UserInit
	.align	2
	.globl	mySetLineCodingHandler
	.set	nomips16
	.set	nomicromips
	.ent	mySetLineCodingHandler
	.type	mySetLineCodingHandler, @function
mySetLineCodingHandler:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lui	$2,%hi(cdc_notice)
	lbu	$5,%lo(cdc_notice)($2)
	andi	$5,$5,0x00ff
	addiu	$2,$2,%lo(cdc_notice)
	lbu	$4,1($2)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$5
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$4
	lbu	$2,3($2)
	sll	$2,$2,24
	or	$2,$2,$3
	li	$3,65536			# 0x10000
	ori	$3,$3,0xc201
	sltu	$2,$2,$3
	beq	$2,$0,.L16
	lui	$2,%hi(cdc_notice)

	lbu	$5,%lo(cdc_notice)($2)
	andi	$5,$5,0x00ff
	addiu	$2,$2,%lo(cdc_notice)
	lbu	$4,1($2)
	andi	$4,$4,0x00ff
	sll	$4,$4,8
	or	$4,$4,$5
	lbu	$3,2($2)
	andi	$3,$3,0x00ff
	sll	$3,$3,16
	or	$3,$3,$4
	lbu	$2,3($2)
	sll	$2,$2,24
	or	$2,$2,$3
	sw	$2,%gp_rel(line_coding)($28)
.L16:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	mySetLineCodingHandler
	.size	mySetLineCodingHandler, .-mySetLineCodingHandler
	.align	2
	.globl	getcUSART
	.set	nomips16
	.set	nomicromips
	.ent	getcUSART
	.type	getcUSART, @function
getcUSART:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	j	$31
	move	$2,$0

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getcUSART
	.size	getcUSART, .-getcUSART
	.align	2
	.globl	BlinkUSBStatus
	.set	nomips16
	.set	nomicromips
	.ent	BlinkUSBStatus
	.type	BlinkUSBStatus, @function
BlinkUSBStatus:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$2,%gp_rel(led_count.13126)($28)
	bne	$2,$0,.L34
	addiu	$2,$2,-1

	li	$2,983040			# 0xf0000
	addiu	$2,$2,16960
	sw	$2,%gp_rel(led_count.13126)($28)
	lw	$2,%gp_rel(led_count.13126)($28)
	addiu	$2,$2,-1
.L34:
	sw	$2,%gp_rel(led_count.13126)($28)
	lui	$3,%hi(U1PWRC)
	lw	$3,%lo(U1PWRC)($3)
	andi	$3,$3,0x2
	beq	$3,$0,.L20
	nop

	bne	$2,$0,.L36
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
.L36:
	j	$31
	nop

.L20:
	lw	$3,%gp_rel(USBDeviceState)($28)
	bne	$3,$0,.L22
	nop

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	$31
	nop

.L22:
	lw	$4,%gp_rel(USBDeviceState)($28)
	li	$3,1			# 0x1
	bne	$4,$3,.L23
	nop

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	$31
	nop

.L23:
	lw	$4,%gp_rel(USBDeviceState)($28)
	li	$3,2			# 0x2
	bne	$4,$3,.L24
	nop

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	$31
	nop

.L24:
	lw	$4,%gp_rel(USBDeviceState)($28)
	li	$3,4			# 0x4
	bne	$4,$3,.L25
	nop

	lui	$2,%hi(LATC)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	j	$31
	nop

.L25:
	lw	$4,%gp_rel(USBDeviceState)($28)
	li	$3,16			# 0x10
	bne	$4,$3,.L26
	nop

	bne	$2,$0,.L36
	lui	$2,%hi(LATC)

	lw	$4,%lo(LATC)($2)
	andi	$4,$4,0x1
	sltu	$4,$4,1
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	$31
	nop

.L26:
	lw	$4,%gp_rel(USBDeviceState)($28)
	li	$3,32			# 0x20
	bne	$4,$3,.L36
	lbu	$3,%gp_rel(debugBlink)($28)

	beq	$3,$0,.L35
	nop

	bne	$2,$0,.L36
	lui	$2,%hi(LATC)

	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L27
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,0,1
	sw	$3,%lo(LATC)($2)
	j	.L32
	lui	$2,%hi(LATC)

.L27:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATC)
.L32:
	lw	$2,%lo(LATC)($2)
	andi	$2,$2,0x2
	beq	$2,$0,.L29
	lui	$2,%hi(LATC)

	lw	$3,%lo(LATC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(LATC)($2)
	j	.L33
	lui	$2,%hi(LATB)

.L29:
	lw	$3,%lo(LATC)($2)
	li	$4,1			# 0x1
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(LATB)
.L33:
	lw	$2,%lo(LATB)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L31
	lui	$2,%hi(LATB)

	lw	$3,%lo(LATB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(LATB)($2)
	j	$31
	nop

.L31:
	lw	$3,%lo(LATB)($2)
	li	$4,1			# 0x1
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
.L35:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	BlinkUSBStatus
	.size	BlinkUSBStatus, .-BlinkUSBStatus
	.align	2
	.globl	ProcessIO
	.set	nomips16
	.set	nomicromips
	.ent	ProcessIO
	.type	ProcessIO, @function
ProcessIO:
	.frame	$sp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	jal	BlinkUSBStatus
	sw	$16,32($sp)

	lw	$2,%gp_rel(USBDeviceState)($28)
	sltu	$2,$2,32
	bne	$2,$0,.L37
	lui	$2,%hi(U1PWRC)

	lw	$2,%lo(U1PWRC)($2)
	andi	$2,$2,0x2
	bne	$2,$0,.L80
	lw	$31,36($sp)

	lui	$4,%hi(USB_In_Buffer)
	addiu	$4,$4,%lo(USB_In_Buffer)
	jal	getsUSBUSART
	li	$5,64			# 0x40

	beq	$2,$0,.L39
	move	$16,$2

	lui	$2,%hi(USB_In_Buffer)
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,33			# 0x21
	bne	$3,$2,.L81
	lui	$2,%hi(USB_In_Buffer)

	jal	resume
	sb	$0,%lo(USB_In_Buffer)($2)

	lui	$2,%hi(USB_In_Buffer)
.L81:
	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,13			# 0xd
	beq	$2,$3,.L41
	li	$3,10			# 0xa

	bne	$2,$3,.L42
	li	$3,48			# 0x30

.L41:
	lbu	$3,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$4,$3,$2
	li	$5,72			# 0x48
	sb	$5,0($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$4,$3,$2
	li	$5,101			# 0x65
	sb	$5,0($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$5,$3,$2
	li	$4,108			# 0x6c
	sb	$4,0($5)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$5,$3,$2
	sb	$4,0($5)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$4,$3,$2
	li	$5,111			# 0x6f
	sb	$5,0($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$4,$3,$2
	li	$5,13			# 0xd
	sb	$5,0($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$4,$3,$2
	li	$5,10			# 0xa
	sb	$5,0($4)
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	sb	$3,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L91
	sb	$0,%lo(USB_In_Buffer)($2)

.L42:
	bne	$2,$3,.L44
	lbu	$2,%gp_rel(debugBlink)($28)

	sltu	$2,$2,1
	sb	$2,%gp_rel(debugBlink)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L92
	sb	$0,%lo(USB_In_Buffer)($2)

.L44:
	lui	$2,%hi(USB_In_Buffer)
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,49			# 0x31
	bne	$3,$2,.L43
	lui	$2,%hi(LATC)

	lw	$4,%lo(LATC)($2)
	andi	$4,$4,0x1
	sltu	$4,$4,1
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,0,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(USB_In_Buffer)
	j	.L93
	sb	$0,%lo(USB_In_Buffer)($2)

.L43:
	lui	$2,%hi(USB_In_Buffer)
.L91:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,50			# 0x32
	bne	$3,$2,.L45
	lui	$2,%hi(LATB)

	lw	$4,%lo(LATB)($2)
	andi	$4,$4,0x8
	sltu	$4,$4,1
	lw	$3,%lo(LATB)($2)
	ins	$3,$4,3,1
	sw	$3,%lo(LATB)($2)
	lui	$2,%hi(USB_In_Buffer)
	j	.L94
	sb	$0,%lo(USB_In_Buffer)($2)

.L45:
	lui	$2,%hi(USB_In_Buffer)
.L92:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,51			# 0x33
	bne	$3,$2,.L46
	lui	$2,%hi(LATC)

	lw	$4,%lo(LATC)($2)
	andi	$4,$4,0x2
	sltu	$4,$4,1
	lw	$3,%lo(LATC)($2)
	ins	$3,$4,1,1
	sw	$3,%lo(LATC)($2)
	lui	$2,%hi(USB_In_Buffer)
	j	.L95
	sb	$0,%lo(USB_In_Buffer)($2)

.L46:
	lui	$2,%hi(USB_In_Buffer)
.L93:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,123			# 0x7b
	bne	$3,$2,.L47
	lbu	$2,%gp_rel(G_bias)($28)

	beq	$2,$0,.L82
	lbu	$4,%gp_rel(NextUSBOut)($28)

	addiu	$2,$2,-1
	sb	$2,%gp_rel(G_bias)($28)
	lbu	$4,%gp_rel(NextUSBOut)($28)
.L82:
	lbu	$5,%gp_rel(G_bias)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$6,$4,$2
	li	$3,100			# 0x64
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	addu	$6,$4,$2
	li	$3,10			# 0xa
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$7
	addiu	$7,$7,48
	sb	$7,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	addiu	$5,$5,48
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	jal	LCDReset
	sb	$3,%gp_rel(NextUSBOut)($28)

	lui	$2,%hi(USB_In_Buffer)
	j	.L84
	sb	$0,%lo(USB_In_Buffer)($2)

.L47:
	lui	$2,%hi(USB_In_Buffer)
.L94:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,125			# 0x7d
	bne	$3,$2,.L48
	lbu	$2,%gp_rel(G_bias)($28)

	li	$3,3			# 0x3
	beq	$2,$3,.L83
	lbu	$4,%gp_rel(NextUSBOut)($28)

	addiu	$2,$2,1
	sb	$2,%gp_rel(G_bias)($28)
	lbu	$4,%gp_rel(NextUSBOut)($28)
.L83:
	lbu	$5,%gp_rel(G_bias)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$6,$4,$2
	li	$3,100			# 0x64
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	addu	$6,$4,$2
	li	$3,10			# 0xa
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$7
	addiu	$7,$7,48
	sb	$7,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	addiu	$5,$5,48
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	jal	LCDReset
	sb	$3,%gp_rel(NextUSBOut)($28)

	lui	$2,%hi(USB_In_Buffer)
	sb	$0,%lo(USB_In_Buffer)($2)
	j	.L52
	move	$2,$0

.L48:
	lui	$2,%hi(USB_In_Buffer)
.L95:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,45			# 0x2d
	bne	$3,$2,.L84
	lui	$2,%hi(USB_In_Buffer)

	lbu	$3,%gp_rel(G_contrast1)($28)
	addiu	$3,$3,-4
	andi	$3,$3,0x00ff
	sb	$3,%gp_rel(G_contrast1)($28)
	lbu	$4,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$6,$4,$2
	li	$5,100			# 0x64
	divu	$0,$3,$5
	teq	$5,$0,7
	mfhi	$5
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	addu	$6,$4,$2
	li	$3,10			# 0xa
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$7
	addiu	$7,$7,48
	sb	$7,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	addiu	$5,$5,48
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	jal	LCDReset
	sb	$3,%gp_rel(NextUSBOut)($28)

	lui	$2,%hi(USB_In_Buffer)
	j	.L86
	sb	$0,%lo(USB_In_Buffer)($2)

.L84:
	lb	$2,%lo(USB_In_Buffer)($2)
	li	$3,61			# 0x3d
	beq	$2,$3,.L85
	lbu	$4,%gp_rel(G_contrast1)($28)

.L52:
	li	$3,43			# 0x2b
	bne	$2,$3,.L86
	lui	$2,%hi(USB_In_Buffer)

	lbu	$4,%gp_rel(G_contrast1)($28)
.L85:
	addiu	$4,$4,4
	andi	$4,$4,0x00ff
	sb	$4,%gp_rel(G_contrast1)($28)
	lbu	$5,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$3,$5,$2
	li	$6,100			# 0x64
	divu	$0,$4,$6
	teq	$6,$0,7
	mfhi	$6
	mflo	$7
	addiu	$7,$7,48
	sb	$7,0($3)
	addiu	$5,$5,1
	andi	$5,$5,0x00ff
	andi	$6,$6,0x00ff
	addu	$7,$5,$2
	li	$3,10			# 0xa
	divu	$0,$6,$3
	teq	$3,$0,7
	mfhi	$6
	mflo	$8
	addiu	$8,$8,48
	sb	$8,0($7)
	addiu	$5,$5,1
	andi	$5,$5,0x00ff
	addu	$7,$5,$2
	addiu	$6,$6,48
	sb	$6,0($7)
	addiu	$5,$5,1
	andi	$5,$5,0x00ff
	addu	$6,$5,$2
	li	$7,13			# 0xd
	sb	$7,0($6)
	addiu	$5,$5,1
	andi	$5,$5,0x00ff
	addu	$6,$5,$2
	sb	$3,0($6)
	addiu	$3,$5,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	jal	S6B33_contrast
	sb	$3,%gp_rel(NextUSBOut)($28)

	jal	LCDReset
	nop

	lui	$2,%hi(USB_In_Buffer)
	j	.L96
	sb	$0,%lo(USB_In_Buffer)($2)

.L86:
	lb	$2,%lo(USB_In_Buffer)($2)
	xori	$4,$2,0x7f
	sltu	$4,$4,1
	xori	$3,$2,0x1b
	sltu	$3,$3,1
	or	$3,$4,$3
	xori	$2,$2,0x5b
	sltu	$2,$2,1
	or	$2,$3,$2
	beq	$2,$0,.L56
	lui	$2,%hi(USB_In_Buffer)

	j	.L97
	sb	$0,%lo(USB_In_Buffer)($2)

.L56:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,60			# 0x3c
	bne	$3,$2,.L55
	lbu	$3,%gp_rel(Nnops)($28)

	addiu	$3,$3,-1
	andi	$3,$3,0x00ff
	sb	$3,%gp_rel(Nnops)($28)
	lbu	$4,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$5,$4,$2
	li	$6,78			# 0x4e
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,79			# 0x4f
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,80			# 0x50
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	li	$5,32			# 0x20
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$7,$4,$2
	li	$6,100			# 0x64
	divu	$0,$3,$6
	teq	$6,$0,7
	mfhi	$6
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$6,$6,0x00ff
	addu	$7,$4,$2
	li	$3,10			# 0xa
	divu	$0,$6,$3
	teq	$3,$0,7
	mfhi	$6
	mflo	$8
	addiu	$8,$8,48
	sb	$8,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$7,$4,$2
	addiu	$6,$6,48
	sb	$6,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	sb	$3,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L98
	sb	$0,%lo(USB_In_Buffer)($2)

.L55:
	lui	$2,%hi(USB_In_Buffer)
.L96:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,62			# 0x3e
	bne	$3,$2,.L57
	lbu	$3,%gp_rel(Nnops)($28)

	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	sb	$3,%gp_rel(Nnops)($28)
	lbu	$4,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$5,$4,$2
	li	$6,78			# 0x4e
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,79			# 0x4f
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,80			# 0x50
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	li	$5,32			# 0x20
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$7,$4,$2
	li	$6,100			# 0x64
	divu	$0,$3,$6
	teq	$6,$0,7
	mfhi	$6
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$6,$6,0x00ff
	addu	$7,$4,$2
	li	$3,10			# 0xa
	divu	$0,$6,$3
	teq	$3,$0,7
	mfhi	$6
	mflo	$8
	addiu	$8,$8,48
	sb	$8,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$7,$4,$2
	addiu	$6,$6,48
	sb	$6,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	sb	$3,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L87
	sb	$0,%lo(USB_In_Buffer)($2)

.L57:
	lui	$2,%hi(USB_In_Buffer)
.L97:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,44			# 0x2c
	bne	$3,$2,.L58
	lbu	$4,%gp_rel(NextUSBOut)($28)

	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$3,$4,$2
	li	$5,78			# 0x4e
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$3,$4,$2
	li	$5,79			# 0x4f
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$3,$4,$2
	li	$5,80			# 0x50
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$3,$4,$2
	li	$5,32			# 0x20
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	lbu	$6,%gp_rel(Nnops)($28)
	addu	$7,$4,$2
	li	$3,100			# 0x64
	divu	$0,$6,$3
	teq	$3,$0,7
	mfhi	$6
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$6,$6,0x00ff
	addu	$7,$4,$2
	li	$3,10			# 0xa
	divu	$0,$6,$3
	teq	$3,$0,7
	mfhi	$6
	mflo	$8
	addiu	$8,$8,48
	sb	$8,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$7,$4,$2
	addiu	$6,$6,48
	sb	$6,0($7)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	sb	$3,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L88
	sb	$0,%lo(USB_In_Buffer)($2)

.L58:
	lui	$2,%hi(USB_In_Buffer)
.L98:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,46			# 0x2e
	bnel	$3,$2,.L87
	lui	$2,%hi(USB_In_Buffer)

	jal	getTouch
	nop

	lbu	$4,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_Out_Buffer)
	addiu	$2,$2,%lo(USB_Out_Buffer)
	addu	$3,$4,$2
	li	$5,66			# 0x42
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$3,$4,$2
	li	$5,84			# 0x54
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$3,$4,$2
	li	$5,78			# 0x4e
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$3,$4,$2
	li	$5,32			# 0x20
	sb	$5,0($3)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	lbu	$5,%gp_rel(CurrentButtonStatus)($28)
	addu	$6,$4,$2
	li	$3,100			# 0x64
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$3
	addiu	$3,$3,48
	sb	$3,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	andi	$5,$5,0x00ff
	addu	$6,$4,$2
	li	$3,10			# 0xa
	divu	$0,$5,$3
	teq	$3,$0,7
	mfhi	$5
	mflo	$7
	addiu	$7,$7,48
	sb	$7,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$6,$4,$2
	addiu	$5,$5,48
	sb	$5,0($6)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	li	$6,13			# 0xd
	sb	$6,0($5)
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addu	$5,$4,$2
	sb	$3,0($5)
	addiu	$3,$4,1
	andi	$3,$3,0x00ff
	addu	$2,$3,$2
	sb	$0,0($2)
	addiu	$3,$3,1
	sb	$3,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L89
	sb	$0,%lo(USB_In_Buffer)($2)

.L87:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,47			# 0x2f
	bnel	$3,$2,.L88
	lui	$2,%hi(USB_In_Buffer)

	li	$2,83			# 0x53
	sb	$2,16($sp)
	li	$2,48			# 0x30
	sb	$2,17($sp)
	sb	$2,18($sp)
	sb	$2,19($sp)
	li	$2,32			# 0x20
	sb	$2,20($sp)
	sb	$0,21($sp)
	lbu	$2,%gp_rel(NextUSBOut)($28)
	li	$4,83			# 0x53
	move	$3,$0
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
.L62:
	addu	$5,$2,$6
	sb	$4,0($5)
	addiu	$2,$2,1
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addiu	$5,$sp,16
	addu	$4,$5,$3
	lbu	$4,0($4)
	bne	$4,$0,.L62
	andi	$2,$2,0x00ff

	lui	$3,%hi(USB_Out_Buffer)
	addiu	$3,$3,%lo(USB_Out_Buffer)
	addu	$3,$2,$3
	li	$4,32			# 0x20
	sb	$4,0($3)
	addiu	$2,$2,1
	li	$3,70			# 0x46
	sb	$3,16($sp)
	andi	$2,$2,0x00ff
	li	$4,70			# 0x46
	move	$3,$0
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
.L63:
	addu	$5,$2,$6
	sb	$4,0($5)
	addiu	$2,$2,1
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addiu	$5,$sp,16
	addu	$4,$5,$3
	lbu	$4,0($4)
	bne	$4,$0,.L63
	andi	$2,$2,0x00ff

	sb	$2,%gp_rel(NextUSBOut)($28)
	lui	$3,%hi(OSCCON)
	lw	$2,%lo(OSCCON)($3)
	srl	$2,$2,28
	lui	$4,%hi(hextab)
	addiu	$4,$4,%lo(hextab)
	addu	$2,$2,$4
	lbu	$2,0($2)
	sb	$2,16($sp)
	lw	$5,%lo(OSCCON)($3)
	ext	$5,$5,24,4
	addu	$5,$5,$4
	lbu	$5,0($5)
	sb	$5,17($sp)
	lw	$5,%lo(OSCCON)($3)
	ext	$5,$5,20,4
	addu	$5,$5,$4
	lbu	$5,0($5)
	sb	$5,18($sp)
	lw	$5,%lo(OSCCON)($3)
	ext	$5,$5,16,4
	addu	$5,$5,$4
	lbu	$5,0($5)
	sb	$5,19($sp)
	lw	$5,%lo(OSCCON)($3)
	ext	$5,$5,12,4
	addu	$5,$5,$4
	lbu	$5,0($5)
	sb	$5,20($sp)
	lw	$5,%lo(OSCCON)($3)
	ext	$5,$5,8,4
	addu	$5,$5,$4
	lbu	$5,0($5)
	sb	$5,21($sp)
	lw	$5,%lo(OSCCON)($3)
	ext	$5,$5,4,4
	addu	$4,$5,$4
	lbu	$4,0($4)
	sb	$4,22($sp)
	lw	$3,%lo(OSCCON)($3)
	beq	$2,$0,.L64
	sb	$0,23($sp)

	lbu	$3,%gp_rel(NextUSBOut)($28)
	move	$4,$0
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
.L65:
	addu	$5,$3,$6
	sb	$2,0($5)
	addiu	$3,$3,1
	addiu	$4,$4,1
	andi	$4,$4,0x00ff
	addiu	$5,$sp,16
	addu	$2,$5,$4
	lbu	$2,0($2)
	bne	$2,$0,.L65
	andi	$3,$3,0x00ff

	sb	$3,%gp_rel(NextUSBOut)($28)
.L64:
	li	$2,82			# 0x52
	sb	$2,16($sp)
	li	$2,84			# 0x54
	sb	$2,17($sp)
	li	$2,67			# 0x43
	sb	$2,18($sp)
	sb	$2,19($sp)
	li	$2,58			# 0x3a
	jal	setupRTCC
	sb	$2,20($sp)

	sb	$2,21($sp)
	sb	$0,22($sp)
	lbu	$2,%gp_rel(NextUSBOut)($28)
	li	$4,82			# 0x52
	move	$3,$0
	lui	$6,%hi(USB_Out_Buffer)
	addiu	$6,$6,%lo(USB_Out_Buffer)
.L66:
	addu	$5,$2,$6
	sb	$4,0($5)
	addiu	$2,$2,1
	addiu	$3,$3,1
	andi	$3,$3,0x00ff
	addiu	$5,$sp,16
	addu	$4,$5,$3
	lbu	$4,0($4)
	bne	$4,$0,.L66
	andi	$2,$2,0x00ff

	lui	$3,%hi(USB_Out_Buffer)
	addiu	$3,$3,%lo(USB_Out_Buffer)
	addu	$4,$2,$3
	li	$5,13			# 0xd
	sb	$5,0($4)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	addu	$3,$2,$3
	li	$4,10			# 0xa
	sb	$4,0($3)
	addiu	$2,$2,1
	sb	$2,%gp_rel(NextUSBOut)($28)
	lui	$2,%hi(USB_In_Buffer)
	j	.L67
	sb	$0,%lo(USB_In_Buffer)($2)

.L88:
	lb	$3,%lo(USB_In_Buffer)($2)
	li	$2,62			# 0x3e
	bne	$3,$2,.L89
	lui	$2,%hi(USB_In_Buffer)

	j	.L67
	sb	$0,%lo(USB_In_Buffer)($2)

.L89:
	lb	$3,%lo(USB_In_Buffer)($2)
	bne	$3,$0,.L72
	move	$2,$0

.L67:
	lbu	$2,%gp_rel(NextUSBOut)($28)
.L79:
	lui	$3,%hi(USB_In_Buffer)
	addiu	$3,$3,%lo(USB_In_Buffer)
	addu	$16,$16,$2
	andi	$16,$16,0x00ff
	lui	$6,%hi(USB_Out_Buffer)
	j	.L69
	addiu	$6,$6,%lo(USB_Out_Buffer)

.L72:
	addiu	$2,$2,1
.L90:
	andi	$2,$2,0x00ff
	bnel	$2,$16,.L90
	addiu	$2,$2,1

	j	.L79
	lbu	$2,%gp_rel(NextUSBOut)($28)

.L69:
	addu	$4,$2,$6
	lbu	$5,0($3)
	sb	$5,0($4)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	bne	$16,$2,.L69
	addiu	$3,$3,1

	sb	$16,%gp_rel(NextUSBOut)($28)
.L39:
	lbu	$2,%gp_rel(cdc_trf_state)($28)
	bne	$2,$0,.L70
	lbu	$5,%gp_rel(NextUSBOut)($28)

	beq	$5,$0,.L70
	lui	$4,%hi(USB_Out_Buffer)

	jal	putUSBUSART
	addiu	$4,$4,%lo(USB_Out_Buffer)

	sb	$0,%gp_rel(NextUSBOut)($28)
.L70:
	jal	CDCTxService
	nop

.L37:
	lw	$31,36($sp)
.L80:
	lw	$16,32($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ProcessIO
	.size	ProcessIO, .-ProcessIO
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,48,$31		# vars= 8, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	jal	INTDisableInterrupts
	sw	$16,24($sp)

	li	$4,64			# 0x40
	lui	$3,%hi(BMXCONCLR)
	sw	$4,%lo(BMXCONCLR)($3)
	lui	$3,%hi(OSCCON)
	lw	$3,%lo(OSCCON)($3)
	jal	INTRestoreInterrupts
	move	$4,$2

	lui	$2,%hi(CFGCON)
	lw	$3,%lo(CFGCON)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(CFGCON)($2)
	lui	$17,%hi(TRISC)
	lw	$2,%lo(TRISC)($17)
	ins	$2,$0,0,1
	sw	$2,%lo(TRISC)($17)
	lui	$16,%hi(LATC)
	lw	$2,%lo(LATC)($16)
	ins	$2,$0,0,1
	sw	$2,%lo(LATC)($16)
	lui	$19,%hi(CNPDC)
	lw	$2,%lo(CNPDC)($19)
	ins	$2,$0,0,1
	sw	$2,%lo(CNPDC)($19)
	lw	$2,%lo(TRISC)($17)
	ins	$2,$0,1,1
	sw	$2,%lo(TRISC)($17)
	lw	$2,%lo(LATC)($16)
	ins	$2,$0,1,1
	sw	$2,%lo(LATC)($16)
	lw	$2,%lo(CNPDC)($19)
	ins	$2,$0,1,1
	sw	$2,%lo(CNPDC)($19)
	lui	$2,%hi(TRISB)
	lw	$3,%lo(TRISB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(TRISB)($2)
	lui	$20,%hi(LATB)
	lw	$2,%lo(LATB)($20)
	ins	$2,$0,3,1
	sw	$2,%lo(LATB)($20)
	lui	$2,%hi(CNPDB)
	lw	$3,%lo(CNPDB)($2)
	ins	$3,$0,3,1
	sw	$3,%lo(CNPDB)($2)
	lui	$2,%hi(ANSELA)
	sw	$0,%lo(ANSELA)($2)
	lui	$2,%hi(ANSELB)
	sw	$0,%lo(ANSELB)($2)
	lui	$2,%hi(ANSELC)
	sw	$0,%lo(ANSELC)($2)
	lui	$2,%hi(TRISA)
	sw	$0,%lo(TRISA)($2)
	lui	$2,%hi(LATA)
	sw	$0,%lo(LATA)($2)
	lui	$2,%hi(TRISB)
	sw	$0,%lo(TRISB)($2)
	lui	$2,%hi(LATB)
	sw	$0,%lo(LATB)($2)
	lui	$2,%hi(TRISC)
	sw	$0,%lo(TRISC)($2)
	lui	$2,%hi(LATC)
	sw	$0,%lo(LATC)($2)
	jal	LCDInitPins
	nop

	lw	$2,%lo(LATC)($16)
	li	$18,1			# 0x1
	ins	$2,$18,0,1
	sw	$2,%lo(LATC)($16)
	jal	LCDReset
	nop

	lw	$2,%lo(LATC)($16)
	ins	$2,$18,1,1
	sw	$2,%lo(LATC)($16)
	jal	LCDdrbob
	nop

	lw	$2,%lo(LATB)($20)
	ins	$2,$18,3,1
	sw	$2,%lo(LATB)($20)
	lw	$2,%lo(LATC)($16)
	ins	$2,$18,9,1
	sw	$2,%lo(LATC)($16)
	lw	$2,%lo(TRISC)($17)
	ins	$2,$18,3,1
	sw	$2,%lo(TRISC)($17)
	lui	$2,%hi(CNPUC)
	lw	$3,%lo(CNPUC)($2)
	ins	$3,$18,3,1
	sw	$3,%lo(CNPUC)($2)
	lw	$3,%lo(TRISC)($17)
	ins	$3,$0,4,1
	sw	$3,%lo(TRISC)($17)
	lw	$3,%lo(CNPUC)($2)
	ins	$3,$0,4,1
	sw	$3,%lo(CNPUC)($2)
	lw	$2,%lo(CNPDC)($19)
	ins	$2,$18,4,1
	sw	$2,%lo(CNPDC)($19)
	lui	$2,%hi(TRISA)
	lw	$3,%lo(TRISA)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(TRISA)($2)
	lui	$2,%hi(CNPUA)
	lw	$3,%lo(CNPUA)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(CNPUA)($2)
	lui	$2,%hi(CNPDA)
	lw	$3,%lo(CNPDA)($2)
	ins	$3,$0,9,1
	sw	$3,%lo(CNPDA)($2)
	jal	TimerInit
	nop

	jal	setupRTCC
	nop

	jal	UserInit
	nop

	jal	USBDeviceInit
	nop

	jal	USBDeviceAttach
	nop

	jal	Init_Game15
	nop

	sw	$2,16($sp)
	lw	$2,%gp_rel(play_count)($28)
.L103:
	andi	$3,$2,0xfff
	beql	$3,$0,.L104
	andi	$2,$2,0x8000

	andi	$3,$2,0x8000
	beql	$3,$0,.L100
	andi	$2,$2,0x8000

	addiu	$2,$2,1
	j	.L101
	sw	$2,%gp_rel(play_count)($28)

.L100:
.L104:
	sw	$2,%gp_rel(play_count)($28)
.L101:
	jal	ProcessIO
	nop

	jal	Run_Game
	addiu	$4,$sp,16

	j	.L103
	lw	$2,%gp_rel(play_count)($28)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
	.size	main, .-main
	.align	2
	.globl	USBCBSuspend
	.set	nomips16
	.set	nomicromips
	.ent	USBCBSuspend
	.type	USBCBSuspend, @function
USBCBSuspend:
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
	.end	USBCBSuspend
	.size	USBCBSuspend, .-USBCBSuspend
	.align	2
	.globl	USBCBWakeFromSuspend
	.set	nomips16
	.set	nomicromips
	.ent	USBCBWakeFromSuspend
	.type	USBCBWakeFromSuspend, @function
USBCBWakeFromSuspend:
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
	.end	USBCBWakeFromSuspend
	.size	USBCBWakeFromSuspend, .-USBCBWakeFromSuspend
	.align	2
	.globl	USBCB_SOF_Handler
	.set	nomips16
	.set	nomicromips
	.ent	USBCB_SOF_Handler
	.type	USBCB_SOF_Handler, @function
USBCB_SOF_Handler:
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
	.end	USBCB_SOF_Handler
	.size	USBCB_SOF_Handler, .-USBCB_SOF_Handler
	.align	2
	.globl	USBCBErrorHandler
	.set	nomips16
	.set	nomicromips
	.ent	USBCBErrorHandler
	.type	USBCBErrorHandler, @function
USBCBErrorHandler:
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
	.end	USBCBErrorHandler
	.size	USBCBErrorHandler, .-USBCBErrorHandler
	.align	2
	.globl	USBCBCheckOtherReq
	.set	nomips16
	.set	nomicromips
	.ent	USBCBCheckOtherReq
	.type	USBCBCheckOtherReq, @function
USBCBCheckOtherReq:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	USBCheckCDCRequest
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCBCheckOtherReq
	.size	USBCBCheckOtherReq, .-USBCBCheckOtherReq
	.align	2
	.globl	USBCBStdSetDscHandler
	.set	nomips16
	.set	nomicromips
	.ent	USBCBStdSetDscHandler
	.type	USBCBStdSetDscHandler, @function
USBCBStdSetDscHandler:
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
	.end	USBCBStdSetDscHandler
	.size	USBCBStdSetDscHandler, .-USBCBStdSetDscHandler
	.align	2
	.globl	USBCBInitEP
	.set	nomips16
	.set	nomicromips
	.ent	USBCBInitEP
	.type	USBCBInitEP, @function
USBCBInitEP:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	CDCInitEP
	nop

	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCBInitEP
	.size	USBCBInitEP, .-USBCBInitEP
	.align	2
	.globl	USBCBSendResume
	.set	nomips16
	.set	nomicromips
	.ent	USBCBSendResume
	.type	USBCBSendResume, @function
USBCBSendResume:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lw	$3,%gp_rel(RemoteWakeup)($28)
	li	$2,1			# 0x1
	bne	$3,$2,.L120
	nop

	lw	$3,%gp_rel(USBBusIsSuspended)($28)
	bne	$3,$2,.L120
	li	$3,8			# 0x8

	lui	$2,%hi(IEC1CLR)
	sw	$3,%lo(IEC1CLR)($2)
	lui	$2,%hi(U1PWRC)
	lw	$3,%lo(U1PWRC)($2)
	ins	$3,$0,1,1
	sw	$3,%lo(U1PWRC)($2)
	sw	$0,%gp_rel(USBBusIsSuspended)($28)
	li	$2,3600			# 0xe10
	addiu	$2,$2,-1
.L118:
	andi	$2,$2,0xffff
	bne	$2,$0,.L118
	addiu	$2,$2,-1

	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	li	$4,1			# 0x1
	ins	$3,$4,2,1
	sw	$3,%lo(U1CON)($2)
	li	$2,1800			# 0x708
	addiu	$2,$2,-1
.L119:
	andi	$2,$2,0xffff
	bne	$2,$0,.L119
	addiu	$2,$2,-1

	sh	$0,%gp_rel(delay_count.13151)($28)
	lui	$2,%hi(U1CON)
	lw	$3,%lo(U1CON)($2)
	ins	$3,$0,2,1
	sw	$3,%lo(U1CON)($2)
	li	$3,8			# 0x8
	lui	$2,%hi(IEC1SET)
	sw	$3,%lo(IEC1SET)($2)
.L120:
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USBCBSendResume
	.size	USBCBSendResume, .-USBCBSendResume
	.align	2
	.globl	USER_USB_CALLBACK_EVENT_HANDLER
	.set	nomips16
	.set	nomicromips
	.ent	USER_USB_CALLBACK_EVENT_HANDLER
	.type	USER_USB_CALLBACK_EVENT_HANDLER, @function
USER_USB_CALLBACK_EVENT_HANDLER:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
	li	$2,1			# 0x1
	beq	$4,$2,.L123
	sw	$31,20($sp)

	li	$2,3			# 0x3
	bne	$4,$2,.L126
	li	$2,1			# 0x1

	j	.L125
	nop

.L123:
	jal	USBCBInitEP
	nop

	j	.L126
	li	$2,1			# 0x1

.L125:
	jal	USBCBCheckOtherReq
	nop

	li	$2,1			# 0x1
.L126:
	lw	$31,20($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	USER_USB_CALLBACK_EVENT_HANDLER
	.size	USER_USB_CALLBACK_EVENT_HANDLER, .-USER_USB_CALLBACK_EVENT_HANDLER
	.globl	usbkey_ptr
	.section	.sbss,bss
	.type	usbkey_ptr, @object
	.size	usbkey_ptr, 1
usbkey_ptr:
	.space	1
	.globl	usbkey_fillptr
	.type	usbkey_fillptr, @object
	.size	usbkey_fillptr, 1
usbkey_fillptr:
	.space	1
	.globl	play_count
	.section	.sdata,data
	.align	2
	.type	play_count, @object
	.size	play_count, 4
play_count:
	.word	32769
	.globl	hextab
	.section	.rodata,code
	.align	2
	.type	hextab, @object
	.size	hextab, 17
hextab:
	.ascii	"0123456789ABCDEF\000"

	.comm	lastTransmission,4,4

	.comm	core,16,4

	.comm	main_buff,8,4

	.comm	bird_idle_buff,8,4

	.comm	btm_size,1,1

	.comm	side_size,1,1

	.comm	button_pressed,1,1

	.comm	button_cnt,1,1

	.comm	button_used,1,1

	.comm	screen_images,12,4

	.comm	snake_state,104,4

	.comm	sketch_state,104,4

	.comm	manual_contrast_state,104,4

	.comm	bird_state,104,4

	.comm	schedule_browse_state,104,4

	.comm	set_time_state,104,4

	.comm	image_viewer_state,104,4

	.comm	screen_saver_setup_state,104,4

	.comm	screen_saver_state,104,4

	.comm	ping_state,104,4

	.comm	set_backlight_state,104,4

	.comm	sprite_maker_state,104,4

	.comm	etch_a_sketch_state,104,4

	.comm	touch_calibrate_state,104,4

	.comm	badgy_bird_state,104,4

	.comm	NextUSBOut,1,1

	.comm	USB_In_Buffer,64,4

	.comm	USB_Out_Buffer,64,4

	.comm	usbkey_buffer,64,4
	.section	.sbss,bss
	.align	1
	.type	delay_count.13151, @object
	.size	delay_count.13151, 2
delay_count.13151:
	.space	2
	.section	.sdata,data
	.type	debugBlink, @object
	.size	debugBlink, 1
debugBlink:
	.byte	1
	.section	.sbss,bss
	.align	2
	.type	led_count.13126, @object
	.size	led_count.13126, 4
led_count.13126:
	.space	4
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
# Configuration word @ 0xbfc00bfc
	.section	.config_BFC00BFC, code, keep, address(0xBFC00BFC)
	.type	__config_BFC00BFC, @object
	.size	__config_BFC00BFC, 4
__config_BFC00BFC:
	.word	0x7FFFFFF3
# Configuration word @ 0xbfc00bf8
	.section	.config_BFC00BF8, code, keep, address(0xBFC00BF8)
	.type	__config_BFC00BF8, @object
	.size	__config_BFC00BF8, 4
__config_BFC00BF8:
	.word	0xFF60CD7B
# Configuration word @ 0xbfc00bf4
	.section	.config_BFC00BF4, code, keep, address(0xBFC00BF4)
	.type	__config_BFC00BF4, @object
	.size	__config_BFC00BF4, 4
__config_BFC00BF4:
	.word	0xFFF978D9
