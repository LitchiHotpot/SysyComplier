	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global k
.size k, 4
k:
	.word 0
.section .rodata

.global n
.size n, 4
n:
	.word 10
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L17:
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, =1
	ldr r5, addr_k
	str r4, [r5]
	b .L19
.L19:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, addr_n
	ldr r6, [r5]
	ldr r5, =1
	sub r7, r6, r5
	cmp r4, r7
	movle r4, #1
	movgt r4, #0
	ble .L20
	b .L34
.L20:
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =1
	add r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, addr_k
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, =1
	add r6, r5, r4
	ldr r4, addr_k
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, addr_k
	ldr r6, [r4]
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	add r4, r5, r6
	ldr r5, addr_k
	str r4, [r5]
	b .L19
.L21:
	ldr r4, addr_k
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	bl putint
	mov r4, r0
	ldr r4, addr_k
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	mov r0, r5
	add sp, sp, #4
	pop {r4, r5, r6, r7, fp, lr}
	bx lr
.L34:
	b .L21
addr_k:
	.word k
addr_n:
	.word n
