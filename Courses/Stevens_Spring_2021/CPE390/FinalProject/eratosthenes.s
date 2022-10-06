	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"eratosthenes.cc"
	.text
	.align	2
	.global	_Z4testPjj
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z4testPjj, %function
_Z4testPjj:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r2, r1, #31
	lsr	r1, r1, #5
	mov	ip, #1
	ldr	r3, [r0, r1, lsl #2]
	ands	r3, r3, ip, lsl r2
	movne	r0, ip
	moveq	r0, #0
	bx	lr
	.cantunwind
	.fnend
	.size	_Z4testPjj, .-_Z4testPjj
	.align	2
	.global	_Z5clearPjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z5clearPjj, %function
_Z5clearPjj:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsr	r2, r1, #5
	mov	ip, #1
	ldr	r3, [r0, r2, lsl #2]
	and	r1, r1, #31
	bic	r1, r3, ip, lsl r1
	str	r1, [r0, r2, lsl #2]
	bx	lr
	.cantunwind
	.fnend
	.size	_Z5clearPjj, .-_Z5clearPjj
	.align	2
	.global	_Z12eratosthenesPjjj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z12eratosthenesPjjj, %function
_Z12eratosthenesPjjj:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	bx	lr
	.cantunwind
	.fnend
	.size	_Z12eratosthenesPjjj, .-_Z12eratosthenesPjjj
	.align	2
	.global	_Z13eratosthenes2Pbj
	.syntax unified
	.arm
	.fpu vfp
	.type	_Z13eratosthenes2Pbj, %function
_Z13eratosthenes2Pbj:
	.fnstart
.LFB1760:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	vmov	s15, r1	@ int
	vpush.64	{d8}
	cmp	r1, #2
	vcvt.f64.u32	d0, s15
	sub	sp, sp, #12
	bls	.L6
	mov	r4, r0
	mov	r3, #3
	mov	r2, #1
.L8:
	strb	r2, [r4, r3]
	add	r3, r3, #2
	cmp	r1, r3
	bcs	.L8
	vsqrt.f64	d8, d0
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	vcvtpl.u32.f64	s15, d8
	vmovpl	r5, s15	@ int
	bmi	.L24
.L13:
	mov	r3, #3
	mov	r0, #1
	mov	lr, #0
	b	.L12
.L10:
	add	r3, r3, #2
	cmp	r1, r3
	bcc	.L5
.L12:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L10
	cmp	r3, r5
	add	r0, r0, #1
	bhi	.L10
	mul	r2, r3, r3
	cmp	r1, r2
	bcc	.L10
	lsl	ip, r3, #1
.L11:
	strb	lr, [r4, r2]
	add	r2, r2, ip
	cmp	r1, r2
	bcs	.L11
	add	r3, r3, #2
	cmp	r1, r3
	bcs	.L12
.L5:
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, pc}
.L6:
	vcmp.f64	d0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L25
.L16:
	mov	r0, #1
	add	sp, sp, #12
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, pc}
.L25:
	bl	sqrt
	b	.L16
.L24:
	str	r1, [sp, #4]
	bl	sqrt
	vcvt.u32.f64	s15, d8
	ldr	r1, [sp, #4]
	vmov	r5, s15	@ int
	b	.L13
	.cantunwind
	.fnend
	.size	_Z13eratosthenes2Pbj, .-_Z13eratosthenes2Pbj
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	.save {r4, r5, lr}
	mov	r2, #6
	ldr	r4, .L28
	.pad #12
	sub	sp, sp, #12
	mov	r0, r4
	ldr	r1, .L28+4
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r4
	ldr	r1, .L28+8
	bl	_ZNSo9_M_insertImEERSoT_
	ldr	r1, .L28+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	r0, .L28+16
	bl	_Znaj
	mov	r1, #1
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSo9_M_insertImEERSoT_
	mov	r3, #10
	mov	r2, #1
	add	r1, sp, #7
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r0, r5
	bl	_ZdaPv
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L29:
	.align	2
.L28:
	.word	_ZSt4cout
	.word	.LC0
	.word	15625000
	.word	.LC1
	.word	62500000
	.fnend
	.size	main, .-main
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I__Z4testPjj, %function
_GLOBAL__sub_I__Z4testPjj:
	.fnstart
.LFB2248:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L32
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r0, r4
	ldr	r2, .L32+4
	ldr	r1, .L32+8
	pop	{r4, lr}
	b	__aeabi_atexit
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z4testPjj, .-_GLOBAL__sub_I__Z4testPjj
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z4testPjj
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Size: \000"
	.space	1
.LC1:
	.ascii	"\012\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
