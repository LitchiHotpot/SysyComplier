	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #32
.L201:
	ldr r0, [fp, #24]
	str r0, [fp, #-32]
	str r1, [fp, #-28]
	str r2, [fp, #-24]
	str r3, [fp, #-20]
	str r3, [fp, #-16]
	str r3, [fp, #-12]
	str r3, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r4, r5
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #32
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global testParam16
	.type testParam16 , %function
testParam16:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #64
.L271:
	ldr r0, [fp, #24]
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	str r3, [fp, #-52]
	str r3, [fp, #-48]
	str r3, [fp, #-44]
	str r3, [fp, #-40]
	str r3, [fp, #-36]
	str r3, [fp, #-32]
	str r3, [fp, #-28]
	str r3, [fp, #-24]
	str r3, [fp, #-20]
	str r3, [fp, #-16]
	str r3, [fp, #-12]
	str r3, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-64]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-60]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-56]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-52]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-48]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-44]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #64
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global testParam32
	.type testParam32 , %function
testParam32:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L413:
	ldr r0, [fp, #28]
	str r0, [fp, #-128]
	str r1, [fp, #-124]
	str r2, [fp, #-120]
	str r3, [fp, #-116]
	str r3, [fp, #-112]
	str r3, [fp, #-108]
	str r3, [fp, #-104]
	str r3, [fp, #-100]
	str r3, [fp, #-96]
	str r3, [fp, #-92]
	str r3, [fp, #-88]
	str r3, [fp, #-84]
	str r3, [fp, #-80]
	str r3, [fp, #-76]
	str r3, [fp, #-72]
	str r3, [fp, #-68]
	str r3, [fp, #-64]
	str r3, [fp, #-60]
	str r3, [fp, #-56]
	str r3, [fp, #-52]
	str r3, [fp, #-48]
	str r3, [fp, #-44]
	str r3, [fp, #-40]
	str r3, [fp, #-36]
	str r3, [fp, #-32]
	str r3, [fp, #-28]
	str r3, [fp, #-24]
	str r3, [fp, #-20]
	str r3, [fp, #-16]
	str r3, [fp, #-12]
	str r3, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-128]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-124]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-120]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mul r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-116]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-112]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-108]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-104]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-100]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-96]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-92]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-88]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-84]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-80]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-76]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-72]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-68]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-64]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-60]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-56]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-52]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-48]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r6, r4
	ldr r4, [fp, #-44]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	sub r6, r5, r4
	ldr r4, [fp, #-40]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-36]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-32]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-28]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #128
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #280
.L699:
	ldr r4, =0
	str r4, [fp, #-128]
	ldr r4, =1
	str r4, [fp, #-124]
	ldr r4, =2
	str r4, [fp, #-120]
	ldr r4, =3
	str r4, [fp, #-116]
	ldr r4, =4
	str r4, [fp, #-112]
	ldr r4, =5
	str r4, [fp, #-108]
	ldr r4, =6
	str r4, [fp, #-104]
	ldr r4, =7
	str r4, [fp, #-100]
	ldr r4, =8
	str r4, [fp, #-96]
	ldr r4, =9
	str r4, [fp, #-92]
	ldr r4, =0
	str r4, [fp, #-88]
	ldr r4, =1
	str r4, [fp, #-84]
	ldr r4, =2
	str r4, [fp, #-80]
	ldr r4, =3
	str r4, [fp, #-76]
	ldr r4, =4
	str r4, [fp, #-72]
	ldr r4, =5
	str r4, [fp, #-68]
	ldr r4, =6
	str r4, [fp, #-64]
	ldr r4, =7
	str r4, [fp, #-60]
	ldr r4, =8
	str r4, [fp, #-56]
	ldr r4, =9
	str r4, [fp, #-52]
	ldr r4, =0
	str r4, [fp, #-48]
	ldr r4, =1
	str r4, [fp, #-44]
	ldr r4, =2
	str r4, [fp, #-40]
	ldr r4, =3
	str r4, [fp, #-36]
	ldr r4, =4
	str r4, [fp, #-32]
	ldr r4, =5
	str r4, [fp, #-28]
	ldr r4, =6
	str r4, [fp, #-24]
	ldr r4, =7
	str r4, [fp, #-20]
	ldr r4, =8
	str r4, [fp, #-16]
	ldr r4, =9
	str r4, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-4]
	ldr r4, [fp, #-128]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-124]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-120]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-116]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-112]
	str r8, [fp, #-132]
	ldr r8, [fp, #-132]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-108]
	str r8, [fp, #-144]
	ldr r8, [fp, #-144]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-104]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-100]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r9}
	push {r8}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r4, [fp, #-132]
	push {r4}
	bl testParam8
	add sp, sp, #16
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-124]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-120]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-116]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-112]
	str r8, [fp, #-136]
	ldr r8, [fp, #-136]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-108]
	str r8, [fp, #-148]
	ldr r8, [fp, #-148]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-104]
	str r8, [fp, #-156]
	ldr r8, [fp, #-156]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-100]
	str r8, [fp, #-164]
	ldr r8, [fp, #-164]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-96]
	str r8, [fp, #-172]
	ldr r8, [fp, #-172]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-92]
	str r8, [fp, #-180]
	ldr r8, [fp, #-180]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-88]
	str r8, [fp, #-188]
	ldr r8, [fp, #-188]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-84]
	str r8, [fp, #-196]
	ldr r8, [fp, #-196]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-80]
	str r8, [fp, #-204]
	ldr r8, [fp, #-204]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-76]
	str r8, [fp, #-212]
	ldr r8, [fp, #-212]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-72]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-68]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r9}
	push {r8}
	ldr r4, [fp, #-212]
	push {r4}
	ldr r4, [fp, #-204]
	push {r4}
	ldr r4, [fp, #-196]
	push {r4}
	ldr r4, [fp, #-188]
	push {r4}
	ldr r4, [fp, #-180]
	push {r4}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r4, [fp, #-164]
	push {r4}
	ldr r4, [fp, #-156]
	push {r4}
	ldr r4, [fp, #-148]
	push {r4}
	ldr r4, [fp, #-136]
	push {r4}
	bl testParam16
	add sp, sp, #48
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-124]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-120]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-116]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-112]
	str r8, [fp, #-140]
	ldr r8, [fp, #-140]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-108]
	str r8, [fp, #-152]
	ldr r8, [fp, #-152]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-104]
	str r8, [fp, #-160]
	ldr r8, [fp, #-160]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-100]
	str r8, [fp, #-168]
	ldr r8, [fp, #-168]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-96]
	str r8, [fp, #-176]
	ldr r8, [fp, #-176]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-92]
	str r8, [fp, #-184]
	ldr r8, [fp, #-184]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-88]
	str r8, [fp, #-192]
	ldr r8, [fp, #-192]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-84]
	str r8, [fp, #-200]
	ldr r8, [fp, #-200]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-80]
	str r8, [fp, #-208]
	ldr r8, [fp, #-208]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-76]
	str r8, [fp, #-216]
	ldr r8, [fp, #-216]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-72]
	str r8, [fp, #-220]
	ldr r8, [fp, #-220]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-68]
	str r8, [fp, #-224]
	ldr r8, [fp, #-224]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-64]
	str r8, [fp, #-228]
	ldr r8, [fp, #-228]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-60]
	str r8, [fp, #-232]
	ldr r8, [fp, #-232]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-56]
	str r8, [fp, #-236]
	ldr r8, [fp, #-236]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-52]
	str r8, [fp, #-240]
	ldr r8, [fp, #-240]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-48]
	str r8, [fp, #-244]
	ldr r8, [fp, #-244]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-44]
	str r8, [fp, #-248]
	ldr r8, [fp, #-248]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-40]
	str r8, [fp, #-252]
	ldr r8, [fp, #-252]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-36]
	str r8, [fp, #-256]
	ldr r8, [fp, #-256]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-32]
	str r8, [fp, #-260]
	ldr r8, [fp, #-260]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-28]
	str r8, [fp, #-264]
	ldr r8, [fp, #-264]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-24]
	str r8, [fp, #-268]
	ldr r8, [fp, #-268]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-20]
	str r8, [fp, #-272]
	ldr r8, [fp, #-272]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-16]
	str r8, [fp, #-276]
	ldr r8, [fp, #-276]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-12]
	str r8, [fp, #-280]
	ldr r8, [fp, #-280]
	cmp r8, #0
	movgt r8, #1
	movle r8, #0
	ldr r8, [fp, #-8]
	cmp r8, #0
	movgt r9, #1
	movle r9, #0
	ldr r9, [fp, #-4]
	cmp r9, #0
	movgt r10, #1
	movle r10, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	mov r3, r7
	push {r9}
	push {r8}
	ldr r4, [fp, #-280]
	push {r4}
	ldr r4, [fp, #-276]
	push {r4}
	ldr r4, [fp, #-272]
	push {r4}
	ldr r4, [fp, #-268]
	push {r4}
	ldr r4, [fp, #-264]
	push {r4}
	ldr r4, [fp, #-260]
	push {r4}
	ldr r4, [fp, #-256]
	push {r4}
	ldr r4, [fp, #-252]
	push {r4}
	ldr r4, [fp, #-248]
	push {r4}
	ldr r4, [fp, #-244]
	push {r4}
	ldr r4, [fp, #-240]
	push {r4}
	ldr r4, [fp, #-236]
	push {r4}
	ldr r4, [fp, #-232]
	push {r4}
	ldr r4, [fp, #-228]
	push {r4}
	ldr r4, [fp, #-224]
	push {r4}
	ldr r4, [fp, #-220]
	push {r4}
	ldr r4, [fp, #-216]
	push {r4}
	ldr r4, [fp, #-208]
	push {r4}
	ldr r4, [fp, #-200]
	push {r4}
	ldr r4, [fp, #-192]
	push {r4}
	ldr r4, [fp, #-184]
	push {r4}
	ldr r4, [fp, #-176]
	push {r4}
	ldr r4, [fp, #-168]
	push {r4}
	ldr r4, [fp, #-160]
	push {r4}
	ldr r4, [fp, #-152]
	push {r4}
	ldr r4, [fp, #-140]
	push {r4}
	bl testParam32
	add sp, sp, #112
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-128]
	ldr r4, [fp, #-128]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #128
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr
