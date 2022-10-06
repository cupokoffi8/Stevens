.global main
main:
    @r0 is location of first array
    @r1 is location of second array
    @r2 is the length of the arrays
    
    push {r4, r5}
    mov r5, #1
1:
    ldr r3, [r0] 	@load value from first array
    ldr r4, [r1] 	@load value from second array
    mul r3, r3      @sqaure value from first array
    mul r4, r4      @square value from second array
    add r3, r4      @add the sqaured values, store in r3
    mul r5, r3      @multiply the running product, r5, by the sum of squares, r3
    add r0, #4      @increment the pointer r0 by one 4-byte number
    add r1, #4      @increment the pointer r1 by one 4-byte number

    subs r2         @count down and compare to 0
    bne 1b          @branch back until counts to 0

    mov r0, r5
    pop {r4, r5}
    bx lr
