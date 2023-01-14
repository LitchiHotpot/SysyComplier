	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L6:
	ldr r4, =15
	str r4, [fp, #-8]
	ldr r4, =12
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, =61
	add r5, r6, r4
	mov r0, r5
	add sp, sp, #8
	pop {r4, r5, r6, fp, lr}
	bx lr
