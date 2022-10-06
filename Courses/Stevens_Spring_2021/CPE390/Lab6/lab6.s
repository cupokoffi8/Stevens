.global _Z8checksumPKc
_Z8checksumPKc:
	mov r2, #0	@set r2 to 0, it will be the sum
1:
	ldrb r1, [r0]	@r1 is the current value of the array
	add r2, r1	@add r1 to the sum
	add r0, #1	@iterate the pointer forwards by 1

	ldrb r3, [r0]	@load r3 with the next value in the array
	cmp r3, #0	@Check if the new value exists
	bne #0,1b	@repeat if it does exist
	
	mov r3, #0xFF	@set r3 for checking %256
	and r2, r3	@and the sum and r3
	mov r0, r2	@move to r0 for returning
	bx lr

.global _Z5cryptPcjc
_Z5cryptPcjc:
1:
	ldrb r3, [r0]
	eor r3, r2	@xor the value in r0 with the key (r2)
	strb r3, [r0]
	add r0, #1
	subs r1,#1	@lower the length by 1
	bgt #0, 1b	@repeat if length is still positive 
	bx 

