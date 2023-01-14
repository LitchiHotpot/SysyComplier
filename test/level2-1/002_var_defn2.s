	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global a
.size a, 4
a:
	.word 3
.global b
.size b, 4
b:
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L3:
	ldr r4, =5
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_b
	ldr r6, [r5]
	cmp r6, #0
	movgt r5, #1
	movle r5, #0
	add r5, r4, r6
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, fp, lr}
	bx lr
addr_a:
	.word a
addr_b:
	.word b
