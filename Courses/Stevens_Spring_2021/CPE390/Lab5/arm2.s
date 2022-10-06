.global _Z6setBitii
_Z6setBitii:
	mov r2, #1
	lsl r2, r1
	orr r0, r0, r2
	bx lr
.global _Z8clearBitii
_Z8clearBitii:
	mov r2, #1
	lsl r2, r1
	bic r0, r0, r2
	bx lr
