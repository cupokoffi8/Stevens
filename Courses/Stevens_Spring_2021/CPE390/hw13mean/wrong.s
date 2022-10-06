.global _Z4meanPKdi
_Z4meanPKdi:
	mov r2, #0
	vmov s0, r2	@doesn't work with d0 for some reason so s0 is the sum
	@vldr.f64 d0, #0
	@vmov.f64 d2, r1
	vmov s1,r1
	@mov r3,r1
	@vldr.f64 d2, r1
1:
	vldr s2, [r0,r2] 
	add r2, #4
	vadd.f32 s0, s2
	subs r1, #1
	bgt 1b
	
	vdiv.f32 s0, s0, s1
	vmov.f64 d0, s0
	bx lr
