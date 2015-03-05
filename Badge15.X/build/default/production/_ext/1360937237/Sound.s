	.file	1 "Sound.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.section	.text,code
	.align	2
	.globl	getNextSample
	.set	nomips16
	.set	nomicromips
	.ent	getNextSample
	.type	getNextSample, @function
getNextSample:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	lb	$3,0($4)
	lui	$2,%hi(sample_a)
	addiu	$2,$2,%lo(sample_a)
	addu	$2,$3,$2
	lbu	$2,0($2)
	sb	$2,0($5)
	lbu	$2,0($4)
	addiu	$2,$2,1
	seb	$2,$2
	slt	$3,$2,24
	movz	$2,$0,$3
	j	$31
	sb	$2,0($4)

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	getNextSample
	.size	getNextSample, .-getNextSample
	.globl	sample_a
	.section	.data, data
	.align	2
	.type	sample_a, @object
	.size	sample_a, 24
sample_a:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
