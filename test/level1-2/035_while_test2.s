	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L41:
	ldr r4, =5
	str r4, [fp, #-16]
	ldr r4, =6
	str r4, [fp, #-12]
	ldr r4, =7
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	b .L46
.L46:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L47
	b .L55
.L47:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-16]
	b .L63
.L48:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, [fp, #-4]
	cmp r6, #0
	movgt r7, #1
	movle r7, #0
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #16
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L55:
	b .L48
.L63:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	movlt r4, #1
	movge r4, #0
	blt .L64
	b .L72
.L64:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L80
.L65:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sub r6, r4, r5
	str r6, [fp, #-12]
	b .L46
.L72:
	b .L65
.L80:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #7
	moveq r4, #1
	movne r4, #0
	beq .L81
	b .L89
.L81:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-8]
	b .L97
.L82:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L63
.L89:
	b .L82
.L97:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #20
	movlt r4, #1
	movge r4, #0
	blt .L98
	b .L106
.L98:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =3
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L97
.L99:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L80
.L106:
	b .L99
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L160:
	bl FourWhile
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
