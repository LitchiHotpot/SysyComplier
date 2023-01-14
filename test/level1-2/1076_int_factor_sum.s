	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global N
.size N, 4
N:
	.word 0
.global newline
.size newline, 4
newline:
	.word 0
	.text
	.global factor
	.type factor , %function
factor:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L23:
	str r0, [fp, #-12]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =1
	str r4, [fp, #-8]
	b .L28
.L28:
	ldr r4, [fp, #-8]
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
	blt .L29
	b .L44
.L29:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	cmp r6, #0
	moveq r4, #1
	movne r4, #0
	beq .L45
	b .L60
.L30:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L44:
	b .L30
.L45:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L46
.L46:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L28
.L60:
	b .L46
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L83:
	ldr r4, =4
	ldr r5, addr_N
	str r4, [r5]
	ldr r4, =10
	ldr r5, addr_newline
	str r4, [r5]
	ldr r4, =1478
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl factor
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #12
	pop {r4, r5, fp, lr}
	bx lr
addr_N:
	.word N
addr_newline:
	.word newline
