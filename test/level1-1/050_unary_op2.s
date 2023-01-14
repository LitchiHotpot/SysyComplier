	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L25:
	ldr r4, =56
	str r4, [fp, #-8]
	ldr r4, =4
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =4
	ldr r6, =0
	sub r7, r6, r5
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	sub r5, r4, r7
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	str r6, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	cmp r4, #0
	movgt r4, #1
	movle r4, #0
	ldr r5, =1
	eor r6, r5, r4
	mov r4, r6
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	bgt .L50
	b .L79
.L50:
	ldr r4, =1
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r5, r4, r6
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =0
	sub r6, r4, r5
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-8]
	b .L52
.L51:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	add r6, r5, r4
	str r6, [fp, #-8]
	b .L52
.L52:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L79:
	b .L51
