.global _Z2a1j
_Z2a1j:
	mov r2, #0
1:
	add r2,#1
	cmp r2,r1
	blt 1b
	bx lr

.global _Z2a2j
_Z2a2j:
1:
	subs r0,#1
	bge 1b
	bx lr

.global _Z15readOneLocationPji
_Z15readOneLocationPji:
1:
	ldr r2, [r0]
	subs r1,#1
	bge 1b
	bx lr

.global _Z9readArrayPji
_Z9readArrayPji:
1:
	ldr r2, [r0]
	add r0, #4
	subs r1,#1
	bge 1b
	bx lr

.global _Z10writeArrayPji
_Z10writeArrayPji:
	mov r3, #0
1:
	str r3, [r0]
	add r0, #4
	subs r1, #1
	bge 1b
	bx lr
