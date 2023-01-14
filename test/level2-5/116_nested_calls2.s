	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global f
	.type f , %function
f:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L17:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global g
	.type g , %function
g:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L33:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	mov r0, r6
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
	.global h
	.type h , %function
h:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L49:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
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
	bl g
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r0, =2
	mov r1, r4
	bl f
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-4]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	mov r0, r5
	mov r1, r6
	bl f
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r5
	ldr r1, =4
	bl g
	mov r5, r0
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mov r0, r4
	mov r1, r5
	bl f
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L90:
	ldr r0, =11
	ldr r1, =3
	bl h
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
