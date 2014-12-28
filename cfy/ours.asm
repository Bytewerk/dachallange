; ---------------------------------------------------------------------------

parser		struc ;	(sizeof=0x10, align=0x8, standard type)	; XREF:	.data:parsersr
parser		dq ?			; offset
desc		dq ?			; offset
parser		ends


;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2013 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-325F-7034-FF			    |
; |			Rico Baumgart, personal	license			    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	CC6BC9CD9779255190002B552C6CACC0
; Input	CRC32 :	AFC33639

; File Name   :	Z:\tmp\a.out
; Format      :	ELF64 for x86-64 (Executable)
; Imagebase   :	400000
; Interpreter '/lib64/ld-linux-x86-64.so.2'
; Needed Library 'libc.so.6'
;
; Source File :	'foo.c'

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_init		segment	dword public 'CODE' use64
		assume cs:_init
		;org 4005B0h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _init_proc
_init_proc	proc near		; CODE XREF: __libc_csu_init+42p
		sub	rsp, 8		; _init
		mov	rax, cs:__gmon_start___ptr
		test	rax, rax
		jz	short loc_4005C5
		call	___gmon_start__

loc_4005C5:				; CODE XREF: _init_proc+Ej
		add	rsp, 8
		retn
_init_proc	endp

_init		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_plt		segment	para public 'CODE' use64
		assume cs:_plt
		;org 4005D0h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		dq 2 dup(?)
; [00000006 BYTES: COLLAPSED FUNCTION _puts. PRESS KEYPAD CTRL-"+" TO EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION _printf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION ___libc_start_main. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION _fgets. PRESS KEYPAD CTRL-"+" TO EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION _strtoll.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION ___gmon_start__. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION _fflush. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		dw ?
		dq ?
; [00000006 BYTES: COLLAPSED FUNCTION ___isoc99_sscanf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		dw ?
		dq ?
_plt		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use64
		assume cs:_text
		;org 400660h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

		public _start
_start		proc near
		xor	ebp, ebp
		mov	r9, rdx
		pop	rsi
		mov	rdx, rsp
		and	rsp, 0FFFFFFFFFFFFFFF0h
		push	rax
		push	rsp
		mov	r8, offset __libc_csu_fini
		mov	rcx, offset __libc_csu_init
		mov	rdi, offset main
		call	___libc_start_main
		hlt
_start		endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_400690	proc near		; CODE XREF: sub_400700+Dp
		mov	eax, 6010B7h
		push	rbp
		sub	rax, 6010B0h
		mov	rbp, rsp
		cmp	rax, 0Eh
		ja	short loc_4006A7

loc_4006A5:				; CODE XREF: sub_400690+1Fj
		pop	rbp
		retn
; ---------------------------------------------------------------------------

loc_4006A7:				; CODE XREF: sub_400690+13j
		mov	eax, 0
		test	rax, rax
		jz	short loc_4006A5
		pop	rbp
		mov	edi, 6010B0h
		jmp	rax
sub_400690	endp

; ---------------------------------------------------------------------------
		align 20h
; START	OF FUNCTION CHUNK FOR sub_400720

loc_4006C0:				; CODE XREF: sub_400720+20j
					; sub_400720:loc_400748j
		mov	eax, 6010B0h
		push	rbp
		sub	rax, 6010B0h
		mov	rbp, rsp
		sar	rax, 3
		mov	rdx, rax
		shr	rdx, 3Fh
		add	rax, rdx
		sar	rax, 1
		jnz	short loc_4006E4

loc_4006E2:				; CODE XREF: sub_400720-34j
		pop	rbp
		retn
; ---------------------------------------------------------------------------

loc_4006E4:				; CODE XREF: sub_400720-40j
		mov	edx, 0
		test	rdx, rdx
		jz	short loc_4006E2
		pop	rbp
		mov	rsi, rax
		mov	edi, 6010B0h
		jmp	rdx
; END OF FUNCTION CHUNK	FOR sub_400720
; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================


sub_400700	proc near		; DATA XREF: .fini_array:__init_array_endo
		cmp	cs:byte_6010D0,	0
		jnz	short locret_40071A
		push	rbp
		mov	rbp, rsp
		call	sub_400690
		pop	rbp
		mov	cs:byte_6010D0,	1

locret_40071A:				; CODE XREF: sub_400700+7j
		rep retn
sub_400700	endp

; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================


sub_400720	proc near		; DATA XREF: .init_array:__init_array_starto

; FUNCTION CHUNK AT 00000000004006C0 SIZE 00000039 BYTES

		cmp	cs:qword_600E20, 0
		jz	short loc_400748
		mov	eax, 0
		test	rax, rax
		jz	short loc_400748
		push	rbp
		mov	edi, offset qword_600E20
		mov	rbp, rsp
		call	rax
		pop	rbp
		jmp	loc_4006C0
; ---------------------------------------------------------------------------
		align 8

loc_400748:				; CODE XREF: sub_400720+8j
					; sub_400720+12j
		jmp	loc_4006C0
sub_400720	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int64_t __cdecl from_hex(char	*s)
		public from_hex
from_hex	proc near		; DATA XREF: .data:parserso

s		= qword	ptr -8

		push	rbp
		mov	rbp, rsp
		sub	rsp, 10h
		mov	[rbp+s], rdi
		mov	rax, [rbp+s]
		mov	edx, 10h	; base
		mov	esi, 0		; endptr
		mov	rdi, rax	; nptr
		call	_strtoll
		leave
		retn
from_hex	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int64_t __cdecl from_dec(char	*s)
		public from_dec
from_dec	proc near		; DATA XREF: .data:parserso

s		= qword	ptr -8

		push	rbp
		mov	rbp, rsp
		sub	rsp, 10h
		mov	[rbp+s], rdi
		mov	rax, [rbp+s]
		mov	edx, 0Ah	; base
		mov	esi, 0		; endptr
		mov	rdi, rax	; nptr
		call	_strtoll
		leave
		retn
from_dec	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int64_t __cdecl from_ptr(char	*s)
		public from_ptr
from_ptr	proc near		; DATA XREF: .data:parserso

s		= qword	ptr -8

		push	rbp
		mov	rbp, rsp
		mov	[rbp+s], rdi
		mov	rax, [rbp+s]
		mov	rax, [rax]
		mov	rax, [rax]
		pop	rbp
		retn
from_ptr	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; void __cdecl print_fn_choice()
		public print_fn_choice
print_fn_choice	proc near		; CODE XREF: main+Dp

i		= dword	ptr -4

		push	rbp
		mov	rbp, rsp
		sub	rsp, 10h
		mov	[rbp+i], 0
		jmp	short loc_4007E5
; ---------------------------------------------------------------------------

loc_4007BA:				; CODE XREF: print_fn_choice+40j
		mov	eax, [rbp+i]
		cdqe
		shl	rax, 4
		add	rax, 601080h
		mov	rdx, [rax+8]
		mov	eax, [rbp+i]
		mov	esi, eax
		mov	edi, offset format ; "%d) %s\n"
		mov	eax, 0
		call	_printf
		add	[rbp+i], 1

loc_4007E5:				; CODE XREF: print_fn_choice+Fj
		cmp	[rbp+i], 2
		jle	short loc_4007BA
		mov	esi, 3
		mov	edi, offset aDQuit ; "%d) quit\n"
		mov	eax, 0
		call	_printf
		leave
		retn
print_fn_choice	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl main()
		public main
main		proc near		; DATA XREF: _start+1Do

choice		= dword	ptr -0Ch
result		= qword	ptr -8

		push	rbp
		mov	rbp, rsp
		sub	rsp, 10h

loc_400809:				; CODE XREF: main+100j
		mov	eax, 0
		call	print_fn_choice
		mov	rax, cs:stdin@@GLIBC_2_2_5
		mov	rdx, rax	; stream
		mov	esi, 400h	; n
		mov	edi, offset buf	; s
		call	_fgets
		lea	rax, [rbp+choice]
		mov	rdx, rax
		mov	esi, offset aD	; "%d"
		mov	edi, offset buf
		mov	eax, 0
		call	___isoc99_sscanf
		cmp	eax, 1
		jz	short loc_40085B
		mov	edi, offset s	; "sscanf failed"
		call	_puts
		jmp	loc_400906
; ---------------------------------------------------------------------------

loc_40085B:				; CODE XREF: main+49j
		mov	eax, [rbp+choice]
		cmp	eax, 3
		jnz	short loc_400868
		jmp	loc_400906
; ---------------------------------------------------------------------------

loc_400868:				; CODE XREF: main+60j
		mov	edi, offset aPleaseEnterYou ; "\nPlease	enter your number: "
		mov	eax, 0
		call	_printf
		mov	rax, cs:stdout@@GLIBC_2_2_5
		mov	rdi, rax	; stream
		call	_fflush
		mov	rax, cs:stdin@@GLIBC_2_2_5
		mov	rdx, rax	; stream
		mov	esi, 400h	; n
		mov	edi, offset buf	; s
		call	_fgets
		mov	eax, [rbp+choice]
		cdqe
		shl	rax, 4
		add	rax, 601080h
		mov	rax, [rax]
		mov	edi, offset buf
		call	rax
		mov	[rbp+result], rax
		mov	rax, [rbp+result]
		mov	rsi, rax
		mov	edi, offset aDecLld ; "dec: %lld\n"
		mov	eax, 0
		call	_printf
		mov	rax, [rbp+result]
		mov	rsi, rax
		mov	edi, offset aHex0xLlx ;	"hex: 0x%llx\n"
		mov	eax, 0
		call	_printf
		mov	edi, offset byte_400A4C	; s
		call	_puts
		mov	rax, cs:stdout@@GLIBC_2_2_5
		mov	rdi, rax	; stream
		call	_fflush
		jmp	loc_400809
; ---------------------------------------------------------------------------

loc_400906:				; CODE XREF: main+55j main+62j
		mov	edi, offset aOkayBye ; "okay bye"
		call	_puts
		mov	eax, 0
		leave
		retn
main		endp

; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================


		public __libc_csu_init
__libc_csu_init	proc near		; DATA XREF: _start+16o

var_30		= qword	ptr -30h
var_28		= qword	ptr -28h
var_20		= qword	ptr -20h
var_18		= qword	ptr -18h
var_10		= qword	ptr -10h
var_8		= qword	ptr -8

		mov	[rsp+var_28], rbp
		lea	rbp, __init_array_end
		mov	[rsp+var_20], r12
		lea	r12, __init_array_start
		sub	rbp, r12
		mov	[rsp+var_30], rbx
		xor	ebx, ebx
		mov	[rsp+var_18], r13
		sar	rbp, 3
		mov	r13, rdx
		mov	[rsp+var_10], r14
		mov	r14, rsi
		mov	[rsp+var_8], r15
		sub	rsp, 38h
		mov	r15d, edi
		call	_init_proc
		test	rbp, rbp
		jz	short loc_400986
		nop	dword ptr [rax+00h]

loc_400970:				; CODE XREF: __libc_csu_init+64j
		mov	rdx, r13
		mov	rsi, r14
		mov	edi, r15d
		call	qword ptr [r12+rbx*8]
		add	rbx, 1
		cmp	rbx, rbp
		jnz	short loc_400970

loc_400986:				; CODE XREF: __libc_csu_init+4Aj
		mov	rbx, [rsp+38h+var_30]
		mov	rbp, [rsp+38h+var_28]
		mov	r12, [rsp+38h+var_20]
		mov	r13, [rsp+38h+var_18]
		mov	r14, [rsp+38h+var_10]
		mov	r15, [rsp+38h+var_8]
		add	rsp, 38h
		retn
__libc_csu_init	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


		public __libc_csu_fini
__libc_csu_fini	proc near		; DATA XREF: _start+Fo
		rep retn
__libc_csu_fini	endp

_text		ends

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_fini		segment	dword public 'CODE' use64
		assume cs:_fini
		;org 4009B4h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public _term_proc
_term_proc	proc near
		sub	rsp, 8		; _fini
		add	rsp, 8
		retn
_term_proc	endp

_fini		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rodata		segment	dword public 'CONST' use64
		assume cs:_rodata
		;org 4009C0h
		public _IO_stdin_used
_IO_stdin_used	db    1
		db    0
		db    2
		db    0
aParseFromHex	db 'parse from hex',0   ; DATA XREF: .data:parserso
aParseFromDec	db 'parse from dec',0   ; DATA XREF: .data:parserso
aParseFromPoint	db 'parse from pointer',0 ; DATA XREF: .data:parserso
; char format[]
format		db '%d) %s',0Ah,0       ; DATA XREF: print_fn_choice+29o
; char aDQuit[]
aDQuit		db '%d) quit',0Ah,0     ; DATA XREF: print_fn_choice+47o
aD		db '%d',0               ; DATA XREF: main+32o
; char s[]
s		db 'sscanf failed',0    ; DATA XREF: main+4Bo
; char aPleaseEnterYou[]
aPleaseEnterYou	db 0Ah			; DATA XREF: main:loc_400868o
		db 'Please enter your number: ',0
; char aDecLld[]
aDecLld		db 'dec: %lld',0Ah,0    ; DATA XREF: main+C2o
; char aHex0xLlx[]
aHex0xLlx	db 'hex: 0x%llx',0Ah,0  ; DATA XREF: main+D8o
; char byte_400A4C
byte_400A4C	db 0			; DATA XREF: main+E7o
; char aOkayBye[]
aOkayBye	db 'okay bye',0         ; DATA XREF: main:loc_400906o
_rodata		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_eh_frame_hdr	segment	dword public 'CONST' use64
		assume cs:_eh_frame_hdr
		;org 400A58h
		db    1
		db  1Bh
		db    3
		db  3Bh	; ;
		db  54h	; T
		db    0
		db    0
		db    0
		db    9
		db    0
		db    0
		db    0
		db  78h	; x
		db 0FBh	; �
		db 0FFh
		db 0FFh
		db 0A0h	; �
		db    0
		db    0
		db    0
		db    8
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db  70h	; p
		db    0
		db    0
		db    0
		db 0F5h	; �
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db 0C8h	; �
		db    0
		db    0
		db    0
		db  19h
		db 0FDh	; �
		db 0FFh
		db 0FFh
		db 0E8h	; �
		db    0
		db    0
		db    0
		db  3Dh	; =
		db 0FDh	; �
		db 0FFh
		db 0FFh
		db    8
		db    1
		db    0
		db    0
		db  51h	; Q
		db 0FDh	; �
		db 0FFh
		db 0FFh
		db  28h	; (
		db    1
		db    0
		db    0
		db 0A9h	; �
		db 0FDh	; �
		db 0FFh
		db 0FFh
		db  48h	; H
		db    1
		db    0
		db    0
		db 0C8h	; �
		db 0FEh	; �
		db 0FFh
		db 0FFh
		db  68h	; h
		db    1
		db    0
		db    0
		db  58h	; X
		db 0FFh
		db 0FFh
		db 0FFh
		db  98h	; �
		db    1
		db    0
		db    0
_eh_frame_hdr	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment 'qword' can not be represented in assembly
_eh_frame	segment	para public 'CONST' use64
		assume cs:_eh_frame
		;org 400AB0h
		db  14h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db  7Ah	; z
		db  52h	; R
		db    0
		db    1
		db  78h	; x
		db  10h
		db    1
		db  1Bh
		db  0Ch
		db    7
		db    8
		db  90h	; �
		db    1
		db    7
		db  10h
		db  14h
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db  90h	; �
		db 0FBh	; �
		db 0FFh
		db 0FFh
		db  2Ah	; *
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  14h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db  7Ah	; z
		db  52h	; R
		db    0
		db    1
		db  78h	; x
		db  10h
		db    1
		db  1Bh
		db  0Ch
		db    7
		db    8
		db  90h	; �
		db    1
		db    0
		db    0
		db  24h	; $
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db 0D0h	; �
		db 0FAh	; �
		db 0FFh
		db 0FFh
		db  90h	; �
		db    0
		db    0
		db    0
		db    0
		db  0Eh
		db  10h
		db  46h	; F
		db  0Eh
		db  18h
		db  4Ah	; J
		db  0Fh
		db  0Bh
		db  77h	; w
		db    8
		db  80h	; �
		db    0
		db  3Fh	; ?
		db  1Ah
		db  3Bh	; ;
		db  2Ah	; *
		db  33h	; 3
		db  24h	; $
		db  22h	; "
		db    0
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db  44h	; D
		db    0
		db    0
		db    0
		db  25h	; %
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db  24h	; $
		db    0
		db    0
		db    0
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db  5Fh	; _
		db  0Ch
		db    7
		db    8
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db  64h	; d
		db    0
		db    0
		db    0
		db  29h	; )
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db  24h	; $
		db    0
		db    0
		db    0
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db  5Fh	; _
		db  0Ch
		db    7
		db    8
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db  84h	; �
		db    0
		db    0
		db    0
		db  2Dh	; -
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db  14h
		db    0
		db    0
		db    0
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db  4Fh	; O
		db  0Ch
		db    7
		db    8
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db 0A4h	; �
		db    0
		db    0
		db    0
		db  21h	; !
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db  58h	; X
		db    0
		db    0
		db    0
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db    2
		db  53h	; S
		db  0Ch
		db    7
		db    8
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db 0C4h	; �
		db    0
		db    0
		db    0
		db  59h	; Y
		db 0FCh	; �
		db 0FFh
		db 0FFh
		db  16h
		db    1
		db    0
		db    0
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db    3
		db  11h
		db    1
		db  0Ch
		db    7
		db    8
		db    0
		db  2Ch	; ,
		db    0
		db    0
		db    0
		db 0E4h	; �
		db    0
		db    0
		db    0
		db  58h	; X
		db 0FDh	; �
		db 0FFh
		db 0FFh
		db  89h	; �
		db    0
		db    0
		db    0
		db    0
		db  45h	; E
		db  86h	; �
		db    6
		db  4Ch	; L
		db  8Ch	; �
		db    5
		db  4Fh	; O
		db  83h	; �
		db    7
		db  4Bh	; K
		db  8Dh	; �
		db    4
		db  48h	; H
		db  8Eh	; �
		db    3
		db  4Ch	; L
		db  0Eh
		db  40h	; @
		db  8Fh	; �
		db    2
		db    2
		db  49h	; I
		db  0Eh
		db    8
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db  14h
		db    0
		db    0
		db    0
		db  14h
		db    1
		db    0
		db    0
		db 0B8h	; �
		db 0FDh	; �
		db 0FFh
		db 0FFh
		db    2
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
_eh_frame	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment 'qword' can not be represented in assembly
_init_array	segment	para public 'DATA' use64
		assume cs:_init_array
		;org 600E10h
__init_array_start dq offset sub_400720	; DATA XREF: __libc_csu_init+11o
_init_array	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment 'qword' can not be represented in assembly
_fini_array	segment	para public 'DATA' use64
		assume cs:_fini_array
		;org 600E18h
__init_array_end dq offset sub_400700	; DATA XREF: __libc_csu_init+5o
_fini_array	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment 'qword' can not be represented in assembly
_jcr		segment	para public 'DATA' use64
		assume cs:_jcr
		;org 600E20h
qword_600E20	dq 0			; DATA XREF: sub_400720r
					; sub_400720+15o
_jcr		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment 'qword' can not be represented in assembly
_got		segment	para public 'DATA' use64
		assume cs:_got
		;org 600FF8h
__gmon_start___ptr dq offset __gmon_start__ ; DATA XREF: _init_proc+4r
_got		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment 'qword' can not be represented in assembly
_got_plt	segment	para public 'DATA' use64
		assume cs:_got_plt
		;org 601000h
_GLOBAL_OFFSET_TABLE_ db    ? ;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
off_601018	dq offset puts		; DATA XREF: _putsr
off_601020	dq offset printf	; DATA XREF: _printfr
off_601028	dq offset __libc_start_main ; DATA XREF: ___libc_start_mainr
off_601030	dq offset fgets		; DATA XREF: _fgetsr
off_601038	dq offset strtoll	; DATA XREF: _strtollr
off_601040	dq offset __gmon_start__ ; DATA	XREF: ___gmon_start__r
off_601048	dq offset fflush	; DATA XREF: _fflushr
off_601050	dq offset __isoc99_sscanf ; DATA XREF: ___isoc99_sscanfr
_got_plt	ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
; Segment alignment '32byte' can not be represented in assembly
_data		segment	para public 'DATA' use64
		assume cs:_data
		;org 601060h
		public __data_start ; weak
__data_start	db    0			; Alternative name is '__data_start'
					; data_start
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		public __dso_handle
__dso_handle	db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		public parsers
; parser parsers[3]
parsers		parser <offset from_hex, offset	aParseFromHex> ; "parse	from hex"
		parser <offset from_dec, offset	aParseFromDec>
		parser <offset from_ptr, offset	aParseFromPoint>
_data		ends

; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
; Segment alignment '32byte' can not be represented in assembly
_bss		segment	para public 'BSS' use64
		assume cs:_bss
		;org 6010C0h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		public stdout@@GLIBC_2_2_5
; FILE *stdout
stdout@@GLIBC_2_2_5 dq ?		; DATA XREF: main+76r main+F1r
					; Alternative name is 'stdout'
					; Copy of shared data
		public stdin@@GLIBC_2_2_5
; FILE *stdin
stdin@@GLIBC_2_2_5 dq ?			; DATA XREF: main+12r main+85r
					; Alternative name is 'stdin'
					; Copy of shared data
byte_6010D0	db ?			; DATA XREF: sub_400700r
					; sub_400700+13w
		align 20h
		public buf
; char buf[1024]
buf		db 400h	dup(?)		; DATA XREF: main+21o main+37o ...
_bss		ends

; ===========================================================================

; Segment type:	Externs
; extern
		extrn puts@@GLIBC_2_2_5:near
		extrn printf@@GLIBC_2_2_5:near
		extrn __libc_start_main@@GLIBC_2_2_5:near
		extrn fgets@@GLIBC_2_2_5:near
		extrn strtoll@@GLIBC_2_2_5:near
		extrn fflush@@GLIBC_2_2_5:near
		extrn __isoc99_sscanf@@GLIBC_2_7:near
; int puts(const char *s)
		extrn puts:near		; DATA XREF: .got.plt:off_601018o
; int printf(const char	*format, ...)
		extrn printf:near	; DATA XREF: .got.plt:off_601020o
		extrn __libc_start_main:near ; DATA XREF: .got.plt:off_601028o
; char *fgets(char *s, int n, FILE *stream)
		extrn fgets:near	; DATA XREF: .got.plt:off_601030o
; __int64 strtoll(const	char *nptr, char **endptr, int base)
		extrn strtoll:near	; DATA XREF: .got.plt:off_601038o
; int fflush(FILE *stream)
		extrn fflush:near	; DATA XREF: .got.plt:off_601048o
		extrn __isoc99_sscanf:near ; DATA XREF:	.got.plt:off_601050o
		extrn _ITM_deregisterTMCloneTable ; weak
		extrn __gmon_start__ ; weak ; DATA XREF: .got:__gmon_start___ptro
					; .got.plt:off_601040o
		extrn _Jv_RegisterClasses ; weak
		extrn _ITM_registerTMCloneTable	; weak


		end _start