	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global move
	.type move , %function
move:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L36:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r0, =32
	bl putch
	mov r4, r0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r0, =44
	bl putch
	mov r4, r0
	ldr r0, =32
	bl putch
	mov r4, r0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
	.global hanoi
	.type hanoi , %function
hanoi:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L64:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L73
	b .L82
.L73:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl move
	mov r4, r0
	b .L75
.L74:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-8]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl hanoi
	mov r4, r0
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl move
	mov r4, r0
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r7, #1
	movle r7, #0
	ldr r7, [fp, #-4]
	cmp r7, #0
	movgt r8, #1
	movle r8, #0
	mov r0, r6
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl hanoi
	mov r4, r0
	b .L75
.L75:
	add sp, sp, #16
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
.L82:
	b .L74
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L149:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	b .L155
.L155:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	bgt .L156
	b .L164
.L156:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	ldr r1, =1
	ldr r2, =2
	ldr r3, =3
	bl hanoi
	mov r4, r0
	ldr r0, =10
	bl putch
	mov r4, r0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L155
.L157:
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
.L164:
	b .L157
