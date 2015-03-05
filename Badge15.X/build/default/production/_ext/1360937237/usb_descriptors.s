	.file	1 "usb_descriptors.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 0
	.globl	device_dsc
	.section	.rodata,code
	.align	2
	.type	device_dsc, @object
	.size	device_dsc, 18
device_dsc:
	.byte	18
	.byte	1
	.half	512
	.byte	2
	.byte	0
	.byte	0
	.byte	8
	.half	1240
	.half	10
	.half	256
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.globl	configDescriptor1
	.align	2
	.type	configDescriptor1, @object
	.size	configDescriptor1, 67
configDescriptor1:
	.byte	9
	.byte	2
	.byte	67
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	-64
	.byte	50
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	5
	.byte	36
	.byte	0
	.byte	16
	.byte	1
	.byte	4
	.byte	36
	.byte	2
	.byte	2
	.byte	5
	.byte	36
	.byte	6
	.byte	0
	.byte	1
	.byte	5
	.byte	36
	.byte	1
	.byte	0
	.byte	1
	.byte	7
	.byte	5
	.byte	-127
	.byte	3
	.byte	10
	.byte	0
	.byte	1
	.byte	9
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	2
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	-126
	.byte	2
	.byte	64
	.byte	0
	.byte	0
	.globl	sd000
	.align	2
	.type	sd000, @object
	.size	sd000, 4
sd000:
	.byte	4
	.byte	3
	.half	1033
	.globl	sd001
	.align	2
	.type	sd001, @object
	.size	sd001, 52
sd001:
	.byte	52
	.byte	3
	.half	77
	.half	105
	.half	99
	.half	114
	.half	111
	.half	99
	.half	104
	.half	105
	.half	112
	.half	32
	.half	84
	.half	101
	.half	99
	.half	104
	.half	110
	.half	111
	.half	108
	.half	111
	.half	103
	.half	121
	.half	32
	.half	73
	.half	110
	.half	99
	.half	46
	.globl	sd002
	.align	2
	.type	sd002, @object
	.size	sd002, 52
sd002:
	.byte	52
	.byte	3
	.half	67
	.half	68
	.half	67
	.half	32
	.half	82
	.half	83
	.half	45
	.half	50
	.half	51
	.half	50
	.half	32
	.half	69
	.half	109
	.half	117
	.half	108
	.half	97
	.half	116
	.half	105
	.half	111
	.half	110
	.half	32
	.half	68
	.half	101
	.half	109
	.half	111
	.globl	USB_CD_Ptr
	.align	2
	.type	USB_CD_Ptr, @object
	.size	USB_CD_Ptr, 4
USB_CD_Ptr:
	.word	configDescriptor1
	.globl	USB_SD_Ptr
	.align	2
	.type	USB_SD_Ptr, @object
	.size	USB_SD_Ptr, 12
USB_SD_Ptr:
	.word	sd000
	.word	sd001
	.word	sd002
	.ident	"GCC: (Microchip Technology) 4.5.2 MPLAB XC32 v1.31 Compiler"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
