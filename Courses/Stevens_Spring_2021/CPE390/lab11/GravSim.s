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
	.file	"GravSim.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",%progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align	2
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNKSt5ctypeIcE8do_widenEc, %function
_ZNKSt5ctypeIcE8do_widenEc:
	.fnstart
.LFB1291:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev,"axG",%progbits,_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED5Ev,comdat
	.align	2
	.weak	_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev, %function
_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev:
	.fnstart
.LFB4726:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #8]
	cmp	r5, #0
	beq	.L4
.L6:
	ldr	r2, [r5, #4]
	add	r3, r5, #12
	cmp	r2, r3
	mov	r0, r2
	ldr	r6, [r5]
	beq	.L5
	bl	_ZdlPv
.L5:
	mov	r0, r5
	bl	_ZdlPv
	subs	r5, r6, #0
	bne	.L6
.L4:
	ldr	r2, [r4, #4]
	mov	r1, #0
	ldr	r0, [r4]
	lsl	r2, r2, #2
	bl	memset
	mov	r3, r4
	mov	r2, #0
	ldr	r0, [r3], #24
	str	r2, [r4, #12]
	cmp	r0, r3
	str	r2, [r4, #8]
	beq	.L7
	bl	_ZdlPv
.L7:
	mov	r0, r4
	pop	{r4, r5, r6, pc}
	.cantunwind
	.fnend
	.size	_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev, .-_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.weak	_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED1Ev
	.set	_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED1Ev,_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev
	.text
	.align	2
	.global	_ZN7GravSim8timestepEd
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN7GravSim8timestepEd, %function
_ZN7GravSim8timestepEd:
	.fnstart
.LFB3827:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	ldr	r1, [r0, #8]
	ldr	ip, [r0, #12]
	vmov.f64	d12, d0
	cmp	r1, ip
	sub	sp, sp, #20
	movne	r6, #0
	beq	.L18
.L14:
	vldr.64	d10, .L32
	cmp	ip, r1
	add	r4, r6, r6, lsl #1
	vmoveq.f64	d13, d10
	lsl	r4, r4, #5
	vmoveq.f64	d11, d10
	beq	.L16
	vmov.f64	d13, d10
	vmov.f64	d11, d10
	mov	r5, #0
.L15:
	add	r7, r5, r5, lsl #1
	cmp	r6, r5
	add	r3, r1, r4
	add	r7, r1, r7, lsl #5
	add	r5, r5, #1
	beq	.L19
	vldr.64	d9, [r3, #32]
	vldr.64	d5, [r7, #32]
	vldr.64	d4, [r3, #24]
	vldr.64	d6, [r7, #24]
	vldr.64	d14, [r3, #40]
	vsub.f64	d9, d9, d5
	vldr.64	d7, [r7, #40]
	vsub.f64	d6, d4, d6
	vsub.f64	d14, d14, d7
	vmul.f64	d8, d9, d9
	vmla.f64	d8, d6, d6
	vmla.f64	d8, d14, d14
	vcmp.f64	d8, #0
	vsqrt.f64	d15, d8
	vmrs	APSR_nzcv, FPSCR
	bmi	.L31
.L20:
	vldr.64	d7, [r7, #16]
	vdiv.f64	d5, d7, d8
	vdiv.f64	d7, d5, d15
	vmla.f64	d13, d6, d7
	vmla.f64	d10, d9, d7
	vmla.f64	d11, d14, d7
.L19:
	sub	r2, ip, r1
	asr	r2, r2, #5
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r2, r3, lsl #1
	cmp	r3, r5
	bhi	.L15
.L16:
	add	r1, r1, r4
	add	r6, r6, #1
	vstr.64	d13, [r1, #72]
	vstr.64	d10, [r1, #80]
	vstr.64	d11, [r1, #88]
	ldr	r1, [r0, #8]
	ldr	ip, [r0, #12]
	sub	r2, ip, r1
	asr	r2, r2, #5
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r2, r3, lsl #1
	cmp	r3, r6
	bhi	.L14
	cmp	r1, ip
	beq	.L18
	vmul.f64	d13, d12, d12
	vldr.64	d14, .L32+8
	mov	r2, #0
.L22:
	vldr.64	d9, [r1, #56]
	vldr.64	d3, [r1, #80]
	vldr.64	d7, [r1, #48]
	vldr.64	d11, [r1, #64]
	vldr.64	d2, [r1, #72]
	vldr.64	d10, [r1, #88]
	vmul.f64	d5, d9, d12
	vldr.64	d15, [r1, #24]
	vmul.f64	d0, d3, d14
	add	r2, r2, #1
	vmul.f64	d4, d7, d12
	cmp	r3, r2
	vmul.f64	d6, d12, d11
	add	r1, r1, #96
	vmul.f64	d8, d2, d14
	vmul.f64	d1, d10, d14
	vmla.f64	d7, d2, d12
	vmla.f64	d5, d0, d13
	vmla.f64	d9, d3, d12
	vmla.f64	d4, d8, d13
	vmla.f64	d6, d1, d13
	vstr.64	d7, [r1, #-48]
	vldr.64	d7, [r1, #-64]
	vmla.f64	d11, d12, d10
	vstr.64	d9, [r1, #-40]
	vadd.f64	d5, d7, d5
	vldr.64	d7, [r1, #-56]
	vadd.f64	d4, d15, d4
	vadd.f64	d6, d7, d6
	vstr.64	d11, [r1, #-32]
	vstr.64	d5, [r1, #-64]
	vstr.64	d4, [r1, #-72]
	vstr.64	d6, [r1, #-56]
	bhi	.L22
.L18:
	vldr.64	d7, [r0]
	vadd.f64	d7, d7, d12
	vstr.64	d7, [r0]
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, pc}
.L31:
	vmov.f64	d0, d8
	str	r0, [sp, #12]
	vstr.64	d6, [sp]
	bl	sqrt
	ldr	r0, [sp, #12]
	vldr.64	d6, [sp]
	ldr	r1, [r0, #8]
	ldr	ip, [r0, #12]
	b	.L20
.L33:
	.align	3
.L32:
	.word	0
	.word	0
	.word	0
	.word	1071644672
	.cantunwind
	.fnend
	.size	_ZN7GravSim8timestepEd, .-_ZN7GravSim8timestepEd
	.align	2
	.global	_ZlsRSoRK7GravSim
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZlsRSoRK7GravSim, %function
_ZlsRSoRK7GravSim:
	.fnstart
.LFB3830:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	.pad #104
	sub	sp, sp, #104
	mov	r2, #10
	ldr	r1, .L39
	mov	r7, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r4]
	mov	r0, r7
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #10
	add	r1, sp, #8
	mov	r2, #1
	strb	r3, [sp, #8]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	ldr	r5, [r4, #8]
	ldr	r8, [r4, #12]
	cmp	r5, r8
	beq	.L35
	mov	r6, #9
.L36:
	mov	r1, r5
	mov	r2, #96
	add	r0, sp, #8
	bl	memcpy
	add	r0, sp, #8
	bl	strlen
	add	r1, sp, #8
	mov	r4, #44
	add	r5, r5, #96
	mov	r2, r0
	mov	r0, r7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #1
	add	r1, sp, #7
	mov	r0, r7
	strb	r6, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #32]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #40]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #48]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r6, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #56]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #64]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #72]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r6, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #80]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #88]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #1
	add	r1, sp, #7
	strb	r4, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [sp, #96]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #10
	mov	r2, #1
	add	r1, sp, #7
	strb	r3, [sp, #7]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	cmp	r8, r5
	bne	.L36
.L35:
	mov	r0, r7
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L40:
	.align	2
.L39:
	.word	.LC0
	.fnend
	.size	_ZlsRSoRK7GravSim, .-_ZlsRSoRK7GravSim
	.align	2
	.global	_ZN7GravSim7forwardEjd
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN7GravSim7forwardEjd, %function
_ZN7GravSim7forwardEjd:
	.fnstart
.LFB3829:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r6, r1, #0
	vpush.64	{d8}
	mov	r5, r0
	beq	.L42
	vmov.f64	d8, d0
	mov	r4, #0
.L43:
	add	r4, r4, #1
	vmov.f64	d0, d8
	mov	r0, r5
	bl	_ZN7GravSim8timestepEd
	cmp	r6, r4
	bne	.L43
.L42:
	vldm	sp!, {d8}
	mov	r1, r5
	ldr	r0, .L49
	pop	{r4, r5, r6, lr}
	b	_ZlsRSoRK7GravSim
.L50:
	.align	2
.L49:
	.word	_ZSt4cout
	.cantunwind
	.fnend
	.size	_ZN7GravSim7forwardEjd, .-_ZN7GravSim7forwardEjd
	.section	.text._ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,"axG",%progbits,_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, %function
_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:
	.fnstart
.LFB4422:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	ldr	r7, [r0]
	ldr	r5, [r0, #4]
	.pad #12
	sub	sp, sp, #12
	sub	r1, r5, r7
	mov	r10, r0
	asr	r1, r1, #5
	sub	r4, r6, r7
	add	r3, r1, r1, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	adds	r3, r1, r3, lsl #1
	beq	.L62
	lsl	r9, r3, #1
	cmp	r3, r9
	bls	.L72
.L64:
	mvn	r9, #63
.L53:
	mov	r0, r9
	str	r2, [sp, #4]
	bl	_Znwj
	ldr	r2, [sp, #4]
	mov	r8, r0
	add	r9, r0, r9
	add	fp, r0, #96
.L54:
	mov	r1, r2
	add	r0, r8, r4
	mov	r2, #96
	bl	memcpy
	cmp	r6, r7
	beq	.L55
	mov	r4, #0
	mov	r1, r7
.L56:
	mov	r2, #96
	add	r0, r8, r4
	add	r4, r4, r2
	bl	memcpy
	add	r1, r7, r4
	cmp	r6, r1
	bne	.L56
	sub	r3, r6, #96
	sub	r3, r3, r7
	cmp	r6, r5
	lsr	r3, r3, #5
	add	r2, r3, r3, lsl #2
	add	r2, r2, r2, lsl #4
	add	r2, r2, r2, lsl #9
	add	r3, r3, r2, lsl #1
	add	r3, r3, r3, lsl #9
	bic	fp, r3, #-134217728
	add	fp, fp, #2
	add	fp, fp, fp, lsl #1
	add	fp, r8, fp, lsl #5
	beq	.L58
.L57:
	mov	r4, #0
	mov	r1, r6
.L60:
	mov	r2, #96
	add	r0, fp, r4
	add	r4, r4, r2
	bl	memcpy
	add	r1, r6, r4
	cmp	r5, r1
	bne	.L60
	sub	r5, r5, r6
	sub	r5, r5, #96
	lsr	r5, r5, #5
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #9
	add	r5, r5, r3, lsl #1
	add	r5, r5, r5, lsl #9
	bic	r3, r5, #-134217728
	add	r3, r3, #1
	add	r3, r3, r3, lsl #1
	add	fp, fp, r3, lsl #5
.L59:
	cmp	r7, #0
	bne	.L58
	stm	r10, {r8, fp}
	str	r9, [r10, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L58:
	mov	r0, r7
	bl	_ZdlPv
	stm	r10, {r8, fp}
	str	r9, [r10, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L72:
	ldr	r3, .L73
	cmp	r9, r3
	bhi	.L64
	cmp	r9, #0
	moveq	r8, r9
	moveq	fp, #96
	beq	.L54
	b	.L52
.L62:
	mov	r9, #1
.L52:
	add	r9, r9, r9, lsl #1
	lsl	r9, r9, #5
	b	.L53
.L55:
	cmp	r6, r5
	bne	.L57
	b	.L59
.L74:
	.align	2
.L73:
	.word	44739242
	.fnend
	.size	_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, .-_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
	.global	__aeabi_uidivmod
	.section	.text._ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj,"axG",%progbits,_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj,comdat
	.align	2
	.weak	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj, %function
_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj:
	.fnstart
.LFB4463:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #28
	sub	sp, sp, #28
	mov	r4, r0
	ldr	r0, [sp, #64]
	mov	r5, r1
	mov	r9, r2
	mov	r7, r3
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #12]
	add	r1, r4, #16
	str	r0, [sp]
	add	r0, sp, #16
	ldr	r6, [r4, #20]
.LEHB0:
	bl	_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEjjj
.LEHE0:
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L76
	ldr	r8, [sp, #20]
	cmp	r8, #1
	moveq	r6, r4
	moveq	r3, #0
	streq	r3, [r6, #24]!
	streq	r6, [sp, #12]
	beq	.L78
	cmn	r8, #-1073741823
	bhi	.L107
	lsl	r5, r8, #2
	mov	r0, r5
.LEHB1:
	bl	_Znwj
	mov	r2, r5
	mov	r1, #0
	mov	r6, r0
	bl	memset
	add	r3, r4, #24
	str	r3, [sp, #12]
.L78:
	ldr	r5, [r4, #8]
	mov	r3, #0
	cmp	r5, r3
	str	r3, [r4, #8]
	beq	.L80
	mov	fp, r3
	add	r10, r4, #8
	b	.L81
.L82:
	ldr	r2, [r2]
	str	r2, [r5]
	ldr	r2, [r6, r1, lsl #2]
	str	r5, [r2]
.L83:
	subs	r5, r0, #0
	beq	.L80
.L81:
	mov	r1, r8
	ldr	r0, [r5, #32]
	bl	__aeabi_uidivmod
	ldr	r0, [r5]
	ldr	r2, [r6, r1, lsl #2]
	cmp	r2, #0
	bne	.L82
	ldr	r2, [r4, #8]
	str	r2, [r5]
	str	r5, [r4, #8]
	str	r10, [r6, r1, lsl #2]
	ldr	r2, [r5]
	cmp	r2, #0
	moveq	fp, r1
	beq	.L83
	str	r5, [r6, fp, lsl #2]
	subs	r5, r0, #0
	mov	fp, r1
	bne	.L81
.L80:
	ldr	r0, [r4]
	ldr	r3, [sp, #12]
	cmp	r0, r3
	beq	.L84
	bl	_ZdlPv
.L84:
	stm	r4, {r6, r8}
	mov	r1, r8
	mov	r0, r9
	bl	__aeabi_uidivmod
	mov	r5, r1
	b	.L85
.L76:
	ldr	r6, [r4]
.L85:
	ldr	r3, [r6, r5, lsl #2]
	str	r9, [r7, #32]
	cmp	r3, #0
	lsl	r6, r5, #2
	beq	.L90
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r4]
	ldr	r3, [r3, r5, lsl #2]
	str	r7, [r3]
.L91:
	ldr	r3, [r4, #12]
	mov	r0, r7
	add	r3, r3, #1
	str	r3, [r4, #12]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L90:
	ldr	r3, [r4, #8]
	str	r3, [r7]
	str	r7, [r4, #8]
	ldr	r3, [r7]
	cmp	r3, #0
	ldreq	r3, [r4]
	beq	.L93
	ldr	r0, [r3, #32]
	ldr	r1, [r4, #4]
	bl	__aeabi_uidivmod
	ldr	r3, [r4]
	str	r7, [r3, r1, lsl #2]
.L93:
	add	r2, r4, #8
	str	r2, [r3, r6]
	b	.L91
.L107:
	bl	_ZSt17__throw_bad_allocv
.LEHE1:
.L98:
	bl	__cxa_begin_catch
	str	r6, [r4, #20]
.LEHB2:
	bl	__cxa_rethrow
.LEHE2:
.L97:
	mov	r4, r0
	bl	__cxa_end_catch
	mov	r0, r4
	bl	__cxa_begin_catch
	ldr	r0, [r7, #4]
	add	r3, r7, #12
	cmp	r0, r3
	beq	.L89
	bl	_ZdlPv
.L89:
	mov	r0, r7
	bl	_ZdlPv
.LEHB3:
	bl	__cxa_rethrow
.LEHE3:
.L96:
	bl	__cxa_end_catch
.LEHB4:
	bl	__cxa_end_cleanup
.LEHE4:
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA4463:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT4463-.LLSDATTD4463
.LLSDATTD4463:
	.byte	0x1
	.uleb128 .LLSDACSE4463-.LLSDACSB4463
.LLSDACSB4463:
	.uleb128 .LEHB0-.LFB4463
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4463
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L98-.LFB4463
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB4463
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L97-.LFB4463
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB4463
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L96-.LFB4463
	.uleb128 0
	.uleb128 .LEHB4-.LFB4463
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE4463:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.word	0
.LLSDATT4463:
	.section	.text._ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj,"axG",%progbits,_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj,comdat
	.fnend
	.size	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj, .-_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",%progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align	2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, %function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
	.fnstart
.LFB4485:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	clz	r3, r1
	lsr	r3, r3, #5
	moveq	r3, #0
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8
	bne	.L118
	sub	r4, r2, r1
	cmp	r4, #15
	mov	r6, r1
	mov	r5, r0
	str	r4, [sp, #4]
	bhi	.L119
	cmp	r4, #1
	ldr	r0, [r0]
	bne	.L112
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r0]
	ldr	r4, [sp, #4]
	ldr	r0, [r5]
.L113:
	mov	r3, #0
	str	r4, [r5, #4]
	strb	r3, [r0, r4]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L112:
	cmp	r4, #0
	beq	.L113
	b	.L111
.L119:
	mov	r2, r3
	add	r1, sp, #4
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj
	ldr	r3, [sp, #4]
	str	r3, [r5, #8]
	str	r0, [r5]
.L111:
	mov	r2, r4
	mov	r1, r6
	bl	memcpy
	ldr	r4, [sp, #4]
	ldr	r0, [r5]
	b	.L113
.L118:
	ldr	r0, .L120
	bl	_ZSt19__throw_logic_errorPKc
.L121:
	.align	2
.L120:
	.word	.LC1
	.fnend
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_,"axG",%progbits,_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_,comdat
	.align	2
	.weak	_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_, %function
_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_:
	.fnstart
.LFB4528:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	vldr.64	d6, .L132
	vldr.64	d5, .L132+8
	vldr.64	d4, .L132+16
	push	{r4, r5, lr}
	mov	ip, #2
	ldr	r5, [r0]
	ldr	r4, .L132+24
	ldr	lr, .L132+28
.L125:
	umull	r3, r2, r4, r5
	sub	r1, r5, r2
	add	r2, r2, r1, lsr #1
	lsr	r1, r2, #16
	mul	r3, lr, r1
	add	r2, r1, r1, lsl #1
	sub	r3, r5, r3
	rsb	r2, r2, r2, lsl #4
	add	r5, r3, r3, lsl #2
	rsb	r2, r2, r2, lsl #6
	rsb	r5, r5, r5, lsl #4
	add	r2, r2, r1
	add	r3, r3, r5, lsl #5
	rsb	r3, r3, r3, lsl #3
	cmp	r3, r2
	sub	r5, r3, #-2147483647
	sub	r5, r5, r2
	subcs	r5, r3, r2
	sub	r3, r5, #1
	cmp	ip, #1
	vmov	s15, r3	@ int
	mov	ip, #1
	vcvt.f64.u32	d7, s15
	vmla.f64	d5, d7, d6
	vmul.f64	d6, d6, d4
	bne	.L125
	vdiv.f64	d0, d5, d6
	vldr.64	d7, .L132
	str	r5, [r0]
	vcmpe.f64	d0, d7
	vmrs	APSR_nzcv, FPSCR
	poplt	{r4, r5, pc}
	vmov.f64	d0, d7
	vldr.64	d1, .L132+8
	pop	{r4, r5, lr}
	b	nextafter
.L133:
	.align	3
.L132:
	.word	0
	.word	1072693248
	.word	0
	.word	0
	.word	-8388608
	.word	1105199103
	.word	110892733
	.word	127773
	.cantunwind
	.fnend
	.size	_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_, .-_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_
	.text
	.align	2
	.global	_ZN7GravSimC2EPKc
	.syntax unified
	.arm
	.fpu vfp
	.type	_ZN7GravSimC2EPKc, %function
_ZN7GravSimC2EPKc:
	.fnstart
.LFB3825:
	@ args = 0, pretend = 0, frame = 4824
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	.vsave {d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r2, #0
	mov	r3, #0
	mov	r6, #0
	.pad #4800
	sub	sp, sp, #4800
	.pad #36
	sub	sp, sp, #36
	strd	r2, [r0]
	mov	fp, r0
	str	r6, [r0, #8]
	str	r6, [r0, #12]
	str	r6, [r0, #16]
	add	r0, sp, #600
	mov	r5, r1
	bl	_ZNSt8ios_baseC2Ev
	ldr	r3, .L247+56
	add	r4, sp, #736
	ldr	r0, .L247+116
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #8]
	strh	r6, [r4, #-20]	@ movhi
	ldr	r3, [r2, #-12]
	str	r0, [r4, #-136]
	add	r0, sp, #456
	str	r6, [r4, #-24]
	str	r6, [r4, #-16]
	str	r6, [r4, #-12]
	str	r6, [r4, #-8]
	str	r6, [r4, #-4]
	str	r2, [r4, #-280]
	str	r1, [r0, r3]
	str	r6, [r4, #-276]
	ldr	r0, [r2, #-12]
	add	r3, sp, #456
	str	r1, [sp, #44]
	add	r0, r3, r0
	mov	r1, r6
	add	r3, fp, #8
	str	r2, [sp, #40]
	str	r3, [sp, #36]
.LEHB5:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE5:
	ldr	r3, .L247+60
	add	r0, sp, #464
	str	r3, [r4, #-280]
	add	r3, r3, #20
	str	r3, [r4, #-136]
.LEHB6:
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev
.LEHE6:
	add	r3, sp, #480
	add	r1, sp, #464
	add	r0, r3, #120
.LEHB7:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
	add	r3, sp, #480
	mov	r1, r5
	mov	r2, #8
	sub	r0, r3, #16
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
	ldr	r3, [r4, #-280]
	cmp	r0, r6
	ldr	r0, [r3, #-12]
	add	r3, sp, #456
	add	r0, r3, r0
	beq	.L238
	mov	r1, #0
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE7:
.L136:
	ldr	r3, [r4, #-280]
	add	r2, sp, #456
	ldr	r3, [r3, #-12]
	add	r3, r2, r3
	ldr	r5, [r3, #124]
	cmp	r5, #0
	beq	.L239
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L143
	ldrb	r3, [r5, #39]	@ zero_extendqisi2
.L144:
	mov	r2, #4096
	mov	r1, r4
	add	r0, sp, #456
.LEHB8:
	bl	_ZNSi7getlineEPcic
	ldr	r3, [r4, #-116]
	tst	r3, #2
	ldrne	r3, .L247+64
	strne	r3, [sp, #20]
	bne	.L183
	ldr	r3, [r4, #-280]
	add	r2, sp, #456
	ldr	r3, [r3, #-12]
	add	r3, r2, r3
	ldr	r5, [r3, #124]
	cmp	r5, #0
	beq	.L147
	vldr.64	d10, .L247
	vldr.64	d11, .L247+8
	vldr.64	d12, .L247+16
.L146:
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L148
	ldrb	r3, [r5, #39]	@ zero_extendqisi2
.L149:
	mov	r2, #4096
	mov	r1, r4
	add	r0, sp, #456
	bl	_ZNSi7getlineEPcic
	add	r5, sp, #160
	mov	r0, r4
	str	r5, [r4, #-584]
	bl	strlen
	mov	r3, #0
	mov	r1, r4
	add	r2, r4, r0
	add	r0, sp, #152
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE8:
	add	r0, sp, #320
	bl	_ZNSt8ios_baseC2Ev
	ldr	r2, .L247+68
	sub	r3, r4, #484
	mov	r1, #0
	ldr	r10, [r2, #4]
	ldr	r0, .L247+116
	strh	r1, [r3, #184]	@ movhi
	ldr	r3, [r10, #-12]
	ldr	r2, [r2, #8]
	str	r0, [r4, #-416]
	add	r0, sp, #252
	str	r10, [r4, #-484]
	str	r1, [r4, #-304]
	str	r1, [r4, #-296]
	str	r1, [r4, #-292]
	str	r1, [r4, #-288]
	str	r1, [r4, #-284]
	str	r2, [r0, r3]
	str	r1, [r4, #-480]
	ldr	r0, [r10, #-12]
	add	r3, sp, #252
	add	r0, r3, r0
	str	r2, [sp, #24]
.LEHB9:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE9:
	ldr	r2, .L247+108
	ldr	r3, .L247+64
	mov	r6, #0
	str	r2, [r4, #-484]
	add	r0, sp, #288
	add	r2, r2, #20
	str	r3, [sp, #20]
	str	r2, [r4, #-416]
	str	r3, [r4, #-476]
	str	r6, [r4, #-472]
	str	r6, [r4, #-468]
	str	r6, [r4, #-464]
	str	r6, [r4, #-460]
	str	r6, [r4, #-456]
	str	r6, [r4, #-452]
	bl	_ZNSt6localeC1Ev
	ldr	r1, [r4, #-584]
	ldr	r2, [r4, #-580]
	ldr	lr, .L247+112
	add	ip, sp, #304
	add	r2, r1, r2
	mov	r3, #0
	add	r0, sp, #296
	str	r6, [r4, #-444]
	str	lr, [r4, #-476]
	str	ip, [r4, #-440]
.LEHB10:
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE10:
	mov	ip, #8
7	mov	r3, r6
	mov	r2, r6
	ldr	r1, [r4, #-440]
	add	r0, sp, #260
	str	ip, [r4, #-444]
.LEHB11:
	bl	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcjj
.LEHE11:
	add	r3, sp, #288
	add	r1, sp, #260
	add	r0, r3, #32
.LEHB12:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E
.LEHE12:
	ldr	r0, [r4, #-584]
	cmp	r0, r5
	beq	.L156
	bl	_ZdlPv
.L156:
	add	r1, sp, #120
	add	r0, sp, #252
.LEHB13:
	bl	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_
	add	r1, sp, #80
	bl	_ZNSi10_M_extractIdEERSiRT_
	add	r3, sp, #96
	sub	r1, r3, #8
	bl	_ZNSi10_M_extractIdEERSiRT_
	add	r1, sp, #96
	bl	_ZNSi10_M_extractIdEERSiRT_
	sub	r1, r5, #56
	bl	_ZNSi10_M_extractIdEERSiRT_
	add	r1, sp, #112
	bl	_ZNSi10_M_extractIdEERSiRT_
	ldr	r6, .L247+72
	ldrb	r3, [r6, #24]	@ zero_extendqisi2
	cmp	r3, #0
	addeq	r7, r6, #32
	beq	.L221
	vldr.64	d8, [r6, #16]
	mov	r3, #0
	strb	r3, [r6, #24]
.L163:
	vldr.64	d6, [r6, #8]
	vldr.64	d7, [r6]
	mov	r2, #14
	ldr	r1, .L247+76
	ldr	r0, .L247+104
	vmla.f64	d7, d8, d6
	vmov.f64	d8, d7
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	r0, sp, #120
	bl	strlen
	add	r1, sp, #120
	mov	r2, r0
	ldr	r0, .L247+104
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #10
	ldr	r1, .L247+80
	ldr	r0, .L247+104
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	r0, sp, #136
	bl	strlen
	add	r1, sp, #136
	mov	r2, r0
	ldr	r0, .L247+104
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	mov	r2, #10
	ldr	r1, .L247+84
	ldr	r0, .L247+104
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmov.f64	d0, d8
	ldr	r0, .L247+104
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #12
	ldr	r1, .L247+88
	mov	r7, r0
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vmul.f64	d0, d8, d11
	vdiv.f64	d0, d0, d12
	bl	round
	vldr.64	d7, .L247+24
	mov	r0, r7
	vmul.f64	d0, d0, d7
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r2, #8
	ldr	r1, .L247+92
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	add	r3, sp, #96
	vmov.f64	d0, d8
	add	r1, sp, #48
	sub	r0, r3, #40
	bl	sincos
	vldr.64	d15, [sp, #56]
	vldr.64	d8, [sp, #104]
	vldr.64	d9, [sp, #48]
	vldr.64	d14, [sp, #96]
	vmul.f64	d8, d15, d8
	vmul.f64	d14, d9, d14
	vmul.f64	d0, d8, d8
	vmla.f64	d0, d14, d14
	vcmp.f64	d0, #0
	vsqrt.f64	d7, d0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L240
.L165:
	vcmp.f64	d7, #0
	vldr.64	d13, [sp, #80]
	vmrs	APSR_nzcv, FPSCR
	bne	.L241
	vldr.64	d7, .L247+32
	vldr.64	d6, .L247+40
.L166:
	vmul.f64	d15, d15, d7
	mov	r8, #0
	vmul.f64	d9, d9, d6
	mov	r9, #0
	add	r1, sp, #120
	mov	r2, #16
	add	r0, sp, #152
	vstr.64	d14, [r4, #-560]
	vstr.64	d8, [r4, #-552]
	str	r8, [r4, #-544]
	str	r9, [r4, #-540]
	str	r8, [r4, #-520]
	str	r9, [r4, #-516]
	vstr.64	d15, [r4, #-536]
	str	r8, [r4, #-512]
	str	r9, [r4, #-508]
	vstr.64	d9, [r4, #-528]
	str	r8, [r4, #-504]
	str	r9, [r4, #-500]
	str	r8, [r4, #-496]
	str	r9, [r4, #-492]
	bl	strncpy
	vldr.64	d7, .L247+48
	ldr	r0, [fp, #12]
	ldr	r3, [fp, #16]
	vmul.f64	d13, d13, d7
	cmp	r0, r3
	vstr.64	d13, [r4, #-568]
	beq	.L169
	mov	r2, #96
	sub	r1, r4, #584
	bl	memcpy
	ldr	r3, [fp, #12]
	add	r3, r3, #96
	str	r3, [fp, #12]
.L170:
	add	r0, sp, #136
	str	r5, [r4, #-584]
	bl	strlen
	add	r1, sp, #136
	mov	r3, #0
	add	r2, r1, r0
	add	r0, sp, #152
	bl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE13:
	ldr	r2, .L247+96
	ldr	r1, [r4, #-580]
	ldr	r0, [r4, #-584]
	bl	_ZSt11_Hash_bytesPKvjj
	ldr	r8, [r6, #40]
	mov	r1, r8
	str	r0, [sp, #8]
	bl	__aeabi_uidivmod
	ldr	r3, [r6, #36]
	ldr	r9, [r3, r1, lsl #2]
	mov	r7, r1
	cmp	r9, #0
	beq	.L171
	ldr	r6, [r9]
	ldr	r3, [r4, #-580]
	str	r10, [sp, #28]
	ldr	r2, [r6, #32]
	str	r3, [sp, #16]
	mov	r10, r6
	ldr	r3, [r4, #-584]
	mov	r6, r2
	str	r3, [sp, #32]
.L174:
	ldr	r3, [sp, #8]
	cmp	r6, r3
	beq	.L242
	b	.L248
.L249:
	.align	3
.L247:
	.word	0
	.word	1072693248
	.word	0
	.word	1087476736
	.word	1413754129
	.word	1074340347
	.word	1202590843
	.word	1065646817
	.word	0
	.word	-2147483648
	.word	0
	.word	0
	.word	1580726787
	.word	1037195383
	.word	_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE
	.word	_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+12
	.word	_ZTVSt15basic_streambufIcSt11char_traitsIcEE+8
	.word	_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	-955291385
	.word	.LANCHOR0+36
	.word	_ZSt4cout
	.word	_ZTVNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE+12
	.word	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+8
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE+8
.L248:
.L172:
	ldr	ip, [r10]
	cmp	ip, #0
	beq	.L235
	ldr	r6, [ip, #32]
	mov	r1, r8
	mov	r0, r6
	mov	r9, r10
	mov	r10, ip
	bl	__aeabi_uidivmod
	cmp	r7, r1
	beq	.L174
.L235:
	ldr	r10, [sp, #28]
.L171:
	mov	r0, #36
.LEHB14:
	bl	_Znwj
	ldr	r3, [r4, #-584]
	mov	lr, r0
	cmp	r3, r5
	moveq	r6, r5
	mov	r2, #0
	str	r2, [lr], #12
	mov	ip, r0
	str	lr, [r0, #4]
	ldmiaeq	r6!, {r0, r1, r2, r3}
	ldrne	r2, [r4, #-576]
	strne	r3, [ip, #4]
	streq	r0, [ip, #12]	@ unaligned
	streq	r3, [lr, #12]	@ unaligned
	mov	r0, #1
	ldr	r3, [r4, #-580]
	streq	r1, [lr, #4]	@ unaligned
	streq	r2, [lr, #8]	@ unaligned
	strne	r2, [ip, #12]
	str	r0, [sp]
	mov	r0, #0
	str	r3, [ip, #8]
	str	r0, [r4, #-580]
	strb	r0, [r4, #-576]
	str	r0, [ip, #28]
	ldr	r2, [sp, #8]
	mov	r1, r7
	str	r5, [r4, #-584]
	mov	r3, ip
	ldr	r0, .L247+100
	bl	_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P4BodyESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEjjPNSC_10_Hash_nodeISA_Lb1EEEj
.LEHE14:
.L234:
	ldr	r3, [fp, #12]
	add	r0, r0, #28
	sub	r3, r3, #96
	str	r3, [r0]
	ldr	r0, [r4, #-584]
	cmp	r0, r5
	beq	.L178
	bl	_ZdlPv
.L178:
	ldr	r5, [fp, #12]
	subs	r6, r5, #96
	beq	.L243
	mov	r0, r6
	bl	strlen
	mov	r1, r6
	mov	r2, r0
	ldr	r0, .L247+104
.LEHB15:
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.L180:
	mov	r3, #9
	mov	r2, #1
	add	r1, sp, #72
	ldr	r0, .L247+104
	strb	r3, [r4, #-664]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-72]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #44
	mov	r2, #1
	add	r1, sp, #75
	strb	r3, [r4, #-661]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-64]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #44
	mov	r2, #1
	add	r1, sp, #76
	strb	r3, [r4, #-660]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-56]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #9
	mov	r2, #1
	add	r1, sp, #73
	strb	r3, [r4, #-663]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-48]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #44
	mov	r2, #1
	add	r1, sp, #77
	strb	r3, [r4, #-659]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-40]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #44
	mov	r2, #1
	add	r1, sp, #78
	strb	r3, [r4, #-658]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-32]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #9
	mov	r2, #1
	add	r1, sp, #74
	strb	r3, [r4, #-662]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-24]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #44
	mov	r2, #1
	add	r1, sp, #79
	strb	r3, [r4, #-657]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-16]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #44
	add	r1, sp, #152
	mov	r2, #1
	strb	r3, [r4, #-584]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
	vldr.64	d0, [r5, #-8]
	bl	_ZNSo9_M_insertIdEERSoT_
	mov	r3, #10
	add	r1, sp, #71
	mov	r2, #1
	strb	r3, [r4, #-665]
	bl	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
.LEHE15:
	ldr	r0, [r4, #-440]
	add	r3, sp, #304
	cmp	r0, r3
	ldr	r3, .L247+108
	str	r3, [r4, #-484]
	add	r3, r3, #20
	str	r3, [r4, #-416]
	ldr	r3, .L247+112
	str	r3, [r4, #-476]
	beq	.L181
	bl	_ZdlPv
.L181:
	ldr	r3, [sp, #20]
	add	r0, sp, #288
	str	r3, [r4, #-476]
	bl	_ZNSt6localeD1Ev
	ldr	r2, [r10, #-12]
	add	r1, sp, #252
	ldr	ip, [sp, #24]
	str	r10, [r4, #-484]
	str	ip, [r1, r2]
	ldr	r2, .L247+116
	mov	r3, #0
	add	r0, sp, #320
	str	r3, [r4, #-480]
	str	r2, [r4, #-416]
	bl	_ZNSt8ios_baseD2Ev
	ldr	r3, [r4, #-116]
	tst	r3, #2
	bne	.L183
	ldr	r3, [r4, #-280]
	add	r2, sp, #456
	ldr	r3, [r3, #-12]
	add	r3, r2, r3
	ldr	r5, [r3, #124]
	cmp	r5, #0
	bne	.L146
.L147:
.LEHB16:
	bl	_ZSt16__throw_bad_castv
.L245:
	vcmp.f64	d9, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L244
.L221:
	mov	r0, r7
	bl	_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_
	mov	r0, r7
	vadd.f64	d0, d0, d0
	vsub.f64	d13, d0, d10
	bl	_ZSt18generate_canonicalIdLj53ESt26linear_congruential_engineIjLj16807ELj0ELj2147483647EEET_RT1_
	vadd.f64	d0, d0, d0
	vsub.f64	d8, d0, d10
	vmul.f64	d9, d8, d8
	vmla.f64	d9, d13, d13
	vcmpe.f64	d9, d10
	vmrs	APSR_nzcv, FPSCR
	bgt	.L221
	b	.L245
.L244:
	vmov.f64	d0, d9
	bl	log
	vldr.64	d7, .L250
	vmul.f64	d0, d0, d7
	vdiv.f64	d7, d0, d9
	vcmp.f64	d7, #0
	vsqrt.f64	d9, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L246
.L164:
	vmul.f64	d13, d13, d9
	mov	r3, #1
	vmul.f64	d8, d8, d9
	strb	r3, [r6, #24]
	vstr.64	d13, [r6, #16]
	b	.L163
.L242:
	ldr	r2, [r10, #8]
	ldr	r3, [sp, #16]
	cmp	r3, r2
	bne	.L172
	cmp	r3, #0
	mov	r2, r3
	beq	.L173
	ldr	r1, [r10, #4]
	ldr	r0, [sp, #32]
	bl	memcmp
	cmp	r0, #0
	bne	.L172
.L173:
	ldr	r0, [r9]
	ldr	r10, [sp, #28]
	cmp	r0, #0
	bne	.L234
	b	.L171
.L148:
	mov	r0, r5
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r3, [r5]
	ldr	r2, .L250+24
	ldr	r3, [r3, #24]
	cmp	r3, r2
	moveq	r3, #10
	beq	.L149
	mov	r0, r5
	mov	r1, #10
	blx	r3
.LEHE16:
	mov	r3, r0
	b	.L149
.L241:
	vldr.64	d6, .L250+8
	vldr.64	d0, .L250+16
	vldr.64	d5, [sp, #104]
	vdiv.f64	d4, d6, d7
	vmul.f64	d7, d13, d0
	vdiv.f64	d0, d10, d5
	vsub.f64	d0, d4, d0
	vmul.f64	d0, d0, d7
	vcmp.f64	d0, #0
	vsqrt.f64	d6, d0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L233
	vneg.f64	d7, d6
	b	.L166
.L243:
	ldr	r2, .L250+28
	ldr	r3, [r2]
	ldr	r3, [r3, #-12]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r3, #20]
	orr	r1, r1, #1
.LEHB17:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	b	.L180
.L169:
	mov	r1, r0
	add	r2, sp, #152
	ldr	r0, [sp, #36]
	bl	_ZNSt6vectorI4BodySaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_
.LEHE17:
	b	.L170
.L183:
	ldr	r2, .L250+32
	ldr	r3, .L250+36
	str	r2, [r4, #-280]
	ldr	r2, .L250+40
	add	r0, sp, #464
	str	r2, [r4, #-136]
	str	r3, [r4, #-272]
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
	add	r0, sp, #520
	bl	_ZNSt12__basic_fileIcED1Ev
	ldr	r3, [sp, #20]
	add	r0, sp, #492
	str	r3, [r4, #-272]
	bl	_ZNSt6localeD1Ev
	ldr	r1, [sp, #40]
	ldr	ip, [sp, #44]
	mov	r3, #0
	ldr	r2, [r1, #-12]
	str	r1, [r4, #-280]
	add	r1, sp, #456
	add	r0, sp, #600
	str	ip, [r1, r2]
	ldr	r2, .L250+44
	str	r3, [r4, #-276]
	str	r2, [r4, #-136]
	bl	_ZNSt8ios_baseD2Ev
	mov	r0, fp
	add	sp, sp, #4800
	add	sp, sp, #36
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L143:
	mov	r0, r5
.LEHB18:
	bl	_ZNKSt5ctypeIcE13_M_widen_initEv
	ldr	r3, [r5]
	ldr	r2, .L250+24
	ldr	r3, [r3, #24]
	cmp	r3, r2
	moveq	r3, #10
	beq	.L144
	mov	r0, r5
	mov	r1, #10
	blx	r3
.LEHE18:
	mov	r3, r0
	b	.L144
.L238:
	ldr	r1, [r0, #20]
	orr	r1, r1, #4
.LEHB19:
	bl	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.LEHE19:
	b	.L136
.L240:
	vstr.64	d7, [sp, #8]
	bl	sqrt
	vldr.64	d7, [sp, #8]
	b	.L165
.L246:
	vmov.f64	d0, d7
	bl	sqrt
	b	.L164
.L233:
	vstr.64	d6, [sp, #8]
	bl	sqrt
	vldr.64	d6, [sp, #8]
	vldr.64	d13, [sp, #80]
	vneg.f64	d7, d6
	b	.L166
.L239:
.LEHB20:
	bl	_ZSt16__throw_bad_castv
.LEHE20:
.L197:
	add	r0, sp, #464
	bl	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev
.L140:
	ldr	r3, [sp, #40]
	add	r1, sp, #456
	ldr	r0, [sp, #44]
	ldr	r2, [r3, #-12]
	str	r3, [r4, #-280]
	mov	r3, #0
	str	r0, [r1, r2]
	str	r3, [r4, #-276]
.L141:
	ldr	r3, .L250+44
	add	r0, sp, #600
	str	r3, [r4, #-136]
	bl	_ZNSt8ios_baseD2Ev
.L142:
	ldr	r0, [fp, #8]
	cmp	r0, #0
	beq	.L188
	bl	_ZdlPv
.L188:
.LEHB21:
	bl	__cxa_end_cleanup
.LEHE21:
.L196:
	b	.L140
.L201:
	b	.L141
.L193:
	b	.L184
.L198:
	ldr	r0, [r4, #-440]
	add	r3, sp, #304
	cmp	r0, r3
	ldr	r3, .L250+48
	str	r3, [r4, #-476]
	beq	.L158
.L237:
	bl	_ZdlPv
.L158:
	ldr	r3, [sp, #20]
	add	r0, sp, #288
	str	r3, [r4, #-476]
	bl	_ZNSt6localeD1Ev
	ldr	r2, [r10, #-12]
	add	r1, sp, #252
	ldr	r0, [sp, #24]
	mov	r3, #0
	str	r10, [r4, #-484]
	str	r0, [r1, r2]
	str	r3, [r4, #-480]
.L159:
	ldr	r3, .L250+44
	add	r0, sp, #320
	str	r3, [r4, #-416]
	bl	_ZNSt8ios_baseD2Ev
	ldr	r0, [r4, #-584]
	cmp	r0, r5
	beq	.L184
	bl	_ZdlPv
	b	.L184
.L194:
.L187:
	add	r0, sp, #252
	bl	_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev
.L184:
	add	r0, sp, #456
	bl	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	b	.L142
.L195:
	ldr	r0, [r4, #-584]
	cmp	r0, r5
	beq	.L187
	bl	_ZdlPv
	b	.L187
.L199:
	b	.L158
.L200:
	ldr	r0, [r4, #-440]
	add	r3, sp, #304
	cmp	r0, r3
	bne	.L237
	b	.L158
.L202:
	b	.L159
.L251:
	.align	3
.L250:
	.word	0
	.word	-1073741824
	.word	0
	.word	1073741824
	.word	1580726787
	.word	1037195383
	.word	_ZNKSt5ctypeIcE8do_widenEc
	.word	_ZSt4cout
	.word	_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+12
	.word	_ZTVSt13basic_filebufIcSt11char_traitsIcEE+8
	.word	_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE+32
	.word	_ZTVSt9basic_iosIcSt11char_traitsIcEE+8
	.word	_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+8
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA3825:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3825-.LLSDACSB3825
.LLSDACSB3825:
	.uleb128 .LEHB5-.LFB3825
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L201-.LFB3825
	.uleb128 0
	.uleb128 .LEHB6-.LFB3825
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L196-.LFB3825
	.uleb128 0
	.uleb128 .LEHB7-.LFB3825
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L197-.LFB3825
	.uleb128 0
	.uleb128 .LEHB8-.LFB3825
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L193-.LFB3825
	.uleb128 0
	.uleb128 .LEHB9-.LFB3825
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L202-.LFB3825
	.uleb128 0
	.uleb128 .LEHB10-.LFB3825
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L199-.LFB3825
	.uleb128 0
	.uleb128 .LEHB11-.LFB3825
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L200-.LFB3825
	.uleb128 0
	.uleb128 .LEHB12-.LFB3825
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L198-.LFB3825
	.uleb128 0
	.uleb128 .LEHB13-.LFB3825
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L194-.LFB3825
	.uleb128 0
	.uleb128 .LEHB14-.LFB3825
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L195-.LFB3825
	.uleb128 0
	.uleb128 .LEHB15-.LFB3825
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L194-.LFB3825
	.uleb128 0
	.uleb128 .LEHB16-.LFB3825
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L193-.LFB3825
	.uleb128 0
	.uleb128 .LEHB17-.LFB3825
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L194-.LFB3825
	.uleb128 0
	.uleb128 .LEHB18-.LFB3825
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L193-.LFB3825
	.uleb128 0
	.uleb128 .LEHB19-.LFB3825
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L197-.LFB3825
	.uleb128 0
	.uleb128 .LEHB20-.LFB3825
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L193-.LFB3825
	.uleb128 0
	.uleb128 .LEHB21-.LFB3825
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE3825:
	.text
	.fnend
	.size	_ZN7GravSimC2EPKc, .-_ZN7GravSimC2EPKc
	.global	_ZN7GravSimC1EPKc
	.set	_ZN7GravSimC1EPKc,_ZN7GravSimC2EPKc
	.section	.text.startup,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	_GLOBAL__sub_I_gen, %function
_GLOBAL__sub_I_gen:
	.fnstart
.LFB4728:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #0
	ldr	r4, .L254
	ldr	r5, .L254+4
	add	r6, r4, #64
	mov	r0, r6
	bl	_ZNSt8ios_base4InitC1Ev
	mov	r2, r5
	mov	r0, r6
	ldr	r1, .L254+8
	bl	__aeabi_atexit
	ldr	r6, .L254+12
	ldr	r7, .L254+16
	mov	r3, #6
	mov	r9, #0
	str	r3, [r4, #72]
	add	r3, r4, #60
	mov	ip, #1
	mov	r1, #1065353216
	str	r3, [r4, #36]
	mov	r3, #0
	str	r1, [r4, #52]	@ float
	mov	r2, r5
	strd	r8, [r4]
	strd	r6, [r4, #8]
	add	r0, r4, #36
	str	ip, [r4, #32]
	str	ip, [r4, #68]
	str	ip, [r4, #40]
	strb	r3, [r4, #24]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	ldr	r1, .L254+20
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	__aeabi_atexit
.L255:
	.align	2
.L254:
	.word	.LANCHOR0
	.word	__dso_handle
	.word	_ZNSt8ios_base4InitD1Ev
	.word	1413754129
	.word	1075388923
	.word	_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP4BodySt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED1Ev
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I_gen, .-_GLOBAL__sub_I_gen
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I_gen
	.global	_Z12bodiesByNameB5cxx11
	.global	angle
	.global	dist
	.global	gen
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	angle, %object
	.size	angle, 32
angle:
	.space	32
	.type	gen, %object
	.size	gen, 4
gen:
	.space	4
	.type	_Z12bodiesByNameB5cxx11, %object
	.size	_Z12bodiesByNameB5cxx11, 28
_Z12bodiesByNameB5cxx11:
	.space	28
	.type	_ZStL8__ioinit, %object
	.size	_ZStL8__ioinit, 1
_ZStL8__ioinit:
	.space	1
	.space	3
	.type	dist, %object
	.size	dist, 8
dist:
	.space	8
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"basic_string::_M_construct null not valid\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"GravSim t=\000"
	.space	1
.LC2:
	.ascii	"creating body \000"
	.space	1
.LC3:
	.ascii	" orbiting \000"
	.space	1
.LC4:
	.ascii	" at angle \000"
	.space	1
.LC5:
	.ascii	" radians or \000"
	.space	3
.LC6:
	.ascii	"degrees\012\000"
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
