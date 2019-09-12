[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[OPTIMIZE 1]
[OPTION 1]
[BITS 32]
	EXTERN	___main
	EXTERN	__alloca
	EXTERN	_printf
	EXTERN	_system
[FILE "main.c"]
[SECTION .data]
LC0:
	DB	"HelloWorld",0x0A,0x00
LC1:
	DB	"pause",0x00
[SECTION .text]
	ALIGN	2
	GLOBAL	_main
_main:
	PUSH	EBP
	MOV	EBP,ESP
	SUB	ESP,8
	AND	ESP,-16
	MOV	EAX,0
	MOV	DWORD [-4+EBP],EAX
	MOV	EAX,DWORD [-4+EBP]
	CALL	__alloca
	CALL	___main
	SUB	ESP,12
	PUSH	LC0
	CALL	_printf
	ADD	ESP,16
	SUB	ESP,12
	PUSH	LC1
	CALL	_system
	ADD	ESP,16
	MOV	EAX,0
	LEAVE
	RET
main.c:1:19:	
main.c:2:20:	
mainmain.c:7:2:warning:	
