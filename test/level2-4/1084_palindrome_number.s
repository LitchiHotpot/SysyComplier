	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L37:
	str r0, [fp, #-16]
	ldr r4, =0
	str r4, [fp, #-8]
	b .L43
.L43:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #4
	movlt r4, #1
	movge r4, #0
	blt .L44
	b .L52
.L44:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =10
	sdiv r6, r4, r5
	mul r6, r6, r5
	sub r5, r4, r6
	str r5, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =10
	sdiv r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L43
.L45:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L77
	b .L88
.L52:
	b .L45
.L74:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L76
.L75:
	ldr r4, =0
	str r4, [fp, #-4]
	b .L76
.L76:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L77:
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L74
	b .L99
.L88:
	b .L75
.L99:
	b .L75
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L104:
	ldr r4, =1221
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl palindrome
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L115
	b .L124
.L115:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L117
.L116:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L117
.L117:
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
.L124:
	b .L116
