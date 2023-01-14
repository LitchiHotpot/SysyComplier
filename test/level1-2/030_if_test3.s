	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global ififElse
	.type ififElse , %function
ififElse:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L12:
	ldr r4, =5
	str r4, [fp, #-8]
	ldr r4, =10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #5
	moveq r4, #1
	movne r4, #0
	beq .L15
	b .L23
.L15:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #10
	moveq r4, #1
	movne r4, #0
	beq .L24
	b .L33
.L16:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L23:
	b .L16
.L24:
	ldr r4, =25
	str r4, [fp, #-8]
	b .L26
.L25:
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =15
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L26
.L26:
	b .L16
.L33:
	b .L25
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #0
.L45:
	bl ififElse
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #0
	pop {r4, r5, fp, lr}
	bx lr
