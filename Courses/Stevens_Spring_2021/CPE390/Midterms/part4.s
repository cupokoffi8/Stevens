.global main
main:
    @r0 is the location of the array
    @r1 is the length of the array
    vldr.f64 d0, ZERO @initialize the sum to 0

1:
    vldr.f64 d1, [r0]       @load first value into d1
    vldr.f64 d2, [r0,#8]    @load next value into d2, incrementing r0 so that next loop it starts at this location
    vsub.f64 d1, d2         @take the difference 
    vabs.f64 d1, d1         @get the absolute value
    vadd.f64 d0, d1         @add onto the sum

    subs r1
    cmp r1, #1
    bne 1b
    bx lr   @the sum is in d0

ZERO:
    .word 0x00000000
    .word 0x00000000