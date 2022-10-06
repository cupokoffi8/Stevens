.global _Z12eratosthenesPjj
_Z12eratosthenesPjj:
	@Given p, uint32 array of size (n+1+31)/32/2 in location r0
	@Given n, number of integers to count primes for, in r1
	@need size, number of ints (each 32 bits) in p, in r2
	add r2, r1, #32		@getting size: (n+1+31)/32/2, or n+32 \/
	lsr r2, #6		@getting size, (n+32)/64 with a logical shift right
	
	push {r4-r12}
	mov r3, #1		@Number of primes, to be returned, setting at 1 because assuming 2 is prime
	@Now looping through "array" and setting all bits to true
	mov r4, r0			@copy of address 
	ldr r5, =0xFFFFFFFF		@32 bits of all 1s
	mov r6, r2			@copy of size, number of ints (number of 32 bit sections)
1:
		str r5, [r4]			@store all 1s in this section of the array
		add r4, #4			@increment address by 4 bytes, 32 bits
		subs r6, #1			@Lower copy of size by one int (32 bits) 
		bgt 1b				@loop until size is at or below 0
	@out of loop, all bits are set to true
	@can write over r4, r5, r6
	
	@Now looping from 3 to n, only odds	
	ldr r4, =#31622		@sqrt(1 billion), I think it's faster to assume then to calculate each time
	mov r5, #3		@current number that we're testing		
	mov r6, #1		@our bit position 
	mov r10, #1		@temporarily store #1 in r10 for shifting
2:
		lsr r8, r6, #5		@Divide bit position by 32 to get the 32-bit iterator we're at
		lsl r8, #2		@back to bytes
		add r8, r8, r0		@Make r8 the new pointer, which is r0 incremented by r8
		ldr r8, [r8]	@Load value at location r8, store it in r8	
		and r9, r6, #31		@and the bit position with 31 to do: position mod 32
		
		lsl r9, r10, r9		@Shift #1 over to the left by r9 units
		tst r8, r9 		@and the 32-bit number with the #1 in the proper place to select the bit we need
		@tst is like ands, doesn't store r8		
		bne 3f			@if this number was set to true, branch ahead
4:
		add r6, #1		@increment bit position by 1
		add r5, #2		@increment by 2 (odds only)
		cmp r5, r1		@compare current to n (1 billion)
		ble 2b			@loop unless larger than n
		mov r0, r3
		pop {r4-r12}
		bx lr	

3:
	@The number r5 is prime, increment prime count and wipe out multiples
	add r3, #1	@increment prime count
	cmp r5, r4	@compare the prime number to the square root of n
	bgt 4b		@if greater, brach back in the main loop where it was to continue to higher numbers
	@Those that remain have multiples that need to be wiped out, time for another loop
	mul r7, r5, r5		@r7 starts at the prime number squared
	add r11, r5, r5		@r8 is twice the prime number	
5:
	
		lsr r12, r7, #1
		lsr r8, r12, #5		@divide bit position by 32 to get the int position
		lsl r8, #2		
		
		and r9, r12, #31	@position mod 32 is the same as AND #31, r9 isn't needed anymore so store there
		lsl r9, r10, r9		@shift that 1 over to the location of the targe
		
		ldr r12, [r0,r8]	@ran out of registers above, but can use r9 now
		bic r9, r12, r9		@Bit clear that location, setting it to 0
		str r9, [r0,r8]		@store updated int back in r10
		add r7, r11		@r7 increments by twice the prime number		
		cmp r7, r1		@compare current to n
		ble 5b			@loop until larger than n
	b 4b			@return to the outer loop
