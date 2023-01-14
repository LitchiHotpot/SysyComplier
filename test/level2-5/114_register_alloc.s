	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a1
.size a1, 4
a1:
	.word 1
.global a2
.size a2, 4
a2:
	.word 2
.global a3
.size a3, 4
a3:
	.word 3
.global a4
.size a4, 4
a4:
	.word 4
.global a5
.size a5, 4
a5:
	.word 5
.global a6
.size a6, 4
a6:
	.word 6
.global a7
.size a7, 4
a7:
	.word 7
.global a8
.size a8, 4
a8:
	.word 8
.global a9
.size a9, 4
a9:
	.word 9
.global a10
.size a10, 4
a10:
	.word 10
.global a11
.size a11, 4
a11:
	.word 11
.global a12
.size a12, 4
a12:
	.word 12
.global a13
.size a13, 4
a13:
	.word 13
.global a14
.size a14, 4
a14:
	.word 14
.global a15
.size a15, 4
a15:
	.word 15
.global a16
.size a16, 4
a16:
	.word 16
.global a17
.size a17, 4
a17:
	.word 1
.global a18
.size a18, 4
a18:
	.word 2
.global a19
.size a19, 4
a19:
	.word 3
.global a20
.size a20, 4
a20:
	.word 4
.global a21
.size a21, 4
a21:
	.word 5
.global a22
.size a22, 4
a22:
	.word 6
.global a23
.size a23, 4
a23:
	.word 7
.global a24
.size a24, 4
a24:
	.word 8
.global a25
.size a25, 4
a25:
	.word 9
.global a26
.size a26, 4
a26:
	.word 10
.global a27
.size a27, 4
a27:
	.word 11
.global a28
.size a28, 4
a28:
	.word 12
.global a29
.size a29, 4
a29:
	.word 13
.global a30
.size a30, 4
a30:
	.word 14
.global a31
.size a31, 4
a31:
	.word 15
.global a32
.size a32, 4
a32:
	.word 16
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #156
.L507:
	str r0, [fp, #-156]
	str r1, [fp, #-152]
	ldr r4, [fp, #-156]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-152]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-148]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-144]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-140]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-136]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-132]
	ldr r4, [fp, #-144]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a1
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-128]
	ldr r4, [fp, #-140]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a2
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-124]
	ldr r4, [fp, #-136]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a3
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-120]
	ldr r4, [fp, #-132]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a4
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-116]
	ldr r4, [fp, #-128]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a5
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-112]
	ldr r4, [fp, #-124]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a6
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-108]
	ldr r4, [fp, #-120]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a7
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-104]
	ldr r4, [fp, #-116]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a8
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-100]
	ldr r4, [fp, #-112]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a9
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-96]
	ldr r4, [fp, #-108]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a10
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-92]
	ldr r4, [fp, #-104]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a11
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-88]
	ldr r4, [fp, #-100]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a12
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-84]
	ldr r4, [fp, #-96]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a13
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-80]
	ldr r4, [fp, #-92]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a14
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-76]
	ldr r4, [fp, #-88]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a15
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-72]
	ldr r4, [fp, #-84]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a16
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-68]
	ldr r4, [fp, #-80]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a17
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-64]
	ldr r4, [fp, #-76]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a18
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-60]
	ldr r4, [fp, #-72]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a19
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-56]
	ldr r4, [fp, #-68]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a20
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-52]
	ldr r4, [fp, #-64]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a21
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-48]
	ldr r4, [fp, #-60]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a22
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-44]
	ldr r4, [fp, #-56]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a23
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-40]
	ldr r4, [fp, #-52]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a24
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-36]
	ldr r4, [fp, #-48]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a25
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-32]
	ldr r4, [fp, #-44]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a26
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-28]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a27
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-24]
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a28
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-20]
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a29
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-16]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a30
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-12]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a31
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a32
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-4]
	ldr r4, [fp, #-156]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-152]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	ldr r4, =10
	add r5, r6, r4
	str r5, [fp, #-148]
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a29
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-16]
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a30
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-12]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a31
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a32
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-4]
	ldr r4, [fp, #-48]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a25
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-32]
	ldr r4, [fp, #-44]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a26
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-28]
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a27
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-24]
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a28
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-20]
	ldr r4, [fp, #-64]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a21
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-48]
	ldr r4, [fp, #-60]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a22
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-44]
	ldr r4, [fp, #-56]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a23
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-40]
	ldr r4, [fp, #-52]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a24
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-36]
	ldr r4, [fp, #-80]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a17
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-64]
	ldr r4, [fp, #-76]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a18
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-60]
	ldr r4, [fp, #-72]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a19
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-56]
	ldr r4, [fp, #-68]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a20
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-52]
	ldr r4, [fp, #-96]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a13
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-80]
	ldr r4, [fp, #-92]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a14
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-76]
	ldr r4, [fp, #-88]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a15
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-72]
	ldr r4, [fp, #-84]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a16
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-68]
	ldr r4, [fp, #-112]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a9
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-96]
	ldr r4, [fp, #-108]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a10
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-92]
	ldr r4, [fp, #-104]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a11
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-88]
	ldr r4, [fp, #-100]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a12
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-84]
	ldr r4, [fp, #-128]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a5
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-112]
	ldr r4, [fp, #-124]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a6
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-108]
	ldr r4, [fp, #-120]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a7
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-104]
	ldr r4, [fp, #-116]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a8
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-100]
	ldr r4, [fp, #-144]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a1
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-128]
	ldr r4, [fp, #-140]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a2
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-124]
	ldr r4, [fp, #-136]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a3
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-120]
	ldr r4, [fp, #-132]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a4
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-116]
	ldr r4, [fp, #-144]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r5, r4
	ldr r4, addr_a1
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-128]
	ldr r4, [fp, #-140]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	add r6, r5, r4
	ldr r4, addr_a2
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-124]
	ldr r4, [fp, #-136]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r5, r4
	ldr r4, addr_a3
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-120]
	ldr r4, [fp, #-132]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	add r6, r5, r4
	ldr r4, addr_a4
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	add r4, r6, r5
	str r4, [fp, #-116]
	ldr r4, [fp, #-148]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-144]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-140]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-136]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-132]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-128]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-124]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-120]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-116]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-112]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-108]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-104]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-100]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-96]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-92]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-88]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-84]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-80]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-76]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-72]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-68]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-64]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-60]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-56]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-52]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-48]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-44]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, addr_a1
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a2
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a3
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a4
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a5
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a6
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a7
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a8
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a9
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a10
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a11
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a12
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a13
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a14
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a15
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a16
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a17
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a18
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a19
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a20
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a21
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a22
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a23
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a24
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a25
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a26
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a27
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a28
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a29
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a30
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	ldr r4, addr_a31
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_a32
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r6
	mov r0, r5
	add sp, sp, #156
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L2022:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r5, #18
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl func
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
addr_a1:
	.word a1
addr_a2:
	.word a2
addr_a3:
	.word a3
addr_a4:
	.word a4
addr_a5:
	.word a5
addr_a6:
	.word a6
addr_a7:
	.word a7
addr_a8:
	.word a8
addr_a9:
	.word a9
addr_a10:
	.word a10
addr_a11:
	.word a11
addr_a12:
	.word a12
addr_a13:
	.word a13
addr_a14:
	.word a14
addr_a15:
	.word a15
addr_a16:
	.word a16
addr_a17:
	.word a17
addr_a18:
	.word a18
addr_a19:
	.word a19
addr_a20:
	.word a20
addr_a21:
	.word a21
addr_a22:
	.word a22
addr_a23:
	.word a23
addr_a24:
	.word a24
addr_a25:
	.word a25
addr_a26:
	.word a26
addr_a27:
	.word a27
addr_a28:
	.word a28
addr_a29:
	.word a29
addr_a30:
	.word a30
addr_a31:
	.word a31
addr_a32:
	.word a32
