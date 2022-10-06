.global _Z12eratosthenesPjjj
_Z12eratosthenesPjjj:
	@Given p, uint32 array of size (n+1+31)/32/2 in location r0
	@Given n, number of integers to count primes for, in r1
	@Given size, number of ints (each 32 bits) in p, in r2
	push {r4-r8}
	mov r3, #1		@Number of primes, to be returned, setting at 1 because assuming 2 is prime
	@Now looping through "array" and setting all bits to true
		@mov r4, r1			@copy of address 
		@ldr r5, =0xFFFFFFFF		@32 bits of all 1s
		@mov r6, r2			@copy of size, number of ints (number of 32 bit sections)
1:
		@str r5, [r4]			@store all 1s in this section of the array
		@add r4, #4			@increment address by 4 bytes, 32 bits
		@subs r6, #1			@Lower copy of size by one int (32 bits)
		@bgt 1b				@loop until size is at or below 0
	@out of loop, all bits are set to true
	
	
	
	mov r3, r0
	pop {r4-r8}
	bx lr
