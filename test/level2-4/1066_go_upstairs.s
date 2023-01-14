	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global climbStairs
	.type climbStairs , %function
climbStairs:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L30:
	str r0, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L33
	b .L41
.L33:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L34:
	ldr r4, =0
	str r4, [fp, #-8]
	ldr r4, =1
	str r4, [fp, #-8]
	ldr r4, =2
	str r4, [fp, #-8]
	ldr r4, =3
	str r4, [fp, #-4]
	b .L48
.L41:
	b .L34
.L48:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	add r7, r5, r6
	cmp r4, r7
	movlt r4, #1
	movge r4, #0
	blt .L49
	b .L64
.L49:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L48
.L50:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L64:
	b .L50
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L87:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl climbStairs
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
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
