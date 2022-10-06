.global _Z6add128PjS_S_
_Z6add128PjS_s_:

	ldr r3, [r1,#12]
	ldr r4, [r2,#12]
	adds r3,r4
	str r3, [r0,#12]

	ldr r3, [r1,#8]
	ldr r4, [r2,#8]
	adcs r3,r4
	str r3, [r0,#8]

	ldr r3, [r1,#4]
	ldr r4, [r2,#4]
	adcs r3,r4
	str r3, [r0,#4]
	
	bx lr