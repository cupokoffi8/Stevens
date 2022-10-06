@Michael Dasaro
.global _Z6setBitii
_Z6setBitii:
	mov r2, #1 @set r2 as 1 so that it can be shifted
	lsl r2, r1 @shift r2 by r1
	orr r0, r0, r2 @or on r0 and the shifted number
	bx lr

.global _Z8clearBitii
_Z8clearBitii:
	mov r2, #1	@r2 will be shifted
	lsl r2, r1	@shift r2
	bic r0, r0, r2	@clears r0 where r2 is
	bx lr

.global _Z4flipii
_Z4flipii:
	mov r2, #1
	lsl r2, r1
	eor r0, r0, r2	@xor on r0 and the shifted 
	bx lr

.global _Z11replaceBitsiii
_Z11replaceBitsiii:
	and r0, r0, r1	@wipe by and-ing r0 and r1
	orr r0, r0, r2	@add r2 in 
	bx lr

.global _Z10buildColoriii
_Z10buildColoriii:
	lsl r0, #16
	lsl r1, #8
	orr r0, r0, r1
	orr r0, r0, r2
	bx lr
