	.arch armv8-a
	.arch_extension crc
	.arm
.data

.global s
.size s, 4
s:
	.word 0
	.text
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L166:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L174
	b .L186
.L174:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L175
.L175:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, addr_s
	ldr r5, [r4]
	cmp r5, #0
	movgt r4, #1
	movle r4, #0
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	ldr r4, addr_s
	str r6, [r4]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L186:
	b .L175
	.global get_ans
	.type get_ans , %function
get_ans:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L220:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r4, =0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-8]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	cmp r4, r5
	moveq r4, #1
	movne r4, #0
	beq .L228
	b .L240
.L228:
	ldr r4, =1
	str r4, [fp, #-4]
	b .L229
.L229:
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, =2
	mul r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-4]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	mov r0, r4
	add sp, sp, #16
	pop {r4, r5, r6, fp, lr}
	bx lr
.L240:
	b .L229
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L263:
	ldr r4, =-2147483648
	ldr r5, =0
	sub r6, r5, r4
	cmp r6, #0
	movgt r4, #1
	movle r4, #0
	str r6, [fp, #-36]
	ldr r4, =-2147483648
	str r4, [fp, #-32]
	mov r4, #-2147483647
	str r4, [fp, #-28]
	ldr r4, =2147483647
	str r4, [fp, #-24]
	mov r4, #2147483646
	str r4, [fp, #-20]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-32]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =1
	add r7, r5, r6
	ldr r5, [fp, #-28]
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-24]
	ldr r7, =0
	sub r8, r7, r6
	cmp r8, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r8, r6
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-28]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-24]
	ldr r7, =0
	sub r8, r7, r6
	cmp r8, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r8, r6
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-16]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-24]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-12]
	ldr r4, [fp, #-36]
	ldr r5, [fp, #-32]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =1
	add r7, r5, r6
	ldr r5, [fp, #-28]
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-24]
	ldr r7, =0
	sub r8, r7, r6
	cmp r8, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r8, r6
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-28]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-24]
	ldr r7, =0
	sub r8, r7, r6
	cmp r8, #0
	movgt r6, #1
	movle r6, #0
	ldr r6, =1
	sub r7, r8, r6
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-32]
	ldr r6, [fp, #-20]
	ldr r7, =1
	add r8, r6, r7
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-28]
	ldr r5, [fp, #-24]
	ldr r0, =0
	mov r1, r4
	mov r2, r5
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-28]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-20]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-36]
	ldr r6, =2
	sdiv r7, r5, r6
	ldr r5, [fp, #-32]
	ldr r6, =2
	sdiv r8, r5, r6
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl get_ans_se
	mov r4, r0
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-16]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	ldr r5, [fp, #-12]
	cmp r5, #0
	movgt r6, #1
	movle r6, #0
	add r6, r4, r5
	ldr r4, [fp, #-8]
	cmp r4, #0
	movgt r5, #1
	movle r5, #0
	add r5, r6, r4
	ldr r4, [fp, #-4]
	cmp r4, #0
	movgt r6, #1
	movle r6, #0
	add r6, r5, r4
	mov r0, r6
	add sp, sp, #36
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr
addr_s:
	.word s
