	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #6
	moveq r4, #1
	movne r4, #0
	beq .L33
	b .L43
.L33:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L34:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L58
	b .L65
.L35:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L36:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #11
	moveq r4, #1
	movne r4, #0
	beq .L33
	b .L50
.L43:
	b .L36
.L50:
	b .L34
.L55:
	ldr r4, =25
	str r4, [fp, #-8]
	b .L57
.L56:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L76
	b .L83
.L57:
	b .L35
.L58:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	moveq r4, #1
	movne r4, #0
	beq .L55
	b .L72
.L65:
	b .L56
.L72:
	b .L56
.L73:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =15
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L75
.L74:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-8]
	b .L75
.L75:
	b .L57
.L76:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =5
	ldr r6, =0
	sub r7, r6, r5
	cmp r7, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, r7
	moveq r4, #1
	movne r4, #0
	beq .L73
	b .L94
.L83:
	b .L74
.L94:
	b .L74
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L118:
	bl ifElseIf
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
