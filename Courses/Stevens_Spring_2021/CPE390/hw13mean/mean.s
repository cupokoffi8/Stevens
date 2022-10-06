@Michael Dasaro

.global _Z4meanPKdi
_Z4meanPKdi:
	mov r2, #0		@This for incrementing through the list, and protects r1 for use in division
	@vldr.f64 d0, 0x00000000	@It seems that d0 is automatically 0
1:
	vldr.f64 d1, [r0]	@load d1 with the current value in the array
	vadd.f64 d0,d0,d1	@add the current value onto the running sum (d0)
	add r0, #8		@increment the pointer by 8
	add r2, #1		@increment our loop counter
	cmp r2, r1		@check if we're at the end of the array
	blt 1b			@loop again if current position is less than the length
	
	vmov s2,r1		@Converting the size (r1), to a float
	vcvt.f64.s32 d1, s2	@Converting the size (now  a float, s2) to a double, d1
	vdiv.f64 d0, d1	@Diving the sum by the size of the array, hopefully converted to a double
	bx lr			
