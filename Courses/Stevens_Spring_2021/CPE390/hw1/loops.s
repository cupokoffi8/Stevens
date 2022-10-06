@Michael Dasaro
.global _Z8sumCubesii
_Z8sumCubesii:
	mov r2, #0 	@r2 will be the sum
1:
	mul r3, r0, r0	@make r3 r0 squared
	mul r3, r3, r0 	@now r3 is r0 cubed
	add r2, r3	@add the cube to the sum
	add r0, #1 	@iterate r0 up by 1
	cmp r0, r1	@compare the value of iteration to max number
	ble 1b		@branch back again if iteration is less than or equal to max
	mov r0, r2	@move answer into r0
	bx lr		@end
