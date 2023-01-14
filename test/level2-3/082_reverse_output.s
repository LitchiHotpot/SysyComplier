	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global reverse
	.type reverse , %function
reverse:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L15:
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	cmp r4, #1
	movle r4, #1
	movgt r4, #0
	ble .L19
	b .L28
.L19:
	bl getint
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
	b .L21
.L20:
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
	ldr r5, =1
	sub r6, r4, r5
	mov r0, r6
	bl reverse
	mov r4, r0
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl putint
	mov r4, r0
	b .L21
.L21:
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
.L28:
	b .L20
	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L61:
	ldr r4, =200
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	bl reverse
	mov r4, r0
	mov r0, #0
	add sp, sp, #4
	pop {r4, r5, fp, lr}
	bx lr
