opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_ADC_Read
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_LCD_Cursor
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_WriteString
	FNCALL	_main,___ftmul
	FNCALL	_main,___lwtoft
	FNCALL	_main,_ftoa
	FNCALL	_main,_strlen
	FNCALL	_ftoa,___ftge
	FNCALL	_ftoa,___ftmul
	FNCALL	_ftoa,___ftneg
	FNCALL	_ftoa,___ftsub
	FNCALL	_ftoa,___fttol
	FNCALL	_ftoa,___lltoft
	FNCALL	_ftoa,_sprintf
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNCALL	_LCD_Clear,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_input
	global	_ADCResult
	global	_display
	global	_status
	global	ftoa@buf
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_PORTE
_PORTE	set	0x9
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_ADCON1bits
_ADCON1bits	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE
_TRISE	set	0x89
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	46	;'.'
	retlw	37	;'%'
	retlw	54	;'6'
	retlw	46	;'.'
	retlw	54	;'6'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"Finau.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_input:
       ds      3

_ADCResult:
       ds      2

_display:
       ds      1

_status:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
ftoa@buf:
       ds      17

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+08h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+011h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_isdigit:	; 1 bit 
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
?_LCD_Clear:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_ADC_Init:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
??_isdigit:	; 0 bytes @ 0x4
?_LCD_Cursor:	; 0 bytes @ 0x4
??_LCD_WriteCmd:	; 0 bytes @ 0x4
??_LCD_WriteData:	; 0 bytes @ 0x4
??_ADC_Init:	; 0 bytes @ 0x4
?_ADC_Read:	; 0 bytes @ 0x4
?___ftge:	; 1 bit 
??___lldiv:	; 0 bytes @ 0x4
	global	?_strlen
?_strlen:	; 2 bytes @ 0x4
	global	?___wmul
?___wmul:	; 2 bytes @ 0x4
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x4
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x4
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x4
	global	_isdigit$512
_isdigit$512:	; 1 bytes @ 0x4
	global	ADC_Read@channel
ADC_Read@channel:	; 2 bytes @ 0x4
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x4
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x4
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x4
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x4
	ds	1
??_LCD_Cursor:	; 0 bytes @ 0x5
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x5
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x5
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x5
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x5
	ds	1
??_strlen:	; 0 bytes @ 0x6
?_LCD_WriteString:	; 0 bytes @ 0x6
??_LCD_Clear:	; 0 bytes @ 0x6
??_LCD_Init:	; 0 bytes @ 0x6
??_ADC_Read:	; 0 bytes @ 0x6
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x6
	global	LCD_WriteString@Str
LCD_WriteString@Str:	; 2 bytes @ 0x6
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x6
	ds	1
??___ftneg:	; 0 bytes @ 0x7
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x7
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x7
	ds	1
??_LCD_WriteString:	; 0 bytes @ 0x8
??___wmul:	; 0 bytes @ 0x8
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x8
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x8
	ds	1
??___lltoft:	; 0 bytes @ 0x9
??___lwtoft:	; 0 bytes @ 0x9
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x9
	ds	1
??___ftsub:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftpack:	; 0 bytes @ 0x0
??___ftge:	; 0 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	strlen@s
strlen@s:	; 1 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x1
	ds	2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x3
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x3
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x3
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x3
	ds	1
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	2
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x6
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x6
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x6
	ds	1
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x7
	ds	1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x8
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x8
	ds	1
??___ftadd:	; 0 bytes @ 0x9
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x9
	ds	3
??___ftmul:	; 0 bytes @ 0xC
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0xC
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xD
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xE
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xF
	ds	1
??___llmod:	; 0 bytes @ 0x10
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x10
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x10
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x10
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x11
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x11
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x12
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x12
	ds	1
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x13
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x14
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x15
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x16
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x16
	ds	4
??___fttol:	; 0 bytes @ 0x1A
	ds	1
??_sprintf:	; 0 bytes @ 0x1B
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1E
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1F
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x20
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x21
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x22
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x23
	ds	3
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x26
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x27
	ds	2
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x29
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x2B
	ds	1
?_ftoa:	; 1 bytes @ 0x2C
	global	ftoa@f
ftoa@f:	; 3 bytes @ 0x2C
	ds	3
	global	ftoa@status
ftoa@status:	; 1 bytes @ 0x2F
	ds	1
??_ftoa:	; 0 bytes @ 0x30
	ds	1
	global	ftoa@rem
ftoa@rem:	; 4 bytes @ 0x31
	ds	4
	global	ftoa@l
ftoa@l:	; 4 bytes @ 0x35
	ds	4
	global	ftoa@cp
ftoa@cp:	; 1 bytes @ 0x39
	ds	1
??_main:	; 0 bytes @ 0x3A
	ds	3
	global	main@tam
main@tam:	; 2 bytes @ 0x3D
	ds	2
;!
;!Data Sizes:
;!    Strings     28
;!    Constant    40
;!    Data        0
;!    BSS         25
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80     63      71
;!    BANK1            80      0      17
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    ftoa@status	PTR int  size(1) Largest target is 2
;!		 -> status(BANK0[2]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 17
;!		 -> NULL(NULL[0]), ftoa@buf(BANK1[17]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 17
;!		 -> NULL(NULL[0]), ftoa@buf(BANK1[17]), 
;!
;!    ftoa@cp	PTR unsigned char  size(1) Largest target is 17
;!		 -> ftoa@buf(BANK1[17]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_2(CODE[11]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 17
;!		 -> ftoa@buf(BANK1[17]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S304$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    sp__ftoa	PTR unsigned char  size(1) Largest target is 17
;!		 -> ftoa@buf(BANK1[17]), 
;!
;!    display	PTR unsigned char  size(1) Largest target is 17
;!		 -> NULL(NULL[0]), ftoa@buf(BANK1[17]), 
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> NULL(NULL[0]), ftoa@buf(BANK1[17]), STR_1(CODE[17]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lwtoft
;!    _main->_strlen
;!    _ftoa->___ftge
;!    _ftoa->___lltoft
;!    _sprintf->___lldiv
;!    _sprintf->___wmul
;!    ___llmod->___lldiv
;!    ___lltoft->___ftpack
;!    ___ftsub->___lltoft
;!    ___ftadd->___ftpack
;!    ___ftmul->___lwtoft
;!    ___lwtoft->___ftpack
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Init->_LCD_WriteCmd
;!    _LCD_Clear->_LCD_WriteCmd
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_ftoa
;!    _ftoa->_sprintf
;!    _sprintf->___llmod
;!    ___llmod->___lldiv
;!    ___lltoft->___ftpack
;!    ___fttol->___ftmul
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftpack
;!    ___ftmul->___lwtoft
;!    ___lwtoft->___ftpack
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0   16660
;!                                             58 BANK0      5     5      0
;!                           _ADC_Init
;!                           _ADC_Read
;!                          _LCD_Clear
;!                         _LCD_Cursor
;!                           _LCD_Init
;!                    _LCD_WriteString
;!                            ___ftmul
;!                           ___lwtoft
;!                               _ftoa
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               8     6      2     120
;!                                              4 COMMON     6     4      2
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ftoa                                                14    10      4   11105
;!                                             44 BANK0     14    10      4
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                           ___lltoft
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             26    17      9    1998
;!                                             18 BANK0     26    17      9
;!                            ___lldiv
;!                            ___llmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (3) _isdigit                                              2     2      0      68
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     348
;!                                              4 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___llmod                                             10     2      8     287
;!                                              8 BANK0     10     2      8
;!                            ___lldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lldiv                                             14     6      8     290
;!                                              4 COMMON     6     6      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    2181
;!                                              9 COMMON     1     1      0
;!                                              3 BANK0      5     1      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     380
;!                                             22 BANK0     14    10      4
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    3189
;!                                             16 BANK0      6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3016
;!                                              3 BANK0     13     7      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     109
;!                                              4 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    2630
;!                                              6 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     264
;!                                              4 COMMON     6     0      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             4     1      3    2134
;!                                              9 COMMON     1     1      0
;!                                              3 BANK0      3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2048
;!                                              4 COMMON     5     0      5
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_WriteString                                      2     0      2     195
;!                                              6 COMMON     2     0      2
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteData                                        2     2      0      22
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      22
;!                                              6 COMMON     2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Cursor                                           3     2      1     322
;!                                              4 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Clear                                            2     2      0      22
;!                                              6 COMMON     2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      22
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Read                                             3     1      2      86
;!                                              4 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!   _ADC_Read
;!   _LCD_Clear
;!     _LCD_WriteCmd
;!   _LCD_Cursor
;!   _LCD_Init
;!     _LCD_WriteCmd
;!   _LCD_WriteString
;!     _LCD_WriteData
;!   ___ftmul
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___lwtoft
;!     ___ftpack
;!   _ftoa
;!     ___ftge
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg
;!     ___ftsub
;!       ___ftadd
;!         ___ftpack
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     ___lltoft
;!       ___ftpack
;!     _sprintf
;!       ___lldiv
;!       ___llmod
;!         ___lldiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _strlen
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      62       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     3F      47       5       88.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0      11       7       21.3%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      62      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 228 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tam             2   61[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_Init
;;		_ADC_Read
;;		_LCD_Clear
;;		_LCD_Cursor
;;		_LCD_Init
;;		_LCD_WriteString
;;		___ftmul
;;		___lwtoft
;;		_ftoa
;;		_strlen
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	228
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	228
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	230
	
l1756:	
;final.c: 230: TRISA = 0b00011111;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	231
	
l1758:	
;final.c: 231: PORTA = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	232
	
l1760:	
;final.c: 232: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	233
	
l1762:	
;final.c: 233: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	234
	
l1764:	
;final.c: 234: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	235
	
l1766:	
;final.c: 235: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	236
	
l1768:	
;final.c: 236: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	237
	
l1770:	
;final.c: 237: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	238
	
l1772:	
;final.c: 238: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	239
	
l1774:	
;final.c: 239: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	241
	
l1776:	
;final.c: 241: ADC_Init();
	fcall	_ADC_Init
	line	243
	
l1778:	
;final.c: 243: LCD_Init();
	fcall	_LCD_Init
	line	244
	
l1780:	
;final.c: 244: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	246
	
l1782:	
;final.c: 246: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	97
movwf	((??_main+0)+0+1),f
	movlw	110
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
	decfsz	((??_main+0)+0+2),f
	goto	u2237
	nop
opt asmopt_on

	line	248
	
l1784:	
;final.c: 248: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	249
	
l1786:	
;final.c: 249: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	251
	
l1788:	
;final.c: 251: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	252
	
l1790:	
;final.c: 252: LCD_WriteString("Inicializando...");
	movlw	low((STR_1)-__stringbase)
	movwf	(LCD_WriteString@Str)
	movlw	80h
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	254
	
l1792:	
;final.c: 254: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	97
movwf	((??_main+0)+0+1),f
	movlw	110
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
	decfsz	((??_main+0)+0+2),f
	goto	u2247
	nop
opt asmopt_on

	goto	l1794
	line	256
;final.c: 256: while(1)
	
l89:	
	line	258
	
l1794:	
;final.c: 257: {
;final.c: 258: ADC_Read(1);
	movlw	low(01h)
	movwf	(ADC_Read@channel)
	movlw	high(01h)
	movwf	((ADC_Read@channel))+1
	fcall	_ADC_Read
	line	260
	
l1796:	
;final.c: 260: ADCResult = ((ADRESH << 8) + ADRESL);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	clrf	(_ADCResult+1)
	addwf	(_ADCResult+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ADCResult)
	addwf	(_ADCResult)

	line	261
	
l1798:	
;final.c: 261: input = ADCResult * 0.097751710655;
	movlw	0x32
	movwf	(___ftmul@f1)
	movlw	0xc8
	movwf	(___ftmul@f1+1)
	movlw	0x3d
	movwf	(___ftmul@f1+2)
	movf	(_ADCResult+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_ADCResult),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_input)
	movf	(1+(?___ftmul)),w
	movwf	(_input+1)
	movf	(2+(?___ftmul)),w
	movwf	(_input+2)
	line	280
	
l1800:	
;final.c: 280: display = ftoa(input, &status);
	movf	(_input),w
	movwf	(ftoa@f)
	movf	(_input+1),w
	movwf	(ftoa@f+1)
	movf	(_input+2),w
	movwf	(ftoa@f+2)
	movlw	(_status)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(ftoa@status)
	fcall	_ftoa
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_display)
	line	282
	
l1802:	
;final.c: 282: LCD_Clear();
	fcall	_LCD_Clear
	line	283
	
l1804:	
;final.c: 283: LCD_Cursor(0,0);
	clrf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	285
	
l1806:	
;final.c: 285: LCD_Cursor(0,9);
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	286
	
l1808:	
;final.c: 286: int tam = strlen(display);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_display),w
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@tam+1)
	addwf	(main@tam+1)
	movf	(0+(?_strlen)),w
	clrf	(main@tam)
	addwf	(main@tam)

	line	287
	
l1810:	
;final.c: 287: tam -=4;
	movlw	low(-4)
	addwf	(main@tam),f
	skipnc
	incf	(main@tam+1),f
	movlw	high(-4)
	addwf	(main@tam+1),f
	line	288
	
l1812:	
;final.c: 288: display[tam] = '%';
	movlw	(025h)
	movwf	(??_main+0)+0
	movf	(main@tam),w
	addwf	(_display),w
	movwf	(??_main+1)+0
	movf	0+(??_main+1)+0,w
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	290
	
l1814:	
;final.c: 290: LCD_WriteString(display);
	movf	(_display),w
	movwf	(LCD_WriteString@Str)
	movlw	(0x0)
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	292
	
l1816:	
;final.c: 292: _delay((unsigned long)((100)*(18432000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	87
movwf	((??_main+0)+0+1),f
	movlw	110
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
	decfsz	((??_main+0)+0+2),f
	goto	u2257
opt asmopt_on

	goto	l1794
	line	293
	
l90:	
	line	256
	goto	l1794
	
l91:	
	line	294
	
l92:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> NULL(0), ftoa@buf(17), 
;; Auto vars:     Size  Location     Type
;;  s               1    0[BANK0 ] PTR const unsigned char 
;;		 -> NULL(0), ftoa@buf(17), 
;;  cp              1    1[BANK0 ] PTR const unsigned char 
;;		 -> NULL(0), ftoa@buf(17), 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6       2       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
global __ptext1
__ptext1:	;psect for function _strlen
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	stack 6
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
;strlen@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strlen@s)
	line	8
	
l1742:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l1746
	
l592:	
	line	10
	
l1744:	
	movlw	(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	goto	l1746
	line	11
	
l591:	
	line	9
	
l1746:	
	movf	(strlen@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l1744
u2220:
	goto	l1748
	
l593:	
	line	12
	
l1748:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	((0x0))
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	((0x0))
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(?_strlen)
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(?_strlen)
	goto	l594
	
l1750:	
	line	13
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_ftoa

;; *************** function _ftoa *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftoa.c"
;; Parameters:    Size  Location     Type
;;  f               3   44[BANK0 ] float 
;;  status          1   47[BANK0 ] PTR int 
;;		 -> status(2), 
;; Auto vars:     Size  Location     Type
;;  l               4   53[BANK0 ] unsigned long 
;;  rem             4   49[BANK0 ] unsigned long 
;;  cp              1   57[BANK0 ] PTR unsigned char 
;;		 -> ftoa@buf(17), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lltoft
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftoa.c"
	line	6
global __ptext2
__ptext2:	;psect for function _ftoa
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftoa.c"
	line	6
	global	__size_of_ftoa
	__size_of_ftoa	equ	__end_of_ftoa-_ftoa
	
_ftoa:	
;incstack = 0
	opt	stack 3
; Regs used in _ftoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	9
	
l1720:	
	movlw	(ftoa@buf)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ftoa+0)+0
	movf	(??_ftoa+0)+0,w
	movwf	(ftoa@cp)
	line	12
	
l1722:	
	movf	(ftoa@f),w
	movwf	(___ftge@ff1)
	movf	(ftoa@f+1),w
	movwf	(___ftge@ff1+1)
	movf	(ftoa@f+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2211
	goto	u2210
u2211:
	goto	l1730
u2210:
	line	13
	
l1724:	
	movlw	(02Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ftoa+0)+0
	movf	(ftoa@cp),w
	movwf	fsr0
	movf	(??_ftoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1726:	
	movlw	(01h)
	movwf	(??_ftoa+0)+0
	movf	(??_ftoa+0)+0,w
	addwf	(ftoa@cp),f
	line	14
	
l1728:	
	movf	(ftoa@f),w
	movwf	(___ftneg@f1)
	movf	(ftoa@f+1),w
	movwf	(___ftneg@f1+1)
	movf	(ftoa@f+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ftoa@f)
	movf	(1+(?___ftneg)),w
	movwf	(ftoa@f+1)
	movf	(2+(?___ftneg)),w
	movwf	(ftoa@f+2)
	goto	l1730
	line	15
	
l464:	
	line	16
	
l1730:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ftoa@f),w
	movwf	(___fttol@f1)
	movf	(ftoa@f+1),w
	movwf	(___fttol@f1+1)
	movf	(ftoa@f+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(ftoa@l+3)
	movf	(2+(?___fttol)),w
	movwf	(ftoa@l+2)
	movf	(1+(?___fttol)),w
	movwf	(ftoa@l+1)
	movf	(0+(?___fttol)),w
	movwf	(ftoa@l)

	line	17
	
l1732:	
	movf	(ftoa@l+3),w
	movwf	(___lltoft@c+3)
	movf	(ftoa@l+2),w
	movwf	(___lltoft@c+2)
	movf	(ftoa@l+1),w
	movwf	(___lltoft@c+1)
	movf	(ftoa@l),w
	movwf	(___lltoft@c)

	fcall	___lltoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lltoft)),w
	movwf	(___ftsub@f2)
	movf	(1+(?___lltoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___lltoft)),w
	movwf	(___ftsub@f2+2)
	movf	(ftoa@f),w
	movwf	(___ftsub@f1)
	movf	(ftoa@f+1),w
	movwf	(___ftsub@f1+1)
	movf	(ftoa@f+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	movwf	(ftoa@f)
	movf	(1+(?___ftsub)),w
	movwf	(ftoa@f+1)
	movf	(2+(?___ftsub)),w
	movwf	(ftoa@f+2)
	line	18
	
l1734:	
	movf	(ftoa@f),w
	movwf	(___ftmul@f2)
	movf	(ftoa@f+1),w
	movwf	(___ftmul@f2+1)
	movf	(ftoa@f+2),w
	movwf	(___ftmul@f2+2)
	movlw	0x24
	movwf	(___ftmul@f1)
	movlw	0x74
	movwf	(___ftmul@f1+1)
	movlw	0x49
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(ftoa@rem+3)
	movf	(2+(?___fttol)),w
	movwf	(ftoa@rem+2)
	movf	(1+(?___fttol)),w
	movwf	(ftoa@rem+1)
	movf	(0+(?___fttol)),w
	movwf	(ftoa@rem)

	line	19
	
l1736:	
	movlw	((STR_2)-__stringbase)&0ffh
	movwf	(??_ftoa+0)+0
	movf	(??_ftoa+0)+0,w
	movwf	(sprintf@f)
	movf	(ftoa@l+3),w
	movwf	3+(?_sprintf)+01h
	movf	(ftoa@l+2),w
	movwf	2+(?_sprintf)+01h
	movf	(ftoa@l+1),w
	movwf	1+(?_sprintf)+01h
	movf	(ftoa@l),w
	movwf	0+(?_sprintf)+01h

	movf	(ftoa@rem+3),w
	movwf	3+(?_sprintf)+05h
	movf	(ftoa@rem+2),w
	movwf	2+(?_sprintf)+05h
	movf	(ftoa@rem+1),w
	movwf	1+(?_sprintf)+05h
	movf	(ftoa@rem),w
	movwf	0+(?_sprintf)+05h

	movf	(ftoa@cp),w
	fcall	_sprintf
	line	20
	
l1738:	
	movlw	(ftoa@buf)&0ffh
	goto	l465
	
l1740:	
	line	21
	
l465:	
	return
	opt stack 0
GLOBAL	__end_of_ftoa
	__end_of_ftoa:
	signat	_ftoa,8313
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> ftoa@buf(17), 
;;  f               1   18[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(11), 
;; Auto vars:     Size  Location     Type
;;  sp              1   38[BANK0 ] PTR unsigned char 
;;		 -> ftoa@buf(17), 
;;  _val            4   34[BANK0 ] struct .
;;  prec            2   41[BANK0 ] int 
;;  width           2   39[BANK0 ] int 
;;  c               1   43[BANK0 ] char 
;;  ap              1   33[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  flag            1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       9       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lldiv
;;		___llmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext3
__ptext3:	;psect for function _sprintf
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l1414:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 504: int prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned long _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l1512
	
l104:	
	line	547
	
l1416:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u1661
	goto	u1660
u1661:
	goto	l1422
u1660:
	line	550
	
l1418:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1420:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l1512
	line	552
	
l105:	
	line	555
	
l1422:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	606
	
l1424:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u1671
	goto	u1670
u1671:
	goto	l1436
u1670:
	line	607
	
l1426:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1428
	line	608
;doprnt.c: 608: do {
	
l107:	
	line	609
	
l1428:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	movwf	(___wmul@multiplier)
	movlw	high(0Ah)
	movwf	((___wmul@multiplier))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@width+1),w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(sprintf@width),w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width+1)
	addwf	(sprintf@width+1)
	movf	(0+(?___wmul)),w
	clrf	(sprintf@width)
	addwf	(sprintf@width)

	line	610
	
l1430:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??_sprintf+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)+0)+1
	movf	0+(??_sprintf+0)+0,w
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movf	1+(??_sprintf+0)+0,w
	addwf	(sprintf@width+1),f
	
l1432:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l1434:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1681
	goto	u1680
u1681:
	goto	l1428
u1680:
	goto	l1436
	
l108:	
	goto	l1436
	line	617
	
l106:	
	line	620
	
l1436:	
;doprnt.c: 617: }
;doprnt.c: 620: if(*f == '.') {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l1448
u1690:
	line	622
	
l1438:	
;doprnt.c: 622: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	630
	
l1440:	
;doprnt.c: 629: {
;doprnt.c: 630: prec = 0;
	clrf	(sprintf@prec)
	clrf	(sprintf@prec+1)
	line	631
;doprnt.c: 631: while(isdigit((unsigned)*f))
	goto	l1446
	
l111:	
	line	632
	
l1442:	
;doprnt.c: 632: prec = prec*10 + *f++ - '0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@prec+1),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(sprintf@prec),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@prec)
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@prec)
	
l1444:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	goto	l1446
	
l110:	
	line	631
	
l1446:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u1701
	goto	u1700
u1701:
	goto	l1442
u1700:
	goto	l1454
	
l112:	
	line	634
;doprnt.c: 633: }
;doprnt.c: 634: } else {
	goto	l1454
	
l109:	
	line	635
	
l1448:	
;doprnt.c: 635: prec = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@prec)
	clrf	(sprintf@prec+1)
	goto	l1454
	line	639
	
l113:	
	goto	l1454
	line	642
;doprnt.c: 639: }
;doprnt.c: 642: loop:
	
l114:	
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l1454
	line	646
;doprnt.c: 646: case 0:
	
l116:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l1514
	line	650
;doprnt.c: 650: case 'l':
	
l118:	
	line	652
;doprnt.c: 652: flag |= 0x10;
	bsf	(sprintf@flag)+(4/8),(4)&7
	line	653
;doprnt.c: 653: goto loop;
	goto	l1454
	line	811
;doprnt.c: 811: default:
	
l119:	
	line	822
;doprnt.c: 822: continue;
	goto	l1512
	line	826
;doprnt.c: 826: case 'u':
	
l120:	
	line	827
	
l1450:	
;doprnt.c: 827: flag |= 0xC0;
	movlw	(0C0h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	828
;doprnt.c: 828: break;
	goto	l121
	line	831
	
l1452:	
;doprnt.c: 831: }
	goto	l121
	line	644
	
l115:	
	
l1454:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1514
	xorlw	108^0	; case 108
	skipnz
	goto	l118
	xorlw	117^108	; case 117
	skipnz
	goto	l1450
	goto	l1512
	opt asmopt_on

	line	831
	
l121:	
	line	1290
;doprnt.c: 1282: {
;doprnt.c: 1290: if(flag & 0x10)
	btfss	(sprintf@flag),(4)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l1460
u1710:
	line	1291
	
l1456:	
;doprnt.c: 1291: _val._val = (*(unsigned long *)__va_arg((*(unsigned long **)ap), (unsigned long)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+2)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+3)
	
l1458:	
	movlw	(04h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	goto	l1464
	line	1292
	
l122:	
	line	1295
	
l1460:	
;doprnt.c: 1292: else
;doprnt.c: 1295: _val._val = (*(unsigned *)__va_arg((*(unsigned **)ap), (unsigned)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	movf	0+(??_sprintf+0)+0,w
	movwf	(sprintf@_val)
	movf	1+(??_sprintf+0)+0,w
	movwf	((sprintf@_val))+1
	clrf	2+((sprintf@_val))
	clrf	3+((sprintf@_val))
	
l1462:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	goto	l1464
	
l123:	
	line	1299
	
l1464:	
;doprnt.c: 1296: }
;doprnt.c: 1299: if(prec == 0 && _val._val == 0)
	movf	((sprintf@prec+1)),w
	iorwf	((sprintf@prec)),w
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l1470
u1720:
	
l1466:	
	movf	(sprintf@_val+3),w
	iorwf	(sprintf@_val+2),w
	iorwf	(sprintf@_val+1),w
	iorwf	(sprintf@_val),w
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l1470
u1730:
	line	1300
	
l1468:	
;doprnt.c: 1300: prec++;
	movlw	low(01h)
	addwf	(sprintf@prec),f
	skipnc
	incf	(sprintf@prec+1),f
	movlw	high(01h)
	addwf	(sprintf@prec+1),f
	goto	l1470
	
l124:	
	line	1314
	
l1470:	
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	0Ah
	skipz
	goto	u1741
	goto	u1740
u1741:
	goto	l1474
u1740:
	goto	l1482
	
l1472:	
	goto	l1482
	line	1315
	
l125:	
	
l1474:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u1755:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u1755
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+3),w
	skipz
	goto	u1765
	movf	2+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+2),w
	skipz
	goto	u1765
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u1765
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u1765:
	skipnc
	goto	u1761
	goto	u1760
u1761:
	goto	l1478
u1760:
	goto	l1482
	line	1316
	
l1476:	
;doprnt.c: 1316: break;
	goto	l1482
	
l127:	
	line	1314
	
l1478:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l1480:	
	movf	(sprintf@c),w
	xorlw	0Ah
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l1474
u1770:
	goto	l1482
	
l126:	
	line	1348
	
l1482:	
;doprnt.c: 1348: if(c < prec)
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@prec+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u1785
	movf	(sprintf@prec),w
	subwf	0+(??_sprintf+0)+0,w
u1785:

	skipnc
	goto	u1781
	goto	u1780
u1781:
	goto	l1486
u1780:
	line	1349
	
l1484:	
;doprnt.c: 1349: c = prec;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	goto	l1490
	line	1350
	
l128:	
	
l1486:	
;doprnt.c: 1350: else if(prec < c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	(sprintf@prec+1),w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u1795
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@prec),w
u1795:

	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l1490
u1790:
	line	1351
	
l1488:	
;doprnt.c: 1351: prec = c;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	clrf	(sprintf@prec+1)
	btfsc	(sprintf@prec),7
	decf	(sprintf@prec+1),f
	goto	l1490
	
l130:	
	goto	l1490
	line	1390
	
l129:	
	
l1490:	
;doprnt.c: 1390: if(width > c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u1805
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u1805:

	skipnc
	goto	u1801
	goto	u1800
u1801:
	goto	l1494
u1800:
	line	1391
	
l1492:	
;doprnt.c: 1391: width -= c;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l1496
	line	1392
	
l131:	
	line	1393
	
l1494:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1496
	
l132:	
	line	1437
	
l1496:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u1811
	goto	u1810
u1811:
	goto	l1510
u1810:
	goto	l1498
	line	1438
;doprnt.c: 1438: do
	
l134:	
	line	1439
	
l1498:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1500:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1440
	
l1502:	
;doprnt.c: 1440: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l1498
u1820:
	goto	l1510
	
l135:	
	goto	l1510
	
l133:	
	line	1483
;doprnt.c: 1478: }
;doprnt.c: 1483: while(prec--) {
	goto	l1510
	
l137:	
	line	1498
	
l1504:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u1835:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u1835
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	movf	(sprintf@_val+3),w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2),w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1),w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val),w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lldiv)),w
	movwf	(___llmod@dividend+3)
	movf	(2+(?___lldiv)),w
	movwf	(___llmod@dividend+2)
	movf	(1+(?___lldiv)),w
	movwf	(___llmod@dividend+1)
	movf	(0+(?___lldiv)),w
	movwf	(___llmod@dividend)

	fcall	___llmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l1506:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1508:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1510
	line	1534
	
l136:	
	line	1483
	
l1510:	
	movlw	low(-1)
	addwf	(sprintf@prec),f
	skipnc
	incf	(sprintf@prec+1),f
	movlw	high(-1)
	addwf	(sprintf@prec+1),f
	movlw	high(-1)
	xorwf	((sprintf@prec+1)),w
	skipz
	goto	u1845
	movlw	low(-1)
	xorwf	((sprintf@prec)),w
u1845:

	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l1504
u1840:
	goto	l1512
	
l138:	
	goto	l1512
	line	1542
	
l103:	
	line	545
	
l1512:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l1416
u1850:
	goto	l1514
	
l139:	
	goto	l1514
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l117:	
	line	1547
	
l1514:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l140
	line	1549
	
l1516:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext4
__ptext4:	;psect for function _isdigit
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l1258:	
	clrf	(_isdigit$512)
	
l1260:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1231
	goto	u1230
u1231:
	goto	l1266
u1230:
	
l1262:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l1266
u1240:
	
l1264:	
	clrf	(_isdigit$512)
	incf	(_isdigit$512),f
	goto	l1266
	
l488:	
	
l1266:	
	rrf	(_isdigit$512),w
	
	goto	l489
	
l1268:	
	line	15
	
l489:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    4[COMMON] unsigned int 
;;  multiplicand    2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    8[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___wmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1270:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1272
	line	44
	
l223:	
	line	45
	
l1272:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l224
u1250:
	line	46
	
l1274:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l224:	
	line	47
	movlw	01h
	
u1265:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1265
	line	48
	
l1276:	
	movlw	01h
	
u1275:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1275
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l1272
u1280:
	goto	l1278
	
l225:	
	line	52
	
l1278:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l226
	
l1280:	
	line	53
	
l226:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    8[BANK0 ] unsigned long 
;;  dividend        4   12[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___llmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l1378:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u1601
	goto	u1600
u1601:
	goto	l1394
u1600:
	line	14
	
l1380:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l1384
	
l525:	
	line	16
	
l1382:	
	movlw	01h
	movwf	(??___llmod+0)+0
u1615:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u1615
	line	17
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l1384
	line	18
	
l524:	
	line	15
	
l1384:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l1382
u1620:
	goto	l1386
	
l526:	
	goto	l1386
	line	19
	
l527:	
	line	20
	
l1386:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u1635
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u1635
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u1635
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u1635:
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l1390
u1630:
	line	21
	
l1388:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l1390
	
l528:	
	line	22
	
l1390:	
	movlw	01h
u1645:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u1645

	line	23
	
l1392:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l1386
u1650:
	goto	l1394
	
l529:	
	goto	l1394
	line	24
	
l523:	
	line	25
	
l1394:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l530
	
l1396:	
	line	26
	
l530:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    5[COMMON] unsigned long 
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       8       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lldiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l1354:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	15
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u1531
	goto	u1530
u1531:
	goto	l1374
u1530:
	line	16
	
l1356:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l1360
	
l515:	
	line	18
	
l1358:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u1545:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u1545
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l1360
	line	20
	
l514:	
	line	17
	
l1360:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l1358
u1550:
	goto	l1362
	
l516:	
	goto	l1362
	line	21
	
l517:	
	line	22
	
l1362:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u1565:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u1565
	line	23
	
l1364:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u1575
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u1575
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u1575
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u1575:
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l1370
u1570:
	line	24
	
l1366:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l1368:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l1370
	line	26
	
l518:	
	line	27
	
l1370:	
	movlw	01h
u1585:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u1585

	line	28
	
l1372:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l1362
u1590:
	goto	l1374
	
l519:	
	goto	l1374
	line	29
	
l513:	
	line	30
	
l1374:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l520
	
l1376:	
	line	31
	
l520:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    3[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext8
__ptext8:	;psect for function ___lltoft
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1646:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@exp)
	line	41
	goto	l1650
	
l536:	
	line	42
	
l1648:	
	movlw	01h
u2165:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u2165

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l1650
	line	44
	
l535:	
	line	41
	
l1650:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l1648
u2170:
	goto	l1652
	
l537:	
	line	45
	
l1652:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l538
	
l1654:	
	line	46
	
l538:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   31[BANK0 ] unsigned long 
;;  exp1            1   35[BANK0 ] unsigned char 
;;  sign1           1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   22[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext9
__ptext9:	;psect for function ___fttol
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1602:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l1608
u2060:
	line	50
	
l1604:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l474
	
l1606:	
	goto	l474
	
l473:	
	line	51
	
l1608:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2075:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2070:
	addlw	-1
	skipz
	goto	u2075
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1610:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1612:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1614:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1616:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1618:	
	btfss	(___fttol@exp1),7
	goto	u2081
	goto	u2080
u2081:
	goto	l1628
u2080:
	line	57
	
l1620:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l1626
u2090:
	line	58
	
l1622:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l474
	
l1624:	
	goto	l474
	
l476:	
	goto	l1626
	line	59
	
l477:	
	line	60
	
l1626:	
	movlw	01h
u2105:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2105

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l1626
u2110:
	goto	l1638
	
l478:	
	line	62
	goto	l1638
	
l475:	
	line	63
	
l1628:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2121
	goto	u2120
u2121:
	goto	l1636
u2120:
	line	64
	
l1630:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l474
	
l1632:	
	goto	l474
	
l480:	
	line	65
	goto	l1636
	
l482:	
	line	66
	
l1634:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2135:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2135
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1636
	line	68
	
l481:	
	line	65
	
l1636:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l1634
u2140:
	goto	l1638
	
l483:	
	goto	l1638
	line	69
	
l479:	
	line	70
	
l1638:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2150
	goto	l1642
u2150:
	line	71
	
l1640:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1642
	
l484:	
	line	72
	
l1642:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l474
	
l1644:	
	line	73
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   16[BANK0 ] float 
;;  f1              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext10
__ptext10:	;psect for function ___ftsub
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1596:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l1598:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l470
	
l1600:	
	line	25
	
l470:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;;  f2              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   15[BANK0 ] unsigned char 
;;  exp2            1   14[BANK0 ] unsigned char 
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext11
__ptext11:	;psect for function ___ftadd
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1282:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l1284:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1290
	goto	l1290
u1290:
	
l1286:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l1294
u1300:
	
l1288:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l1294
u1310:
	goto	l1290
	
l399:	
	line	93
	
l1290:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l400
	
l1292:	
	goto	l400
	
l397:	
	line	94
	
l1294:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1320
	goto	l403
u1320:
	
l1296:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1300
u1330:
	
l1298:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l1300
u1340:
	
l403:	
	line	95
	goto	l400
	
l401:	
	line	96
	
l1300:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1302:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l404
u1350:
	line	98
	
l1304:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l404:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l405
u1360:
	line	100
	
l1306:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l405:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1308:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1310:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l1322
u1370:
	goto	l1312
	line	109
	
l407:	
	line	110
	
l1312:	
	movlw	01h
u1385:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1385
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1314:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1391
	goto	u1390
u1391:
	goto	l1320
u1390:
	
l1316:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l1312
u1400:
	goto	l1320
	
l409:	
	goto	l1320
	
l410:	
	line	113
	goto	l1320
	
l412:	
	line	114
	
l1318:	
	movlw	01h
u1415:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1415

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1320
	line	116
	
l411:	
	line	113
	
l1320:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1421
	goto	u1420
u1421:
	goto	l1318
u1420:
	goto	l414
	
l413:	
	line	117
	goto	l414
	
l406:	
	
l1322:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1431
	goto	u1430
u1431:
	goto	l414
u1430:
	goto	l1324
	line	120
	
l416:	
	line	121
	
l1324:	
	movlw	01h
u1445:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1445
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1326:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1451
	goto	u1450
u1451:
	goto	l1332
u1450:
	
l1328:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l1324
u1460:
	goto	l1332
	
l418:	
	goto	l1332
	
l419:	
	line	124
	goto	l1332
	
l421:	
	line	125
	
l1330:	
	movlw	01h
u1475:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1475

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1332
	line	127
	
l420:	
	line	124
	
l1332:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l1330
u1480:
	goto	l414
	
l422:	
	goto	l414
	line	128
	
l415:	
	line	129
	
l414:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l1336
u1490:
	line	131
	
l1334:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1336
	line	133
	
l423:	
	line	134
	
l1336:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l1340
u1500:
	line	136
	
l1338:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1340
	line	138
	
l424:	
	line	139
	
l1340:	
	clrf	(___ftadd@sign)
	line	140
	
l1342:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1511
	addwf	(___ftadd@f2+1),f
u1511:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1512
	addwf	(___ftadd@f2+2),f
u1512:

	line	141
	
l1344:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l1350
u1520:
	line	142
	
l1346:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1348:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1350
	line	145
	
l425:	
	line	146
	
l1350:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l400
	
l1352:	
	line	148
	
l400:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    4[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    4[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext12
__ptext12:	;psect for function ___ftneg
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l1588:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2051
	goto	u2050
u2051:
	goto	l1592
u2050:
	line	18
	
l1590:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1592
	
l456:	
	line	19
	
l1592:	
	goto	l457
	
l1594:	
	line	20
	
l457:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;;  f2              3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   17[BANK0 ] unsigned um
;;  sign            1   21[BANK0 ] unsigned char 
;;  cntr            1   20[BANK0 ] unsigned char 
;;  exp             1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext13
__ptext13:	;psect for function ___ftmul
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1538:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1911
	goto	u1910
u1911:
	goto	l1544
u1910:
	line	68
	
l1540:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l446
	
l1542:	
	goto	l446
	
l445:	
	line	69
	
l1544:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1921
	goto	u1920
u1921:
	goto	l1550
u1920:
	line	70
	
l1546:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l446
	
l1548:	
	goto	l446
	
l447:	
	line	71
	
l1550:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1935:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1930:
	addlw	-1
	skipz
	goto	u1935
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1945:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1940:
	addlw	-1
	skipz
	goto	u1945
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1552:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1554:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1556:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1558:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1560:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1562
	line	135
	
l448:	
	line	136
	
l1562:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1951
	goto	u1950
u1951:
	goto	l1566
u1950:
	line	137
	
l1564:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1961
	addwf	(___ftmul@f3_as_product+1),f
u1961:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1962
	addwf	(___ftmul@f3_as_product+2),f
u1962:

	goto	l1566
	
l449:	
	line	138
	
l1566:	
	movlw	01h
u1975:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1975

	line	139
	
l1568:	
	movlw	01h
u1985:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1985
	line	140
	
l1570:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l1562
u1990:
	goto	l1572
	
l450:	
	line	143
	
l1572:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1574
	line	144
	
l451:	
	line	145
	
l1574:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2001
	goto	u2000
u2001:
	goto	l1578
u2000:
	line	146
	
l1576:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2011
	addwf	(___ftmul@f3_as_product+1),f
u2011:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2012
	addwf	(___ftmul@f3_as_product+2),f
u2012:

	goto	l1578
	
l452:	
	line	147
	
l1578:	
	movlw	01h
u2025:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2025

	line	148
	
l1580:	
	movlw	01h
u2035:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2035

	line	149
	
l1582:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l1574
u2040:
	goto	l1584
	
l453:	
	line	156
	
l1584:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l446
	
l1586:	
	line	157
	
l446:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    4[COMMON] float 
;;  ff2             3    7[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         6       6       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext14
__ptext14:	;psect for function ___ftge
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1518:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l1522
u1860:
	line	7
	
l1520:	
	movlw	low(0800000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1871
	goto	u1872
u1871:
	addwf	(??___ftge+0)+1,f
	
u1872:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1873
	goto	u1874
u1873:
	addwf	(??___ftge+0)+2,f
	
u1874:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l1522
	
l438:	
	line	8
	
l1522:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l1526
u1880:
	line	9
	
l1524:	
	movlw	low(0800000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1891
	goto	u1892
u1891:
	addwf	(??___ftge+0)+1,f
	
u1892:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1893
	goto	u1894
u1893:
	addwf	(??___ftge+0)+2,f
	
u1894:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l1526
	
l439:	
	line	10
	
l1526:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1528:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1530:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1905
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1905
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1905:
	skipnc
	goto	u1901
	goto	u1900
u1901:
	goto	l1534
u1900:
	
l1532:	
	clrc
	
	goto	l440
	
l1224:	
	
l1534:	
	setc
	
	goto	l440
	
l1226:	
	goto	l440
	
l1536:	
	line	13
	
l440:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext15
__ptext15:	;psect for function ___lwtoft
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1752:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l588
	
l1754:	
	line	31
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    4[COMMON] unsigned um
;;  exp             1    7[COMMON] unsigned char 
;;  sign            1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    4[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         5       3       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext16
__ptext16:	;psect for function ___ftpack
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1228:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1120
	goto	l1232
u1120:
	
l1230:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l1238
u1130:
	goto	l1232
	
l380:	
	line	65
	
l1232:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l381
	
l1234:	
	goto	l381
	
l378:	
	line	66
	goto	l1238
	
l383:	
	line	67
	
l1236:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1145:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1145

	goto	l1238
	line	69
	
l382:	
	line	66
	
l1238:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1236
u1150:
	goto	l385
	
l384:	
	line	70
	goto	l385
	
l386:	
	line	71
	
l1240:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1242:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1244:	
	movlw	01h
u1165:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1165

	line	74
	
l385:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l1240
u1170:
	goto	l1248
	
l387:	
	line	75
	goto	l1248
	
l389:	
	line	76
	
l1246:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1185:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1185
	goto	l1248
	line	78
	
l388:	
	line	75
	
l1248:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l1246
u1190:
	
l390:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l391
u1200:
	line	80
	
l1250:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l391:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1252:	
	movf	(___ftpack@exp),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1215:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1210:
	addlw	-1
	skipz
	goto	u1215
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1254:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1220
	goto	l392
u1220:
	line	84
	
l1256:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l392:	
	line	85
	line	86
	
l381:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_LCD_WriteString

;; *************** function _LCD_WriteString *****************
;; Defined at:
;;		line 78 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;  Str             2    6[COMMON] PTR const unsigned char 
;;		 -> NULL(0), ftoa@buf(17), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	78
global __ptext17
__ptext17:	;psect for function _LCD_WriteString
psect	text17
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	78
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	81
	
l1670:	
;final.c: 81: while(*Str != '\0')
	goto	l1676
	
l65:	
	line	83
	
l1672:	
;final.c: 82: {
;final.c: 83: LCD_WriteData(*Str);
	movf	(LCD_WriteString@Str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(LCD_WriteString@Str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_LCD_WriteData
	line	84
	
l1674:	
;final.c: 84: Str++;
	movlw	01h
	addwf	(LCD_WriteString@Str),f
	skipnc
	incf	(LCD_WriteString@Str+1),f
	goto	l1676
	line	86
	
l64:	
	line	81
	
l1676:	
	movf	(LCD_WriteString@Str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(LCD_WriteString@Str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l1672
u2190:
	goto	l67
	
l66:	
	line	89
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteString
	__end_of_LCD_WriteString:
	signat	_LCD_WriteString,4216
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 64 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	64
global __ptext18
__ptext18:	;psect for function _LCD_WriteData
psect	text18
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	64
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	movwf	(LCD_WriteData@Byte)
	line	66
	
l1406:	
;final.c: 66: PORTEbits.RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),0	;volatile
	line	68
	
l1408:	
;final.c: 68: PORTD = Byte;
	movf	(LCD_WriteData@Byte),w
	movwf	(8)	;volatile
	line	70
	
l1410:	
;final.c: 70: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	72
;final.c: 72: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_WriteData+0)+0,f
u2267:
decfsz	(??_LCD_WriteData+0)+0,f
	goto	u2267
opt asmopt_on

	line	74
	
l1412:	
;final.c: 74: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	75
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4216
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 108 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	108
global __ptext19
__ptext19:	;psect for function _LCD_Init
psect	text19
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	108
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	142
	
l1688:	
;final.c: 142: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
movwf	((??_LCD_Init+0)+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)+0),f
u2277:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u2277
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u2277
opt asmopt_on

	line	144
	
l1690:	
;final.c: 144: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	145
	
l1692:	
;final.c: 145: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
movwf	((??_LCD_Init+0)+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)+0),f
u2287:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u2287
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u2287
opt asmopt_on

	line	147
;final.c: 147: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	148
	
l1694:	
;final.c: 148: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
movwf	(??_LCD_Init+0)+0,f
u2297:
decfsz	(??_LCD_Init+0)+0,f
	goto	u2297
opt asmopt_on

	line	150
	
l1696:	
;final.c: 150: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	151
;final.c: 151: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Init+0)+0,f
u2307:
decfsz	(??_LCD_Init+0)+0,f
	goto	u2307
opt asmopt_on

	line	153
	
l1698:	
;final.c: 153: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	154
	
l1700:	
;final.c: 154: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Init+0)+0,f
u2317:
decfsz	(??_LCD_Init+0)+0,f
	goto	u2317
opt asmopt_on

	line	156
;final.c: 156: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	157
	
l1702:	
;final.c: 157: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
movwf	((??_LCD_Init+0)+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)+0),f
u2327:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u2327
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u2327
opt asmopt_on

	line	159
	
l1704:	
;final.c: 159: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	160
;final.c: 160: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Init+0)+0,f
u2337:
decfsz	(??_LCD_Init+0)+0,f
	goto	u2337
opt asmopt_on

	line	162
	
l1706:	
;final.c: 162: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	163
	
l1708:	
;final.c: 163: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Init+0)+0,f
u2347:
decfsz	(??_LCD_Init+0)+0,f
	goto	u2347
opt asmopt_on

	line	164
	
l73:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 27 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	27
global __ptext20
__ptext20:	;psect for function _LCD_Cursor
psect	text20
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	27
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 6
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	movwf	(LCD_Cursor@Row)
	line	29
	
l1656:	
;final.c: 29: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	31
	
l1658:	
;final.c: 31: if (Row == 0)
	movf	(LCD_Cursor@Row),f
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l1662
u2180:
	line	33
	
l1660:	
;final.c: 32: {
;final.c: 33: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	080h
	movwf	(8)	;volatile
	line	34
;final.c: 34: }
	goto	l1664
	line	35
	
l53:	
	line	37
	
l1662:	
;final.c: 35: else
;final.c: 36: {
;final.c: 37: PORTD = 0xC0 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	0C0h
	movwf	(8)	;volatile
	goto	l1664
	line	38
	
l54:	
	line	41
	
l1664:	
;final.c: 38: }
;final.c: 41: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	43
	
l1666:	
;final.c: 43: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Cursor+0)+0,f
u2357:
decfsz	(??_LCD_Cursor+0)+0,f
	goto	u2357
opt asmopt_on

	line	45
	
l1668:	
;final.c: 45: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	46
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8312
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 92 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	92
global __ptext21
__ptext21:	;psect for function _LCD_Clear
psect	text21
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	92
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	94
	
l1678:	
;final.c: 94: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	96
	
l1680:	
;final.c: 96: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
movwf	((??_LCD_Clear+0)+0+1),f
	movlw	247
movwf	((??_LCD_Clear+0)+0),f
u2367:
	decfsz	((??_LCD_Clear+0)+0),f
	goto	u2367
	decfsz	((??_LCD_Clear+0)+0+1),f
	goto	u2367
opt asmopt_on

	line	98
	
l1682:	
;final.c: 98: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	100
;final.c: 100: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Clear+0)+0,f
u2377:
decfsz	(??_LCD_Clear+0)+0,f
	goto	u2377
opt asmopt_on

	line	102
	
l1684:	
;final.c: 102: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	104
	
l1686:	
;final.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Clear+0)+0,f
u2387:
decfsz	(??_LCD_Clear+0)+0,f
	goto	u2387
opt asmopt_on

	line	105
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,88
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 49 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Clear
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	49
global __ptext22
__ptext22:	;psect for function _LCD_WriteCmd
psect	text22
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	49
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	movwf	(LCD_WriteCmd@Byte)
	line	51
	
l1398:	
;final.c: 51: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	53
	
l1400:	
;final.c: 53: PORTD = Byte;
	movf	(LCD_WriteCmd@Byte),w
	movwf	(8)	;volatile
	line	56
	
l1402:	
;final.c: 56: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	58
;final.c: 58: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_WriteCmd+0)+0,f
u2397:
decfsz	(??_LCD_WriteCmd+0)+0,f
	goto	u2397
opt asmopt_on

	line	60
	
l1404:	
;final.c: 60: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	61
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4216
	global	_ADC_Read

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 188 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;  channel         2    4[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	188
global __ptext23
__ptext23:	;psect for function _ADC_Read
psect	text23
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	188
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Read: [wreg+status,2+status,0]
	line	190
	
l1712:	
;final.c: 190: ADCON0bits.CHS = channel;
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	rlf	(??_ADC_Read+0)+0,f
	rlf	(??_ADC_Read+0)+0,f
	rlf	(??_ADC_Read+0)+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	xorwf	(??_ADC_Read+0)+0,w
	andlw	not (((1<<3)-1)<<3)
	xorwf	(??_ADC_Read+0)+0,w
	movwf	(31)	;volatile
	line	191
	
l1714:	
;final.c: 191: ADCON0bits.ADON = 1;
	bsf	(31),0	;volatile
	line	193
	
l1716:	
;final.c: 193: _delay((unsigned long)((25)*(18432000/4000000.0)));
	opt asmopt_off
movlw	38
movwf	(??_ADC_Read+0)+0,f
u2407:
decfsz	(??_ADC_Read+0)+0,f
	goto	u2407
opt asmopt_on

	line	195
	
l1718:	
;final.c: 195: ADCON0bits.GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31),2	;volatile
	line	196
;final.c: 196: while(ADCON0bits.GO);
	goto	l79
	
l80:	
	
l79:	
	btfsc	(31),2	;volatile
	goto	u2201
	goto	u2200
u2201:
	goto	l79
u2200:
	
l81:	
	line	198
;final.c: 198: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	line	199
	
l82:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
	signat	_ADC_Read,4216
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 168 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	168
global __ptext24
__ptext24:	;psect for function _ADC_Init
psect	text24
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	168
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Init: []
	line	171
	
l1710:	
;final.c: 171: ADCON1bits.ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(159)^080h,7	;volatile
	line	172
;final.c: 172: ADCON1bits.PCFG3 = 0;
	bcf	(159)^080h,3	;volatile
	line	173
;final.c: 173: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	174
;final.c: 174: ADCON1bits.PCFG1 = 0;
	bcf	(159)^080h,1	;volatile
	line	175
;final.c: 175: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	178
;final.c: 178: ADCON0bits.ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31),7	;volatile
	line	179
;final.c: 179: ADCON0bits.ADCS0 = 0;
	bcf	(31),6	;volatile
	line	182
;final.c: 182: PIE1bits.ADIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,6	;volatile
	line	183
;final.c: 183: PIR1bits.ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),6	;volatile
	line	184
	
l76:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 203 in file "C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	203
global __ptext25
__ptext25:	;psect for function _ISR
psect	text25
	file	"C:\Users\Ricardo\Desktop\Trabalho Final Micro\mplab\final.c"
	line	203
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _ISR: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text25
	line	206
	
i1l1160:	
;final.c: 206: if (PIR1bits.ADIF == 1)
	movf	(12),w	;volatile
	goto	i1l86
	line	223
;final.c: 207: {
	
i1l85:	
	line	224
	
i1l86:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
