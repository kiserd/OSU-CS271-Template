TITLE Program Template     (template.asm)

; Author:
; Last Modified:
; OSU email address: 
; Course number/section:
; Project Number:                 Due Date:
; Description:

INCLUDE Irvine32.inc

; (insert constant definitions here)

quiz4 MACRO p,q
	LOCAL here
	push	eax
	push	ecx
	mov		eax, p
	mov		ecx, q
here:
	mul		p
	loop	here
	mov		p, eax
	pop		ecx
	pop		eax
ENDM

.data

x		DWORD	3
y		DWORD	3


.code
main PROC

	mov		ebx, 3
	mov		ecx, 12
	mov		edx, ecx
	quiz4 ecx, ebx

	mov		eax, edx
	call	WriteInt
	

	exit	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
