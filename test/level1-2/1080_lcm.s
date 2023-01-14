	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global n
.size n, 4
n:
	.word 0
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L39:
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	movlt r4, #1
	movge r4, #0
	blt .L56
	b .L68
.L56:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-24]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-20]
	b .L57
.L57:
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L92
.L68:
	b .L57
.L92:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L93
	b .L101
.L93:
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-24]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-20]
	ldr r4, [fp, #-24]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-20]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L92
.L94:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	sdiv r5, r6, r4
	mov r0, r5
	add sp, sp, #24
	pop {r4, r5, r6, fp, lr}
	bx lr
.L101:
	b .L94
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L139:
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
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
	bl gcd
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
addr_n:
	.word n
