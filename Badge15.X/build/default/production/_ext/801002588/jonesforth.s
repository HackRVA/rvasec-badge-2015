# 1 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
# 317 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .macro NEXT
 lw $s6, 0($s7)
 addiu $s7, $s7, 4
 lw $t0, 0($s6)
 jr $t0
 .endm
# 488 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .macro PUSH reg
 addiu $s5, $s5, -4
 sw \reg, 0($s5)
 .endm

 .macro POP reg
 lw \reg, 0($s5)
 addiu $s5,$s5,4
 .endm


 .macro PUSHRSP reg
 addiu $s4, $s4, 4
 sw \reg, 0($s4)
 .endm

 .macro POPRSP reg
 lw \reg, 0($s4)
 addiu $s4, $s4, -4
 .endm

 .macro CALL label
 PUSHRSP $s8
 la $t0, \label
 jalr $s8, $t0
 POPRSP $s8
 .endm

 .macro RETURN
 jr $s8
 .endm
# 534 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .text
 .align 4


DOCOL:
 PUSHRSP $s7
 addiu $s6, $s6, 4
 move $s7, $s6
 NEXT
# 606 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .text

warm_init:

 b 1f


forth_init:
 la $t0, var_errNo
 sw $0, 0($t0)

 la $t0, var_errors
 la $t1, errTable
 sw $t1, 0($t0)

 la $t0, var_errBuf
 la $t1, errBuffer
 sw $t1, 0($t0)

 la $t0, var_latest
 la $t1, name_HANG
 sw $t1, 0($t0)

 la $t0, var_here
 la $t1, data_segment
 sw $t1, 0($t0)


1: la $s7, cold_start
 la $s4, return_stack_top

 la $s5, forth_stack_top-4

 la $t0, var_s0
 sw $s5, 0($t0)

 addiu $s5, $s5, 4

 la $t0, var_idleword
 la $t1, IDLE
 sw $t1, 0($t0)

 la $t0, var_base
 li $t1, 10
 sw $t1, 0($t0)

 la $t0, var_state
 sw $0, 0($t0)


 la $t0, init_magic
 li $t1, 0xBEEF
 sw $t1, 0($t0)

 la $t0, LBUFPTR
 sw $0, 0($t0)




 la $s8, init_return

 PUSH $a0
 PUSH $a1

 PUSH $v0
 PUSH $v1

 PUSH $s0
 PUSH $s1
 PUSH $s2
 PUSH $s3


 PUSH $s4

 PUSH $s6
 PUSH $s7
 PUSH $s8




 la $t0, y_SP
 sw $s5, 0($t0)

 b ReResume


init_return:
 NEXT
cold_start:
 .int VERSION

 .int QUIT
# 747 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .equ F_IMMED, 0x80
 .equ F_HIDDEN, 0x20
 .equ F_LENMASK, 0x1f

 .macro defword name, namelen, flags=0, label, prevlabel
 .text
 .global name_\label
name_\label :
 .int name_\prevlabel
 .byte \flags+\namelen
 .ascii "\name"
 .global \label
\label :
 .int DOCOL

 .endm
# 786 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .macro defcode name, namelen, flags=0, label, prevlabel
 .text
 .global name_\label
name_\label :
 .int name_\prevlabel
 .byte \flags+\namelen
 .ascii "\name"
 .global \label
\label :
 .int code_\label
 .global code_\label
code_\label :
 .endm







 .equ name_ZED, 0

 defcode "drop",4,,DROP,ZED
 POP $t0
 NEXT

 defcode "swap",4,,SWAP,DROP
 POP $t0
 POP $t1
 PUSH $t0
 PUSH $t1
 NEXT

 defcode "dup",3,,DUP,SWAP
 POP $t0
 PUSH $t0
 PUSH $t0
 NEXT

 defcode "over",4,,OVER,DUP
 POP $t0
 POP $t1
 PUSH $t1
 PUSH $t0
 PUSH $t1
 NEXT

 defcode "rot",3,,ROT,OVER
 POP $t0
 POP $t1
 POP $t2
 PUSH $t1
 PUSH $t0
 PUSH $t2
 NEXT

 defcode "-rot",4,,NROT,ROT
 POP $t0
 POP $t1
 POP $t2
 PUSH $t0
 PUSH $t2
 PUSH $t1
 NEXT

 defcode "2drop",5,,TWODROP,NROT
 POP $t0
 POP $t0
 NEXT

 defcode "2dup",4,,TWODUP,TWODROP
 POP $t0
 POP $t1
 PUSH $t1
 PUSH $t0
 PUSH $t1
 PUSH $t0
 NEXT

 defcode "2swap",5,,TWOSWAP,TWODUP
 POP $t0
 POP $t1
 POP $t2
 POP $t3
 PUSH $t1
 PUSH $t0
 PUSH $t3
 PUSH $t2
 NEXT

 defcode "?dup",4,,QDUP,TWOSWAP
 POP $t0
 PUSH $t0
 beqz $t0, 1f
 PUSH $t0
1: NEXT

 defcode "4+",2,,INCR4, QDUP
 POP $t0
 addiu $t0, $t0, 4
 PUSH $t0
 NEXT

 defcode "4-",2,,DECR4, INCR4
 POP $t0
 addiu $t0, $t0, -4
 PUSH $t0
 NEXT

 defcode "1+",2,,INCR, DECR4
 POP $t0
 addiu $t0, $t0, 1
 PUSH $t0
 NEXT

 defcode "1-",2,,DECR, INCR
 POP $t0
 addiu $t0, $t0, -1
 PUSH $t0
 NEXT

 defcode "+",1,,ADD, DECR
 POP $t0
 POP $t1
 add $t2, $t1, $t0
 PUSH $t2
 NEXT

 defcode "-",1,,SUB, ADD
 POP $t0
 POP $t1
 sub $t2, $t1, $t0
 PUSH $t2
 NEXT

 defcode "*",1,,MUL, SUB
 POP $t0
 POP $t1
 mul $t2, $t1, $t0
 PUSH $t2
 NEXT







 defcode "/mod",4,,DIVMOD, MUL
 POP $t0
 POP $t1
 divu $t1, $t0
 mfhi $t0
 mflo $t1
 PUSH $t0
 PUSH $t1
 NEXT
# 953 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "=",1,,EQU,DIVMOD
 POP $t0
 POP $t1
 li $t2, 1
 beq $t1, $t0, 1f
 move $t2, $0
1: PUSH $t2
 NEXT

 defcode "<>",2,,NEQU,EQU
 POP $t0
 POP $t1
 li $t2, 1
 bne $t1, $t0, 1f
 move $t2, $0
1: PUSH $t2
 NEXT

 defcode "<",1,,LT,NEQU
 POP $t0
 POP $t1
        slt $t2, $t1, $t0
 PUSH $t2
 NEXT

 defcode ">",1,,GT,LT
 POP $t0
 POP $t1
    slt $t2, $t0, $t1
 PUSH $t2
 NEXT

 defcode "<=",2,,LE,GT
 POP $t0
 POP $t1
 li $t2, 1
 beq $t1, $t0, 1f
 move $t2, $0
    slt $t2, $t1, $t0
1: PUSH $t2
 NEXT

 defcode ">=",2,,GE,LE
 POP $t0
 POP $t1
 li $t2, 1
 beq $t1, $t0, 1f
 move $t2, $0
    slt $t2, $t0, $t1
1: PUSH $t2
 NEXT

 defcode "0=",2,,ZEQU,GE
 POP $t0
 li $t1, 1
    movn $t1, $0, $t0
 PUSH $t1
 NEXT

 defcode "0<>",3,,ZNEQU,ZEQU
 POP $t0
 li $t1, 1
     movz $t1, $0, $t0
 PUSH $t1
 NEXT

 defcode "0<",2,,ZLT,ZNEQU
 POP $t0
    slt $t1, $t0, $0
 PUSH $t1
 NEXT

 defcode "0>",2,,ZGT,ZLT
 POP $t0
    slt $t1, $0, $t0
 PUSH $t1
 NEXT

# defcode "0<=",3,,ZLE
# pop %eax
# test %eax,%eax
# setle %al
# movzbl %al,%eax
# pushl %eax
# NEXT

# defcode "0>=",3,,ZGE
# pop %eax
# test %eax,%eax
# setge %al
# movzbl %al,%eax
# pushl %eax
# NEXT

 defcode "and",3,,AND,ZGT
 POP $t0
 POP $t1
 and $t2, $t1, $t0
 PUSH $t2
 NEXT

 defcode "or",2,,OR,AND
 POP $t0
 POP $t1
 or $t2, $t1, $t0
 PUSH $t2
 NEXT

 defcode "xor",3,,XOR,OR
 POP $t0
 POP $t1
 xor $t2, $t1, $t0
 PUSH $t2
 NEXT

 defcode "invert",6,,INVERT,XOR
 POP $t0
 not $t1, $t0
 PUSH $t1
 NEXT
# 1097 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "exit",4,,EXIT,INVERT
 POPRSP $s7
 NEXT
# 1147 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "lit",3,,LIT,EXIT
 lw $t0, 0($s7)
 addiu $s7, $s7, 4
 PUSH $t0
 NEXT
# 1161 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "!",1,,STORE,LIT
 POP $t0
 POP $t1
 sw $t1, 0($t0)
 NEXT

 defcode "@",1,,FETCH,STORE
 POP $t0
 lw $t1, 0($t0)
 PUSH $t1
 NEXT



 defcode "+!",2,,ADDSTORE, FETCH
 POP $t0
 POP $t1
 lw $t2, 0($t0)
 add $t3, $t2, $t1
 sw $t3, 0($t0)
 NEXT

 defcode "-!",2,,SUBSTORE, ADDSTORE
 POP $t0
 POP $t1
 lw $t2, 0($t0)
 sub $t3, $t2, $t1
 sw $t3, 0($t0)
 NEXT
# 1198 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "c!",2,,STOREBYTE,SUBSTORE
 POP $t0
 POP $t1
 sb $t1, 0($t0)
 NEXT

 defcode "c@",2,,FETCHBYTE,STOREBYTE
 POP $t0
 lbu $t1, 0($t0)
 PUSH $t1
 NEXT


 defcode "c@c!",4,,CCOPY,FETCHBYTE
 POP $t0
 POP $t1
 lbu $t2, 0($t0)
 sb $t2, 0($t1)
 addiu $t0, $t0, 1
 addiu $t1, $t1, 1
 PUSH $t1
 PUSH $t0
 NEXT


 defcode "cmove",5,,CMOVE, CCOPY
 POP $t0
 POP $t1
 POP $t2
_CMOVE:
1: beqz $t0, 2f
 lbu $t3, 0($t2)
 sb $t3, 0($t1)
 addiu $t0, $t0, -1
 addiu $t1, $t1, 1
 addiu $t2, $t2, 1
 b 1b
2: NEXT
# 1252 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .macro defvar name, namelen, flags=0, label, initial=0, prevlabel
 defcode \name,\namelen,\flags,\label,\prevlabel
 la $t0, var_\name
 PUSH $t0
 NEXT
 .data
# .align 4
var_\name :
 .int \initial
 .endm
# 1273 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defvar "errNo",5,,ERRNO,0,CMOVE
 defvar "errBuf",6,,ERRBUF,errBuffer,ERRNO
 defvar "errors",6,,ERRORS,errTable,ERRBUF
 defvar "state",5,,STATE,0,ERRORS
 defvar "here",4,,HERE,data_segment,STATE
 defvar "latest",6,,LATEST,name_HANG,HERE
 defvar "s0",2,,SZ,,LATEST
 defvar "idleword",8,,IDLEWORD,,SZ
 defvar "base",4,,BASE,10,IDLEWORD
# 1300 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .align 4
# 1315 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
G_lower_slider_left:
G_lower_slider_right:
G_side_slider_left:
G_side_slider_right:
 .space 4



 .macro defconst name, namelen, flags=0, label, value, prevlabel
 defcode \name,\namelen,\flags,\label,\prevlabel
 la $t0, \value
 PUSH $t0
 NEXT
 .endm

 defconst "flashStart",10,,flashstart,G_flashstart,BASE
 defconst "time",4,,time,G_time,flashstart
 defconst "date",4,,date,G_date,time
 defconst "IRsend",6,,IRsend,G_IRsend,date
 defconst "IRsendVal",9,,IRsendVal,G_IRsendVal,IRsend
 defconst "IRrecv",6,,IRrecv,G_IRrecv,IRsendVal
 defconst "IRrecvVal",9,,IRrecvVal,G_IRrecvVal,IRrecv
 defconst "lSliderLeft",11,,lSliderLeft,G_lower_slider_left,IRrecvVal
 defconst "lSliderRight",12,,lSliderRight,G_lower_slider_right,lSliderLeft
 defconst "sSliderLeft",11,,sSliderLeft,G_side_slider_left,lSliderRight
 defconst "sSliderRight",12,,sSliderRight,G_side_slider_right,sSliderLeft
# 1366 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defconst "r0",2,,RZ,return_stack_top, sSliderRight
 defconst "docol",5,,__DOCOL,DOCOL,RZ
 defconst "Fimmed",6,,__F_IMMED,F_IMMED,__DOCOL
 defconst "Fhidden",7,,__F_HIDDEN,F_HIDDEN,__F_IMMED
 defconst "Flenmask",8,,__F_LENMASK,F_LENMASK,__F_HIDDEN
# 1379 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode ">r",2,,TOR,__F_LENMASK
 POP $t0
 PUSHRSP $t0
 NEXT

 defcode "r>",2,,FROMR,TOR
 POPRSP $t0
 PUSH $t0
 NEXT

 defcode "rsp@",4,,RSPFETCH,FROMR
 PUSH $s4
 NEXT

 defcode "rsp!",4,,RSPSTORE,RSPFETCH
 POP $s4
 NEXT

 defcode "rdrop",5,,RDROP,RSPSTORE
 POPRSP $t0
 NEXT
# 1410 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "dsp@",4,,DSPFETCH,RDROP
 move $t0, $s5
 addiu $s5, $s5, -4
 sw $t0, 0($s5)
 NEXT

 defcode "dsp!",4,,DSPSTORE,DSPFETCH
 POP $t0
 move $s5, $t0
 NEXT
# 1463 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
        .set noreorder
 .global resume
resume:

        addiu $sp,$sp,-40
        sw $ra,36($sp) #, return address
        sw $s8,32($sp)
        sw $s7,28($sp)
        sw $s6,24($sp)
        sw $s5,20($sp)
        sw $s4,16($sp)
        sw $s3,12($sp)
        sw $s2, 8($sp)
        sw $s1, 4($sp)
        sw $s0, 0($sp)

 la $t0, init_magic
 lw $t1, 0($t0)
 li $t2, 0xBEEF
 bne $t1, $t2, forth_init
    nop

ReResume:



 la $t0, y_SP
 lw $s5, 0($t0)


 POP $s8
 POP $s7
 POP $s6
 POP $s4

 POP $s3
 POP $s2
 POP $s1
 POP $s0

 POP $v1
 POP $v0

 POP $a1
 POP $a0

 RETURN





        .set noreorder
 .text
 .global yeild
yeild:

 PUSH $a0
 PUSH $a1

 PUSH $v0
 PUSH $v1

 PUSH $s0
 PUSH $s1
 PUSH $s2
 PUSH $s3
 PUSH $s4
 PUSH $s6
 PUSH $s7
 PUSH $s8


 la $t0, y_SP
 sw $s5, 0($t0)


        lw $ra,36($sp) #, return address
        lw $s8,32($sp) #,
        lw $s7,28($sp) #,
        lw $s6,24($sp) #,
        lw $s5,20($sp) #,
        lw $s4,16($sp) #,
        lw $s3,12($sp) #,
        lw $s2, 8($sp) #,
        lw $s1, 4($sp) #,
        lw $s0, 0($sp) #,
 j $ra
        addiu $sp,$sp,40 #,,

        .set reorder


 defcode "key",3,,KEY,DSPSTORE
 CALL nget_key
 PUSH $v0
 NEXT

 defcode "?key",4,,QKEY,KEY
 CALL iskey
 PUSH $v0
 NEXT


 defcode "emit",4,,EMIT,QKEY
 POP $a0
 CALL nput_char
 NEXT
# 1601 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "word",4,,WORD,EMIT
 CALL _WORD
 PUSH $v0
 PUSH $v1
 NEXT


w_nl: move $a0, $t0
 CALL nput_char
 li $a0, '\n'
 CALL nput_char

_WORD:


1: CALL nget_key
 move $a0, $v0
 CALL nput_char

 li $t0, 92
        beq $t0, $v0, 5f

 li $t0, '\r'
        beq $t0, $v0, w_nl

 li $t0, '\n'
        beq $t0, $v0, 1b

 li $t0, 9
        beq $t0, $v0, 1b

 li $t0, ' '
        beq $t0, $v0, 1b






 la $t7, word_buffer
 move $t6, $t7
2:
 sb $v0, 0($t7)
 addiu $t7, $t7, 1

 CALL nget_key
 move $a0, $v0
 CALL nput_char

 li $t0, ' '
        beq $t0, $v0, 4f

 li $t0, '\r'
        beq $t0, $v0, 3f

 li $t0, '\n'
        beq $t0, $v0, 4f

 li $t0, 9
        beq $t0, $v0, 4f

        b 2b

3:
 li $a0, '\n'
 CALL nput_char

4:

 sb $0, 0($t7)

 move $v0, $t6
        sub $v1, $t7, $v0
        RETURN


5:
 CALL nget_key
 li $t0, '\n'
        beq $t0, $v0, 1b
 li $t0, '\r'
        beq $t0, $v0, 1b
 b 5b


 .bss
 .align 4

LBUFPTR:
 .space 4
XXXXPTR:
 .space 4
LBUF:
 .space 80
LBUFE:
 .text

 defcode "getline",7,,GETLINE,WORD
 CALL _GETLINE
 POP $t0
 PUSH $v0
 PUSH $v1
 NEXT






_GETLINE:
 move $s0, $0
 la $s1, LBUF
 move $s2, $s1
 la $s3, LBUFE-4

 li $t0, 32
zap: sb $t0, 0($s1)
 addiu $s1, $s1, 1
 bne $s1, $s3, zap

 move $s1, $s2

1: CALL nget_key

 li $t0, '\r'
        bne $t0, $v0, 2f
 b _LDONE

2: li $t0, '\n'
        bne $t0, $v0, 3f
 b _LDONE

3: lw $t0, 0($s5)
 beqz $t0, 7f

 li $t0, 27
        bne $t0, $v0, 4f
 move $s0, $v0
 b 1b

4: li $t0, '['
        bne $t0, $v0, 5f
 beqz $s0, _LBUF
 move $s0, $v0
 b 1b

5: li $t0, 'C'
        bne $t0, $v0, 6f
 li $t2, '['
 bne $s0, $t2,_LBUF
 lb $a0, 0($s1)
 CALL nput_char
 addiu $s1, $s1, 1
 li $s0, 0
 b 1b

6: li $t0, 'D'
        bne $t0, $v0, 7f
 li $t2, '['
 bne $s0, $t2,_LBUF
 li $a0, 8
 CALL nput_char
 addiu $s1, $s1, -1
 li $s0, 0
 b 1b

7: li $t0, 8
        bne $t0, $v0, 8f

bksp: beq $s1, $s2, 1b
 li $a0, 8
 CALL nput_char
 move $t4, $s1
snip: beq $t4, $s3, repo
 lbu $t0, 0($t4)
 sb $t0, -1($t4)
 move $a0, $t0
 CALL nput_char
 addiu $t4, $t4, 1
 b snip


repo: addiu $s1, $s1, -1
 move $t4, $s1
 addiu $t4, $t4, 1
rev: beq $t4, $s3, 1b
 li $a0, 8
 CALL nput_char
 addiu $t4, $t4, 1
 b rev

8: li $t0, 127
        bne $t0, $v0, 9f
 b bksp

9:

_LBUF: sb $v0, 0($s1)
 move $a0, $v0
 CALL nput_char
 addiu $s1, $s1, 1
 b 1b


_LDONE:
 move $v0, $s2
 move $v1, $s1
 sub $v1, $v1, $v0
 RETURN
# 1821 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .align 4
 .comm key_buffer, 4
 .comm emit_buffer, 4




 .bss
 .align 4

 .global word_buffer
word_buffer:
 .space 64

 .global y_SP
y_SP:
 .space 4

 .global init_magic
init_magic:
 .space 4






 .text
1: CALL yeild
get_key:
 lb $v0, %gp_rel(key_buffer)($gp)

 li $t1, -1
 beq $v0, $t1, 1b

 move $t0, $gp
 addiu $t0, %gp_rel(key_buffer)

 sb $t1, 0($t0)
 RETURN


1: CALL yeild
put_char:
 lb $t2, %gp_rel(emit_buffer)($gp)
 li $t1, -1
 bne $t1, $t2, 1b

 move $t0, $gp
 addiu $t0, %gp_rel(emit_buffer)

 sb $a0, 0($t0)
 RETURN


put_string:
 PUSH $v0
 move $v0, $a0
1: lbu $a0, 0($v0)
 beqz $a0, 2f

 CALL put_char
 addiu $v0, $v0, 1
 b 1b

2: POP $v0
 RETURN





 .global ForthUSB

iskey:
 la $t0, ForthUSB
 jalr $ra, $t0
 lb $v0, %gp_rel(key_buffer)($gp)
 RETURN

nget_key:
1: la $t0, ForthUSB
 jalr $ra, $t0
 lb $v0, %gp_rel(key_buffer)($gp)

 li $t1, -1
 beq $v0, $t1, 1b

 move $t0, $gp
 addiu $t0, %gp_rel(key_buffer)

 sb $t1, 0($t0)
 RETURN


1: PUSH $a0
 la $t0, ForthUSB
 jalr $ra, $t0
 POP $a0
nput_char:
 lb $t2, %gp_rel(emit_buffer)($gp)
 li $t1, -1
 bne $t1, $t2, 1b

 move $t0, $gp
 addiu $t0, %gp_rel(emit_buffer)

 sb $a0, 0($t0)
 RETURN


nput_string:
 PUSH $s0
 move $s0, $a0
1: lbu $a0, 0($s0)
 beqz $a0, 2f

 CALL nput_char
 addiu $s0, $s0, 1
 b 1b

2: POP $s0
 RETURN
# 1961 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "number",6,,NUMBER,GETLINE
 POP $a0
 POP $a1
 CALL _NUMBER
 NEXT




_NUMBER:
 move $t0, $a0
 move $t1, $a1
 beqz $t1, 5f

 la $t2, var_base
 lw $t3, 0($t2)

 move $t6, $0

 li $t7, '-'
 lbu $t5, 0($t0)
 bne $t7, $t5, 1f

 move $t7, $0
 addiu $t0, $t0, 1

 addiu $t1, $t1, -1
 bnez $t1, 1f

 move $v1, $t1
 move $v0, $0
 RETURN


1: mul $t6, $t6, $t3
 lbu $t5, 0($t0)
 addiu $t0, $t0, 1
 li $t4, '0'
2: sub $t5, $t5, $t4
 bltz $t5, 4f


 slt $t4, $t5, 10
 bnez $t4, 3f

 addiu $t5, -17
 bltz $t5, 4f

 addiu $t5, $t5, 10
3:
 slt $t4, $t5, $t3
 beqz $t4, 4f

 add $t6, $t6, $t5
 addiu $t1, $t1, -1
 bnez $t1, 1b

4:
 bnez $t7, 5f

 negu $t6

5: move $v0, $t6
 move $v1, $t1
 RETURN
# 2052 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "find",4,,FIND,NUMBER
 POP $a1
 POP $a0
 CALL _FIND
 PUSH $v0
 NEXT

_FIND:
 la $t0, var_latest
1: lw $t1, 0($t0)
 beqz $t1, 4f


 lbu $t2, 4($t1)
 andi $t2, $t2, (F_HIDDEN|F_LENMASK)
 bne $t2, $a1, 3f


 move $t4, $t1
 move $t5, $a0
2: lbu $t6, 5($t4)
 lbu $t7, 0($t5)
 bne $t6, $t7, 3f

 addiu $t4, $t4, 1
 addiu $t5, $t5, 1
 addiu $t2, $t2, -1
 bnez $t2, 2b



 move $v0, $t1
 RETURN

3: move $t0, $t1
 b 1b

4:

 move $v0, $0
 RETURN
# 2125 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode ">cfa",4,,TCFA,FIND
 POP $a0
 CALL _TCFA
 PUSH $v0
 NEXT

_TCFA:



 addiu $a0, $a0, 4
 lbu $v0, 0($a0)
 andi $v0, F_LENMASK
 addiu $v0, $v0, 1
 addiu $v0, $v0, 3
 li $t0, 3
 not $t0
 and $v0, $v0, $t0
 add $v0, $a0, $v0
 RETURN
# 2167 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "warm",4,,WARM,TCFA
 la $t0, warm_init
 jr $t0

 defword "version",7,,VERSION,WARM
 .int LITSTRING
 .int 16
 .ascii "rv4tch 20150212 "
 .int TELL
 .int EXIT

 defword ">dfa",4,,TDFA,VERSION
 .int TCFA
 .int INCR4
 .int EXIT
# 2333 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "create",6,,CREATE,TDFA

 la $t2, var_here
 lw $t2, 0($t2)

 la $t3, var_latest

 lw $t4, 0($t3)
 sw $t4, 0($t2)
 addiu $t2, $t2, 4



 POP $t1
 POP $t0

 sb $t1, 0($t2)
 addiu $t2, $t2, 1

 beqz $t1, 2f



1: lbu $t5, 0($t0)
 sb $t5, 0($t2)
 addiu $t0, $t0, 1
 addiu $t2, $t2, 1
 addiu $t1, $t1, -1
 bnez $t1, 1b

2:
 addiu $t2,$t2, 3
 li $t3, 3
 not $t3
 and $t2, $t2, $t3

 move $t0, $t2

 la $t2, var_here
 la $t3, var_latest

 lw $t1, 0($t2)
 sw $t1, 0($t3)

 sw $t0, 0($t2)
 NEXT
# 2403 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode ",",1,,COMMA,CREATE
 POP $a0
CALL _COMMA
 NEXT

_COMMA:
 la $t0, var_here
 lw $t1, 0($t0)
 sw $a0, 0($t1)
 addiu $t1, $t1, 4
 sw $t1, 0($t0)
 RETURN
# 2435 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "[",1,F_IMMED,LBRAC,COMMA
 la $t0, var_state
 sw $0, 0($t0)
 NEXT

 defcode "]",1,,RBRAC,LBRAC
 la $t0, var_state
 li $t1, 1
 sw $t1, 0($t0)
 NEXT






 defword ":",1,,COLON,RBRAC
 .int WORD
 .int CREATE
 .int LIT, DOCOL, COMMA
 .int LATEST, FETCH, HIDDEN
 .int RBRAC
 .int EXIT
# 2473 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .text
 .global name_SEMICOLON
name_SEMICOLON :
 .int name_COLON
 .byte F_IMMED+1
 .byte 59
 .global SEMICOLON
SEMICOLON :
 .int DOCOL
 .int LIT, EXIT, COMMA
 .int LATEST, FETCH, HIDDEN
 .int LBRAC
 .int EXIT
# 2515 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "immediate",9,F_IMMED,IMMEDIATE,SEMICOLON
 la $t0, var_latest
 lw $t0, 0($t0)
 addiu $t0, $t0, 4
 lbu $t1, 0($t0)
 xori $t1, $t1, F_IMMED
 sb $t1, 0($t0)
 NEXT
# 2546 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "hidden",6,,HIDDEN,IMMEDIATE
 POP $t0
 addiu $t0, $t0, 4
 lbu $t1, 0($t0)
 xori $t1, $t1, F_HIDDEN
 sb $t1, 0($t0)
 NEXT

 defword "hide",4,,HIDE,HIDDEN
 .int WORD
 .int FIND
 .int HIDDEN
 .int EXIT
# 2588 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "'",1,,TICK,HIDE
 lw $t0, 0($s7)
 addiu $s7, $s7, 4
 PUSH $t0
 NEXT
# 2635 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "branch",6,,BRANCH,TICK
 lw $t0, 0($s7)
 add $s7, $s7, $t0
 NEXT

 defcode "0branch",7,,ZBRANCH,BRANCH
 POP $t0
 beqz $t0, code_BRANCH
 addiu $s7, $s7, 4
 NEXT
# 2659 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "litstring",9,,LITSTRING,ZBRANCH
 lw $t0, 0($s7)
 addiu $s7, $s7, 4


 move $t1, $s7

 addiu $t2, $t0, 3
 li $t4, 3
 not $t4
 and $t2, $t2, $t4
 add $s7, $s7, $t2

 PUSH $t1
 PUSH $t0

 NEXT

 defcode "tell",4,,TELL,LITSTRING
 POP $t4
 POP $t5
1: lbu $a0, 0($t5)
 beqz $t4, 2f
 CALL nput_char
 addiu $t5, $t5, 1
 addiu $t4, $t4, -1
 b 1b
2: NEXT
# 2703 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defword "quit",4,,QUIT,TELL
 .int RZ
 .int RSPSTORE

 .int INTERPRET
 .int IDLEWORD
 .int FETCH
 .int EXECUTE
 .int BRANCH
 .int -20
# 2725 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "interpret",9,,INTERPRET,QUIT
 CALL _WORD
 PUSH $v0
 PUSH $v1

 li $s2, 0

 move $a0, $v0
 move $a1, $v1

 CALL _FIND
 beqz $v0, 1f

 POP $a1
 POP $a0





 lbu $t2, 4($v0)

 move $a0, $v0
 move $a1, $v1
 CALL _TCFA
 andi $t2, $t2, F_IMMED
 bnez $t2, 4f

 b 2f


1: POP $a1
 POP $a0
 CALL _NUMBER
 bnez $v1, 6f
 PUSH $v0

 la $v0, LIT

 li $s2, 1

2:
 la $t0, var_state
 lw $t1, 0($t0)
 beqz $t1, 4f


 move $a0, $v0
 CALL _COMMA

 beqz $s2, 3f

 POP $a0
 CALL _COMMA

3: NEXT

4:
 bnez $s2, 5f




 move $s6, $v0
 lw $t0, 0($s6)
 jr $t0


5:
 NEXT

6:
# 2805 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 la $t0, var_errBuf
 lw $t1, 0($t0)
7: beqz $a1, 8f
 lbu $t3, 0($a0)
 sb $t3, 0($t1)
 addiu $a1, $a1, -1
 addiu $a0, $a0, 1
 addiu $t1, $t1, 1
 b 7b

8: la $t0, var_errNo
 li $t1, 1
 sw $t1, 0($t0)
 NEXT
# 2830 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .align 4
        .section .rodata


errOk: .ascii "Ok"
errSyntax: .ascii "<-wtf?"
errUnderflow: .ascii "Underflow"


errTable: .int 2, errOk
  .int 6, errSyntax
  .int 9, errUnderflow
  .int 0, 0

 .section .text
# 2864 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defcode "char",4,,CHAR,INTERPRET
 CALL _WORD
 lbu $t0, 0($v0)
 PUSH $t0
 NEXT

 defcode "execute",7,,EXECUTE,CHAR
 POP $s6
 lw $t0, 0($s6)
 jr $t0
 NEXT




 .global NVMWriteWord
 defcode "NVMwriteWord",12,,FNVMWriteWord,EXECUTE
 POP $a0
 POP $a1
 la $t0, NVMWriteWord
 jalr $ra, $t0
 NEXT

 .global NVMErasePage
 defcode "NVMerasePage",12,,FNVMErasePage,FNVMWriteWord
 POP $a0
 la $t0, NVMErasePage
 jalr $ra, $t0
 NEXT

 .global TimerInit
 defcode "timerInit",9,,FtimerInit,FNVMErasePage
 la $t0, TimerInit
 jalr $ra, $t0
 NEXT
# 2922 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 .global setRTCC
 defcode "setRTCC",7,,FsetRTCC,FtimerInit
 la $t0, setRTCC
 jalr $ra, $t0
 NEXT

 .global getRTCC
 defcode "getRTCC",7,,FgetRTCC,FsetRTCC
 la $t0, getRTCC
 jalr $ra, $t0
 NEXT

 .global setupRTCC
 defcode "setupRTCC",9,,FsetupRTCC,FgetRTCC
 la $t0, setupRTCC
 jalr $ra, $t0
 NEXT


 .global ReadCoreTimer
 defcode "readCoreTimer",13,,FreadCoreTimer,FsetupRTCC
 la $t0, ReadCoreTimer
 jalr $ra, $t0
 nop
 PUSH $v0
 NEXT

 defword "/",1,,DIVIDE,FreadCoreTimer
 .int DIVMOD
 .int SWAP
 .int DROP
 .int EXIT

 defword "mod",3,,MODULO,DIVIDE
 .int DIVMOD
 .int DROP
 .int EXIT

 defword "'\\n'",4,,NEWLINE,MODULO
 .int LIT
 .int 10
 .int EXIT

 defword "bl",2,,BLANK,NEWLINE
 .int LIT
 .int 32
 .int EXIT

 defword "cr",2,,CR,BLANK
 .int NEWLINE
 .int EMIT
 .int LIT
 .int 13
 .int EMIT
 .int EXIT

 defword "space",5,,SPACE,CR
 .int BLANK
 .int EMIT
 .int EXIT

 defword "negate",6,,NEGATE,SPACE
 .int LIT
 .int 0
 .int SWAP
 .int SUB
 .int EXIT

 defword "true",4,,TRUE,NEGATE
 .int LIT
 .int 1
 .int EXIT

 defword "false",5,,FALSE,TRUE
 .int LIT
 .int 0
 .int EXIT

 defword "not",3,,NOT,FALSE
 .int ZEQU
 .int EXIT

 defword "literal",7,F_IMMED,LITERAL,NOT
 .int TICK
 .int LIT
 .int COMMA
 .int COMMA
 .int EXIT

 defword "':'",3,,COLONCHAR,LITERAL
 .int LIT
 .int 0x3A
 .int EXIT







 .global name_SEMICHAR
name_SEMICHAR :
 .int name_COLONCHAR
 .byte 3
 .byte 39,59,39
 .global SEMICHAR
SEMICHAR :
 .int DOCOL
 .int LIT
 .int 0x3B
 .int EXIT

 defword "'('",3,,LPARCHAR,SEMICHAR
 .int LIT
 .int 0x28
 .int EXIT

 defword "')'",3,,RPARCHAR,LPARCHAR
 .int LIT
 .int 0x29
 .int EXIT

 defword "'\"'",3,,QUOTECHAR,RPARCHAR
 .int LIT
 .int 0x22
 .int EXIT

 defword "'A'",3,,ACHAR,QUOTECHAR
 .int LIT
 .int 0x41
 .int EXIT

 defword "'0'",3,,ZEROCHAR,ACHAR
 .int LIT
 .int 0x30
 .int EXIT

 defword "'-'",3,,DASHCHAR,ZEROCHAR
 .int LIT
 .int 0x2D
 .int EXIT

 defword "'.'",3,,DOTCHAR,DASHCHAR
 .int LIT
 .int 0x2E
 .int EXIT

 defword "[compile]",9,F_IMMED,COMPILE,DOTCHAR
 .int WORD
 .int FIND
 .int TCFA
 .int COMMA
 .int EXIT

 defword "recurse",7,F_IMMED,RECURSE,COMPILE
 .int LATEST
 .int FETCH
 .int TCFA
 .int COMMA
 .int EXIT

 defword "if",2,F_IMMED,IF,RECURSE
 .int TICK
 .int ZBRANCH
 .int COMMA
 .int HERE
 .int FETCH
 .int LIT
 .int 0
 .int COMMA
 .int EXIT

 defword "then",4,F_IMMED,THEN,IF
 .int DUP
 .int HERE
 .int FETCH
 .int SWAP
 .int SUB
 .int SWAP
 .int STORE
 .int EXIT

 defword "else",4,F_IMMED,ELSE,THEN
 .int TICK
 .int BRANCH
 .int COMMA
 .int HERE
 .int FETCH
 .int LIT
 .int 0
 .int COMMA
 .int SWAP
 .int DUP
 .int HERE
 .int FETCH
 .int SWAP
 .int SUB
 .int SWAP
 .int STORE
 .int EXIT

 defword "begin",5,F_IMMED,BEGIN,ELSE
 .int HERE
 .int FETCH
 .int EXIT

 defword "until",5,F_IMMED,UNTIL,BEGIN
 .int TICK
 .int ZBRANCH
 .int COMMA
 .int HERE
 .int FETCH
 .int SUB
 .int COMMA
 .int EXIT

 defword "again",5,F_IMMED,AGAIN,UNTIL
 .int TICK
 .int BRANCH
 .int COMMA
 .int HERE
 .int FETCH
 .int SUB
 .int COMMA
 .int EXIT

 defword "while",5,F_IMMED,WHILE,AGAIN
 .int TICK
 .int ZBRANCH
 .int COMMA
 .int HERE
 .int FETCH
 .int LIT
 .int 0
 .int COMMA
 .int EXIT

 defword "repeat",6,F_IMMED,REPEAT,WHILE
 .int TICK
 .int BRANCH
 .int COMMA
 .int SWAP
 .int HERE
 .int FETCH
 .int SUB
 .int COMMA
 .int DUP
 .int HERE
 .int FETCH
 .int SWAP
 .int SUB
 .int SWAP
 .int STORE
 .int EXIT

 defword "unless",6,F_IMMED,UNLESS,REPEAT
 .int TICK
 .int NOT
 .int COMMA
 .int IF
 .int EXIT

 defword "(",1,F_IMMED,COMMENT,UNLESS
 .int LIT
 .int 1
 .int KEY
 .int DUP
 .int LPARCHAR
 .int EQU
 .int ZBRANCH
 .int 20
 .int DROP
 .int INCR
 .int BRANCH
 .int 24
 .int RPARCHAR
 .int EQU
 .int ZBRANCH
 .int 8
 .int DECR
 .int DUP
 .int ZEQU
 .int ZBRANCH
 .int -72
 .int DROP
 .int EXIT

 defword "free",4,,FREE,COMMENT
 .int RZ
 .int HERE
 .int FETCH
 .int SUB
 .int LIT
 .int 4
 .int DIVIDE
 .int EXIT

 defword "nip",3,,NIP,FREE
 .int SWAP
 .int DROP
 .int EXIT

 defword "tuck",4,,TUCK,NIP
 .int SWAP
 .int OVER
 .int EXIT

 defword "pick",4,,PICK,TUCK
 .int INCR
 .int LIT
 .int 4
 .int MUL
 .int DSPFETCH
 .int ADD
 .int FETCH
 .int EXIT

 defword "spaces",6,,SPACES,PICK
 .int DUP
 .int ZGT
 .int ZBRANCH
 .int 20
 .int SPACE
 .int DECR
 .int BRANCH
 .int -28
 .int DROP
 .int EXIT

 defword "decimal",7,,DECIMAL,SPACES
 .int LIT
 .int 10
 .int BASE
 .int STORE
 .int EXIT

 defword "hex",3,,HEX,DECIMAL
 .int LIT
 .int 16
 .int BASE
 .int STORE
 .int EXIT

 defword "_u.",3,,_UDOT,HEX
 .int BASE
 .int FETCH
 .int DIVMOD
 .int QDUP
 .int ZBRANCH
 .int 8
 .int _UDOT
 .int DUP
 .int LIT
 .int 10
 .int LT
 .int ZBRANCH
 .int 16
 .int ZEROCHAR
 .int BRANCH
 .int 20
 .int LIT
 .int 10
 .int SUB
 .int ACHAR
 .int ADD
 .int EMIT
 .int EXIT

 defword ".s",2,,DOTS,_UDOT
 .int DSPFETCH
 .int DUP
 .int SZ
 .int FETCH
 .int LT
 .int ZBRANCH
 .int 32
 .int DUP
 .int FETCH
 .int _UDOT
 .int SPACE
 .int INCR4
 .int BRANCH
 .int -48
 .int DROP
 .int EXIT

 defword "uwidth",6,,UWIDTH,DOTS
 .int BASE
 .int FETCH
 .int DIVIDE
 .int QDUP
 .int ZBRANCH
 .int 20
 .int UWIDTH
 .int INCR
 .int BRANCH
 .int 12
 .int LIT
 .int 1
 .int EXIT

 defword "u.r",3,,UDOTR,UWIDTH
 .int SWAP
 .int DUP
 .int UWIDTH
 .int ROT
 .int SWAP
 .int SUB
 .int SPACES
 .int _UDOT
 .int EXIT

 defword ".r",2,,DOTR,UDOTR
 .int SWAP
 .int DUP
 .int ZLT
 .int ZBRANCH
 .int 36
 .int NEGATE
 .int LIT
 .int 1
 .int SWAP
 .int ROT
 .int DECR
 .int BRANCH
 .int 20
 .int LIT
 .int 0
 .int SWAP
 .int ROT
 .int SWAP
 .int DUP
 .int UWIDTH
 .int ROT
 .int SWAP
 .int SUB
 .int SPACES
 .int SWAP
 .int ZBRANCH
 .int 12
 .int DASHCHAR
 .int EMIT
 .int _UDOT
 .int EXIT

 defword ".",1,,DOT,DOTR
 .int LIT
 .int 0
 .int DOTR
 .int SPACE
 .int EXIT

 defword "u.",2,,UDOT,DOT
 .int _UDOT
 .int SPACE
 .int EXIT

 defword "?",1,,QUESTION,UDOT
 .int FETCH
 .int DOT
 .int EXIT

 defword "within",6,,WITHIN,QUESTION
 .int NROT
 .int OVER
 .int LE
 .int ZBRANCH
 .int 40
 .int GT
 .int ZBRANCH
 .int 16
 .int TRUE
 .int BRANCH
 .int 8
 .int FALSE
 .int BRANCH
 .int 12
 .int TWODROP
 .int FALSE
 .int EXIT

 defword "depth",5,,DEPTH,WITHIN
 .int SZ
 .int FETCH
 .int DSPFETCH
 .int SUB
 .int DECR4
 .int EXIT

 defword "aligned",7,,ALIGNED,DEPTH
 .int LIT
 .int 3
 .int ADD
 .int LIT
 .int 3
 .int INVERT
 .int AND
 .int EXIT

 defword "align",5,,ALIGN,ALIGNED
 .int HERE
 .int FETCH
 .int ALIGNED
 .int HERE
 .int STORE
 .int EXIT

 defword "c,",2,,CCOMMA,ALIGN
 .int HERE
 .int FETCH
 .int STOREBYTE
 .int LIT
 .int 1
 .int HERE
 .int ADDSTORE
 .int EXIT

 defword "s\"",2,F_IMMED,SQUOTE,CCOMMA
 .int STATE
 .int FETCH
 .int ZBRANCH
 .int 120
 .int TICK
 .int LITSTRING
 .int COMMA
 .int HERE
 .int FETCH
 .int LIT
 .int 0
 .int COMMA
 .int KEY
 .int DUP
 .int QUOTECHAR
 .int NEQU
 .int ZBRANCH
 .int 16
 .int CCOMMA
 .int BRANCH
 .int -32
 .int DROP
 .int DUP
 .int HERE
 .int FETCH
 .int SWAP
 .int SUB
 .int DECR4
 .int SWAP
 .int STORE
 .int ALIGN
 .int BRANCH
 .int 84
 .int HERE
 .int FETCH
 .int KEY
 .int DUP
 .int QUOTECHAR
 .int NEQU
 .int ZBRANCH
 .int 24
 .int OVER
 .int STOREBYTE
 .int INCR
 .int BRANCH
 .int -40
 .int DROP
 .int HERE
 .int FETCH
 .int SUB
 .int HERE
 .int FETCH
 .int SWAP
 .int EXIT

 defword ".\"",2,F_IMMED,DOTQUOTE,SQUOTE
 .int STATE
 .int FETCH
 .int ZBRANCH
 .int 28
 .int SQUOTE
 .int TICK
 .int TELL
 .int COMMA
 .int BRANCH
 .int 48
 .int KEY
 .int DUP
 .int QUOTECHAR
 .int EQU
 .int ZBRANCH
 .int 12
 .int DROP
 .int EXIT
 .int EMIT
 .int BRANCH
 .int -40
 .int EXIT

 defword "constant",8,,CONSTANT,DOTQUOTE
 .int WORD
 .int CREATE
 .int __DOCOL
 .int COMMA
 .int TICK
 .int LIT
 .int COMMA
 .int COMMA
 .int TICK
 .int EXIT
 .int COMMA
 .int EXIT

 defword "allot",5,,ALLOT,CONSTANT
 .int HERE
 .int FETCH
 .int SWAP
 .int HERE
 .int ADDSTORE
 .int EXIT

 defword "cells",5,,CELLS,ALLOT
 .int LIT
 .int 4
 .int MUL
 .int EXIT

 defword "variable",8,,VARIABLE,CELLS
 .int LIT
 .int 1
 .int CELLS
 .int ALLOT
 .int WORD
 .int CREATE
 .int __DOCOL
 .int COMMA
 .int TICK
 .int LIT
 .int COMMA
 .int COMMA
 .int TICK
 .int EXIT
 .int COMMA
 .int EXIT

 defword "value",5,,VALUE,VARIABLE
 .int WORD
 .int CREATE
 .int __DOCOL
 .int COMMA
 .int TICK
 .int LIT
 .int COMMA
 .int COMMA
 .int TICK
 .int EXIT
 .int COMMA
 .int EXIT

 defword "to",2,F_IMMED,TO,VALUE
 .int WORD
 .int FIND
 .int TDFA
 .int INCR4
 .int STATE
 .int FETCH
 .int ZBRANCH
 .int 40
 .int TICK
 .int LIT
 .int COMMA
 .int COMMA
 .int TICK
 .int STORE
 .int COMMA
 .int BRANCH
 .int 8
 .int STORE
 .int EXIT

 defword "+to",3,F_IMMED,ADDTO,TO
 .int WORD
 .int FIND
 .int TDFA
 .int INCR4
 .int STATE
 .int FETCH
 .int ZBRANCH
 .int 40
 .int TICK
 .int LIT
 .int COMMA
 .int COMMA
 .int TICK
 .int ADDSTORE
 .int COMMA
 .int BRANCH
 .int 8
 .int ADDSTORE
 .int EXIT

 defword "id.",3,,IDDOT,ADDTO
 .int INCR4
 .int DUP
 .int FETCHBYTE
 .int __F_LENMASK
 .int AND
 .int DUP
 .int ZGT
 .int ZBRANCH
 .int 40
 .int SWAP
 .int INCR
 .int DUP
 .int FETCHBYTE
 .int EMIT
 .int SWAP
 .int DECR
 .int BRANCH
 .int -48
 .int TWODROP
 .int EXIT

 defword "?hidden",7,,QHIDDEN,IDDOT
 .int INCR4
 .int FETCHBYTE
 .int __F_HIDDEN
 .int AND
 .int EXIT

 defword "?immediate",10,,QIMMEDIATE,QHIDDEN
 .int INCR4
 .int FETCHBYTE
 .int __F_IMMED
 .int AND
 .int EXIT

 defword "words",5,,WORDS,QIMMEDIATE
 .int LATEST
 .int FETCH
 .int QDUP
 .int ZBRANCH
 .int 48
 .int DUP
 .int QHIDDEN
 .int NOT
 .int ZBRANCH
 .int 16
 .int DUP
 .int IDDOT
 .int SPACE
 .int FETCH
 .int BRANCH
 .int -52
 .int CR
 .int EXIT

 defword "forget",6,,FORGET,WORDS
 .int WORD
 .int FIND
 .int QDUP
 .int ZBRANCH
 .int 28
 .int DUP
 .int FETCH
 .int LATEST
 .int STORE
 .int HERE
 .int STORE
 .int EXIT

 defword "dump",4,,DUMP,FORGET
 .int BASE
 .int FETCH
 .int NROT
 .int HEX
 .int QDUP
 .int ZBRANCH
 .int 296
 .int OVER
 .int LIT
 .int 8
 .int UDOTR
 .int SPACE
 .int TWODUP
 .int DECR
 .int LIT
 .int 15
 .int AND
 .int INCR
 .int QDUP
 .int ZBRANCH
 .int 52
 .int SWAP
 .int DUP
 .int FETCHBYTE
 .int LIT
 .int 2
 .int DOTR
 .int SPACE
 .int INCR
 .int SWAP
 .int DECR
 .int BRANCH
 .int -56
 .int DROP
 .int TWODUP
 .int DECR
 .int LIT
 .int 15
 .int AND
 .int INCR
 .int QDUP
 .int ZBRANCH
 .int 92
 .int SWAP
 .int DUP
 .int FETCHBYTE
 .int DUP
 .int LIT
 .int 32
 .int LIT
 .int 128
 .int WITHIN
 .int ZBRANCH
 .int 16
 .int EMIT
 .int BRANCH
 .int 16
 .int DROP
 .int DOTCHAR
 .int EMIT
 .int INCR
 .int SWAP
 .int DECR
 .int BRANCH
 .int -96
 .int DROP
 .int CR
 .int DUP
 .int DECR
 .int LIT
 .int 15
 .int AND
 .int INCR
 .int TUCK
 .int SUB
 .int TOR
 .int ADD
 .int FROMR
 .int BRANCH
 .int -300
 .int DROP
 .int BASE
 .int STORE
 .int EXIT

 defword "case",4,F_IMMED,CASE,DUMP
 .int LIT
 .int 0
 .int EXIT

 defword "of",2,F_IMMED,OF,CASE
 .int TICK
 .int OVER
 .int COMMA
 .int TICK
 .int EQU
 .int COMMA
 .int IF
 .int TICK
 .int DROP
 .int COMMA
 .int EXIT

 defword "endof",5,F_IMMED,ENDOF,OF
 .int ELSE
 .int EXIT

 defword "endcase",7,F_IMMED,ENDCASE,ENDOF
 .int TICK
 .int DROP
 .int COMMA
 .int QDUP
 .int ZBRANCH
 .int 16
 .int THEN
 .int BRANCH
 .int -20
 .int EXIT

 defword "cfa>",4,,TOCFA,ENDCASE
 .int LATEST
 .int FETCH
 .int QDUP
 .int ZBRANCH
 .int 44
 .int TWODUP
 .int SWAP
 .int LT
 .int ZBRANCH
 .int 12
 .int NIP
 .int EXIT
 .int FETCH
 .int BRANCH
 .int -48
 .int DROP
 .int LIT
 .int 0
 .int EXIT
# 4029 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
 defword ":noname",7,,NONAME,TOCFA
 .int LIT
 .int 0
 .int LIT
 .int 0
 .int CREATE
 .int HERE
 .int FETCH
 .int LIT
 .int DOCOL
 .int COMMA
 .int RBRAC
 .int EXIT

# : ['] IMMEDIATE ' LIT , ;
# compile TICK

 defword "[']",3,F_IMMED,CTICK,NONAME
 .int TICK
 .int LIT
 .int COMMA
 .int EXIT

 defword "idle",4,,IDLE,CTICK
 .int STATE
 .int FETCH
 .int ZEQU
 .int ZBRANCH
 .int 88
 .int DSPFETCH
 .int SZ
 .int FETCH
 .int LE
 .int ZBRANCH
 .int 28
 .int LITSTRING
 .int 3
 .ascii "Ok "
 .int TELL
 .int BRANCH
 .int 40
 .int LITSTRING
 .int 10
 .ascii "Underflow "
 .int TELL
 .int SZ
 .int FETCH
 .int DSPSTORE
 .int EXIT






 .global LCDInitPins
 .global LCDReset
 .global LCDBars
 .global LCDblack
 .global LCDwhite

 defcode "bidle",5,,BIDLE,IDLE
 la $t3, 0xBF886230
 lw $t2, 0($t3)
    li $t1, 1
    or $t0, $t1, $t2
    sw $t0, 0($t3)

 la $t0, LCDInitPins
 jalr $ra, $t0

 la $t0, LCDReset
 jalr $ra, $t0

; la $t0, S6B33_init_device
; jalr $ra, $t0

 la $t3, 0xBF886230
 lw $t2, 0($t3)
    li $t1, 0b00001000000000
    or $t0, $t1, $t2
    sw $t0, 0($t3)

1: la $t0, LCDwhite
 jalr $ra, $t0

 la $t3, 0xBF886230
 lw $t2, 0($t3)
    li $t1, 2
    or $t0, $t1, $t2
    sw $t0, 0($t3)

 la $t0, LCDblack
 jalr $ra, $t0

 la $t3, 0xBF886130
 lw $t2, 0($t3)
    li $t1, 8
    or $t0, $t1, $t2
    sw $t0, 0($t3)

 la $t0, getTouch
 jalr $ra, $t0

 la $t0, LCDBars
 jalr $ra, $t0



 NEXT

 .global LCDBars
 defcode "LCDBars",7,,FLCDBars,BIDLE
 la $t0, LCDBars
 jalr $ra, $t0
 NEXT

 .global LCDcolor
 defcode "LCDcolor",8,,FLCDcolor,FLCDBars
 POP $a0
 la $t0, LCDcolor
 jalr $ra, $t0
 NEXT

 .global Nnops
 .global CurrentButtonStatus
    .global ButtonVmeasADC
 .global getTouch
 defcode "getTouch",8,,FgetTouch,FLCDcolor
 POP $t1
    la $t0, Nnops
    sb $t1, 0($t0)
 la $t0, getTouch
 jalr $ra, $t0
    la $t0, ButtonVmeasADC
 PUSH $t0
    la $t0, CurrentButtonStatus
 PUSH $t0
 NEXT



    .global G_entry
    .global G_outputMode
    .global G_displayPattern
    .global G_rowVector


 defcode "LCDReset",8,,FLCDReset,FgetTouch
 la $t0, LCDReset
 jalr $ra, $t0
 NEXT

; .global S6B33_init_device
; defcode "LCDinit",7,,FLCDinit,FLCDReset
; la $t0, S6B33_init_device
; jalr $ra, $t0
; NEXT

    .global G_contrast1
 defcode "contrast1",9,,contrast1,FLCDReset
    la $t0, G_contrast1
    PUSH $t0
 NEXT

    .global G_contrast2
 defcode "contrast2",9,,contrast2,contrast1
    la $t0, G_contrast2
    PUSH $t0
 NEXT

    .global G_bias
 defcode "bias",4,,bias,contrast2
    la $t0, G_bias
    PUSH $t0
 NEXT

    .global G_clockDiv
 defcode "clockDiv",8,,clockDiv,bias
    la $t0, G_clockDiv
    PUSH $t0
 NEXT

    .global G_addressMode
 defcode "addressMode",11,,addressMode,clockDiv
    la $t0, G_addressMode
    PUSH $t0
 NEXT

    .global G_DCDCselect
 defcode "DCDCselect",10,,DCDCselect,addressMode
    la $t0, G_DCDCselect
    PUSH $t0
 NEXT

 .global LCDdrbob
 defcode "LCDdrbob",8,,FLCDdrbob,DCDCselect
 la $t0, LCDdrbob
 jalr $ra, $t0
 NEXT

 .global LCDmayo
 defcode "LCDmayo",7,,FLCDmayo,FLCDdrbob
 la $t0, LCDmayo
 jalr $ra, $t0
 NEXT







 defword "_",1,F_HIDDEN,HANG,FLCDmayo
 .int EXIT
# 4270 "/home/paul/rvasec-badge-2015-dev/src/jonesforth.S"
# .text
# .set INITIAL_DATA_SEGMENT_SIZE,65536
#set_up_data_segment:
# xor %ebx,%ebx
# movl $__NR_brk,%eax
# int $0x80
# movl %eax,var_HERE
# addl $INITIAL_DATA_SEGMENT_SIZE,%eax
# movl %eax,%ebx
# movl $__NR_brk,%eax
# int $0x80
# ret






 .bss
# .align 4096
 .align 4


data_segment:

 .if 0
 .equ DATA_SEGMENT_SIZE, 5 * 1024
 .else
 .equ DATA_SEGMENT_SIZE, 4 * 1024
 .endif
 .space DATA_SEGMENT_SIZE




return_stack_top:
 .equ RETURN_STACK_SIZE, 64
 .space RETURN_STACK_SIZE


 .equ FORTH_STACK_SIZE, 256
 .space FORTH_STACK_SIZE
forth_stack_top:


 .space 32

errBuffer:
 .space 80




 .if 0
 .section .stack
 .equ C_STACK_SIZE, 512
 .space C_STACK_SIZE
c_stack_top:
 .endif
