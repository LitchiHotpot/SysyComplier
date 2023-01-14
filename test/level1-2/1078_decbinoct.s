	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L31:
	str r0, [fp, #-20]
	ldr r4, =0
	str r4, [fp, #-16]
	ldr r4, =1
	str r4, [fp, #-12]
	ldr r4, [fp, #-20]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	b .L42
.L42:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movne r4, #1
	moveq r4, #0
	bne .L43
	b .L51
.L43:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	mul r6, r4, r5
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	str r5, [fp, #-16]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =10
	mul r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L42
.L44:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #20
	pop {r4, r5, r6, fp, lr}
	bx lr
.L51:
	b .L44
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L95:
	ldr r4, =400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl dec2bin
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putch
	mov r4, r0
	mov r0, #0
	add sp, sp, #8
	pop {r4, r5, fp, lr}
	bx lr
